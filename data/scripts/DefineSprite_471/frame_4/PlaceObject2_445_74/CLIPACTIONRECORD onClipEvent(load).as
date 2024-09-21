onClipEvent(load){
   _root.disDialog = "";
   if(_root.varDiaryPreviousChoice == 1)
   {
      _root.dialog = "做个学霸啃书!";
   }
   else if(_root.varDiaryPreviousChoice == 2)
   {
      _root.dialog = "像爱尔兰人一样灌酒!";
   }
   else if(_root.varDiaryPreviousChoice == 3)
   {
      _root.dialog = "艹遍天下的B!";
   }
   _root.dialog += "\n\n我的美好童年回忆. 印象最深的是...";
   _root.diaLength = _root.dialog.length;
   _root.diaDisplay = "";
   _root.diaSkipped = false;
}
