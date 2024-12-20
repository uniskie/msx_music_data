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
	efunc.getSelectionText = function()		{	return document.selection.Text;	}
}catch(e){
	//alert('sakura editor ?');
	efunc.inputBox = function( msg, def )	{	return Editor.InputBox(msg, def, 8);	}
	efunc.alertBox = function(s)			{	Editor.InfoMsg(s);	}
	efunc.isSelectionEmpty = function()		{	return (Editor.IsTextSelected == 0);	}
	efunc.selectLine = function()			{	Editor.SelectLine();	}
	efunc.getSelectionText = function()		{	return Editor.GetSelectedString();	}
}
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