onClipEvent(load){
   _root.disDialog = "";
   if(_root.varDiaryPreviousChoice == 1)
   {
      _root.dialog = "No one fucks with me! I\'m fucking king shit.";
   }
   else if(_root.varDiaryPreviousChoice == 2)
   {
      _root.dialog = "Never pussy out! I\'ll die a man if I have to.";
   }
   else if(_root.varDiaryPreviousChoice == 3)
   {
      _root.dialog = "Puppies are people too! Seriously, just look at them.";
   }
   _root.dialog += "\n\n现在的我, 已经改变了很多. 如果要用一个词形容那就是...";
   _root.diaLength = _root.dialog.length;
   _root.diaDisplay = "";
   _root.diaSkipped = false;
}
