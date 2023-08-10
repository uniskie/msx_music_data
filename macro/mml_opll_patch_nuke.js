/*
	opll_patch_nuke
	をMGSDRVの音色定義形式に変更する
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

// エラークラス
CustomError = function(message) 
{
	this.message = message;
}
CustomError.prototype = function(message)
{
	new Error(message);
}

//=============================

var str_head = 'YM2413::Patch{';
var token_count = 3 + 2 * 10;
var token_name = ['tl','dcm','fb','am','vib','eg','ksr','multi','ksl','ar','dr','sl','rr'];
var mgs_head = [
	';       TL FB',
	'; AR DR SL RR KL MT AM VB EG KR DT'
];
var inst_name = [
/*         'Original',*/
/* @v00 */ 'Voilin',
/* @v01 */ 'Guitar',
/* @v02 */ 'Piano',
/* @v03 */ 'Flute',
/* @v04 */ 'Clarinet',
/* @v05 */ 'Oboe',
/* @v06 */ 'Trumpet',
/* @v07 */ 'Organ',
/* @v08 */ 'Horn',
/* @v09 */ 'Synthesizer',
/* @v10 */ 'Harpsichord',
/* @v11 */ 'Vibraphone',
/* @v12 */ 'Synthesizer Bass',
/* @v13 */ 'Acoustic Bass',
/* @v14 */ 'Electric Guitar'
];
var out_inst_base = 0;//15;
var use_inst_name = true;

/* sample

@v15 = { ; brass
;       TL FB
        24, 7,
; AR DR SL RR KL MT AM VB EG KR DT
  13, 4, 1, 1, 0, 1, 0, 0, 1, 0, 0,
  14, 1, 0, 5, 0, 1, 1, 1, 1, 0, 0 }
	
constexpr std::array<YM2413::Patch, 15> YM2413::m_patches = {
//                tl   dcm fb  am     vib      eg     ksr     multi       ksl     ar          dr          sl          rr
	YM2413::Patch{0x1e, 2, 7, {0, 0}, {1, 1}, {1, 1}, {1, 0}, {0x1, 0x1}, {0, 0}, {0xd, 0x7}, {0x0, 0x8}, {0x0, 0x1}, {0x0, 0x7}},
	YM2413::Patch{0x1a, 1, 5, {0, 0}, {0, 1}, {0, 0}, {1, 0}, {0x3, 0x1}, {0, 0}, {0xd, 0xf}, {0x8, 0x7}, {0x2, 0x1}, {0x3, 0x3}},
	YM2413::Patch{0x19, 0, 0, {0, 0}, {0, 0}, {0, 0}, {1, 0}, {0x3, 0x1}, {2, 0}, {0xf, 0xc}, {0x2, 0x4}, {0x1, 0x2}, {0x1, 0x3}},
	YM2413::Patch{0x0e, 0, 7, {0, 0}, {0, 1}, {1, 1}, {1, 0}, {0x1, 0x1}, {0, 0}, {0xa, 0x6}, {0x8, 0x4}, {0x7, 0x2}, {0x0, 0x7}},
	YM2413::Patch{0x1e, 0, 6, {0, 0}, {0, 0}, {1, 1}, {1, 0}, {0x2, 0x1}, {0, 0}, {0xe, 0x7}, {0x0, 0x6}, {0x0, 0x2}, {0x0, 0x8}},
	YM2413::Patch{0x16, 0, 5, {0, 0}, {0, 0}, {1, 1}, {1, 0}, {0x1, 0x2}, {0, 0}, {0xe, 0x7}, {0x0, 0x1}, {0x0, 0x1}, {0x0, 0x8}},
	YM2413::Patch{0x1d, 0, 7, {0, 0}, {0, 1}, {1, 1}, {0, 0}, {0x1, 0x1}, {0, 0}, {0x8, 0x8}, {0x2, 0x1}, {0x1, 0x0}, {0x0, 0x7}},
	YM2413::Patch{0x2d, 2, 4, {0, 0}, {0, 0}, {1, 1}, {0, 0}, {0x3, 0x1}, {0, 0}, {0xa, 0x7}, {0x2, 0x2}, {0x0, 0x0}, {0x0, 0x7}},
	YM2413::Patch{0x1b, 0, 6, {0, 0}, {1, 1}, {1, 1}, {0, 0}, {0x1, 0x1}, {0, 0}, {0x6, 0x6}, {0x4, 0x5}, {0x1, 0x1}, {0x0, 0x7}},
	YM2413::Patch{0x0b, 3, 0, {0, 0}, {1, 1}, {0, 1}, {0, 0}, {0x1, 0x1}, {0, 0}, {0x8, 0xf}, {0x5, 0x7}, {0x7, 0x0}, {0x1, 0x7}},
	YM2413::Patch{0x03, 2, 1, {0, 0}, {0, 0}, {0, 0}, {1, 0}, {0x3, 0x1}, {2, 0}, {0xf, 0xe}, {0xa, 0x4}, {0x1, 0x0}, {0x0, 0x4}},
	YM2413::Patch{0x24, 0, 7, {0, 1}, {0, 1}, {0, 0}, {1, 0}, {0x7, 0x1}, {0, 0}, {0xf, 0xf}, {0x8, 0x8}, {0x2, 0x1}, {0x2, 0x2}},
	YM2413::Patch{0x0c, 0, 5, {0, 0}, {1, 1}, {1, 0}, {0, 1}, {0x1, 0x0}, {0, 0}, {0xc, 0xf}, {0x2, 0x5}, {0x2, 0x4}, {0x0, 0x2}},
	YM2413::Patch{0x15, 0, 3, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0x1, 0x1}, {1, 0}, {0xc, 0x9}, {0x9, 0x5}, {0x0, 0x0}, {0x3, 0x2}},
	YM2413::Patch{0x09, 0, 3, {0, 0}, {1, 1}, {1, 0}, {0, 0}, {0x1, 0x1}, {2, 0}, {0xf, 0xe}, {0x1, 0x4}, {0x4, 0x1}, {0x0, 0x3}},



*/



