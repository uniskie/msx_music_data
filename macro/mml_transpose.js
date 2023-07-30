/**
    【MML整形 for MGSDRV】
	
	 4分音符ごとにスペース挿入
	 1分音符で改行
*/

//=============================
// Editor依存関数系
function efunc(){}
try{
	var b = document.selection.IsEmpty;
	// emEditor ?
	efunc.inputBox = function( msg, def )	{	return prompt(msg, def);	}
	efunc.alertBox = function(s)			{	alert(s);	}
	efunc.isSelectionEmpty = function()		{	return document.selection.IsEmpty;	}
	efunc.selectLine = function()			{	document.selection.SelectLine();	}
	efunc.getSelectionStartY = function()	{	return document.selection.GetTopPointY( eePosLogical );	}
	efunc.getSelectionStartX = function()	{	return document.selection.GetTopPointX( eePosLogical );	}
	efunc.getLineText = function( l )		{	return document.GetLine( l );	}
	efunc.getSelectionText = function()		{	return document.selection.Text;	}
	efunc.setSelectionText = function( s )	{	document.selection.Text = s;	}
	efunc.lf = '\n';
}catch(e){
	//alert('sakura editor ?');
	efunc.inputBox = function( msg, def )	{	return Editor.InputBox(msg, def, 8);	}
	efunc.alertBox = function(s)			{	Editor.InfoMsg(s);	}
	efunc.isSelectionEmpty = function()		{	return (Editor.IsTextSelected == 0);	}
	efunc.selectLine = function()			{	Editor.SelectLine();	}
	efunc.getSelectionStartY = function()	{	return Editor.GetSelectLineFrom();	}
	efunc.getSelectionStartX = function()	{	return Editor.GetSelectColumnFrom();	}
	efunc.getLineText = function( l )		{	return Editor.GetLineStr( l ); 	}
	efunc.getSelectionText = function() 	{	return Editor.GetSelectedString();	}
	efunc.setSelectionText = function( s )	{	Editor.InsText( s );	}
	efunc.lf = ['\r\n', '\r', '\n'][GetLineCode()];
}
var lf = efunc.lf;
//=============================

//==================================
// out:	[0] 最終位置 ( charAt用 )
//		[1] 数値
//		[2] ピリオドの数
//		エラー時は [0]が-1
function getDigits(s, si, isNote)
{
	var d = -1;
	var skip_i = -1;
	var period = 0;

	var found = -1;
	var dg = '';

	for (var i = si; i < s.length; ++i)
	{
		var c = s.charAt(i);
		if ((c==' ') || (c=='\t'))
		{
			skip_i = i;
			continue;
		}
		else
		if (isNote && ((c=='+') || (c=='-')))
		{
			skip_i = i;
			continue;
		}
		else
		if (('0'<=c) && (c<='9'))
		{
			//efunc.alertBox('found');
			found = i + 1;
			dg = c.toString();
			skip_i = i;
			break;
		}
		else
		if (c=='.')
		{
			found = i + 1;
			skip_i = i;
			continue;
		}
		else
		{
			// other
			break;
		}
	}
	if (-1 < found)
	{
		for (var i = found; i < s.length; ++i)
		{
			var c = s.charAt(i);

			if ((c==' ') || (c=='\t'))
			{
				skip_i = i;
				continue;
			}
			else
			if (c=='.')
			{
				period += 1;
			}
			else
			if ((period < 1) && (('0'<=c) && (c<='9')))
			{
				dg = dg + c.toString();
			}
			else
			{
				break;
			}
			skip_i = i;
		}
	}
	if (dg.length)
	{
		//efunc.alertBox(dg);
		d = parseInt(dg);
	}
	return [skip_i, d, period];
}

//==================================
var notes = ['c','c+','d','d+','e','f','f+','g','g+','a','a+','b'];

function getTranspose( s, t )
//  in:	s = note
// 		t = transpose
//			 -12で1オクターブ下げ
//			 +12で1オクターブ上げる
// out: [0] = note
//		[1] = オクターブ変化
{
	var idx = -1;
	for (var i = 0; i < notes.length; ++i)
	{
		if (s == notes[i])
		{
			idx = i;
			break;
		}
	}
	if (idx < 0)
	{
		//efunc.alertBox( s + ' は音階として認識できません');
		return ['', 0];
	}

	idx += t;
	var oct_ofs = 0;
	while (idx < 0)
	{
		idx += notes.length;
		oct_ofs -= 1;
	}
	while (notes.length <= idx)
	{
		idx -= notes.length;
		oct_ofs += 1;
	}
	return [notes[idx], oct_ofs];
}

