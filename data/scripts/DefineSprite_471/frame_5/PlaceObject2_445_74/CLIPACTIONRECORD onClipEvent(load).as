onClipEvent(load){
   _root.disDialog = "";
   if(_root.varDiaryPreviousChoice == 1)
   {
      _root.dialog = "I burned down the school! (But not on purpose)";
   }
   else if(_root.varDiaryPreviousChoice == 2)
   {
      _root.dialog = "I fucked those goths and ninjas up!";
   }
   else if(_root.varDiaryPreviousChoice == 3)
   {
      _root.dialog = "I took my first shit! Fuck did that one hurt.";
   }
   _root.dialog += "\n\n哈哈哈... 于是我学到了人生第一课...";
   _root.diaLength = _root.dialog.length;
   _root.diaDisplay = "";
   _root.diaSkipped = false;
}
