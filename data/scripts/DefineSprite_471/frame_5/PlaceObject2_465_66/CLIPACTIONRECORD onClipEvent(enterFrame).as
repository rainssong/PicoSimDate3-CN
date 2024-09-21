onClipEvent(enterFrame){
   if(_root.diaLength <= 0 && this._currentframe == 1)
   {
      _root.varDiaryChoice1 = "> 谁也别惹我!";
      _root.varDiaryChoice2 = "> 别当懦夫!";
      _root.varDiaryChoice3 = "> 狗狗也有人性!";
      this.gotoAndPlay(2);
   }
   if(_root.varDiaryChosenChoice != 0)
   {
      if(_root.varDiaryChosenChoice == 1)
      {
         _parent.statup.gotoAndPlay(2);
         _root.varDiaryStatIncrease = "CONFIDENCE";
         _root.statsCon += _root.tuneDiaryPerIncrease;
      }
      else if(_root.varDiaryChosenChoice == 2)
      {
         _parent.statup.gotoAndPlay(2);
         _root.varDiaryStatIncrease = "DILIGENCE";
         _root.statsDil += _root.tuneDiaryPerIncrease;
      }
      else if(_root.varDiaryChosenChoice == 3)
      {
         _parent.statup.gotoAndPlay(2);
         _root.varDiaryStatIncrease = "SENSITIVITY";
         _root.statsSen += _root.tuneDiaryPerIncrease;
      }
      _parent.picoshine.gotoAndPlay(2);
      _root.varDiaryPreviousChoice = _root.varDiaryChosenChoice;
      _parent.nextFrame();
      this.gotoAndStop(1);
   }
}
