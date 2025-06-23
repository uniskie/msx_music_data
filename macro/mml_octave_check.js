// オクターブ変化検査

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
	efunc.setCursor = function( x, y )		{	return document.selection.SetActivePoint( eePosLogical, x, y );	}
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
	efunc.setCursor = function( x, y )		{	return Editor.MoveCursor( y, x, 0 );	}
	efunc.getLineText = function( l )		{	return Editor.GetLineStr( l ); 	}
	efunc.getSelectionText = function() 	{	return Editor.GetSelectedString();	}
	efunc.setSelectionText = function( s )	{	Editor.InsText( s );	}
	efunc.lf = ['\r\n', '\r', '\n'][GetLineCode()];
}
var lf = efunc.lf;
//=============================

var o = 0;
var s;
var is_abs = false;

if (efunc.isSelectionEmpty())
{
	efunc.selectLine();
}

s = efunc.getSelectionText();

for (var i = 0; i < s.length; ++i) {
	switch (s.charAt(i))
	{
		case 'o': {
			var os = ''
			var c;
			for (var j = i + 1; j < s.length; ++j) {
				c = s.charAt(j);
				if (c == ' ') continue;
				if (c >= '0' && c <= '9') {
					os = os + c;
				} else {
					break;
				}
			}
			if (os.length) {
				is_abs = true;
				o = Number(os);
			}
			break;
		}
		case '<': --o; break;
		case '>': ++o; break;
	}
}
//if (o != 0)
{
	if (is_abs) {
		efunc.alertBox ("音階: o" + o);
	} else {
		if (o < 0) {
			efunc.alertBox ("音階: " + o);
		} else {
			efunc.alertBox ("音階: +" + o);
		}
	}
}