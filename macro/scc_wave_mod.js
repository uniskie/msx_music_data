/*
	SCC波形のボリューム変更
	  番号  波形データ                         倍率(1/256)
	@s00 = {00112233445566778899aabbccddeeff
	        00112233445566778899aabbccddeeff}; 00
	
	ボリュームに指定した数値 / 256 の倍率をかける
	256ならそのまま
	128なら半分
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
	efunc.getSelectionText = function()		{	return document.selection.Text;	}
	efunc.setSelectionText = function( s )	{	document.selection.Text = s;	}
	efunc.lf = '\n';
}catch(e){
	//alert('sakura editor ?');
	efunc.inputBox = function( msg, def )	{	return Editor.InputBox(msg, def, 8);	}
	efunc.alertBox = function(s)			{	Editor.InfoMsg(s);	}
	efunc.isSelectionEmpty = function()		{	return (Editor.IsTextSelected == 0);	}
	efunc.getSelectionText = function() 	{	return Editor.GetSelectedString();	}
	efunc.setSelectionText = function( s )	{	Editor.InsText( s );	}
	efunc.lf = ['\r\n', '\r', '\n'][GetLineCode()];
}
var lf = efunc.lf;
//=============================

// 割る数
divider = 256;

// エラークラス
CustomError = function(message) 
{
	this.message = message;
}
CustomError.prototype = function(message)
{
	new Error(message);
}

// メイン処理
try {
	// 選択された文字列を取得
	b = !efunc.isSelectionEmpty();
	if (b==0) {
		mes = 'SCC波形データを選択してください。\n'
			+ '@s00 = { 00*32個 }\n';
		throw new CustomError( mes );
	}
	
	org_text = efunc.getSelectionText();
	//efunc.alertBox( org_text );
	
	// 空白を除去
	str = org_text.replace(/[\s\n]/g,'')
	//efunc.alertBox( org_text );

	// @s nn = { nn*32 }; nn を取り出す
	wave_def = str.match(/@s([0-9a-zA-Z]+)=\{([0-9a-zA-Z]{64})\}/i);
	if (!wave_def)
	{
		mes = 'SCC波形データの形式が違います。\n'
			+ '@s00 = { 00*32個 }; 00 \n'
		    + str;
		throw new CustomError( mes );
	}
	//efunc.alertBox( '@s' + wave_def[1] + ' = {\n' + wave_def[2] + '} ; volume ' );
	inst_no_str = wave_def[1];
	wave_str    = wave_def[2];

	// 楽器番号
	inst_no = parseInt(inst_no_str);
	//efunc.alertBox( 'inst_no ' + inst_no );

	// 16進数2桁 32個に分解
	hexs_str = wave_str.match(/.{2}/g);
	//efunc.alertBox( hexs_str.join(',') );
	if (!hexs_str || (hexs_str.length != (32)))
	{
		mes = 'SCC波形データは16進数2桁が32個です。\n'
			 + str;
		if (!!hexs_str) {
			mes = mes + "\n" + hexs_str.length
		}
		throw new CustomError( mes );
	}

	// 16進数文字列から数値に変換
	hexs = new Array();
	for (i=0; i<hexs_str.length; ++i)
	{
		v = hexs_str[i];
		hexs.push( parseInt(v, 16) ); // 16進数文字列→数値
	}
	//efunc.alertBox( hexs.join(',') );
	
	// ボリューム（倍率）を数値に変換
	var volume_str = efunc.inputBox("ボリュームは？(max "+ divider + ")", divider);
	volume = parseInt(volume_str);
	//efunc.alertBox( 'volume = ' + volume  );
	
	// 波形データに倍率をかける
	hexd = new Array();
	hexd_str = new Array();
	for (i=0; i<hexs.length; ++i)
	{
		e = hexs[i];
		if (127 < e) { e = e - 256; }
		e = Math.floor(e * volume / divider);
		if (e < 0) { e = e + 256; }
		e = Math.min(e, 255);
		e = Math.max(e, 0);
		s = ('0'+e.toString(16)).slice(-2);
		//s = s.toUpperCase();
		hexd_str.push( s );
	}
	//efunc.alertBox( hexs_str.join(' ') + '\n ' + volume + '/15 ->  \n' + hexd_str.join(' ') );
	
	// 文字列生成
	new_wave = hexd_str.join('');
	out_str = '@s' + ('0'+ inst_no).slice(-2) + ' = { ' 
		+ new_wave.substring(0,32) + ' ' + new_wave.substr(32) + ' }'
	//efunc.alertBox( out_str );
	
	// 返す
	s = ';' + org_text + lf
		    + out_str + ' ; rate ' + volume + '/256' + lf;
	efunc.setSelectionText( s );
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

/*

@s0 ={ 001931475a6a757d7f7d756a5a473119
       00e7cfb9a6968b8380838b96a6b9c7e7 }
@s1 ={ 60606060606060606060606060606060
       8090a0b0c0d0e0f00010203040506070 }
@s6 ={ 808ea0c0e000203f3e3c3a373129201c
       00e7cfb9a6968b8380838b96a6b9c7e7 }
@s13={ 001931475a6a757d7f7d756a5a473119
       8090a0b0c0d0e0f00010203040506070 }
       
*/
