        ��  ��                  �  4   ��
 I W _ F A V I C O N         0                   �     (       @         �                        �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ���                                      DDDD          LDDDDD        t���$DDDD      L��FB���$@     |���b"$�B"D    l���b""L�bD@   v�����""$�L$D   r����""",̙�D  �����""�&̙�D@ ,����")��l���@ xhə�f")��&���D v����"")��"���D xhə""")�)����D v����"")�)���ɔ xo���"�)�,���D� v����"�)��)��ę v����"�"��)��̙�v����")���$���I�o�)��̙��Li�$)�������,��")�BI�����,��,�L"�$)� x��"""�l��"�B�  h��"""""""$$   �(,""""""""@    �/b�"""""$     ���L"""""       �o�"""""       ��"&�"w        f��fw          wwww      �����������  ��  �  ?�  �  �  �  �  �                             �  �  �  �  �  �  �  ?�  �  �������  )  8   ��
 I W _ G F X _ E R R O R         0        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>

<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html;CHARSET=iso-8859-1">
<META HTTP-EQUIV="no-cache">

	<META NAME="GENERATOR" Content="Visual Page 1.1 for Windows">
	<TITLE>{%APPNAME%} Error</TITLE>
</HEAD>

<BODY>

<P>
<TABLE BORDER="0" WIDTH="100%">
	<TR>
		<TD WIDTH="115">&nbsp;</TD>
		<TD>
			<H1 ALIGN="CENTER">{%APPNAME%} Error
		</TD>
	</TR>
	<TR>
		<TD WIDTH="115">&nbsp;</TD>
		<TD VALIGN="TOP">{%CONTENT%}</TD>
	</TR>
</TABLE>


</BODY>

</HTML>   �N  <   ��
 I W _ J S _ I W C O M M O N         0        var ie4 = (document.all)? true:false;
var ns6 = (document.getElementById)? true && !ie4:false;
var _numScrolls = 0;
var _scrolls = new Array();
var _dragObject;
var _thumbLayer; // contains thumb for scrolling
var _barLayer; // contains the scroll bar
var _scrollLayer;// points to the content that is scrolled
var _scrollInt;
var _scrollImgs;
var _nav4 = (navigator.appName.indexOf("Netscape") != -1);
var _loading = false;
var _domain = document.domain;
function fFrame(left,top,width,height,src,baseHREF,borderColor) {
this.top = top;
this.left = left;
this.width = width;
this.height = height;
this.src = src;
this.baseHREF = baseHREF;
this.borderColor = borderColor || "#DDDDDD";
this.inSync = new Array();
this.id = _numScrolls;
this.load = _fLoadSrc;
this.scrollTo = _fScrollTo;
this.scrollBy = _fScrollBy;
this.init = _fInit;
this.setup = _fSetup;
if(src.indexOf("http://") != -1) {
if(src.indexOf(_domain) == -1) {
alert("fframe.js: Sorry, the src you specified is not in this domain.");
return;
}
}
if(_nav4) {
this.isInit = false;
this.isSetup = false;
if(!baseHREF) {
this.baseHREF = GURLBase + "/gfx/sb_";
} else
this.baseHREF = baseHREF;
if(!_scrollImgs) _fLoadImages(this.baseHREF);
this.init();
this.load(false, false);
this.setup();
} else {
document.body.innerHTML +=
'<IFRAME WIDTH='+width+' HEIGHT='+height+' SCROLL=AUTO '+
'NAME="scroll'+_numScrolls+'" '+
'ID="scroll'+_numScrolls+'" '+
'STYLE="position:absolute;'+
'left:'+left+';'+
'top:'+top+';'+
'width:'+width+';'+
'height:'+height+';" '+
'SRC="'+src+'">'+
'</IFRAME>\n';
this.layer = document.all["scroll"+_numScrolls];
this.layer.style.borderColor = this.borderColor;
this.isInit = true;
this.isSetup = true;
}
_numScrolls++;
_scrolls[this.id] = this;
}
function _fLoadImages(baseHREF) {
if(_loading) {
setTimeout(_fLoadImages, 100, baseHREF);
return;
}
_loading = true;
_scrollImgs = new Array(13);
_scrollImgs[0] = new Image(16,16);
_scrollImgs[0].src = baseHREF + "vup.gif";
_scrollImgs[1] = new Image(16,16);
_scrollImgs[1].src = baseHREF + "vup2.gif";
_scrollImgs[2] = new Image(16,16);
_scrollImgs[2].src = baseHREF + "vdown.gif";
_scrollImgs[3] = new Image(16,16);
_scrollImgs[3].src = baseHREF + "vdown2.gif";
_scrollImgs[4] = new Image(16,16);
_scrollImgs[4].src = baseHREF + "hleft.gif";
_scrollImgs[5] = new Image(16,16);
_scrollImgs[5].src = baseHREF + "hleft2.gif";
_scrollImgs[6] = new Image(16,16);
_scrollImgs[6].src = baseHREF + "hright.gif";
_scrollImgs[7] = new Image(16,16);
_scrollImgs[7].src = baseHREF + "hright2.gif";
_scrollImgs[8] = new Image(16,16);
_scrollImgs[8].src = baseHREF + "vbg.gif";
_scrollImgs[9] = new Image(16,17);
_scrollImgs[9].src = baseHREF + "vthumb.gif";
_scrollImgs[10] = new Image(16,16);
_scrollImgs[10].src = baseHREF + "hbg.gif";
_scrollImgs[11] = new Image(17,16);
_scrollImgs[11].src = baseHREF + "hthumb.gif";
_scrollImgs[12] = new Image(15,15);
_scrollImgs[12].src = baseHREF + "null.gif";
_loading = false;
}
function _fInit() { _fRealInit(this); }
function _fRealInit(frame) {
if(_loading) {
setTimeout(_fRealInit, 100, frame);
return;
}
_loading = true;
var borderLayer, contentLayer;
borderLayer = new Layer(frame.width+2);
borderLayer.left = frame.left-1;
borderLayer.top = frame.top-1;
borderLayer.clip.width = frame.width+2;
borderLayer.height = frame.height+2;
borderLayer.clip.height = frame.height+2;
borderLayer.document.bgColor = frame.borderColor;
borderLayer.visibility = "inherit";
frame.borderLayer = borderLayer;
contentLayer = new Layer(frame.width);
contentLayer.captureEvents(Event.ONLOAD);
contentLayer.onLoad = _fOnLoad;
frame.layer = contentLayer;
frame.layer.frame = frame;
frame.vspLayer = new Layer(16);// contains scroll bar
frame.vsuLayer = new Layer(16);// contains up arrow
frame.vsdLayer = new Layer(16);// contains down arrow
frame.vssLayer = new Layer(16);// contains thumb
_fInitComp(frame.vspLayer,
_scrollStartVJump, _scrollEndVJump, 8);
_fInitComp(frame.vsuLayer,
_scrollStartUp, _scrollEndUp, 0);
_fInitComp(frame.vsdLayer,
_scrollStartDown, _scrollEndDown, 2);
_fInitComp(frame.vssLayer,
_scrollStartDrag, _scrollEndDrag, 9);
frame.vssLayer.parLayer = frame.layer;
frame.vssLayer.spLayer = frame.vspLayer;
frame.vspLayer.ssLayer = frame.vssLayer;
frame.vsuLayer.ssLayer = frame.vssLayer;
frame.vsdLayer.ssLayer = frame.vssLayer;
frame.hspLayer = new Layer(frame.width-29);// contains scroll bar
frame.hsuLayer = new Layer(16);// contains left arrow
frame.hsdLayer = new Layer(16);// contains right arrow
frame.hssLayer = new Layer(17);// contains thumb
_fInitComp(frame.hspLayer,
_scrollStartHJump, _scrollEndHJump, 10);
_fInitComp(frame.hsuLayer,
_scrollStartLeft, _scrollEndLeft, 4);
_fInitComp(frame.hsdLayer,
_scrollStartRight, _scrollEndRight, 6);
_fInitComp(frame.hssLayer,
_scrollStartDrag, _scrollEndDrag, 11);
frame.hssLayer.parLayer = frame.layer;
frame.hssLayer.spLayer = frame.hspLayer;
frame.hspLayer.ssLayer = frame.hssLayer;
frame.hsuLayer.ssLayer = frame.hssLayer;
frame.hsdLayer.ssLayer = frame.hssLayer;
frame.nLayer = new Layer(15);// when two scroll bars
_fInitComp(frame.nLayer,
_fDoNothing, _fDoNothing, 12);
frame.isInit = true;
_loading = false;
}
function _fLoadSrc(src, noSetup) { _fRealLoadSrc(this, src, noSetup); }
function _fRealLoadSrc(frame, src, noSetup) {
if(_loading || !frame.isInit) {
setTimeout(_fRealLoadSrc, 100, frame, src);
return;
}
src = src || frame.src;
frame.src = src;
if(_nav4) {
_loading = true;
frame.layer.load(src, frame.width);
if(frame.isSetup) {
frame.layer.vScroll(0, false, true);
frame.layer.hScroll(0, false, true);
}
if(!noSetup) frame.setup();
} else {
frame.layer.src = src;
}
}
function _fSetup() { _fRealSetup(this); }
function _fRealSetup(frame) {
if(!_nav4) return;
if(_loading || !frame.isInit) {
setTimeout(_fRealSetup, 100, frame);
return;
}
frame.hMax = frame.layer.document.width;
frame.vMax = frame.layer.document.height;
if((frame.hMax > frame.width) && !frame.hasHScroll) {
frame.hasHScroll = true;
frame.height -= 16; // make content shorter to fit horiz. scroll bar
frame.load(); // reload to see if hMax changes
return;
} else if((frame.hMax <= frame.width) && frame.hasHScroll) {
frame.hasHScroll = false;
frame.height += 16; // make content taller
frame.load(); // reload to see if hMax changes
return;
}
if((frame.vMax > frame.height) && !frame.hasVScroll) {
frame.hasVScroll = true;
frame.width -= 16; // make content skinnier to fit vert. scroll bar
frame.load();  // reload to see if vMax changes
return;
} else if((frame.vMax <= frame.height) && frame.hasVScroll) {
frame.hasVScroll = false;
frame.width += 16; // make content fatter
frame.load();  // reload to see if hMax changes
return;
}
frame.layer.left = frame.left;
frame.layer.top = frame.top;
frame.layer.clip.top = 0;
frame.layer.clip.left = 0;
frame.layer.clip.width = frame.width;
frame.layer.clip.height = frame.height;
frame.layer.bgColor = "#FFFFFF";
frame.layer.visibility = "show";
frame.layer.oHeight = frame.height;
frame.layer.oWidth = frame.width;
frame.layer.oTop = frame.top;
frame.layer.oLeft = frame.left;
frame.layer.vMax = frame.vMax;
frame.layer.hMax = frame.hMax;
frame.layer.vScroll = _fVScroll;
frame.layer.hScroll = _fHScroll;
frame.vssLayer.v = frame.hasVScroll;
frame.hssLayer.h = frame.hasHScroll;
if(frame.hasVScroll) {
var vspLayerBottom = frame.height-31;
var vspLayerTop = frame.top+16;
var vsdLayerTop = frame.top+frame.height-16;
if(frame.hasVScroll) {
vspLayerBottom++;
vsdLayerTop++;
}
if(frame.baseHREF.indexOf("mac") != -1) {
vspLayerTop--;
vspLayerBottom++;
}
_fMoveComp(frame.vspLayer,
vspLayerTop, frame.left + frame.width, 16, vspLayerBottom);
_fMoveComp(frame.vsuLayer,
frame.top, frame.vspLayer.left, 16, 16);
_fMoveComp(frame.vsdLayer,
vsdLayerTop, frame.vspLayer.left, 16, 16);
_fMoveComp(frame.vssLayer,
vspLayerTop, frame.vspLayer.left, 16, 17);
} else {
frame.vssLayer.visibility = "hide";
frame.vspLayer.visibility = "hide";
frame.vsuLayer.visibility = "hide";
frame.vsdLayer.visibility = "hide";
}
if(frame.hasHScroll) {
var hspLayerWidth = frame.width-31;
var hspLayerLeft = frame.left+16;
var hsdLayerLeft = frame.left + frame.width - 16;
if(frame.hasVScroll) {
hspLayerWidth++;
hsdLayerLeft++;
}
if(frame.baseHREF.indexOf("mac") != -1) {
hspLayerWidth++;
hspLayerLeft--;
}
_fMoveComp(frame.hspLayer,
frame.top+frame.height, hspLayerLeft, hspLayerWidth, 16);
_fMoveComp(frame.hsuLayer,
frame.hspLayer.top, frame.left, 16, 16);
_fMoveComp(frame.hsdLayer,
frame.hspLayer.top, hsdLayerLeft, 16, 16);
_fMoveComp(frame.hssLayer,
frame.hspLayer.top, hspLayerLeft, 17, 16);
} else {
frame.hssLayer.visibility = "hide";
frame.hspLayer.visibility = "hide";
frame.hsuLayer.visibility = "hide";
frame.hsdLayer.visibility = "hide";
}
if(frame.hasHScroll || frame.hasVScroll) {
document.captureEvents(Event.MOUSEMOVE);
document.onmousemove = _scrollDrag;
}
if(frame.hasHScroll && frame.hasVScroll)
_fMoveComp(frame.nLayer,
frame.top+frame.height+1, frame.left+frame.width+1, 15, 15);
else
frame.nLayer.visibility = "hide";
frame.isSetup = true;
}
function _fInitComp(layer, onmousedown, onmouseup, bgSrc) {
layer.captureEvents(Event.MOUSEDOWN|Event.MOUSEUP);
layer.onmousedown = onmousedown;
layer.onmouseup = onmouseup;
layer.background.src = _scrollImgs[bgSrc].src;
}
function _fMoveComp(layer, top, left, width, height) {
layer.top = top;
layer.left = left;
layer.clip.width = width;
layer.clip.height = height;
layer.visibility = "inherit";
}
function _fDoNothing() {}
function _fOnLoad() {
var i, out;
_loading = false;
for(i=0; i<this.document.links.length; i++)
out = this.document.links[i];
this.captureEvents(Event.ONLOAD | Event.MOUSEDOWN);
this.onLoad = _fOnLoad;
this.onMouseDown = _fOnMouseDown;
}
function _fOnMouseDown(e) {
if(e && this) {
if(e.target && this.frame) {
if(e.target.href) {
if((e.target.href.indexOf("mailto:") == -1) &&
(e.target.hostname == _domain) &&
((e.target.target == null) ||
(e.target.target == "_self"))) { // no TARGET specified
this.frame.load(e.target);
return false;
}
}
}
}
return true;
}
function _fScrollTo(x, y) {
if(!this) return;
if(!_nav4) {
document.frames("scroll"+this.id).self.scrollTo(x,y);
return;
}
if((typeof(x) == "number") && (this.hMax > this.width)) {
var p = x/(this.hMax - this.width);
this.layer.hScroll(p,true);
}
if((typeof(y) == "number") && (this.vMax > this.height)) {
var p = y/(this.vMax - this.height);
this.layer.vScroll(p,true);
}
}
function _fScrollBy(x, y) {
if(!this) return;
if(!_nav4) {
document.frames("scroll"+this.id).self.scrollBy(x,y);
return;
}
if(typeof(x) == "number") {
x += this.layer.clip.left;
var p = x/(this.hMax - this.width);
this.layer.hScroll(p,true);
}
if(typeof(y) == "number") {
y += this.layer.clip.top;
var p = y/(this.vMax - this.height);
this.layer.vScroll(p,true);
}
}
function _fVScroll(p, update, sync) {
if(p > 1) p = 1; if(p < 0) p = 0;
i = p*(this.vMax - this.oHeight);
this.clip.top = i;
this.clip.bottom = this.oHeight+i;
this.clip.height = this.oHeight;
this.top = this.oTop - i;
if(update) {
var frame = this.frame;
frame.vssLayer.top = p*(frame.vspLayer.clip.height -
frame.vssLayer.clip.height) +
frame.vspLayer.top;
}
if(!sync) {
for(f in this.frame.inSync) {
f = this.frame.inSync[f];
if(f.hMax > f.width) {
p = i/(f.vMax - f.height);
f.layer.vScroll(p, true, true);
}
}
}
}
function _fHScroll(p, update, sync) {
if(p > 1) p = 1; else if(p < 0) p = 0;
i = p*(this.hMax - this.oWidth);
this.clip.left = i;
this.clip.right = this.oWidth+i;
this.clip.width = this.oWidth;
this.left = this.oLeft - i;
if(update) {
var frame = this.frame;
frame.hssLayer.left = p*(frame.hspLayer.clip.width -
frame.hssLayer.clip.width) +
frame.hspLayer.left;
}
if(!sync) {
for(f in this.frame.inSync) {
f = this.frame.inSync[f];
if(f.hMax > f.width) {
p = i/(f.hMax - f.width);
f.layer.hScroll(p, true, true);
}
}
}
}
function _scrollStartDown(e) {
_lastScrolledId = this.ssLayer.parLayer.frame.id;
_thumbLayer = this.ssLayer;
_barLayer = this.ssLayer.spLayer;
_scrollLayer = this.ssLayer.parLayer;
this.background.src = _scrollImgs[3].src;
_scrollDown();
_scrollInt = setInterval("_scrollDown();",20);
return false;
}
function _scrollDown() {
p = (_scrollLayer.clip.top+15) /
(_scrollLayer.vMax - _scrollLayer.oHeight);
_scrollLayer.vScroll(p, true);
}
function _scrollEndDown(e) {
this.background.src = _scrollImgs[2].src;
clearInterval(_scrollInt);
return false;
}
function _scrollStartUp(e) {
_lastScrolledId = this.ssLayer.parLayer.frame.id;
_thumbLayer = this.ssLayer;
_barLayer = this.ssLayer.spLayer;
_scrollLayer = this.ssLayer.parLayer;
this.background.src = _scrollImgs[1].src;
_scrollUp();
_scrollInt = setInterval("_scrollUp();",20);
return false;
}
function _scrollUp() {
p = (_scrollLayer.clip.top-15) /
(_scrollLayer.vMax - _scrollLayer.oHeight);
_scrollLayer.vScroll(p, true);
}
function _scrollEndUp(e) {
this.background.src = _scrollImgs[0].src;
clearInterval(_scrollInt);
return false;
}
function _scrollStartRight(e) {
_lastScrolledId = this.ssLayer.parLayer.frame.id;
_thumbLayer = this.ssLayer;
_barLayer = this.ssLayer.spLayer;
_scrollLayer = this.ssLayer.parLayer;
this.background.src = _scrollImgs[7].src;
_scrollRight();
_scrollInt = setInterval("_scrollRight();",20);
return false;
}
function _scrollRight() {
p = (_scrollLayer.clip.left+15) /
(_scrollLayer.hMax - _scrollLayer.oWidth);
_scrollLayer.hScroll(p, true);
}
function _scrollEndRight(e) {
this.background.src = _scrollImgs[6].src;
clearInterval(_scrollInt);
return false;
}
function _scrollStartLeft(e) {
_lastScrolledId = this.ssLayer.parLayer.frame.id;
_thumbLayer = this.ssLayer;
_barLayer = this.ssLayer.spLayer;
_scrollLayer = this.ssLayer.parLayer;
this.background.src = _scrollImgs[5].src;
_scrollLeft();
_scrollInt = setInterval("_scrollLeft();",20);
return false;
}
function _scrollLeft() {
p = (_scrollLayer.clip.left-15) /
(_scrollLayer.hMax - _scrollLayer.oWidth);
_scrollLayer.hScroll(p, true);
}
function _scrollEndLeft(e) {
this.background.src = _scrollImgs[4].src;
clearInterval(_scrollInt);
return false;
}
function _scrollStartVJump(e) {
_lastScrolledId = this.ssLayer.parLayer.frame.id;
_thumbLayer = this.ssLayer;
_barLayer = this.ssLayer.spLayer;
_scrollLayer = this.ssLayer.parLayer;
if(e.pageY > this.ssLayer.top)
dir = "1";
else dir = "-1";
_scrollVJump(dir,-1);
_scrollInt = setInterval("_scrollVJump("+dir+","+e.pageY+");", 50);
return false;
}
function _scrollVJump(dir,py) {
p = (_scrollLayer.clip.top+dir*_scrollLayer.clip.height)/
(_scrollLayer.vMax - _scrollLayer.oHeight);
if(p > 1) p = 1; else if(p < 0) p = 0;
t = p*(_barLayer.clip.height - _thumbLayer.clip.height) +
_barLayer.top;
if((dir == 1) && (py != -1) && (t > py)) return;
if((dir == -1) && (py != -1) && (t < (py-17))) return;
_scrollLayer.vScroll(p);
_thumbLayer.top = t;
}
function _scrollEndVJump() {
clearInterval(_scrollInt);
}
function _scrollStartHJump(e) {
_lastScrolledId = this.ssLayer.parLayer.frame.id;
_thumbLayer = this.ssLayer;
_barLayer = this.ssLayer.spLayer;
_scrollLayer = this.ssLayer.parLayer;
if(e.pageX > this.ssLayer.left)
dir = "1";
else dir = "-1";
_scrollHJump(dir,-1);
_scrollInt = setInterval("_scrollHJump("+dir+","+e.pageX+");", 50);
return false;
}
function _scrollHJump(dir,px) {
p = (_scrollLayer.clip.left+dir*_scrollLayer.clip.width)/
(_scrollLayer.hMax - _scrollLayer.oWidth);
if(p > 1) p = 1; if(p < 0) p = 0;
t = p*(_barLayer.clip.width - _thumbLayer.clip.width) +
_barLayer.left;
if((dir == 1) && (px != -1) && (t > px)) return;
if((dir == -1) && (px != -1) && (t < (px-17))) return;
_scrollLayer.hScroll(p);
_thumbLayer.left = t;
}
function _scrollEndHJump() {
clearInterval(_scrollInt);
}
function _scrollStartDrag(e) {
if(this.parLayer) {
_lastScrolledId = this.parLayer.frame.id;
_dragObject = this;
_dragObject.oTop = _dragObject.top;
_dragObject.oLeft = _dragObject.left;
_dragObject.hOffset = e.pageX - _dragObject.oLeft;
_dragObject.vOffset = e.pageY - _dragObject.oTop;
return false;
}
return true;
}
function _scrollDrag(e) {
if(!_dragObject) return true;
var pY = e.pageY;
var pX = e.pageX;
if(_dragObject.v) {
pY -= _dragObject.vOffset;
if((pX > (_dragObject.left+54)) ||
(pX < (_dragObject.left-38))) {
pY = _dragObject.oTop;
}
if(pY < _dragObject.spLayer.top)
pY = _dragObject.spLayer.top;
if(pY > _dragObject.spLayer.clip.height +
_dragObject.spLayer.top -
_dragObject.clip.height)
pY = _dragObject.spLayer.clip.height +
_dragObject.spLayer.top -
_dragObject.clip.height;
_dragObject.top = pY;
percentScroll = (pY - _dragObject.spLayer.top) /
(_dragObject.spLayer.clip.height -
_dragObject.clip.height);
_dragObject.parLayer.vScroll(percentScroll);
} else {
pX -= _dragObject.hOffset;
if((pY > (_dragObject.top+54)) ||
(pY < (_dragObject.top-38))) {
pX = _dragObject.oLeft;
}
if(pX < _dragObject.spLayer.left)
pX = _dragObject.spLayer.left;
if(pX > _dragObject.spLayer.clip.width +
_dragObject.spLayer.left -
_dragObject.clip.width)
pX = _dragObject.spLayer.clip.width +
_dragObject.spLayer.left -
_dragObject.clip.width;
_dragObject.left = pX;
percentScroll = (pX - _dragObject.spLayer.left) /
(_dragObject.spLayer.clip.width -
_dragObject.clip.width);
_dragObject.parLayer.hScroll(percentScroll);
}
return false;
}
function _scrollEndDrag() {
_dragObject = false;
return false;
}
var GSubmitting = false;
function IWOnError(AMsg, AUrl, ALineNo) {
GSubmitting = false;
return false;
}
window.onError = IWOnError;
function ProcessElement(obj) {
var i=0;
if (obj.name != null) {
if (obj.name.length > 0) {
dobj=GSubmitter.elements[obj.name];
if (dobj != null) {
if (obj.type=="select-one") {
if (obj.selectedIndex!=-1) { dobj.value=obj.options[obj.selectedIndex].value; }
else { dobj.value=-1 }
}
else
if (obj.type=="select-multiple") {
if (obj.selectedIndex!=-1) {
dobj.value=dobj.value=obj.options[obj.selectedIndex].value+',';
for(i=0;i<obj.length;i++) {
if (obj.options[i].selected==true) {
dobj.value=dobj.value+obj.options[i].value+",";
}
}
}
else { dobj.value=-1 }
}
else
if (obj.type=="checkbox") { dobj.value=obj.checked; }
else
if (obj.type=="radio") {
if (obj.checked) { dobj.value=obj.value; }
}
else
if (obj.type!="button") { dobj.value=obj.value; }
}
}
}
}
function LoadURL(URL) {
location.replace(URL);
return true;
}
function NewWindow(URL, Name, Options) {
ClearFocusTimeout();
w=window.open(URL, Name, Options);
return true;
}
function Status(msg) {
window.status=msg;
return true;
}
function TIWCustomCheckBoxToggle(Name, Image, Submit) {
InitSubmitter();
var df=GSubmitter.elements[Name];
if (df.value == 'On') {
df.value = 'Off';
Image.src = GImageCache_TIWCustomCheckBox_False.src;
} else {
df.value = 'On';
Image.src = GImageCache_TIWCustomCheckBox_True.src;
}
if (Submit) {SubmitClick(Name, '', false);}
}
function SubmitClickConfirm(objname, param, ADoValidation, AConfirmation) {
if (AConfirmation.length == 0) {
return SubmitClick(objname, param, ADoValidation);
} else if (window.confirm(AConfirmation)) {
return SubmitClick(objname, param, ADoValidation);
} else {
return false;
}
}
function SubmitClick(objname, param, ADoValidation) {
if (GSubmitting == false) {
GSubmitting = true;
var i=0;
var j=0;
InitSubmitter();
if (ADoValidation==true) {
if (Validate()==false) {
GSubmitting = false;
return false;
}
}
GSubmitter.elements.IW_Action.value=objname;
GSubmitter.elements.IW_ActionParam.value=param;
GSubmitter.submit();
return false;
}
}
function layerWrite(id, nestref, text) {
if (ns6) {
document.getElementById(id).innerHTML = text;
} else if (ie4) {
document.all[id].innerHTML = text;
}
}
  @   ��
 I W _ J S _ I W E X P L O R E R         0        function IWCancel(){
window.alert('cancel');
}
window.onCancel
function ImageClick(AName, AEvent, ASubmitValidation, AConfirmation)
{
return SubmitClickConfirm(AName, AEvent.offsetX + ',' + AEvent.offsetY, ASubmitValidation
, AConfirmation);
}
function FindElem(objname) {
var i=0;
var j=0;
for (i=0; i<document.forms.length; i++) {
if (document.forms.length == 1 || document.forms[i] != GSubmitter) {
for (j=0; j<document.forms[i].elements.length; j++) {
if (objname==document.forms[i].elements[j].name) {
return document.forms[i].elements[j];
}
}
}
}
}
function SubmitClickConfirm_Template(objname, param, ADoValidation, AConfirmation) {
var i=0;
var j=0;
InitSubmitter();
if (GSubmitter != null) {
for (i=0; i<document.forms.length; i++) {
if (document.forms[i] == GSubmitter) {
for (j=0; j<document.forms[i].elements.length; j++) {
AItem = LocateElement(document.forms[i].elements[j].id);
if (AItem != null) {
ProcessElement(AItem);
}
}
}
}
SubmitClickConfirmOriginal(objname, param, ADoValidation, AConfirmation);
}
}
function DoFocus() {
return false;
}
function ClearFocusTimeout() {
return false;
}
function StaticInit() {
}
function InitSubmitter() {
GSubmitter=document.SubmitForm;
}
function CheckReturnKey(AKey, AName, AValidation) {
if (AKey == 13)
{ return SubmitClick(AName, '', AValidation); }
else
{ return true; }
}
function Body_OnResize() {
var LNewRect;
LNewRect = new Rect(0, 0, document.body.offsetWidth - 21, document.body.offsetHeight - 21);
IWCLForm.UpdateRects(LNewRect);
}
 �  8   ��
 I W _ J S _ I W C H A R T       0        function DynChartLegend(ADiv, AWidth)
{
this.Draw = DynChartLegend_Draw;
this.Div = ADiv;
this.Width = AWidth;
}
function DynChartLegend_Draw()
{
var i = 0;
var s = '';
var LColorIdx = 0;
s = '<B>Legend - ' + this.DataDescr + '</B></BR>'+ '<TABLE>';
for (i=0; i < this.Data.length; i++) {
s +=
'<TR>'+ '<TD width="50" align="center" BGColor="' + this.Colors[LColorIdx++] + '">'+ this.Data[i][1] + '</TD>'+ '<TD>' + this.Data[i][0] + '</TD>'+ '</TR>'
if (LColorIdx >= this.Colors.length) {LColorIdx = 0;}
}
s += '</TABLE>'
this.Div.innerHTML = s;
}
function DynChart(ADiv, AData, AColNames, AColors, AVertData, AHorzData, ALegend, AFunc)
{
this.Draw = DynChart_Draw;
this.Div = ADiv;
this.Data = AData;
this.ColNames = AColNames;
this.Colors = AColors;
this.VertData = AVertData;
this.HorzData = AHorzData;
this.Legend = ALegend;
this.Func = AFunc;
}
function DynChart_Draw()
{
var i = 0;
var j = 0;
var s = '';
var LColorIdx = 0;
var LHorzIdx = 0;
var LVertIdx = 0;
var LHeight = this.Div.style.pixelHeight;
var LWidth = this.Div.style.pixelWidth;
var LData = new Array();
function FindHorz(AHorz, AData) {
var i = 0;
for (i = 0; i < AData.length; i++) {
if (AData[i][0] == AHorz)
{return i;}
}
return -1;
}
function FindCol(AName, AData) {
var i = 0;
for (i = 0; i < AData.length; i++) {
if (AData[i].toUpperCase() == AName.toUpperCase())
{return i;}
}
return -1;
}
function draw_box(AX, AY, AWidth, AHeight, AColor, AText)
{
return '<SPAN style="'+ 'position:absolute;'+ 'left:' + AX + 'px;'+ 'top:' + AY + 'px;'+ 'width:' + AWidth + 'px;'+ 'height:' + AHeight + 'px;'+ 'background:' + AColor + ';'+ ((AHeight < 10) ? 'font-size:1px;' : '')+ '">'+ AText+ '</SPAN>';
}
function chartfunc_Avg(AArray, AData) {
AArray[1] += AData;
AArray[2] += 1;
return 0;
}
function chartpostfunc_Avg(AArray) {
AArray[1] = AArray[1] / AArray[2];
}
function chartfunc_Sum(AArray, AData) {
AArray[1] += AData;
return 0;
}
function chartpostfunc_Sum(AArray) {
}
function chartfunc_Count(AArray, AData) {
AArray[1] += 1;
return 0;
}
function chartpostfunc_Count(AArray) {
}
function chartfunc_Min(AArray, AData) {
AArray[1] = Math.min(AArray[1], AData);
return 0;
}
function chartpostfunc_Min(AArray) {
}
function chartfunc_Max(AArray, AData) {
AArray[1] = Math.max(AArray[1], AData);
return 0;
}
function chartpostfunc_Max(AArray) {
}
LHorzIdx = FindCol(this.HorzData, this.ColNames);
LVertIdx = FindCol(this.VertData, this.ColNames);
s = draw_box(0, 0, 1, LHeight, 'blue', '')+ draw_box(0, LHeight, LWidth, 1, 'blue', '');
for (i=0; i < this.Data.length; i++) {
j = FindHorz(this.Data[i][LHorzIdx], LData);
if (j == -1) {
LData[LData.length] = new Array(this.Data[i][LHorzIdx], 0, 0);
j = LData.length - 1;
}
eval('chartfunc_' + this.Func + '(LData[j], this.Data[i][LVertIdx])');
}
for (i=0; i < LData.length; i++) {
eval('chartpostfunc_' + this.Func + '(LData[i])');
}
var LColWidth = Math.floor(LWidth / (LData.length));
var LBarWidth = Math.floor(LColWidth / 2);
var LBarOffset = Math.floor((LColWidth - LBarWidth) / 2);
var LMaxColValue = 0;
for (i=0; i < LData.length; i++) {
LMaxColValue = Math.max(LMaxColValue, LData[i][1]);
}
var LColSegHeight = LHeight / LMaxColValue;
for (i=0; i < LData.length; i++) {
LBarHeight = Math.floor(LData[i][1] * LColSegHeight);
s += draw_box(LColWidth * i + LBarOffset, LHeight - LBarHeight, LBarWidth, LBarHeight
, this.Colors[LColorIdx++], LData[i][1]);
if (LColorIdx >= this.Colors.length)
{LColorIdx = 0;}
}
this.Div.innerHTML = s;
if (this.Legend != null) {
this.Legend.Data = LData;
this.Legend.Colors = this.Colors;
this.Legend.DataDescr = this.ColNames[LHorzIdx];
this.Legend.Draw();
}
}
  q  8   ��
 I W _ J S _ I W G E C K O       0        function FindElem(objname) {
var i=0;
var j=0;
for (i=0; i<document.forms.length; i++) {
if (document.forms.length == 1 || document.forms[i] != GSubmitter) {
for (j=0; j<document.forms[i].elements.length; j++) {
if (objname==document.forms[i].elements[j].name) {
return document.forms[i].elements[j];
}
}
}
}
}
function SubmitClickConfirm_Template(objname, param, ADoValidation, AConfirmation) {
var i=0;
var j=0;
InitSubmitter();
if (GSubmitter != null) {
for (i=0; i<document.forms.length; i++) {
if (document.forms[i] != GSubmitter) {
for (j=0; j<document.forms[i].elements.length; j++) {
AItem = LocateElement(document.forms[i].elements[j].id);
if (AItem != null) {
ProcessElement(AItem);
}
}
}
}
SubmitClickConfirmOriginal(objname, param, ADoValidation, AConfirmation);
}
}
function DoFocus() {
return false;
}
function ClearFocusTimeout() {
return false;
}
function StaticInit() {
}
function InitSubmitter() {
GSubmitter=document.SubmitForm;
}
var
ImageCurrentName = '';
ImageCurrentValidate = false;
ImageCurrentConfirmation = '';
function ImageClick(AEvent) {
return SubmitClickConfirm(ImageCurrentName, (AEvent.layerX - 6) + ',' + (AEvent.layerY - 6)
, ImageCurrentValidate, ImageCurrentConfirmation);
}
function ImageSetEvent(ALink, AImgName, AValidation, AConfirmation)
{
ImageCurrentName = AImgName;
ImageCurrentValidate = AValidation;
ImageCurrentConfirmation = AConfirmation;
ALink.onmousedown=ImageClick;
return true;
}
function Body_OnResize() {
var LNewRect;
LNewRect = new Rect(0, 0, window.innerWidth - 21, window.innerHeight - 21);
IWCLForm.UpdateRects(LNewRect);
}
   �+  4   ��
 I W _ J S _ I W C L         0        var IWCLForm;
var alNone = 0;
var alTop = 1;
var alBottom = 2;
var alLeft = 3;
var alRight = 4;
var alClient = 5;
var alCustom = 6;
var iwclBase = 0;
var iwclDBBase = 1000;
var iwclLabel = 1 + iwclBase;
var iwclEdit = 2 + iwclBase;
var iwclComboBox = 3 + iwclBase;
var iwclCheckBox = 4 + iwclBase;
var iwclListBox = 5 + iwclBase;
var iwclMemo = 6 + iwclBase;
var iwclTreeView = 7 + iwclBase;
var iwclDBNav = iwclDBBase + 1;
var iwclDBGrid = iwclDBBase + 2;
function Rect(ALeft, ATop, AWidth, AHeight) {
this.Left = ALeft;
this.Top = ATop;
this.Width = AWidth;
this.Height = AHeight;
}
function RectSize(AWidth, AHeight) {
this.Width = AWidth;
this.Height = AHeight;
}
function Point(AX, AY)
{
this.X = AX;
this.Y = AY;
}
function CopyRect(ASrcRect) {
return new Rect(ASrcRect.Left, ASrcRect.Top, ASrcRect.Width, ASrcRect.Height);
}
function CreateAnchors(ALeft, ARight, ATop, ABottom) {
this.Left = ALeft;
this.Right = ARight;
this.Top = ATop;
this.Bottom = ABottom;
}
function CreateIWCLForm(AWidth, AHeight) {
/* this.Width = AWidth;
this.Height = AHeight;
this.OldWidth = AWidth;
this.OldHeight = AHeight; */
this.Item = document.body;
this.Rect = new Rect(0, 0, AWidth, AHeight);
this.OriginalRect = new Rect(0, 0, AWidth, AHeight);
this.OwnedComps = new Array();
this.UpdateRects = IWCL_UpdateRects;
}
function LocateElement(AId) {
var AItem = ns6 ? document.getElementById(AId): document.all[AId];
if (AItem == null) {
AItem = FindElem(AId);
}
else {
if (!AItem.tagName) {
AItem = AItem[0]
}
}
return AItem;
}
function ClientToScreen(AControl, APoint) {
var LItem = AControl;
var LPoint = new Point(APoint.X, APoint.Y);
while (LItem != IWCLForm) {
LItem = LItem.Owner;
LPoint.X += LItem.Rect.Left;
LPoint.Y += LItem.Rect.Top;
}
return LPoint;
}
function ScreenToClient(AControl, ARect) {
var LPoint;
if (AControl != IWCLForm) {
LPoint = ClientToScreen(AControl.Owner, new Point(AControl.Owner.Rect.Left, AControl.Owner.Rect.Top));
ARect.Left = ARect.Left - LPoint.X;
ARect.Top = ARect.Top - LPoint.Y;
}
}
function CreateRect(AControl) {
var LRect;
with (AControl) {
LRect = new Rect(Item.offsetLeft, Item.offsetTop, Item.offsetWidth, Item.offsetHeight);
ScreenToClient(AControl, LRect);
return LRect;
}
}
function IWCL_SetAlign(AAlign) {
this.Align = AAlign;
}
function IWCL_SetAnchors(AAnchors) {
this.Anchors = AAnchors;
}
function IWCL_SetFieldName(AFieldName) {
this.FieldName = AFieldName;
}
function IWCL_SetDataSet(ADataSet) {
if (ADataSet == null) {
}
this.DataSet = ADataSet;
if (ADataSet != null) {
ADataSet.OnChangeList[ADataSet.OnChangeList.length] = this;
}
this.DoOnChange(ADataSet);
}
function IWCL_OverrideIWCLType(ASetIWCLTypeMethod) {
this.SetIWCLTypeMehtodList[this.SetIWCLTypeMehtodList.length] = ASetIWCLTypeMethod
}
function IWCL_SetOnChange(ADataSet) {
this.SetOnChnage = ADataSet;
}
function IWCL_SetIWCLType(AType) {
switch (AType) {
case iwclLabel:
this.DoOnChange = IWCL_LabelOnChage;
break;
case iwclEdit:
break;
case iwclComboBox:
break;
case iwclCheckBox:
break;
case iwclListBox:
break;
case iwclMemo:
break;
case iwclTreeView:
break;
case iwclDBNav:
this.DoOnChange = IWCL_DBNavigatorOnChage;
break;
case iwclDBGrid:
break;
default: {
for(i = 0; i < this.SetIWCLTypeMehtodList.length; i++)
this.SetIWCLTypeMehtodList[i](AType);
}
}
}
function IWCL_OnChage(ADataSet) {
}
function IWCL_LabelOnChage(ADataSet) {
AElement = LocateElement(this.Id);
if (ADataSet) {
layerWrite(this.Id, false, ADataSet.FieldByName(this.FieldName));
}
}
function IWCL_DBNavigatorOnChage(ADataSet) {
AElement = LocateElement(this.Id + 'IWCL_First');
if (AElement != null) {
if (ADataSet != null) {
if (ADataSet.BOF()) {
AElement.src = this.First_Disabled;
}
else {
AElement.src = this.First_Enabled;
}
} else {
AElement.src = this.First_Disabled;
}
}
AElement = LocateElement(this.Id + 'IWCL_Last');
if (AElement != null) {
if (ADataSet != null) {
if (ADataSet.EOF()) {
AElement.src = this.Last_Disabled;
}
else {
AElement.src = this.Last_Enabled;
}
} else {
AElement.src = this.Last_Disabled;
}
}
AElement = LocateElement(this.Id + 'IWCL_Next');
if (AElement != null) {
if (ADataSet != null) {
if (ADataSet.EOF()) {
AElement.src = this.Next_Disabled;
}
else {
AElement.src = this.Next_Enabled;
}
} else {
AElement.src = this.Next_Disabled;
}
}
AElement = LocateElement(this.Id + 'IWCL_Prior');
if (AElement != null) {
if (ADataSet != null) {
if (ADataSet.BOF()) {
AElement.src = this.Prior_Disabled;
}
else {
AElement.src = this.Prior_Enabled;
}
} else {
AElement.src = this.Prior_Disabled;
}
}
AElement = LocateElement(this.Id + 'IWCL_Refresh');
if (AElement != null) {
if (ADataSet != null) {
AElement.src = this.Refresh_Enabled;
} else {
AElement.src = this.Refresh_Disabled;
}
}
}
function IWCL_SetRect(ARect) {
var LPoint = new Point(ARect.Left, ARect.Top);
LPoint = ClientToScreen(this, LPoint);
this.Item.style.left = LPoint.X;
this.Item.style.top = LPoint.Y;
if (ARect.Width != this.Rect.Width || ARect.Height != this.Rect.Height) {
this.Item.style.width = ARect.Width;
this.Item.style.height = ARect.Height;
}
}
function CreateIWCLObject(AOwner, AId, AName) {
this.Owner = AOwner;
this.Id = AId;
this.Name = AName;
this.Item = LocateElement(AId);
if(this.Item != null) {
this.Align = alNone;
this.Anchors = new CreateAnchors(true, false, true, false);
this.OriginalRect = CreateRect(this);
this.Rect = CreateRect(this);
this.SetAlign = IWCL_SetAlign;
this.SetAnchors = IWCL_SetAnchors;
this.SetDataSet = IWCL_SetDataSet;
this.SetFieldName = IWCL_SetFieldName;
this.SetOnChange = IWCL_SetOnChange;
this.DoOnChange = IWCL_OnChage;
this.SetIWCLType = IWCL_SetIWCLType;
this.SetIWCLTypeMehtodList = new Array();
this.SetRect = IWCL_SetRect;
this.OverrideIWCLType = IWCL_OverrideIWCLType;
this.UpdateRects = IWCL_UpdateRects;
this.UpdateTopLeft = IWCL_UpdateTopLeft;
this.OwnedComps = new Array();
this.Owner.OwnedComps[this.Owner.OwnedComps.length] = this;
}
}
function InitRects(AFormWidth, AFormHeight) {
IWCLForm = new CreateIWCLForm(AFormWidth, AFormHeight);
}
function CustomAnchors(AAnchors, AAlign)
{
switch (AAlign) {
case alTop: {
return !(AAnchors.Left && AAnchors.Right && AAnchors.Top && !AAnchors.Bottom)
break;
}
case alBottom: {
return !(AAnchors.Left && AAnchors.Right && !AAnchors.Top && AAnchors.Bottom)
break;
}
case alLeft: {
return !(AAnchors.Left && !AAnchors.Right && AAnchors.Top && AAnchors.Bottom)
break;
}
case alRight: {
return !(!AAnchors.Left && AAnchors.Right && AAnchors.Top && AAnchors.Bottom)
break;
}
case alNone: {
return !(AAnchors.Left && !AAnchors.Right && AAnchors.Top && !AAnchors.Bottom)
}
}
}
function DoUpdateRects(AParent, AAlign, AControl) {
var LNewRect;
var LNewHeight;
var LNewWidth;
var LNewTop;
var LNewLeft;
LNewHeight = AControl.Rect.Height;
LNewWidth = AControl.Rect.Width;
LNewTop = AControl.Rect.Top;
LNewLeft = AControl.Rect.Left;
if (AAlign == alNone || CustomAnchors(AControl.Anchors, AAlign)) {
with (AControl.Anchors) {
if (Left && !Right) {
} else if (Left && Right) {
LNewWidth = AParent.Rect.Width - (AParent.OriginalRect.Width - AControl.OriginalRect.Width);
} else if (!Left && Right) {
LNewLeft = AControl.OriginalRect.Left + AParent.Rect.Width - AParent.OriginalRect.Width;
} else if (!Left && !Right) {
LNewLeft = AControl.OriginalRect.Left + (AParent.Rect.Width - AParent.OriginalRect.Width) / 2;
/* ((AControl.OriginalRect.Left + AControl.OriginalRect.Width / 2) * AParent.Rect.Width) /
AParent.OriginalRect.Width - LNewWidth / 2; */
}
if (Top && !Bottom) {
} else if (Top && Bottom) {
LNewHeight = AParent.Rect.Height - (AParent.OriginalRect.Height - AControl.OriginalRect.Height);
} else if (!Top && Bottom) {
LNewTop = AControl.OriginalRect.Top + AParent.Rect.Height - AParent.OriginalRect.Height;
} else if (!Top && !Bottom) {
LNewTop = AControl.OriginalRect.Top + (AParent.Rect.Height - AParent.OriginalRect.Height) / 2;
/* ((AParent.OriginalRect.Top + AControl.OriginalRect.Height / 2) * AParent.Rect.Height) /
AParent.OriginalRect.Height - LNewHeight / 2; */
}
}
}
LNewRect = new Rect(LNewLeft, LNewTop, LNewWidth, LNewHeight);
switch (AControl.Align) {
case alTop: {
LNewRect.Height = LNewHeight;
LNewRect.Top = AParent.ClientRect.Top;
LNewRect.Width = AParent.ClientRect.Width;
AParent.ClientRect.Top = AParent.ClientRect.Top + LNewHeight;
AParent.ClientRect.Height = AParent.ClientRect.Height - LNewHeight;
break;
}
case alBottom: {
LNewRect.Height = LNewHeight;
LNewRect.Top = (AParent.ClientRect.Height + AParent.ClientRect.Top) - LNewRect.Height;
LNewRect.Width = AParent.ClientRect.Width;
AParent.ClientRect.Height = AParent.ClientRect.Height - LNewHeight;
break;
}
case alLeft: {
LNewRect.Width = LNewWidth;
LNewRect.Left = AParent.ClientRect.Left;
LNewRect.Height = AParent.ClientRect.Height; // + AParent.OriginalRect.Top;
AParent.ClientRect.Left = AParent.ClientRect.Left + LNewWidth;
AParent.ClientRect.Width = AParent.ClientRect.Width - LNewWidth;
break;
}
case alRight: {
LNewRect.Width = LNewWidth;
LNewRect.Left = (AParent.ClientRect.Left + AParent.ClientRect.Width) - LNewRect.Width;
LNewRect.Height = AParent.ClientRect.Height; // + AParent.OriginalRect.Top;
AParent.ClientRect.Width = AParent.ClientRect.Width - LNewWidth;
break;
}
case alClient: {
LNewRect.Top = AParent.ClientRect.Top;
LNewRect.Left = AParent.ClientRect.Left;
LNewRect.Width = AParent.ClientRect.Width;
LNewRect.Height = AParent.ClientRect.Height;
break;
}
}
AControl.SetRect(LNewRect);
AControl.UpdateRects(LNewRect);
}
function AlignListSort(A, B) {
switch (A.Align) {
case alTop: {
return A.Rect.Top - B.Rect.Top;
break;
}
case alBottom: {
return B.Rect.Top - A.Rect.Top;
break;
}
case alLeft: {
return A.Rect.Left - B.Rect.Left;
break;
}
case alRight: {
return B.Rect.Left - A.Rect.Left;
break;
}
}
}
function DoAlign(AParent, AAlign) {
var i;
var AlignList = new Array();
for(i=0; i < AParent.OwnedComps.length; i++) {
if (AParent.OwnedComps[i].Align == AAlign) {
AlignList[AlignList.length] = AParent.OwnedComps[i];
}
}
if (AAlign != alNone) {
AlignList.sort(AlignListSort);
}
for (i=0; i < AlignList.length; i++) {
DoUpdateRects(AParent, AAlign, AlignList[i]);
}
}
function IWCL_UpdateTopLeft(ADiff) {
this.SetRect(this.Rect);
}
function IWCL_UpdateRects(ANewRect) {
var i;
var LDiff;
if (ANewRect.Width < this.OriginalRect.Width) {
ANewRect.Width = this.OriginalRect.Width;
}
if (ANewRect.Height < this.OriginalRect.Height) {
ANewRect.Height = this.OriginalRect.Height;
}
this.ClientRect = new Rect(0, 0, ANewRect.Width, ANewRect.Height);
this.Rect = CopyRect(ANewRect);
/* for (i = 0; i < this.OwnedComps.length; i++) {
this.OwnedComps[i].SetRect(this.OwnedComps[i].Rect);
} */
if (this.OwnedComps.length > 0) {
DoAlign(this, alTop);
DoAlign(this, alBottom);
DoAlign(this, alLeft);
DoAlign(this, alRight);
DoAlign(this, alClient);
DoAlign(this, alNone);
}
}
 9  <   ��
 I W _ J S _ I W C S D A T A         0        function CSDS_FieldByName(AFieldName) {
var i = 0;
while (i < this.Fields.length && this.Fields[i] != AFieldName) i++;
if (i < this.Fields.length) {
return this.Data[this.CurrentRecord][i];
}
else {
return null; // Have to find a way to throw exception
}
}
function CSDS_First() {
this.CurrentRecord = 0;
this.DoOnChange();
};
function CSDS_Next() {
if (this.CurrentRecord < this.Data.length - 1) {
this.CurrentRecord++;
this.DoOnChange();
}
};
function CSDS_Prior() {
if (this.CurrentRecord > 0) {
this.CurrentRecord--;
this.DoOnChange();
}
};
function CSDS_Last() {
this.CurrentRecord = this.Data.length - 1;
this.DoOnChange();
};
function CSDS_EOF() {
return (this.CurrentRecord == this.Data.length - 1) || (this.Data.length == 0);
};
function CSDS_BOF() {
return (this.CurrentRecord == 0) || (this.Data.length == 0);
};
function CSDS_DoOnChange() {
for (i=0; i < this.OnChangeList.length; i ++) {
this.OnChangeList[i].DoOnChange(this);
}
}
function CSDataSet(AFields, AData) {
this.Fields = AFields;
this.Data = AData;
this.FieldByName = CSDS_FieldByName;
this.First = CSDS_First;
this.Next = CSDS_Next;
this.Prior = CSDS_Prior;
this.Last = CSDS_Last;
this.EOF = CSDS_EOF;
this.BOF = CSDS_BOF;
this.OnChangeList = new Array();
this.DoOnChange = CSDS_DoOnChange;
this.First();
}
     <   ��
 I W _ J S _ I W D Y N G R I D       0        function compare(a, b) {
  if (a.SortOrder) {
    if (a.Value < b.Value)
      return -1
    if (a.Value > b.Value)
      return 1
  }
  else {
    if (a.Value < b.Value)
      return 1
    if (a.Value > b.Value)
      return -1
  }
  return 0
}

function DoSort(id, ACol)
{
  var sortarray = new Array();

  for (i = 0; i < id.Rows.length; i++) {
    sortarray[i] = new Object();
    sortarray[i].row = i;
    sortarray[i].Value = id.Rows[i].RowData[ACol];
    sortarray[i].SortOrder = id.Cols[ACol].SortOrder;
  }

  sortarray.sort(compare);

  var tmparray = new Array();

  for (i = 0; i < sortarray.length; i ++) {
    tmparray[i] = id.Rows[sortarray[i].row];
  }

  id.Rows = tmparray;

  id.Cols[ACol].SortOrder = !id.Cols[ACol].SortOrder;

  id.RenderTable();
}

function DoChangeValue(AID, ARow, ACol, ANewValue)
{
  AID.Cells[ARow][ACol].value = ANewValue;
  AID.RenderTable();
}

function DoFilterValueChange(AID, ACol, ANewValue)
{
  var i;
  var j;
  var LCol;
  var FilterIndex = ANewValue - 1;
  var NewFilters = new Array();
  
  if (FilterIndex == -1) {
    for (i = 0; i < AID.Filters.length; i++) {
      if (AID.Filters[i].Col != ACol)
        NewFilters[NewFilters.length] = AID.Filters[i];
    }
    AID.Filters = NewFilters;
  }
  else {
    for (i = 0; i < AID.Filters.length; i++)
      if (AID.Filters[i].Col == ACol) break;
      
    if (i < AID.Filters.length) {
      AID.Filters[i].Col = ACol;
      AID.Filters[i].Value = FilterIndex;
    }
    else {
      AID.Filters[AID.Filters.length] = new Object();
      AID.Filters[AID.Filters.length - 1].Col = ACol;
      AID.Filters[AID.Filters.length - 1].Value = FilterIndex;
    }
  }
  
  for (i = 0; i < AID.Rows.length; i++)
    AID.Rows[i].Filtered = false;
    
  for (i = 0; i < AID.Filters.length; i++) {
    LCol = AID.Filters[i].Col;
    for (j = 0; j < AID.Rows.length; j++) {
      if (AID.Rows[j].RowData[LCol] != AID.Cols[LCol].FilterValues[AID.Filters[i].Value]) 
        AID.Rows[j].Filtered = true;
    }
  }
  
  AID.Cols[ACol].FilterValue = FilterIndex;
  
  AID.RenderTable();
}

function DynGrid_RenderTable()
{
  var s ='';
  var i;
  var j;

  s += this.TableLook;
  // First row is for operation images
  s += '<tr><td width="19">';
  s += this.TitleLook + '<tr>' +
    '<td>' +
    '<table cellpadding="0" cellspacing="0" width="100%" border="0" style="border-collapse: collapse">' +
    '  <tr>' +
    '    <td>' +
    '      <IMG width=16 hight=16 src=' + this.ImgBlank + ' border=0 align="top" >&nbsp;' +
    '    </td>' +
    '  </tr>' +
    '</table>' +
    '</td></tr></table></td>';
  
  // Captions band
  for (i = 0; i < this.Cols.length; i++) {
    s += '<td>';
    s += this.TitleLook + '<tr><td>';
    s += 
      '<table cellpadding="0" cellspacing="0" width="100%">' +
      '  <tr>' +
      '    <td width="100%">' + this.Cols[i].Caption + '</TD>' +
      '    <TD><a href="javascript:DoSort(' + this.ObjectName + ', ' + i + ')">';
    if (this.Cols[i].SortOrder) 
      s += '<IMG align=top src=' + this.ImgUp + ' border=0>';
    else
      s += '<IMG align=top src=' + this.ImgDown + ' border=0>';
    s += '     </a>' +
      '    </td>' +
      '  </TR>' +
      '</TABLE></TD></tr></table></td>';
  }
  s += '</TR>'; 
  
  s += '<tr><td width="19">';
  s += this.TitleLook + '<tr>' +
    '<td>' +
    '<table cellpadding="0" cellspacing="0" width="100%" border="0" style="border-collapse: collapse">' +
    '  <tr>' +
    '    <td>' +
    '      <IMG width=16 hight=16 src=' + this.ImgBlank + ' border=0 align="top" >&nbsp;' +
    '  	 </td>' +
    '  </tr>' +
    '</table>' +
    '</td></tr></table></td>';
  
  // Filter band
  for (i = 0; i < this.Cols.length; i++) {
    s += '<td>'
    s += this.FilterLook + '<tr><td>';
    if (this.Cols[i].FilterValues.length) {
      s += '<select size="1" name="D1" onChange="javascript:DoFilterValueChange(' + this.ObjectName + ', ' + i + ', this.selectedIndex)">';
      if (this.Cols[i].FilterValue == -1) 
        s += '<option selected>All</option>';
      else
        s += '<option>All</option>';
      for (j = 0; j < this.Cols[i].FilterValues.length; j ++) {
        if (this.Cols[i].FilterValue == j) {
          s += '<option selected>' + this.Cols[i].FilterValues[j] + '</option>';
        }
        else {
          s += '<option>' + this.Cols[i].FilterValues[j] + '</option>';
        }
      }
      s += '</select>';
    }
    s += '</td></tr></table></td>';
  }
  s += '</TR>';
  
  // Data band
  
  for (i = 0; i < this.Rows.length; i++) {  
    if (this.Rows[i].RowData.length > 0 && !this.Rows[i].Filtered) {
      s += '<tr><td width="19">';
      s += this.TitleLook + '<tr>' +
        '<td>' +
        '<table cellpadding="0" cellspacing="0" width="100%" border="0" style="border-collapse: collapse">' +
        '  <tr>' +
        '    <td>' +
        '      <IMG width=16 hight=16 align=top src=' + this.ImgBlank + ' border=0>&nbsp;' +
	'    </td>' +
        '  </tr>' +
        '</table>' +
        '</td></tr></table></td>';
      for (j = 0; j < this.Rows[i].RowData.length; j++) {
        if (this.Rows[i].RowData[j] == '') {
          s += '<td>' + this.DataLook + '<tr><td>&nbsp;</td></tr></table></td>';
        }
        else {
          s += '<td>' + this.DataLook + '<tr><td>' + this.Rows[i].RowData[j] + '</td></tr></table></td>';
        }
      }
      s += '</TR>';      
    }
  }
  
  // End of layot table
  s += '</table>';

  layerWrite(this.DIVName, null, s);
}

function DefineColumn(ACaption)
{
  this.Caption = ACaption;
  this.FilterValue = -1;
  this.FilterValues = new Array();
  this.SortOrder = true;
}

function SimpleSort(a,b)
{
  if (a < b)
    return -1;
  if (a > b)
    return 1;
  return 0;
}

function DynGrid_InitTable()
{
  var LCol;
  var i;
  var j;
  var k;
  
  for (LCol = 0; LCol < this.TitleCaptions.length; LCol ++) {
    this.Cols[LCol] = new DefineColumn(this.TitleCaptions[LCol]);
  }

  for (i = 0; i < this.CellValues.length; i++){
    this.Rows[i] = new Object();
    this.Rows[i].RowData = this.CellValues[i];
    this.Rows[i].Filtered = false;

    for (j = 0; j < this.Rows[i].RowData.length; j++) {
      for (k = 0; k < this.Cols[j].FilterValues.length; k++) {
        if (this.Cols[j].FilterValues[k] == this.Rows[i].RowData[j]) break;
      }
      if (k == this.Cols[j].FilterValues.length)
        this.Cols[j].FilterValues[this.Cols[j].FilterValues.length] = this.Rows[i].RowData[j];
    }
  }

  for (i = 0; i < this.Cols.length; i++)
    this.Cols[i].FilterValues.sort(SimpleSort);
}

function DefineDynGrid(ADIVName, AName, ATableLook, ADataLook, ATitleLook, AFilterLook, ATitleCaptions, ACellValues)
{
  this.Cols = new Array();
  this.Rows = new Array();
  this.Filters = new Array();
  this.CaptionBandVisible = true;
  this.FilterBandVisible = true;
  this.name = AName;
  this.DIVName = ADIVName;
  this.ObjectName = AName;
  this.TableLook = ATableLook;
  this.DataLook = ADataLook; 
  this.TitleLook = ATitleLook;
  this.FilterLook = AFilterLook;
  this.TitleCaptions = ATitleCaptions;
  this.CellValues = ACellValues;
  this.RenderTable = DynGrid_RenderTable;
  this.InitTable = DynGrid_InitTable;
}Y  @   ��
 I W _ J S _ I W T R E E V I E W         0        // ***********************
// TreeView Support
// ***********************

function AddTVItem(ATreeView, ACaption, AClickIndex, AName, AState, AChild, ANext)
{
  this.ATreeView = ATreeView;
  this.Caption = ACaption;
  this.ClickIndex = AClickIndex;
  this.State = AState;
  this.Next = ANext;
  this.Childs = AChild;
  this.Name = AName;
}

function FindNextItem(ATreeView, AItem)
{
  while ((AItem < TreeViewItems.length) && (TreeViewItems[AItem].TreeView != ATreeView)) AItem++;
  return AItem;
}

function NodeText(AItem, ATreeView)
{
  if (AItem.ClickIndex==0) {
    return AItem.Caption;
  } else {
    return "<A href=\"javascript:void(SubmitClick('" + ATreeView.Id + "', " + AItem.ClickIndex
      + ", false))\">" + AItem.Caption + "</A>";
  }
}

function BuildTreeView(ATreeView, LItem, LIdent)
{
  var TreeViewTable = "";
  var j = 0;
  var k;
  while (LItem != null) {
    k = 0;
    while (k < LIdent) {
      TreeViewTable += "<img border=0 src=" + ATreeView.ImgBlank + " width=16 height=16>";
      k++;
    }

    if (LItem.Childs) {
      if (LItem.State) {
        TreeViewTable += "<A href=\"javascript:CloseTreeItem(" + ATreeView.Name + ",'" + LItem.Name + "');\"><img border=0 src=" + ATreeView.ImgMinus + " width=16 height=16></a>";
        TreeViewTable += "<img border=0 src=" + ATreeView.ImgOpen + " width=16 height=16>";
        TreeViewTable += NodeText(LItem, ATreeView) + "<br>";
        TreeViewTable += BuildTreeView(ATreeView, LItem.Childs, LIdent + 1);
      }
      else {
        TreeViewTable += "<A href=\"javascript:OpenTreeItem(" + ATreeView.Name + ",'" + LItem.Name + "');\"><img border=0 src=" + ATreeView.ImgPlus + " width=16 height=16></a>";
        TreeViewTable += "<img border=0 src=" + ATreeView.ImgClosed + " width=16 height=16>"
        TreeViewTable += NodeText(LItem, ATreeView) + "<br>";
      }
    }
    else {
      TreeViewTable += "<img border=0 src=" + ATreeView.ImgBlank + " width=16 height=16>";
      TreeViewTable += "<img border=0 src=" + ATreeView.ImgDocument + " width=16 height=16>";
      TreeViewTable += NodeText(LItem, ATreeView) + "<br>";
    }
    LItem = LItem.Next;
  }
  return (TreeViewTable);
};

function showTreeView(trview) {
  layerWrite(trview.Id, null, BuildTreeView(trview, trview.Items, 0));
}

function FindItem(ATV, AItemName)
{
  var LItem = ATV;
  var LL;
  
  while (LItem) {
    if (LItem.Name == AItemName) break;
    if (LItem.Childs) {
      LL = FindItem(LItem.Childs, AItemName);
      if (LL) {
        LItem = LL;
        break;
      }
    }
    LItem = LItem.Next;
  }
  
  return LItem;
}

function OpenTreeItem(tvname, itemname)
{
  var LItem = tvname.Items;

  LItem = FindItem(LItem, itemname);  
  if (LItem) LItem.State = true;
  showTreeView(tvname);
}

function CloseTreeItem(tvname, itemname)
{
  var LItem = tvname.Items;

  LItem = FindItem(LItem, itemname);  
  if (LItem) LItem.State = false;
  showTreeView(tvname);
}

function ScanTree(LItem, value)
{
  while (LItem) {
    if (LItem.Childs) {
      LItem.State = value;    
      ScanTree(LItem.Childs, value);
    }
    LItem = LItem.Next;
  }
}

function ExpandAll(tvname)
{
  ScanTree(tvname.Items, true);
  showTreeView(tvname);
}

function CloseAll(tvname)
{
  ScanTree(tvname.Items, false);
  showTreeView(tvname);
}   a~  8   ��
 I W _ J S _ I W M E N U         0        /**************
Copyright (c) 2001 Thomas Brattli (www.dhtmlcentral.com)

eXperience DHTML coolMenus - Get it at  www.dhtmlcentral.com
Version 3.02
This script can be used freely as long as all copyright messages are
intact. 

(You can delete the comments below to save space)

This script takes over for the old Coolmenus2 and CoolFrameMenu

Visit www.dhtmlcentral.com/coolmenus/ 
for the latest version of the script.

Tutorial: http://www.dhtmlcentral.com/tutorial.asp

Support: http://www.dhtmlcentral.com/forums/forum.asp?FORUM_ID=2&CAT_ID=1&Forum_Title=CoolMenus

Known bugs:
Netscape 6: When using padding in the layers you can sometimes get
strange visual effects on the lowest menu item. Only way to fix is to not use padding. 

Opera: This menu is very close to working on Opera, but as far as I could 
figure out opera don't support innerHTML or document.createElement() which
makes the changing of the text inside the submenus immpossible. If anyone 
know a solution to this please let me know.

Explorer 4 for mac: It will not work in this browser, nothing does. 

Explorer 5 for mac: It works fine, but like Netscape 6 it's a little slow and you can get strange visual effects sometimes. 

Script checked and working with:
PC: 
Netscape 4.03 - Netscape 4.04 -Netscape 4.08 - Netscape 4.73 - Netscape 6 - Netscape 6.01
Internet Explorer 5.0 - Internet Explorer 5.5 -Internet Explorer 6.0
MAC:
Netscape 4 - Explorer 5

Btw: There is basically just one explanation to why this code is sort of "scrambled": I wanted this file be as small as possible..
If you want it to be smaller feel free to remove all comments (except for the copyright)
**************/

/*************
Pageobject
***************/
function makePageCoords(win, fr){
  if (!win) win=window
  this.x=0;
  this.x2 = (bw.ns4 || bw.ns6) ? win.innerWidth-1 : win.document.body.offsetWidth;
  if (!fr&&bw.ie) this.x2-=20;
  else
    if (!fr&&bw.ns4) this.x2-=4;
    else
      if(bw.ns6) this.x2+=1

  this.y = 0;
  this.y2 = (bw.ns4 || bw.ns6) ? win.innerHeight : win.document.body.offsetHeight;
  if (bw.ns4&&!win.rows) this.x2+=5;
  if (!fr&&bw.ie) this.y2-=4;
  else
    if(bw.ns4&&fr) this.y2+=4
  this.y2orig = this.y2;
  this.x50 = this.x2 / 2;
  this.y50 = this.y2/2;
  return this;
}
/*************
Debugging function
***************/
function debug(txt,ev) {
  if(mDebugging == 2)
    self.status=txt;
  else
    alert(txt);
  if(ev) eval(ev);

  return false;
}

/*****************************************************************************
Default browsercheck - Leave this one
******************************************************************************/
function lib_bwcheck(){ //Browsercheck (needed)
	this.ver=navigator.appVersion; this.agent=navigator.userAgent
	this.dom=document.getElementById?1:0
	this.ie5=(this.ver.indexOf("MSIE 5")>-1 && this.dom)?1:0;
	this.ie6=(this.ver.indexOf("MSIE 6")>-1 && this.dom)?1:0;
	this.ie4=(document.all && !this.dom)?1:0;
	this.ie=this.ie4||this.ie5||this.ie6
	this.mac=this.agent.indexOf("Mac")>-1
	this.opera5=this.agent.indexOf("Opera 5")>-1
	this.ns6=(this.dom && parseInt(this.ver) >= 5) ?1:0; 
	this.ns4=(document.layers && !this.dom)?1:0;
	this.bw=(this.ie6 || this.ie5 || this.ie4 || this.ns4 || this.ns6 || this.opera5 || this.dom)
	return this
}
/************
Scroll function
*************/
function cm_checkScrolled(obj){
	if(bw.ns4 || bw.ns6) obj.scrolledY=obj.win.pageYOffset
	else obj.scrolledY=obj.win.document.body.scrollTop
	if(obj.scrolledY!=obj.lastScrolled){
		if(!obj.useframes){
			for(i=0;i<obj.l[0].num;i++){var sobj=obj.l[0].o[i].oBorder; sobj.moveY(sobj.y+(obj.scrolledY-obj.lastScrolled))}
			if(obj.usebar) obj.oBar.moveY(obj.oBar.y+(obj.scrolledY-obj.lastScrolled))
		}
		obj.lastScrolled=obj.scrolledY; page.y=obj.scrolledY; page.y2=page.y2orig+obj.scrolledY
		if(!obj.useframes || bw.ie){ clearTimeout(obj.tim); obj.isover=0; obj.hideSubs(1,0)}
	}if((bw.ns4 || bw.ns6) && !obj.useframes) setTimeout("cm_checkScrolled("+obj.name+")",200)
}
/***********************
Checking if the values are % or not.
***************/
function cm_checkp(num,w,check,istop,ds){
	if(num){ var p=istop?toppage:page
		if(num.toString().indexOf("%")!=-1){if(w || (check && this.rows)) num=(p.x2*parseFloat(num)/100)
		else num=(p.y2*parseFloat(num)/100)
		}else num=eval(num)
	}else num=0; return num
}
/************
Making DIV objects + DIV objects code
*************/
function cm_makeObj(obj,name,level,win,nest,o){
	if(o&&(bw.ns4||bw.ns6)) this.evnt=o
	else
          this.evnt = bw.dom ? win.document.getElementById(obj) : bw.ie4 ? win.document.all[obj] : bw.ns4 ? nest ? win.document[nest].document[obj] : win.document[obj] : 0;
	if(!this.evnt) return debug('There seems to be an error with this layer:\nFrame: '+win+'\nLayer: '+nest + "." + obj)
	this.css=bw.dom||bw.ie4?this.evnt.style:bw.ns4?this.evnt:0;	this.ref=bw.dom || bw.ie4?win.document:bw.ns4?this.css.document:0;
	this.hideIt=cm_hideIt; this.showIt=cm_showIt; this.writeIt=cm_writeIt; this.setactive=cm_setactive; this.addEvents=cm_addEvents;
	this.moveIt=cm_moveIt; this.clipTo=cm_clipTo; if(name) this.parent=name; this.moveY=cm_moveY; this.l=level; this.clipOut=cm_clipOut;
	this.filterIt=cm_filterIt; this.obj = obj + "Object"; 	eval(this.obj + "=this"); this.tim=10; this.clipy=0; return this
}

function cm_writeIt(text) {
  if(!this.img1) {
    if(bw.ns4) {
      this.ref.write(text);
      this.ref.close()
    }
    else
      this.evnt.innerHTML=text
  }
};

function cm_moveY(y){this.y=y; this.css.top=y}
function cm_moveIt(x,y){this.x=x; this.y=y; this.css.left=this.x;this.css.top=this.y}
function cm_showIt(){this.css.visibility="visible"; this.vis=1}; function cm_hideIt(){this.css.visibility="hidden"; this.vis=0}
function cm_clipOut(px,w,ystop,tim,name){
	if(!this.vis) return; if(this.clipy<ystop-px){this.clipy+=px; this.clipTo(0,w,this.clipy,0,1)
		this.tim=setTimeout(this.obj+".clipOut("+px+","+w+","+ystop+","+tim+",'"+name+"')",tim)
	}else{if(bw.ns6){this.hideIt();}; this.clipTo(0,w,ystop,0,1); if(bw.ns6){this.showIt()}}
}
function cm_filterIt(f){if(this.evnt.filters[0]) this.evnt.filters[0].Stop(); else this.css.filter=f; this.evnt.filters[0].Apply(); this.showIt(); this.evnt.filters[0].Play();}
function cm_setactive(on,name,frmmouse){
	if(!name) name=this.name; var tobj=this.parent.m[name]
	if(tobj.img){if(tobj.img2){if(on) this.ref.images[tobj.img].src=tobj.img2; else this.ref.images[tobj.img].src=tobj.img1}
	}else{
		if(on){var color=tobj.c2; var fcolor=tobj.c4; var re=tobj.c3}else{var color=tobj.c1; var fcolor=tobj.c3; var re=tobj.c4}
		if(color){if(bw.dom || bw.ie4) this.css.backgroundColor=color; else if(bw.ns4) if(color=="transparent") color=null; this.css.bgColor=color}
		if(fcolor && !bw.ns4){if(bw.ie4) this.evnt.style.color=fcolor; else if(this.evnt.childNodes[0]) this.evnt.style.color=fcolor
		}else if(fcolor&&frmmouse){t=this.parent.m[name].text; t=t.replace(re,fcolor); this.writeIt(t); if(on) this.addEvents(name,this.parent.name,tobj.lnk,this.parent.useclick)}
		if(tobj.l==0&&bw.ns6){this.parent.l[0].o[tobj.num].oBorder.hideIt(); this.parent.l[0].o[tobj.num].oBorder.showIt();} //Stupid fix for netscape 6....
	}
}
function cm_clipTo(t,r,b,l,w){if(bw.ns4){this.css.clip.top=t;this.css.clip.right=r; this.css.clip.bottom=b;this.css.clip.left=l
}else{this.css.clip="rect("+t+","+r+","+b+","+l+")"; if(w){this.css.width=r; this.css.height=b}}; this.width=r; this.height=b}
function cm_addEvents(n,name,url,useclick){
	this.evnt.onmouseover=new Function(name+".mover('"+n+"')"); 
	this.evnt.onmouseout=new Function(name+".mmout('"+n+"')")
	if(!url && useclick) ev=new Function(name+".mover('"+n+"',1)")
	else ev=new Function(name+".go('"+n+"')")
	if(bw.ns4){this.ref.captureEvents(Event.MOUSEDOWN); this.ref.onmousedown=ev}
	else this.evnt.onclick=ev
}
/************
Making menu object
*************/
function cm_makeMenu(name,parent,text,link,target,width,height,img1,img2,bgcoloroff,bgcoloron,textcolor,hovercolor,onclick,onmouseover,onmouseout){
	this.m[name]=new Object(); var obj=this.m[name]; obj.name=name;	obj.subs=new Array(); obj.parent=parent; var tt
	obj.lnk=(link==0||link=='')?"":link; obj.target=target
	if(parent!="" && parent){this.m[parent].subs[this.m[parent].subs.length]=name; l=this.m[parent].l+1} else l=0
	obj.l=l; prop1=l<this.level.length?this.level[l]:this.level[this.level.length-1]; prop2=this.level[0]
	if(this.l.length<=l){
		this.l[l]=new Object(); this.l[l].num=0; if(l==0) this.l[l].names=new Array()
		this.l[l].clip=prop1["clip"]||prop2["clip"]||0; this.l[l].clippx=prop1["clippx"]||prop2["clippx"]||0
		this.l[l].cliptim=prop1["cliptim"]||prop2["cliptim"]||0; this.l[l].filter=prop1["filter"]||prop2["filter"]||0
		this.l[l].border=prop1["border"]||prop2["border"]; this.l[l].maxnum=0
		this.l[l].bordercolor=prop1["bordercolor"]||prop2["bordercolor"];
		s=prop1["align"]||prop2["align"]; if(s=="left") s=1; else if(s=="right") s=0; 
		else if(s=="top") s=3; else if(s=="bottom") s=2; this.l[l].align=s; this.aobj[l]=-1;
		this.l[l].height=prop1["height"]||prop2["height"]; this.l[l].width=prop1["width"]||prop2["width"];
		this.l[l].style=prop1["style"]||prop2["style"]; this.l[l].tc=textcolor||prop1.textcolor||prop2.textcolor; 
		this.l[l].offsetX=String(prop1["offsetX"])!="undefined"?prop1["offsetX"]:prop2["offsetX"]
		this.l[l].offsetY=String(prop1["offsetY"])!="undefined"?prop1["offsetY"]:prop2["offsetY"]
	}if(l==0) this.l[l].names[this.l[l].names.length]=name
	if(parent!="" && parent){obj.num=this.m[parent].subs.length-1}else obj.num=this.l[l].num
	this.l[l].num++; prop=l<this.level.length?this.level[l]:this.level[this.level.length-1]
	obj.width=this.checkp(width?width:prop1.width?prop1.width:prop2.width,1,0,1);
	obj.height=this.checkp(height?height:prop1.height?prop1.height:prop2.height,0,0,1);
	if(parent!="" && parent){if(this.m[parent].subs.length>this.l[l].maxnum) this.l[l].maxnum=this.m[parent].subs.length 
		if(this.m[parent].totheight==0) this.m[parent].totheight=this.l[l].border
		this.m[parent].totheight+=obj.height+ this.l[l].border
		if(this.m[parent].maxwidth<obj.width) this.m[parent].maxwidth=obj.width+this.l[l].border*2
	}else{this.l[l].maxnum=this.l[l].names.length; this.totwidth+=obj.width; this.totheight+=obj.height
		this.maxwidth=this.maxwidth>obj.width?this.maxwidth:obj.width; this.maxheight=this.maxheight>obj.height?this.maxwidth:obj.height
	}if(img1) text='<img src="'+img1+'" border="0" name="imgCMenu'+name+'">'
	else if(bw.ns4){text='<font size="'+(prop1.NS4fontSize||prop2.NS4fontSize)+'" face="'+(prop1.NS4font||prop2.NS4font)+'" color="'+(textcolor||this.l[l].tc)+'">'+text+'</font>'}
	if(bw.ns4&&this.useNS4links&&(l==0||!this.useframes) ||(l==0&&img1)){tt=img1&&l==0?this.useclick?this.name+".mover('"+name+"',1);":this.name+".go('"+name+"');":"";text='<a href="#" onclick="'+tt+'return false" class="clNS4">'+text+'</a>'}
	if(img1){obj.preimg1=new Image(); obj.preimg1.src=img1}; if(img2){obj.preimg2=new Image(); obj.preimg2.src=img2}
	if(img2) obj.img="imgCMenu"+name; else obj.img=0; obj.img1=img1||""; obj.img2=img2||""; obj.text=text; obj.subx=-1;
	obj.c1=bgcoloroff||prop1.bgcoloroff||prop2.bgcoloroff; obj.c2=bgcoloron||prop1.bgcoloron||prop2.bgcoloron;
	obj.c3=textcolor||this.l[l].tc; obj.c4=hovercolor||prop1.hovercolor||prop2.hovercolor;  obj.suby=-1;
	obj.mclick=onclick||""; obj.mover=onmouseover||""; obj.mout=onmouseout||"";	obj.totheight=0; obj.maxwidth=0; 
}
/************
Onmouseout
*************/
function cm_mout(name,cl){
	if(!name&&cl&&!this.isover){this.isclicked=0; this.hideSubs(1,0,0,0,1);  this.aobj[0]=-1; return}
	if(!name) return; var l=this.m[name].l;
	if((this.m[name].subs.length==0||!this.loaded)||(this.useclick&&!this.isclicked)){if((this.aobj[l+1]==-1||l>=this.l.length-1)&&this.aobj[l]!=-1){this.aobj[l].setactive(0,0,1); this.aobj[l]=-1;}}
	if(this.m[name].mout!="") eval(this.m[name].mout)
	if(this.useclick){this.isover=0; return}; clearTimeout(this.tim); 
	if(!(!bw.ie&&this.useframes&&l==0&&this.aobj1)){ this.isover=0; this.aobj1=0; this.tim=setTimeout(this.name+".hideSubs(1,0,0,0,1)",this.wait)} 
}
/************
Onmouseover
*************/
function cm_mover(name,cl){
	clearTimeout(this.tim); this.isover=1; var l=this.m[name].l;
	if(this.aobj[l].name==name){
		if(this.aobj[l+1]!=-1 && l<this.l.length-1){
			this.aobj[l+1].setactive(0,0,1); this.aobj[l+1]=-1; this.hideSubs(l+2,1); return
		}else if((!this.useclick)||(this.useclick&&this.isclicked)) return
	}if(this.m[name].mover!="") eval(this.m[name].mover)
	var num=this.m[name].num; var obj=this.l[l].o[num]
	if(this.aobj[l].name!=name){if(this.aobj[l]!=-1) this.aobj[l].setactive(0,0,1); this.aobj[l]=obj; this.aobj[l].name=name; obj.setactive(1,0,1)}
	if(l==1)this.aobj1=1; if(l==0 && cl && this.useclick) this.isclicked=1; 
	if(!this.isclicked&&this.useclick) return; if(!this.loaded) return;
	this.showSubs(name,l,num,cl)
}
/************
Hiding subelements
*************/
function cm_hideSubs(l,system,cl,sys2,hc){
	if(this.isover && !system) return
	if(l==1 && this.aobj[0]!=-1&&!sys2){this.aobj[0].setactive(0,0,1);this.aobj[0]=-1}
	if(!this.loaded) return; if(cl==1) return
	for(i=l;i<this.l.length;i++){if(this.l[i].oBorder.vis==0) break; this.l[i].oBorder.hideIt(); this.aobj[i]=-1;}
	if(hc&&this.hcode){eval(this.hcode); this.hcode=""}
}
/************
Get x/y coords. Only the first time :)
*************/
function cm_getCoords(name,l,num,topalign,align,ln,border,cn,lev1b){
	if(cn==5){ this.m[name].subx=0; this.m[name].suby=0; return }//Just in case infinitive loops
	if(l==1) var pobj=this.l[l-1].o[num].oBorder
	else var pobj=this.l[l-1].oBorder
	var x=pobj.x; var y=pobj.y;
	if(l!=1){y+=this.l[l-1].o[num].y}
	pborder=this.l[l-1].border; 
	lx=x+pobj.width; rx=x-this.m[name].maxwidth- (this.l[l-1].offsetX*2)
	if(align==0){if(l==1){y+=border} if(l==1&&this.useframes) x=0; else x=lx
	}else if(align==1){x=rx; if(l==1){if(this.useframes) x=page.x2 - this.m[name].maxwidth; y+=border}}
	if((align==2||topalign==2)&&lev1b!=3){
		if(l!=1 && (align!=1&&align!=0)){if(topalign==1) x=rx; else x=lx}
		if(l==1) if(this.useframes) y=0; else y+=this.m[name].height+border+pborder;
	}if((align==3||topalign==3)&&lev1b!=2){
		if(l!=1&&align!=1&&align!=0){if(topalign==1) x=rx; else x=lx}
		if(this.useframes&&l==1) y=page.y2 - this.m[name].totheight - this.l[l-1].offsetY*2
		else y-=this.m[name].totheight - this.l[l].offsetY*2; if(l!=1||lev1b==3) y+=this.m[name].height
	}this.m[name].scrollY=this.lastScrolled; this.m[name].subx=x+this.l[l-1].offsetX; 
	this.m[name].suby=y+this.l[l-1].offsetY; if(this.useframes&&l==1&&align!=3) this.m[name].suby+=this.lastScrolled
	if(this.pagecheck&&(l!=1||!this.useframes)) this.checkPage(name,l,num,topalign,align,ln,border,cn)
}
/************
Checking page coords
*************/
function cm_checkPage(name,l,num,topalign,align,ln,border,cn){
	cn++; 
	if(this.m[name].subx+this.m[name].maxwidth>page.x2){
		if(align!=1){if(align==3&&topalign!=0) topalign=3; align=1; this.getCoords(name,l,num,topalign,align,ln,border,cn)}
	}else if(this.m[name].subx<page.x){
		if(align!=0){if(align==3) topalign=3; align=0; this.getCoords(name,l,num,topalign,align,ln,border,cn)}
	}else if((this.m[name].suby+this.m[name].totheight)>page.y2){
		if(l==1){topalign=3; this.getCoords(name,l,num,topalign,align,ln,border,cn,3)}
		else if(align!=3){ align=3; this.getCoords(name,l,num,topalign,align,ln,border,cn)}
	}else if(this.m[name].suby<page.y){
		if(l==1){topalign=2; this.getCoords(name,l,num,topalign,align,ln,border,cn,2)}
		else if(align!=2){align=2; this.getCoords(name,l,num,topalign,align,ln,border,cn)}
	}
}
/************
Showing subelements
*************/
function cm_showSubs(name,l,num,cl){
	l+=1; if(l>=this.l.length) return; ln=this.m[name].subs.length
	if(ln==0){this.hideSubs(l,1,0,1); return}
	else this.hideSubs(l+1,1); var border=this.l[l].border; this.aobj[l]=-1
	if(this.useframes&&(bw.ns4||bw.ns6)) cm_checkScrolled(this)
	if((this.m[name].subx==-1 || this.m[name].suby==-1) || this.m[name].scrollY!=this.lastScrolled || this.isresized){
		var topalign=this.l[0].align; var align=this.l[l-1].align; 
		this.getCoords(name,l,num,topalign,align,ln,border,0)
	}var x=this.m[name].subx; var y=this.m[name].suby;
	var bobj=this.l[l].oBorder; bobj.hideIt(); 
	if(this.l[l-1].clip&&!(this.l[l-1].filter&&bw.filter)){
		clearTimeout(bobj.tim); bobj.clipy=0; bobj.clipTo(0,this.m[name].maxwidth,0,0);
	}else bobj.clipTo(0,this.m[name].maxwidth,this.m[name].totheight,0,1)
	bobj.moveIt(x,y); var yy=border
	for(i=0;i<this.l[l].maxnum;i++){
		var obj=this.l[l].o[i]
		if(i<ln){
			var n=this.m[name].subs[i]; obj.aname=n; if(!bw.ns4||!this.NS4hover) obj.writeIt(this.m[n].text)
			obj.addEvents(n,this.name,this.m[n].lnk,this.useclick); var w=this.m[n].width; var h=this.m[n].height
			if(obj.y!=yy) obj.moveY(yy); yy+=h+border; if(!obj.img) obj.setactive(0,n,1); 
			if(obj.width!=w||obj.height!=h) obj.clipTo(0,w,h,0,1); obj.css.visibility="inherit"
		}else obj.hideIt()
	}if(this.l[l-1].filter&&bw.filter) bobj.filterIt(this.l[l-1].filter)
	else if(this.l[l-1].clip){bobj.showIt(); bobj.clipOut(this.l[l-1].clippx,this.m[name].maxwidth,this.m[name].totheight,this.l[l-1].cliptim,name);}
	else bobj.showIt(); 
	if(!bw.ns4&&this.checkselect){ //CHECKING FOR SELECT BOXES
		for(i=0;i<this.sel.length;i++){
			selx=0; sely=0; var selp;
			if(this.sel[i].offsetParent){selp=this.sel[i]; while(selp.offsetParent){selp=selp.offsetParent; selx+=selp.offsetLeft; sely+=selp.offsetTop;}}
			selx+=this.sel[i].offsetLeft; sely+=this.sel[i].offsetTop
			selw=this.sel[i].offsetWidth; selh=this.sel[i].offsetHeight
			if(((selx+selw)>this.m[name].subx && selx<(this.m[name].subx+this.m[name].maxwidth))
			&&((sely+selh)>this.m[name].suby && sely<(this.m[name].suby+this.m[name].totheight))){
				if(this.sel[i].style.visibility!="hidden"){this.sel[i].level=l; this.sel[i].style.visibility="hidden"; this.hcode+=this.name+".sel["+i+"].style.visibility='visible';"}
			}else if(l<=this.sel[i].level) this.sel[i].style.visibility="visible"
		}
	}else if(bw.ns4&&this.hideForm){eval(this.hideForm+".visibility='hide'"); this.hcode=this.hideForm+".visibility='show'"}
}
/************
Making all top elements
*************/
function cm_makeTop(rr){
	var m,rows,border,x,y,mpa
	m=this.menuplacement; rows=this.rows; this.pxbetween=this.checkp(this.pxbetween,0,1,1)
	border=this.l[0].border;y=this.checkp(this.fromtop,0,0,1)+border;x=this.checkp(this.fromleft,0,0,1)+border
	if(m=="bottomcenter"||m=="bottom"){
		if(m=="bottomcenter") x=toppage.x2/2-(this.totwidth+border*this.l[0].num+this.pxbetween*(this.l[0].num-1))/2
		y=toppage.y2-this.maxheight-border
	}else if(m=="right") x=toppage.x2-this.maxwidth-border*2
	else if(m=="bottom") y=toppage.y2-this.maxheight-border*2
	else if(m=="center"){if(rows==0) x=toppage.x2/2 -  (this.maxwidth+border*2)/2; else x=toppage.x2/2 - (this.totwidth + border*this.l[0].num +this.pxbetween*(this.l[0].num-1))/2}
	else if(m.toString().indexOf(",")>-1) mpa=1
	if(this.usebar){ var bx,by,bww,bh,oBb
		oNS=bw.ns6?this.oNS[this.l[0].maxnum]:0
		this.oBar=new cm_makeObj('div'+this.name+'Bar',0,0,window,0,oNS)
		if(this.barx=="menu") bx=mpa&&rows?this.checkp(m[0],1,0,1)-border:x-border; else{ bx=this.checkp(this.barx,1,0,1) }
		if(this.bary=="menu") by=mpa&&!rows?this.checkp(m[0],0,0,1)-border:y-border; else by=this.checkp(this.bary,0,0,1);  this.oBar.moveIt(bx,by)
		if(this.barwidth=="menu"){bww=rows?mpa?(this.checkp(m[m.length-1],1,0,1)-bx)+this.m[this.l[0].names[this.l[0].num-1]].width+border:(this.totwidth +this.pxbetween*(this.l[0].num-1)):this.maxwidth; 
		bww+=!rows?border*2:0;}else bww=this.checkp(this.barwidth,1,0,1); 
		if(bw.ie&&rows&&this.barwidth=="100%"&&this.useframes) bww+=parseInt(self.document.body.leftMargin)*2
		if(this.barheight=="menu"){bh=!rows?mpa?(this.checkp(m[m.length-1],0,0,1)-by)+this.m[this.l[0].names[this.l[0].num-1]].height+border:(this.totheight + this.pxbetween*(this.l[0].num-1)):this.maxheight;
		bh+=rows?this.l[0].border*2:0;} else bh=this.checkp(this.barheight,0,0,1);
		this.oBar.clipTo(0,bww,bh,0,1);
		if(this.barinheritborder&&border){oBb=new cm_makeObj('div'+this.name+'Barb',0,0,window,'div'+this.name+'Bar'); 
		oBb.moveIt(border,border); oBb.clipTo(0,bww-border*2,bh-border*2,0,1); oBb=null;}
	}this.l[0].o=new Array()
	for(j=0;j<this.l[0].maxnum;j++){
		this.l[0].o[j]=new cm_makeObj('div'+this.name+'0_'+j,this,0,window,'div'+this.name+'0_'+j+'b'); if(bw.ns6) oNS=this.oNS[j]; else oNS=0
		this.l[0].o[j].oBorder=new cm_makeObj('div'+this.name+'0_'+j+'b',0,0,window,0,oNS)
		obj=this.l[0].o[j]; w=this.m[this.l[0].names[j]].width; h=this.m[this.l[0].names[j]].height
		obj.addEvents(this.l[0].names[j],this.name,this.m[this.l[0].names[j]].lnk,this.useclick); obj.clipTo(0,w,h,0,1)
		if(mpa){if(rows==1) x=this.checkp(m[j],0,1,1); else y=this.checkp(m[j],0,0,1)}
		obj.moveIt(border,border); 
		obj.setactive(0,this.l[0].names[j])
		obj.oBorder.moveIt(x-border,y-border); obj.oBorder.clipTo(0,w+border*2,h+border*2,0,1); obj.oBorder.showIt()
		if(rows==0) y+=h+border+this.pxbetween
		else x+=w+border+this.pxbetween; obj.showIt()
	}if(!rr){
		if(this.useclick) coolFMouseup+=this.name+".mmout('',1);"; if(!this.useframes&&!bw.ns4) this.refresh()
		else if(!this.useframes&&bw.ns4){l=""; if(onload){l=String(onload.toString()); l=l.replace("function onload(event)",""); l=l.slice(25,l.length-2)} l+=this.name+ ".refresh();"; onload=new Function(l)}
		if(this.resizecheck) setTimeout('window.onresize=new Function("'+this.name+'.resized()")',500)
		if(this.checkscroll){if(bw.ns4 || bw.ns6){if(this.checkscroll!=2&&this.useframes!=1){setTimeout("cm_checkScrolled("+this.name+")",200)}}}
		if(this.useframes&&!rr) this.checkFrame(0); else this.win=window
	}
}
/************
Refreshing/making all sub elements
*************/
function cm_refresh(ev){
	var border,obj,oNS,oNS2
	if(this.useframes) page=new makePageCoords(this.win,this.useframes); else page=toppage
	for(i=1;i<this.l.length;i++){
		this.l[i].o=new Array();
		border=this.l[i].border; defheight=this.checkp(this.l[i].height)
		if(bw.ns4){oNS=new Layer(this.l[i].width,this.win); oNS.zIndex=(500+i);  if(this.l[i].border) oNS.bgColor=this.l[i].bordercolor;}
		else if(bw.ns6){oNS=document.createElement("DIV"); oNS.setAttribute("style",this.ns6styleb[i]); this.win.document.body.appendChild(oNS)}
		this.l[i].oBorder=new cm_makeObj('div'+this.name+i+"b",0,0,this.win,0,oNS)
		for(j=0;j<this.l[i].maxnum;j++){
			if(bw.ns4){oNS2=new Layer(this.l[i].width,oNS);}
			else if(bw.ns6){oNS2=document.createElement("DIV");	oNS2.setAttribute("style",this.ns6style[i]); oNS.appendChild(oNS2)}
			this.l[i].o[j]=new cm_makeObj('div'+this.name+i+'_'+j,this,i,this.win,0,oNS2)
			obj=this.l[i].o[j]; if(!obj.addEvents) return; obj.moveIt(border,(border+defheight)*j + border)
		}	
	}this.loaded=1;
	if(this.checkscroll&&bw.ie){this.win.document.body.onscroll=new Function("cm_checkScrolled("+this.name+")"); cm_checkScrolled(this)}
	if(this.useclick){this.win.document.onmouseup=new Function(coolFMouseup); if(this.useframes) document.onmouseup=new Function(coolFMouseup); }
	if(!bw.ns4&&this.checkselect) this.sel=bw.ie4?this.win.document.all.tags("SELECT"):this.win.document.getElementsByTagName("SELECT")
}
function cm_NS6_createElement(st,inn){el=document.createElement("DIV"); if(st) el.setAttribute("style",st); if(inn) el.innerHTML=inn; document.body.appendChild(el); return el}
/************
Making code
*************/
function cm_construct(){
	this.level=null; var str=""; var str2=""; var frstr=""; var tempstr; num=bw.ie?this.l.length:1;
	for(i=0;i<num;i++){
		if(i!=0) frstr+='<div id="div'+this.name+i+'b" style="'+this.ns6styleb[i]+'" class="cl'+this.name+i+'b">\n'
		for(j=0;j<this.l[i].maxnum;j++){
			tempstr='<div id="div'+this.name+i+'_'+j+'" '; if(i!=0) tempstr+='style="'+this.ns6style[i]+'"'
			if(i==0){n=this.l[0].names[j]; txt=this.m[n].text
				if(!bw.ns6){
					str+='<div id="div'+this.name+'0_'+j+'b" class="cl'+this.name+'b'+i+'">'
					str+=tempstr+' class="cl'+this.name+i+'">'+txt+'</div>'; str+='</div>\n'
				}else this.oNS[j]=cm_NS6_createElement(this.ns6styleb[i],tempstr+' class="cl'+this.name+i+'">'+txt+'</div>')
			}else frstr+=tempstr+'"></div>\n'
		}if(i!=0){frstr+='</div>\n'}
	}if(this.usebar){
		if(this.barinheritborder) str2='<div id="div'+this.name+'Barb"></div>'; 
		if(bw.ns6) this.oNS[this.l[0].maxnum]=cm_NS6_createElement(this.ns6styleb[this.ns6styleb.length-1],str2)
		else{str+='<div id="div'+this.name+'Bar">';str+=str2+'</div>\n'}
	}if(!this.useframes&&bw.ie) str+=frstr; else this.frstr=frstr; if(!bw.ns6) document.write(str)
	this.makeTop();	if(this.useframes) window.onerror=cm_check_error;
}
coolFrameError=0//Trapping external pages in frame error!
function cm_check_error(e){e=e.toLowerCase(); if(e.indexOf("access")>-1||e.indexOf("permission")>-1){coolFrameError=1; return true;}else return false}
/**************
Make styles
**************/
function cm_makeStyle(){
	var str="<style>\n"; var zindex=150;  var c,w,st,bg
	this.ns6style=new Array(); this.ns6styleb=new Array()
	for(i=0;i<this.l.length;i++){
		if(i==0){if(bw.ns4){w="width:" +this.l[0].width+";"; this.l[i].style=""} else w=""; str+='.cl'+this.name+i+'{position:absolute; '+w+' background-color:transparent; color:'+this.l[i].tc+';'+this.l[i].style+'; cursor:pointer; cursor:hand; visibility:inherit; z-index:'+zindex+'}\n'}
		else{st='position:absolute; '+this.l[i].style+';  cursor:pointer; cursor:hand; visibility:inherit; z-index:'+zindex; this.ns6style[i]=st}
		bc=this.l[i].border?bw.ns4?'layer-background-color:'+this.l[i].bordercolor:'; background-color:'+this.l[i].bordercolor:"";
		if(!bw.ns4) bc+="; overflow:hidden"
		tempstr='position:absolute; clip:rect(0,0,0,0); visibility:hidden; '+bc+'; z-index:'+(zindex-50)
		if(i==0&&!bw.ns6) str+='.cl'+this.name+'b'+i+'{'+tempstr+'}\n'; 
		else this.ns6styleb[i]=tempstr; zindex+=100
	}	
	if(this.usebar){
		bg=this.barinheritborder?this.l[0].bordercolor:this.barcolor
		st='z-index:80; position:absolute; background-color:'+bg+'; layer-background-color:'+bg
		if(!bw.ns6) str+='#div'+this.name+'Bar{'+st+'}\n'; else this.ns6styleb[this.ns6styleb.length]=st
		if(this.barinheritborder){str+='#div'+this.name+'Barb{z-index:85; position:absolute; background-color:'+this.barcolor+'; layer-background-color:'+this.barcolor+'}\n'}
	}
	if(bw.ns4) str+="A.clNS4{text-decoration:none; padding:"+this.NS4padding+"}\n"; document.write(str+"\n</style>\n")
}
/************
Refreshing page if it's resized
*************/
function cm_resized(){
	page2=new makePageCoords(window,this.useframes); 
	if(page2.x2!=toppage.x2 || page2.y2!=toppage.y2){
		if(!bw.ns4){
			toppage=new makePageCoords(window,this.useframes); this.makeTop(1)
			if(!this.useframes) page=toppage; this.isresized=1; eval(this.resizecode)
		}else{this.win.location.reload(); location.reload()}
	}if(!bw.ns4&&this.useframes){page=new makePageCoords(this.win,this.useframes)}
}
/************
Going to another page
*************/
function cm_go(name){
	obj=this.m[name]; url=obj.lnk; target=obj.target; fc=obj.mclick
	if(url){
		if(this.useframes&&!coolFrameError) loc=this.win.location.href; else loc=location.href
		if(fc) eval(fc); url=this.checkFolder(loc.toString(),url); this.isover=0;
		this.hideSubs(1,0,1); this.isclicked=0; this.aobj[0]=-1
		if(String(target)=="undefined" || target=="" || target==0 || target=="_self"){
			this.win.location.href=url
		}else if(target=="_blank") window.open(url)
		else if(target=="_top" || target=="window") top.location.href=url  
		else if(top[target]) top[target].location.href=url
		else{fr=findFrame(target); if(fr) fr.location.href=url}
	}else if(fc) eval(fc)
}
/************
Getting folders - THANKS TO DCAGE FOR THIS FIX
*************/
function cm_checkFolder(tmp,url){
	if(url.indexOf("mailto:")>-1 || url.indexOf("/")==0 || url.indexOf("http://")==0) return url
	else if(this.useframes && bw.ie || bw.ns6) return url
	var addr=''; var lvl=''; var off_cnt=0; var cnt=0;
	if(tmp.indexOf('file:')>-1 || tmp.charAt(1)==':') addr=this.offlineUrl;
	else if(tmp.indexOf('http:')>-1) addr=this.onlineUrl;
	for(var i=0;i<addr.length;i++){if(addr.charAt(i)=='\/') off_cnt+=1}
	for(var i=0;i<tmp.length;i++){if(tmp.charAt(i)=='\/'){ cnt+=1; if(cnt>off_cnt) lvl+='../'; }}
	return lvl + url
}
/************
Checkloaded for the frames version
*************/
function cm_checkLoaded(ev,ns){
	coolFName=eval(coolFName)
	var ok=0
	if(document.layers){ 
		if(ns){coolFName.refresh(); coolFName.nsload=1; ok=1; coolFrameError=0
		}else if(ev.target.name==coolFName.frame&&!coolFName.nsload){coolFName.refresh(); ok=1; coolFrameError=0; routeEvent(ev)}
	}else if(bw.ie){
		if (coolFName.win.document.readyState == "complete"){
			coolFName.win.document.body.insertAdjacentHTML("beforeEnd",coolFName.frstr)
			coolFName.win.document.body.onunload=cm_unloaded; coolFName.refresh(); ok=1; coolFrameError=0
		}else setTimeout("cm_checkLoaded()",200)
	}else if(bw.ns6){ 
		if(coolFName.win.document){
			if(coolFName.win.document.body){coolFName.win.addEventListener("unload", cm_unloaded, true); coolFName.refresh(); ok=1; coolFrameError=0}
			else setTimeout("cm_checkLoaded()",200)
		}else setTimeout("cm_checkLoaded()",200)
	}
}
function cm_unloaded(ev){coolFName=eval(coolFName); if(!coolFName) return; if(document.layers && ev.target.name!=coolFName.frame) return; else coolFName.nsload=0; coolFName.loaded=0; if(!document.layers) setTimeout("cm_checkLoaded()",200)}
/************
Make menu object
*************/
var coolFName=""; var onload; var coolFMouseup="";
function makeCompMenu(name){
	coolFName=name; this.name=name; this.lastScrolled=0;
	this.win=window; toppage=new makePageCoords(window,parent.frames.length);
	this.aobj=new Array(); this.m=new Array(); this.l=new Array()
	this.level=new Array(); this.resized=cm_resized;
	this.makeMenu=cm_makeMenu; this.showSubs=cm_showSubs; this.makeTop=cm_makeTop;
	this.getCoords=cm_getCoords; this.checkPage=cm_checkPage;
	this.mmout=cm_mout; this.mover=cm_mover; this.checkp=cm_checkp;
	this.hideSubs=cm_hideSubs; this.construct=cm_construct;
	this.makeStyle=cm_makeStyle; this.refresh=cm_refresh;
	this.go=cm_go; this.frstr=""; this.mobj=new Array()
	this.totwidth=0; this.totheight=0; this.maxwidth=0; this.maxheight=0
	this.tim=10; this.loaded=0; this.isover=false; this.checkFrame=cm_checkFrame;
	this.checkFolder=cm_checkFolder; this.hcode=""; this.oNS=new Array(); this.oNS2=new Array()
	bw.filter=(bw.ie6||bw.ver.indexOf("MSIE 5.5")>-1) && !bw.mac
}
/************
Find frame
*************/
function findFrame(frameName){
	obj=top; var frameObj=0;
	for(i=0;i<obj.frames.length;i++){
		if(obj.frames[i].name==frameName){frameObj=obj.frames[i]; break;}; ln=obj.frames[i].frames.length
		for(j=0;j<ln;j++){
			if(obj.frames[i].frames[j].name==frameName){frameObj=obj.frames[i].frames[j];  break}; ln2=obj.frames[i].frames[j].frames.length
			for(a=0;a<ln2;a++){
				if(obj.frames[i].frames[j].frames[a].name==frameName){frameObj=obj.frames[i].frames[j].frames[a]; break}
			}
		}
	}return frameObj
}
/************
Checking for frame
*************/
function cm_checkFrame(num){
	var fr; if(num==10){debug('Frame: '+this.frame+' doesn\'t exist - Value: '+fr + " - Could not build menus."); return}
	if(!top.frames[this.frame]) fr=findFrame(this.frame); else fr=top.frames[this.frame]
	if(!fr){num++; setTimeout(this.name+".checkFrame("+num+")",500)
	}else{ this.win=fr
		if(bw.ns4){
			top.frames.captureEvents(Event.UNLOAD); top.frames.captureEvents(Event.LOAD); top.frames.onunload=cm_unloaded;
			top.frames.onload = cm_checkLoaded;	setTimeout("cm_checkLoaded(0,1)",1000)
		}else if((bw.ie||bw.ns6)) setTimeout("cm_checkLoaded()",200)
	}
}

var bw=new lib_bwcheck() //Making browsercheck object
var mDebugging=2 
   6   0   ��
 I W _ G F X _ T P       0        GIF89a  �� ���   !�    ,       2 ;t_clear.gif  ,  \   ��
 I W _ G F X _ T I W C U S T O M C H E C K B O X _ F A L S E         0        GIF89a
  �  ������麶足������ٺ�װ�֬�ԥ�Ԣ�Ӟ�қ�є����΅��sl�`X�QH�MD�G>�8.�<2�8.�5+�.#�+�)�$�!� �,"�VQ�a]�ig�tr�wv�yx�{z�~~���                                                                     ,    
   Q@@ @,����|N(�I��&��pɐ(�G�x&#0!b�hQ����ap�����%
	xjw�Q�PQ ���A ;)  X   ��
 I W _ G F X _ T I W C U S T O M C H E C K B O X _ T R U E       0        GIF89a
  �  �������������������������˰�լ�ʬ�ҧ������{�{y�ys�sm�m^�^V�VS�SS�SF�FF�F1�1-�-%�%##��~
�
��� ~                                                                                     ,    
   N@�p(�P��Ĉ�h:�Ѣ0 �hCh(F� b�tQ!3�4��˨2��T�(4R�#X��]N�o ���A ;   �   L   ��
 I W _ G F X _ T I W T R E E V I E W _ O P E N       0        GIF89a  �  ����  ��Ƅ���   �� ��                           !�    ,      @K�s���{DF�q'P\�lN�0dhj~/�N� ����"�p&F�	
��OA�zL��.*��Cq| k�dbr�  ;  �   P   ��
 I W _ G F X _ T I W T R E E V I E W _ C L O S E D       0        GIF89a  �  ����  ��Ƅ���   ��                              !�    ,      @>�	��Ӕmؠ%Thr��]*�Y���w�Y8X�ʩ���݈��9�-yC��7��d�_�J" ;   �   T   ��
 I W _ G F X _ T I W T R E E V I E W _ D O C U M E N T       0        GIF89a  �  ����  ��Ƅ    �                                 !�    ,      @/�I�,�⛋��i�f\��_�j�7Z�`nDN����=����EQ��  ;  |   L   ��
 I W _ G F X _ T I W T R E E V I E W _ P L U S       0        GIF89a  �  ���fff���                                       !�    ,       )�I��8������4L����R� ˝W�mW��� gHF  ;u   P   ��
 I W _ G F X _ T I W T R E E V I E W _ M I N U S         0        GIF89a  �  ���fff���                                       !�    ,      @"�I+`h��^(Z�8�(�Y+��p,�������sOF ;     D   ��
 I W _ G F X _ D B N A V _ C A N C E L       0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ���  �  ������������                        !�   ,       ���di�O3DU뾰K߰Q�|�콖d"q�l�!l8��¦%ٜL}�
Ӫ�^�Ȩ�;ƶҘ�\喳����~��t����-r_u]|��L_�P�K��a�8?A84
����
	�����! ;�   D   ��
 I W _ G F X _ D B N A V _ D E L E T E       0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�Ԁ  ������������                           !�   ,       j��di�O3DT뾰;߰Q�|��=�����#�8��h�ҔX�X촚�Z��������r��n����K)���{��_@&x4
����
	�����! ;   �   @   ��
 I W _ G F X _ D B N A V _ E D I T       0        GIF89a  �     ���  �	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�����������������                        !�   ,       {�#�di��CHU뾰K!�/u�x_Q	��cA�-�%q��r{Ƣ�)���f�/k�����/Yj���kv�
�˟u;�j����}hGg\�?��E�����4	����	
�����! ;    D   ��
 I W _ G F X _ D B N A V _ F I R S T         0        GIF89a  �     ���  �	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�����������������                        !�   ,       ��#�di��CHU뾰K!�/u�m����EI�*�2K
�ţ��TR��)�g����tY�r��.ٜ&������������M�C�Zsv�p�^R���h.�w��zG�[/�q8�4	����	
�����! ;  D   ��
 I W _ G F X _ D B N A V _ I N S E R T       0        GIF89a  �     ���  �	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ��������������                           !�   ,       �#�di��CHT뾰;!��Q�A�W��.@��+��%��T�KJ���� �뤚��y]U���a�m��*x�<�O__{VL�Y�ShJ.���.|xV8�4	����	
�����! ;    @   ��
 I W _ G F X _ D B N A V _ L A S T       0        GIF89a  �     ���  �	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�����������������                        !�   ,       ��#�di��CHU뾰K!�/u�m����BI�*��T.�F[R�|M�����2�R'���F{�1�զ��v�����t���~3�niU�slxX|[U�f�\dcw}���G�/��m8�4	����	
�����! ;     @   ��
 I W _ G F X _ D B N A V _ N E X T       0        GIF89a  �     ���  �	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�����������������                        !�   ,       }�#�di��CHU���0,1|�q X9W�g���a��3sʞ�	%2�TX��=��׮�v5�Ϥ�,Ϊ�l�w�:O�dz�>��x~puwAe�}Z�������3	����	
�����! ;  @   ��
 I W _ G F X _ D B N A V _ P O S T       0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�� � ������������                           !�   ,       ���di�O3DT뾰;�RN�9/����G�T��bŅ�tǧ��|�?#Նk]��e�V�-�ٜv쪸�n��Ma��0;�z�W�e}z{f/�w��U]VZy�:^��d;:�1�>}�C��0�4
����
	�����! ;   D   ��
 I W _ G F X _ D B N A V _ P R I O R         0        GIF89a  �     ���  �	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�����������������                        !�   ,       ��#�di��CHU뾰K!Á�RG}��N���*A�h�%�Dc�	mQ�N�V;�bq�m�r������6�����X�\uݎ�awrz?�ynG�~f1��{�UdE����4	����	
�����! ;    H   ��
 I W _ G F X _ D B N A V _ R E F R E S H         0        GIF89a  �     ���  �	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�� �  � ������������                     !�   ,       ��#�di��CHW뾰k!Ox[G�┠ך\,	_Q�N(��X�M��F���h�Ս]����C����ժ��չ��϶�jMfe�LF?a|>Yyh^�,UY�-���MV/u/s�0R�����4	����	
�����! ;     T   ��
 I W _ G F X _ D B N A V _ C A N C E L D I S A B L E D       0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�����������������                           !�   ,       ���di�O3DT뾰;��d�8\��	���
EHlU���3�ڦN�TK�6�X��Ss��y��v�0���C�����;��)zAibSRrtb���Xxzx�Nx.o|0�8L=84
����
	�����! ; �   T   ��
 I W _ G F X _ D B N A V _ D E L E T E D I S A B L E D       0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ��������������                              !�   ,       a��di�O3DS뾰+߰Q�|��=�����#��8��h`�\N��+�b�n�ʀxL.k�K0�F��l�{��H�ZCa@����
	�����! ;�   P   ��
 I W _ G F X _ D B N A V _ E D I T D I S A B L E D       0        GIF89a  �     ���Jc{������������   !�   ,       [8�ܮ`�I��"�ͳ� ��H�&W��NA�^,csUWw�R;Ko�#/��q�K-97���ج�J(�|�/�#�x�gq�����<�����= ;    T   ��
 I W _ G F X _ D B N A V _ F I R S T D I S A B L E D         0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ��������������                              !�   ,       ���di�O3DS뾰+߰Q�T�߾b7��1�9ڔK���_�h�8ue���U�r�ߖ�yL��g53����:Y�o�~Zca]c~���z�y�D��7�p8�4
����
	�����! ;   �   T   ��
 I W _ G F X _ D B N A V _ I N S E R T D I S A B L E D       0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ��������������                              !�   ,       x��di�O3DS뾰+߰Q�T�1�.FyaB��:��<cp��"�>�+KB'L����X�8�>O��x�,���[��O�yMQ�W�MuN.Bm14
����
	�����! ;   P   ��
 I W _ G F X _ D B N A V _ L A S T D I S A B L E D       0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ��������������                              !�   ,       ���di�O3DS뾰+߰Q�TOž^����@W`X<"_��hs>yJf�j�\�DJC��&N�Joo�T[���,����tmg�so~��xGR�nm�/��L8�4
����
	�����! ;   �   P   ��
 I W _ G F X _ D B N A V _ N E X T D I S A B L E D       0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�����������������                           !�   ,       y��di�O3DT뾰;��d�qU�	���pB��x�%mKW37�J��g���n�2/x��A16���ׯ�[}=S�u�<�oM�|V~z7ou�a�W�A4
����
	�����! ;  P   ��
 I W _ G F X _ D B N A V _ P O S T D I S A B L E D       0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ��������������                              !�   ,       ���di�O3DS뾰+�Rx�S�����'����HdN���9}A��b/�L�p��tǽ��0��Nw��s���Z��w~�uF}y1w}~�T�0tU{|1�C��^D��V���uH0nz4
����
	�����! ;  �   T   ��
 I W _ G F X _ D B N A V _ P R I O R D I S A B L E D         0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ�����������������                           !�   ,       z��di�O3DT뾰;�U�NF}��N���(A�h�%�Dc�	mM�N�Њ�Ŷ���Eu��M���%�������i�����uxGP��:t�k�4
����
	�����! ;     X   ��
 I W _ G F X _ D B N A V _ R E F R E S H D I S A B L E D         0        GIF89a  �     ���	
\p�^r�]q�Kcy^s�	��˽����ֿ�ֽ��������������������                        !�   ,       ���di�O3DU뾰;Kݷ��8>�
N��Yr�	"�,��%�xX����F�8m��P�R���<���r�jM��e�n�O½}kXv�xd�OEg^�O|U7�`e����s=v_t��K�����4
����
	�����! ; ?   8   ��
 I W _ G F X _ S B _ H B G       0        GIF89a  �  ������      ,       ���ݼ���R	��F3yؑ$  ; n   <   ��
 I W _ G F X _ S B _ H L E F T       0        GIF89a  �  ����������


         ,       ;�� �)�"�-��a�6��y�E��[�v�&�bm����/]�G*�|�\`�l:���tJ�&  ;  P   @   ��
 I W _ G F X _ S B _ H L E F T 2         0        GIF89a  �  ���      ,       )��i����dq�jv�)t����F6�I�j�,��q6��*�Q  ;l   @   ��
 I W _ G F X _ S B _ H R I G H T         0        GIF89a  �  ����������


         ,       9�� �)�"�-��aZ�[arh��W��]����m�k�P�$���r�d�Ш��  ;O   @   ��
 I W _ G F X _ S B _ H R I G H T 2       0        GIF89a  �  ���      ,       (��i����dq�ʄ�@h�y<�H����7��k5\}����G ; o   @   ��
 I W _ G F X _ S B _ H T H U M B         0        GIF89a  �  �������������


      !�    ,      @4(��"�I�$/�=0�\�i!5�e���H�p�Am���^�~>�N�"���r�|$  ; A   <   ��
 I W _ G F X _ S B _ N U L L         0        GIF89a  �  ����������


         ,       (���0�I��8��o ;   <   8   ��
 I W _ G F X _ S B _ V B G       0        GIF89a  �  ������      ,       D�����\�Ryk����=6> ;i   <   ��
 I W _ G F X _ S B _ V D O W N       0        GIF89a  �  ����������


         ,       6�� �)�"�-��a�6��l[t��j�֦��$*ƾZ����d��l:�� ;   M   @   ��
 I W _ G F X _ S B _ V D O W N 2         0        GIF89a  �  ���      ,       &��i����dq�j� �
Z���(��J[�Z�4�,G)�Q  ;   q   @   ��
 I W _ G F X _ S B _ V T H U M B         0        GIF89a  �  �� ����������


���   !�   ,      @6(��%a�I%)&����p}!5F�t�ꃲ#!�4�x��++��	����ԥ�l:�� ;   i   8   ��
 I W _ G F X _ S B _ V U P       0        GIF89a  �  ����������


         ,       6�� �)�"�-��a�6����0�
p�~tmw*��JX���d��l:�� ;   M   <   ��
 I W _ G F X _ S B _ V U P 2         0        GIF89a  �  ���      ,       &��i����dq�j�`1m�(a�y��B*��p'Þu��~ ;   