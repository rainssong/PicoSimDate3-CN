onClipEvent(enterFrame){
   if(_root.diaLength <= 0 && this._currentframe == 1)
   {
      _root.varDiaryChoice1 = "> 苦学!";
      _root.varDiaryChoice2 = "> 聚会喝酒!";
      _root.varDiaryChoice3 = "> 艹B!";
      this.gotoAndPlay(2);
   }
   if(_root.varDiaryChosenChoice != 0)
   {
      if(_root.varDiaryChosenChoice == 1)
      {
         _parent.statup.gotoAndPlay(2);
         _root.varDiaryStatIncrease = "BRAINS";
         _root.statsBrains += _root.tuneDiaryStatIncrease;
      }
      else if(_root.varDiaryChosenChoice == 2)
      {
         _parent.statup.gotoAndPlay(2);
         _root.varDiaryStatIncrease = "CHARM";
         _root.statsCharm += _root.tuneDiaryStatIncrease;
      }
      else if(_root.varDiaryChosenChoice == 3)
      {
         _parent.statup.gotoAndPlay(2);
         _root.varDiaryStatIncrease = "BALLS";
         _root.statsBalls += _root.tuneDiaryStatIncrease;
      }
      _parent.picoshine.gotoAndPlay(2);
      _root.varDiaryPreviousChoice = _root.varDiaryChosenChoice;
      _parent.nextFrame();
      this.gotoAndStop(1);
   }
}