function flushOctaveOffset( result, octave_ofs, dst )
{
	while (dst > octave_ofs)
	{
		result = result + '>';
		octave_ofs += 1;
	}
	while (dst < octave_ofs)
	{
		result = result + '<';
		octave_ofs -= 1;
	}
	return result;
}

//==================================
function LoopData()
{
	// ループ回数
	this.loop_count = -1;	// -1なら無効
	this.use_interrupt = 0;
}

//==================================
function proc()
{
	//---------------------------------------
	var ps;
	ps = efunc.inputBox('転調は何度? (±12で1オクターブ変化)', '0');
	var transpose_value = parseInt(ps);

	ps = efunc.inputBox('ヘッダあり？(1=あり）','1');
	var use_header = (ps=='1');

	//---------------------------------------
	if (efunc.isSelectionEmpty())
	{
		efunc.selectLine();
	}
	var s = efunc.getSelectionText();

	//---------------------------------------

	var yStart = efunc.getSelectionStartY();
	var xStart = efunc.getSelectionStartX();
	//efunc.alertBox( xStart );

	var lh = (xStart == 1); // 行の先頭かどうか

	//---------------------------------------
	//var test_s = '';
	//---------------------------------------

	var octave_ofs = 0;
	
	var loopData = new LoopData();
	var loopStack = [];

	//---------------------------------------
	var result = '';
	var add_space = false;
	var add_LF = false;

	var skip_i = -1;

	for (var i = 0; i < s.length; ++i) 
	{
		var c = s.charAt(i);
		
		// コメント
		if (c == ';')
		{
			// コメント終端をサーチ
			var ce = s.indexOf( '\n', i + 1 );
			if (ce < 0)
			{
				skip_i = s.length;
			}
			else
			{
				skip_i = ce;
			}

			// コメントを出力
			var comment = s.substring(i, skip_i);
			result = result + comment;
			//efunc.alertBox(comment);
			
			// 出力処理をスキップ
			i = skip_i - 1;
			continue;
		}
		else
		// 改行
		if (c == '\n')
		{
			lf = true;
		}
		else
		// 行ヘッダ（チャンネル指定）
		if (lh && use_header)
		{
			if((c==' ') || (c=='\t') || (c=='='))
			{
				lh = false;
			}
		}
		else
		// 本体（内容記述部）
		if (skip_i < i)
		{
			switch (c.toLowerCase())
			{
			// ループ制御
			case '[':	// ループ開始
			{
				if (-1 < loopData.loop_count)
				{
					loopStack.push(loopData);
					loopData = new LoopData();
				}
				var r = getDigits(s, i + 1, false);
				if (r[0] < 0) 
				{
					loopData.loop_count = 2;	// 省略時2
				}
				else
				{
					skip_i = r[0];
					loopData.loop_count = r[1];
				}

				// オクターブオフセットを一旦クリア
				result = flushOctaveOffset( result, octave_ofs, 0 );
				octave_ofs = 0;
				break;
			}
			case '|':	// 最終ループ脱出
			{
				if (loopData.loop_count < 0)
				{
					efunc.alertBox('| : ループが開始されていない');
				}
				else
				{
					loopData.use_interrupt = 1;

					// オクターブオフセットを一旦クリア
					result = flushOctaveOffset( result, octave_ofs, 0 );
					octave_ofs = 0;
				}
				break;
			}
			case ']':	// ループ終了
			{
				if (-1 < loopData.loop_count)
				{
					var r = getDigits(s, i + 1, false);
					if (-1 < r[0]) 
					{
						skip_i = r[0];
						loopData.loop_count = r[1];
					}

					//// 無限ループ対策
					//if (loop_count < 1)
					//{
					//	// 無限ループでは途中抜けしない
					//	loopData.use_interrupt = 0;
					//} 

					// ループブロック終了
					// スタックがあればそれを取得
					loopData = loopStack.pop();
					if (!loopData)
					{
						loopData =  new LoopData();
					}

					// オクターブオフセットを一旦クリア
					result = flushOctaveOffset( result, octave_ofs, 0 );
					octave_ofs = 0;
				}
				else
				{
					efunc.alertBox('] : ループが開始されていない');
				}
				break;
			}
			// h?コマンド
			// 2文字コマンドのケア
			case 'h':
			{
				var j = i + 1;
				var c2 = s.charAt(j);
				switch (c2.toLowerCase())
				{
					case 'o':	// ho	start lfo
					case 'f':	// hf	stop lfo
					case 'i':	// hi	init lfo
					{
						skip_i = j;	// 2文字目
						break;
					}
				}
				break;
			}
			// s?コマンド
			// 2文字コマンドのケア
			case 's':
			{
				var j = i + 1;
				var c2 = s.charAt(j);
				switch (c2.toLowerCase())
				{
					case 'o':	// so	sustin on
					case 'f':	// sf	sustin off
					{
						skip_i = j;	// 2文字目
						break;
					}
				}
				
				break;
			}
			// k?コマンド
			// 2文字コマンドのケア
			case 'k':
			{
				var j = i + 1;
				var c2 = s.charAt(j);
				switch (c2.toLowerCase())
				{
					case 'o':	// ko	rhythm normal mode
					case 'f':	// kf	rhythm sound cut mode
					{
						skip_i = j;	// 2文字目
						break;
					}
				}
				
				break;
			}
			// @?コマンド
			// 2文字コマンドのケア
			case '@':
			{
				var j = i + 1;
				var c2 = s.charAt(j);
				switch (c2.toLowerCase())
				{
					case '\\':	// @\[n] detune
					case 'e':	// @e[n] envelope
					case 'r':	// @r[n] = @e
					case 'p':	// @p[n] lfo timer (PSG/SCC)
					case 'l':	// @l[n] total level
					case 'm':	// @m[n] macro
					case 'o':	// @o[n] macro number offset
					{
						skip_i = j;	// 2文字目
						j += 1;
						break;
					}
					case 'f':	// @f    MIB fadefg (fade out) *option*
					{
						skip_i = j;	// 2文字目
						// no param
						j = 0;
					}
					default:			// @[n]  voice
					{
						break;
					}
				}

				// skip parameter
				if (0 < j)
				{
					var r = getDigits(s, j, false);
					if (r[0] < 0) break;
					skip_i = r[0];
				}
				break;
			}
			// オクターブ指定
			case 'o':
			{
				var r = getDigits(s, i + 1, false);
				if (-1 < r[0])
				{
					skip_i = r[0];
				}
				octave_ofs = 0;
				break;
			}
			// オクターブ+1
			case '>':
			// オクターブ-1
			case '<':
				break;

			//**rythm**
			//case'S':case'H':case'M':case'C':case'B':
			//リズム音源は別処理が必要

			// 音符
			case 'a':
			case 'b':
			case 'c':
			case 'd':
			case 'e':
			case 'f':
			case 'g':
			case 'r':
			{
				var j = i + 1;
				var c2 = s.charAt( j );
				switch (c2)
				{
				case '+':
				case '-':
					// 直接スキップ + 2文字出力
					c = c + c2;
					next_i = j;
					i = j;
					j += 1;
					break;
				}

				var r = getDigits(s, j, true);
				if (-1 < r[0])
				{
					skip_i = r[0];
				}
				

				// transpose
				var r = getTranspose( c, transpose_value );
				if (r[0].length)
				{
					c = r[0];
					result = flushOctaveOffset( result, octave_ofs, r[1] );
					octave_ofs = r[1];
				}
				break;
			}
			}
		}
		result = result + c;
	}

	result = flushOctaveOffset( result, octave_ofs, 0 );
	octave_ofs = 0;
	
	result = result.replace(/<>/g, '');
	result = result.replace(/></g, '');

 	//result = result + lf + test_s;

	//efunc.alertBox(result);
	efunc.setSelectionText( result );
}

//==================================

proc();

//==================================

/* test

19A q8 l16
19A  [>f+d<a+>d]8 q5
19A  r4
19A    >c4<b4 g4a+4f+4 q4
19A  r8 
19A    >c8<b8g8a+8f+8 q8
19A    >c8<b8g8a+8f+8 q8
19A  [c]16 [c]8 c+8&(c+8&(c+8&(c+8)))q7
19A  d1& d1
;9A   @e0

*/
