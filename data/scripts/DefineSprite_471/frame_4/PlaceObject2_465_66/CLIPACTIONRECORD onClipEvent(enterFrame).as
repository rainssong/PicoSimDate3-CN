onClipEvent(enterFrame){
   if(_root.diaLength <= 0 && this._currentframe == 1)
   {
      _root.varDiaryChoice1 = "> 烧了学校!";
      _root.varDiaryChoice2 = "> 干翻哥特和忍者!";
      _root.varDiaryChoice3 = "> 拉了一泡屎!";
      this.gotoAndPlay(2);
   }
   if(_root.varDiaryChosenChoice != 0)
   {
      if(_root.varDiaryChosenChoice == 1)
      {
         _parent.statup.gotoAndPlay(2);
         _root.varDiaryStatIncrease = "CREATIVITY";
         _root.statsCre += _root.tuneDiaryPerIncrease;
      }
      else if(_root.varDiaryChosenChoice == 2)
      {
         _parent.statup.gotoAndPlay(2);
         _root.varDiaryStatIncrease = "AUDACITY";
         _root.statsAud += _root.tuneDiaryPerIncrease;
      }
      else if(_root.varDiaryChosenChoice == 3)
      {
         _parent.statup.gotoAndPlay(2);
         _root.varDiaryStatIncrease = "HUMOR";
         _root.statsHum += _root.tuneDiaryPerIncrease;
      }
      _parent.picoshine.gotoAndPlay(2);
      _root.varDiaryPreviousChoice = _root.varDiaryChosenChoice;
      _parent.nextFrame();
      this.gotoAndStop(1);
   }
}
