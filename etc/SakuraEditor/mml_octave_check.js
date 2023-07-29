// オクターブ変化検査

///*
//////////// sakura editor ///////////////////
function alert(s) {
	Editor.InfoMsg(s);
}
function isSelectionEmpty() {
	return (Editor.IsTextSelected == 0);
}
function selectLine() {
	Editor.SelectLine();
}
function getSelectionText() {
	return Editor.GetSelectedString();
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
function getSelectionText() {
	return document.selection.Text;
}
//*/

var o = 0;
var s;

if (isSelectionEmpty())
{
	selectLine();
}

s = getSelectionText();

for (var i = 0; i < s.length; ++i) {
	switch (s.charAt(i))
	{
		case '<': --o; break;
		case '>': ++o; break;
	}
}
if (o != 0)
{
	alert ("音階:" + o);
}