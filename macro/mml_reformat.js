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
var step_base = 192;	// MGSDRL L1 step
var step_mul = 4;		// 内部倍率
var L1 = step_base * step_mul;
var L4 = L1 / 4;

//==================================
function getDigits(s, si, d_type)
/*
  in:	s		文字列
		si		文字列中の参照開始位置
		d_type	0:通常/1:音長(%あり)/2:音符音長(+-%.あり)
 out:	[0]	最終位置 ( charAt用 )
		[1]	数値（音長ならステップ数*倍率に変換）
		[2]	ピリオドの数
		エラー時は [0]が-1
*/
{
	var d = -1;
	var skip_i = -1;
	var period = 0;

	var found = -1;
	var dg = '';
	var use_step = false;	// '%'

	for (var i = si; i < s.length; ++i)
	{
		var c = s.charAt(i);
		if ((c==' ') || (c=='\t'))
		{
			continue;
		}
		else
		if ((d_type==2) && ((c=='+') || (c=='-')))
		{
			skip_i = i;
			continue;
		}
		else
		if ((0 < d_type) && (c=='%'))
		{
			skip_i = i;
			use_step = true;
			continue;
		}
		else
		if (('0'<=c) && (c<='9'))
		{
			//efunc.alertBox('found');
			found = i;
			skip_i = i;
			break;
		}
		else
		if ((d_type==2) && (c=='.'))
		{
			//efunc.alertBox('.');
			found = i;
			skip_i = i;
			break;
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
		
		// 音長変換
		if (0 < d_type)
		{
			if (use_step)
			{
				// ステップ指定
				d = d * step_mul;
			}
			else
			{
				// n分音符指定
				if (0 < d)
				{
					d = L1 / d;
				}
			}
		}
	}
	return [skip_i, d, period];
}

//==================================
function LoopData()
{
	// ループ回数
	this.loop_count = -1;
	
	// 時間
	this.time = 0;
	this.interrupt = 0;
}

//==================================
function proc()
{
	//---------------------------------------
	var ps;
	ps = efunc.inputBox('1小節の長さは？','4/4');
	//var bl = parseInt(ps);
	var bl = Function('return (' + L1 + '*(' + ps+'));')();
	if (isNaN(bl) || (bl <= 0)) {
		efunc.alertBox('1小節の長さが不明です。');
		return;
	}
	//efunc.alertBox(bl);

	ps = efunc.inputBox('省略時の音長は？','8');
	var r = getDigits( ps, 0, 1);
	if (r[0] < 0)
	{
		efunc.alertBox('省略時の音長が不明です。');
		return;
	}
	var default_step = r[1];
	
	
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
	// 最後が改行か？
	lfend = (s.charAt(s.length - 1)=='\n');	//
	//efunc.alertBox(lfend);

	//---------------------------------------
	// 行ヘッダ取得
	var line_header = null;
	if (use_header)	{

		if (!lh) {
			// 行頭でなければ行頭を取得
			var linestr = efunc.getLineText( yStart ); 
			line_header = linestr.match(/^[^;\s][^\s]*[\s\=]/);
			if (line_header)
			{
				s = lf + line_header + s;
			}
		}
		if (!line_header)
		{
			line_header = s.match(/^[^;\s][^\s]*[\s\=]/);
		}
		if (!line_header)
		{
			line_header = s.match(/\n[^;\s][^\s]*[\s\=]/);
			if (line_header)
			{
				line_header = (""+line_header).replace(/\n/g, '');
			}
		}
		if (!line_header)
		{
			line_header = '';
		}

		// 行ヘッダ削除
		s = s.replace(/^[^;\s][^\s]*[\s\=]/, '');
		s = s.replace(/\n[^;\s][^\s]*[\s\=]/g, '\n');

	}
	else
	{
		line_header = '';
	}
	//efunc.alertBox('"' + line_header +'"');
	//efunc.alertBox(s);

	//---------------------------------------
	//var test_s = '';
	//---------------------------------------

	var count_BL = 0;
	var count_L4 = 0;
	
	var loopData = new LoopData();
	var loopStack = [];

	//---------------------------------------
	var result = '';
	var add_space = false;
	var add_lf = false;

	var skip_i = -1;
	var l_indent = 0;

	for (var i = 0; i < s.length; ++i) 
	{
		var c = s.charAt(i);
		
		// コメント
		if (c == ';')
		{
			if (!lh && (s.charAt( i - 1) == '\n'))
			{
				result = result + lf;
				lh = true;
				add_lf = false;
				add_space = false;
			}
			
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
			if (!lh)
			{
				result = result + ' ';
			}
			result = result + comment;
			//efunc.alertBox(comment);
			
			
			// 改行があった場合は改行を追加
			if (0 <= ce)
			{
				result = result + lf;
				lh = true;
				add_lf = false;
				add_space = false;
			}

			// 出力処理をスキップ
			i = skip_i;	// lfも飛ばす
			continue;
		}

		if (skip_i < i)
		{
			// 改行・スペース追加
			if (add_lf || add_space)
			{
				if (  (c=='^')
					||(c=='&')
					||(c=='>')
					||(c=='<')
					||(c==']')
					||(c=='\t')
					||(c=='\n')
					||(c=='\r')
					)
				{
					// 改行・スペース追加しない
				}
				else
				if (add_lf)
				{
					result = result + lf;
					lh = true;
					add_lf = false;
					add_space = false;
				}
				else
				if (add_space)
				{
					result = result + ' ';
					add_space = false;
				}
			}
			
			switch (c.toLowerCase())
			{
			// ループ制御
			case '[':	// ループ開始
			{
				loopStack.push(loopData);
				loopData = new LoopData();

				var r = getDigits(s, i + 1, 0);
				if (-1 < r[0])
				{
					skip_i = r[0];
				}
				if (-1 < r[1])
				{
					loopData.loop_count = r[1];
					// 数値指定の後にスペース
					add_space = true;
				}
				else
				{
					loopData.loop_count = 2;	// 省略時2
				}
				
				// 無限ループの始まり
				if (loopData.loop_count == 0)
				{
					// 改行してから出力
					if (!lh)
					{
						result = result + lf;
						lh = true;
						add_lf = false;
						add_space = false;
					}

					// コマンドの後に改行
					add_lf = true;
				}
				break;
			}
			case '|':	// 最終ループ脱出
			{
				if (-1 < loopData.loop_count)
				{
					loopData.interrupt = loopData.time;
				}
				else
				{
					efunc.alertBox('| : ループが開始されていない');
				}
				break;
			}
			case ']':	// ループ終了
			{
				if (-1 < loopData.loop_count)
				{
					var loopTime = 0;

					var r = getDigits(s, i + 1, 0);
					if (-1 < r[0])
					{
						skip_i = r[0];
					}
					if (-1 < r[1])
					{
						loopData.loop_count = r[1];
						// 数値指定の後にスペース
						add_space = true;
					}

					// 無限ループ以外ならループ処理
					if (0 < loopData.loop_count)
					{
						// ループ中の長さ計算
						// ループ1回目はすでに反映済みなので2周目以降を加算
						loopTime = loopData.time * (loopData.loop_count - 1);
						if (loopData.interrupt)
						{
							// |指定：最終カウントで中断する場合
							loopTime -= loopData.time - loopData.interrupt;
						}

						//efunc.alertBox("loop loop_count:" + loopData.loop_count);
						//efunc.alertBox("loop time:" + loopData.time);
						//efunc.alertBox("loop interrupt:" + loopData.interrupt);
						//efunc.alertBox(loopTime);

						// 4分音符単位
						count_L4 += loopTime;
						while (L4 <= count_L4)
						{
							add_space = true;
							count_L4 -= L4;
						}
						
						// 1分音符単位
						count_BL += loopTime;
						while (bl <= count_BL)
						{
							add_lf = true;
							count_BL -= bl;
						}
					}
					
					// 無限ループの終わり
					if (loopData.loop_count == 0)
					{
						// 改行してから出力
						if (!lh)
						{
							result = result + lf;
							lh = true;
							add_lf = false;
							add_space = false;
						}

						// コマンドの後に改行
						add_lf = true;
					}
					
					// スタックがあればそれを取得
					loopData = loopStack.pop();
					if (!loopData)
					{
						loopData =  new LoopData();
					}
					else
					{
						// 多重ループなら
						// 今回のループ分の残り加算
						loopData.time += loopTime;
					}
					l_indent = loopStack.length;
				}
				else
				{
					efunc.alertBox('] : ループが開始されていない');
				}
				break;
			}

			// *コマンド
			// マクロ展開はしないがアルファベット+数値を音符扱いしないようにスキップ
			case '*':
			{
				//必ず1文字スキップ
				var j = i + 1;

				skip_i = j;
				j = j + 1
				var c2 = s.charAt(j); 

				// 数値以外なら終了
				while (('0' <= c2) && (c2 <= '9'))
				{
					skip_i = j;
					j = j + 1
					c2 = s.charAt(j); 
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

				// parameter
				if (0 < j)
				{
					var r = getDigits(s, j, 0);
					if (-1 < r[0])
					{
						skip_i = r[0];
					}
					//var d = r[1];
				}
				break;
			}
			
			// 音長指定
			case 'l':
			{
				var r = getDigits(s, i + 1, 1);
				if (r[0] < 0) 
				{
					break;
				}
				skip_i = r[0];
				var d = r[1];
				if (d >= 0)
				{
					default_step = d;
					//efunc.alertBox('L%' +(default_step / step_mul) + '(L'+ (L1 / default_step) + ')');
				}
				else
				{
					efunc.alertBox('Lに数値がない');
				}
			}
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
				var r = getDigits(s, i + 1, 2);
				var d = r[1];
				var period = r[2];
				if (-1 < r[0])
				{
					skip_i = r[0];
				}
				if (d < 0)
				{
					d = default_step;
				}
				//efunc.alertBox(d);
				
				var ll = d;
				
				// period
				//var ps = '';
				var o = ll;
				for (var pi=0; pi<period; ++pi)
				{
					o/=2;
					ll += o;
					//ps = ps + '.';
				}
				
				// 4分音符単位
				count_L4 += ll;
				while (L4 <= count_L4)
				{
					add_space = true;
					count_L4 -= L4;
					//efunc.alertBox('L4' + result);
					//test_s = test_s + '(L4:' + count_L4 + ') ';
				}
				
				// 1分音符単位
				count_BL += ll;
				while (bl <= count_BL)
				{
					add_lf = true;
					count_BL -= bl;
					//efunc.alertBox('L1:' + result);
					//test_s = test_s + '(BL:' + count_BL + ') ';
				}
				
				// ループ中処理
				if (-1 < loopData.loop_count)
				{
					loopData.time += ll;
				}
				break;
			}
			}
		}

		if ((c != '\n') && (c != '\r')&&
			(c != ' ') && (c != '\t'))
		{

			if (lh)	// 行頭開始なら行ヘッダから開始
			{
				result = result + line_header;
				var idi = 0
				if (c=='|') idi = 1;
				for (; idi < l_indent; ++idi)
				{
					result = result + ' ';
				}
			}
			lh = false;

			result = result + c;
			
			//
			l_indent = loopStack.length;
		}
	}

	if (lfend && !lh)
	{
		result = result + lf;
	}

 	//result = result + lf + test_s;

	//efunc.alertBox(result);
	efunc.setSelectionText( result );
}

//==================================

proc();

//==================================

/* test

156 l8[2 b4 [2 a4 g+4 f+4]
156  e4]
156 [2 e2
156  d+2 c+2
156  d+2]

19A @0 v15
19A q8 l16
19A [0[a+f+df+]8
19A  r4
19A    >c4<b4 g4a+4f+4 q4
19A  r8 ;r8 
19A    >c8<b8g8a+8f+8 q8
19A    >c8<b8g8a+8f+8 q8
;9A   @e0
19A  [c]16 [c]8 c+8&(c+8&(c+8&(c+8)))q7
19A  d1& d1
19A ]

1 [2 o5o6
1  [2 e16d16e4. o5ab o6c
1  |d
1  ]e
1 |
1  [2 d16e16d4. o5ga bo6
1  |c
1  ]d
1 ]
1 d16c16 d4. g ab o7cd4 o6b4 g4 d2.

*/
