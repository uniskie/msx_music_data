/**
    【MML整形 for MGSDRV】
	
	 4分音符ごとにスペース挿入
	 1分音符で改行
*/

///*
//////////// sakura editor ///////////////////
function prompt( msg, def ) {
	return Editor.InputBox(msg, def, 8);
}
function alert(s) {
	Editor.InfoMsg(s);
}
function isSelectionEmpty() {
	return (Editor.IsTextSelected == 0);
}
function selectLine() {
	Editor.SelectLine();
}
function getSelectionStartY() {
	return Editor.GetSelectLineFrom();
}
function getSelectionStartX() {
	return Editor.GetSelectColumnFrom();
}
function getLineText( l ) {
	return Editor.GetLineStr( l ); 
}
function getSelectionText() {
	return Editor.GetSelectedString();
}
function setSelectionText( s ) {
	Editor.InsText( s );
}
//*/

/*
//////////// emEditor ////////////////////////
function isSelectionEmpty() {
	return document.selection.IsEmpty;
}
function selectLine() {
	document.selection.SelectLine();
}
function getSelectionStartY() {
	return document.selection.GetTopPointY( eePosLogical );
}
function getSelectionStartX() {
	return document.selection.GetTopPointX( eePosLogical );
}
function getLineText( l ) {
	return document.GetLine( l ); 
}
function getSelectionText() {
	return document.selection.Text;
}
function setSelectionText( s ) {
	document.selection.Text = s;
}
//*/

//==================================
var L1 = 96 * 4;
var L4 = L1 / 4;

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
			//alert('found');
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
		//alert(dg);
		d = parseInt(dg);
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
	ps = prompt('1小節の長さは？','4/4');
	//var bl = parseInt(ps);
	var bl = Function('return (' + L1 + '*(' + ps+'));')();
	if (isNaN(bl) || (bl <= 0)) {
		alert('1小節の長さが不明です。');
		return;
	}
	//alert(bl);

	ps = prompt('省略時の音長は？','8');
	var defaultL = parseInt(ps);
	if (isNaN(defaultL) || (defaultL <= 0)) {
		alert('省略時の音長が不明です。');
		return;
	}
	
	ps = prompt('ヘッダあり？(1=あり）','1');
	var use_header = (ps=='1');

	//---------------------------------------
	if (isSelectionEmpty())
	{
		selectLine();
	}
	var s = getSelectionText();

	//---------------------------------------

	var yStart = getSelectionStartY();
	var xStart = getSelectionStartX();
	//alert( xStart );

	var lh = (xStart == 1); // 行の先頭かどうか

	//---------------------------------------
	// 最後が改行か？
	lfend = (s.charAt(s.length - 1)=='\n');	//
	//alert(lfend);

	//---------------------------------------
	// 行ヘッダ取得
	var line_header = null;
	if (use_header)	{

		if (!lh) {
			// 行頭でなければ行頭を取得
			var linestr = getLineText( yStart ); 
			line_header = linestr.match(/^[^;\s][^\s]*\s/);
			if (line_header)
			{
				s = '\n' + line_header + s;
			}
		}
		if (!line_header)
		{
			line_header = s.match(/^[^;\s][^\s]*\s/);
		}
		if (!line_header)
		{
			line_header = s.match(/\n[^;\s][^\s]*\s/);
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
		s = s.replace(/^[^;\s][^\s]*\s/, '');
		s = s.replace(/\n[^;\s][^\s]*\s/g, '\n');

	}
	//alert('"' + line_header +'"');
	//alert(s);

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
				result = result + '\n';
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
			//alert(comment);
			
			
			// 改行があった場合は改行を追加
			if (0 <= ce)
			{
				result = result + '\n';
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
					//||(c==';')
					)
				{
					// 改行・スペース追加しない
				}
				else
				if (add_lf)
				{
					result = result + '\n';
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

				var r = getDigits(s, i + 1, false);
				if (-1 < r[0])
				{
					skip_i = r[0];
				}
				if (-1 < r[1])
				{
					loopData.loop_count = r[1];
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
						result = result + '\n';
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
					alert('| : ループが開始されていない');
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
					}
					if (-1 < r[1])
					{
						loopData.loop_count = r[1];
					}

					// 無限ループ以外ならループ処理
					if (0 < loopData.loop_count)
					{
						// ループ中の長さ計算
						// ループ1回目はすでに反映済みなので2周目以降を加算
						var loopTime = loopData.time * (loopData.loop_count - 1);
						if (loopData.interrupt)
						{
							// |指定：最終カウントで中断する場合
							loopTime -= loopData.time - loopData.interrupt;
						}

						//alert("loop loop_count:" + loopData.loop_count);
						//alert("loop time:" + loopData.time);
						//alert("loop interrupt:" + loopData.interrupt);
						//alert(loopTime);

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
							result = result + '\n';
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
					l_indent = loopStack.length;
				}
				else
				{
					alert('] : ループが開始されていない');
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
					var r = getDigits(s, j, false);
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
				var r = getDigits(s, i + 1, false);
				if (r[0] < 0) 
				{
					break;
				}
				skip_i = r[0];
				var d = r[1];
				if (d >= 0)
				{
					defaultL = d;
					//alert('L' + defaultL);
				}
				else
				{
					//alert('L?');
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
				var r = getDigits(s, i + 1, true);
				var d = r[1];
				var period = r[2];
				if (-1 < r[0])
				{
					skip_i = r[0];
				}
				if (d < 0)
				{
					d = defaultL;
				}
				//alert(d);
				
				var ll = L1 / d;
				
				// period
				//var ps = '';
				var o = ll;
				for (var pi=0; pi<period; ++pi)
				{
					o/=2;
					ll += o;
					//ps = ps + '.';
				}

				//test_s = test_s + d + ps + '(' + ll + ') ';

				// 4分音符単位
				count_L4 += ll;
				while (L4 <= count_L4)
				{
					add_space = true;
					count_L4 -= L4;
					//alert('L4' + result);
					//test_s = test_s + '(L4:' + count_L4 + ') ';
				}
				
				// 1分音符単位
				count_BL += ll;
				while (bl <= count_BL)
				{
					add_lf = true;
					count_BL -= bl;
					//alert('L1:' + result);
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
				for (var idi = 0; idi < l_indent; ++idi)
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
		result = result + '\n';
	}

 	//result = result + '\n' + test_s;

	//alert(result);
	setSelectionText( result );
}

//==================================

proc();

//==================================

/* test

19A @0 v15
19A q8 l16
19A [0[a+f+df+]8
19A  r4
19A    >c4<b4 g4a+4f+4 q4
19A  r8 
19A    >c8<b8g8a+8f+8 q8
19A    >c8<b8g8a+8f+8 q8
;9A   @e0
19A  [c]16 [c]8 c+8&(c+8&(c+8&(c+8)))q7
19A  d1& d1
19A ]

*/
