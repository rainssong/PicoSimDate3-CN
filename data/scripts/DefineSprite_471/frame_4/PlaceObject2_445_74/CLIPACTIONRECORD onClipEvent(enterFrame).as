onClipEvent(enterFrame){
   if(_root.diaLength > 0)
   {
      _root.diaDisplay += _root.dialog.substr(0,1);
      _root.dialog = _root.dialog.substr(1);
      _root.diaLength--;
      _root.disDialog = _root.diaDisplay;
   }
}