function getToken(s, spos)
// in:	s		文字列
//		spos	文字列中の開始位置
// out_str:	[0]	token	トークン文字列
//		[1]	epos	文字列中の開始位置
{
	var token = ""
	var epos = -1;
	for (var i = spos; i < s.length; ++i)
	{
		var c = s.charAt(i);
		switch(c)
		{
			case '{':
			case '}':
			case '(':
			case ')':
			case ':':
			case ',':
			case ' ':
				if (0 < token.length)
				{
					epos = i;
				}
				break;
			default:
				token = token + c;
				break;
		}
		if (-1 < epos) break;
	}
	return [token, epos];
}

function getNum(s)
{
	var n = null;
	if (s.toLowerCase().substring(0,2) == '0x')
	{
		n = parseInt(s, 16);
	}
	else
	{
		n = parseInt(s);
	}
	return n;
}

function formatNum( n, d )
{
	if (n < 0)
	{
		return '-' + ('   ' + (-n)).slice(-d);
	}
	return ('   ' + n).slice(-d);
}
function formatNum0( n, d )
{
	if (n < 0)
	{
		return '-' + ('000' + (-n)).slice(-d);
	}
	return ('000' + n).slice(-d);
}


// メイン処理
try {
	// 選択された文字列を取得
	if (efunc.isSelectionEmpty())
	{
		efunc.selectLine();
	}
	var org_text = efunc.getSelectionText();
	//efunc.alertBox( org_text );
	
	var out_str = '';

	var spos = 0;
	var inst_no = 0;
	var npos = spos;
	while (-1 < spos)
	{
		// 取り出し
		npos = org_text.indexOf( str_head, spos );
		if (npos < 0)	break;
		spos = npos + str_head.length;

		var params = [];
		for (var t = 0; t < token_count; ++t)
		{
			var r = getToken( org_text, spos );
			params[t] = getNum(r[0]);
			spos = r[1];
			if (spos < 0)
			{
				throw new CustomError( '音色定義パラメータが足りません ' + token_name[t] );
				break;
			}
		}

		// 吐き出し
		/*
		@v15 = { ; brass
		;       TL FB
		        24, 7,
		; AR DR SL RR KL MT AM VB EG KR DT
		  13, 4, 1, 1, 0, 1, 0, 0, 1, 0, 0,
		  14, 1, 0, 5, 0, 1, 1, 1, 1, 0, 0 }
		*/
		out_str = out_str + '@v' + formatNum0(out_inst_base + inst_no, 2) + ' = {';
		if (use_inst_name)
		{
			out_str = out_str + ' ; ' + inst_name[inst_no];
		}
		out_str = out_str + lf;
		/*
		var token_name = [
			'tl','dcm','fb',
			'am','vib','eg','ksr','multi','ksl','ar','dr','sl','rr'];
		*/
		out_str = out_str + mgs_head[0] + lf;
		out_str = out_str + '        ';
		out_str = out_str + formatNum(params[0], 2) + ',';	// tl
		out_str = out_str + formatNum(params[2], 2) + ',';	// fb
		out_str = out_str + lf;

		out_str = out_str + mgs_head[1] + lf;
		for (var j = 0; j < 2; ++j)
		{
			out_str = out_str + '  ';
			out_str = out_str + formatNum(params[3 + 6 * 2 + j], 2) + ',';	// ar
			out_str = out_str + formatNum(params[3 + 7 * 2 + j], 2) + ',';	// dr
			out_str = out_str + formatNum(params[3 + 8 * 2 + j], 2) + ',';	// sl
			out_str = out_str + formatNum(params[3 + 9 * 2 + j], 2) + ',';	// rr
			out_str = out_str + formatNum(params[3 + 5 * 2 + j], 1) + ', ';	// ksl
			out_str = out_str + formatNum(params[3 + 4 * 2 + j], 1) + ', ';	// mt
			out_str = out_str + formatNum(params[3 + 0 * 2 + j], 1) + ', ';	// am
			out_str = out_str + formatNum(params[3 + 1 * 2 + j], 1) + ', ';	// vb
			out_str = out_str + formatNum(params[3 + 2 * 2 + j], 1) + ', ';	// eg
			out_str = out_str + formatNum(params[3 + 3 * 2 + j], 1) + ', ';	// kr
			out_str = out_str + formatNum(((params[1] >> (j)) & 1), 1);	// dt
			if (j)	out_str = out_str + ' } ';
			else	out_str = out_str + ',';
			out_str = out_str + lf;
		}
		out_str = out_str + lf;

		++inst_no;
	}

	efunc.setSelectionText( org_text + lf + out_str );
}
catch (e)
{
	if (e instanceof CustomError)
	{
		efunc.alertBox( e.message );
	}
	else
	{
		throw e;
	}
}

