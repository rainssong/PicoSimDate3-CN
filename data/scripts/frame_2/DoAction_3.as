function funcUpdateTime(addTime)
{
   _root.statsTime += addTime;
   if(_root.statsTime >= 6)
   {
      _root.statsTime = 3;
      funcAddDay();
   }
   else if(_root.statsTime == 5)
   {
      _root.statsTime = 2;
      funcAddDay();
   }
   else if(_root.statsTime == 4)
   {
      _root.statsTime = 1;
      funcAddDay();
   }
   _root.guiMain.guiTimeOfDay.anim.gotoAndStop(_root.statsTime);
   _root.guiMain.guiTimeOfDay.gotoAndPlay(2);
   _root.guiMain.guiTODBack.gotoAndPlay(2);
}
function funcAddDay()
{
   _root.statsDay++;
   if(_root.statsWeekday == "MON")
   {
      _root.statsWeekday = "TUE";
   }
   else if(_root.statsWeekday == "TUE")
   {
      _root.statsWeekday = "WED";
   }
   else if(_root.statsWeekday == "WED")
   {
      _root.statsWeekday = "THU";
   }
   else if(_root.statsWeekday == "THU")
   {
      _root.statsWeekday = "FRI";
   }
   else if(_root.statsWeekday == "FRI")
   {
      _root.statsWeekday = "SAT";
   }
   else if(_root.statsWeekday == "SAT")
   {
      _root.statsWeekday = "SUN";
   }
   else if(_root.statsWeekday == "SUN")
   {
      _root.statsWeekday = "MON";
   }
}
function funcDisRelationUpdate()
{
   _root.disRelationship = _root.listGirlRelationships[_root.statsGirlRLevel[_root.varChosenGirl]];
}
function funcDisMoneyUpdate()
{
   _root.disMoney = "$" + _root.statsMoney;
}
function funcRandom(min, max)
{
   var _loc1_ = int(Math.random() * (max - min + 1) + min);
   return _loc1_;
}
function funcTip(stat)
{
   var _loc1_ = stat;
   if(stat <= 0)
   {
      _loc1_ = _loc1_ + 1;
   }
   return Math.round(_loc1_ / 2);
}
function funcPortalJobWage()
{
   var _loc2_ = int((_root.statsBrains / 2 + _root.statsBalls / 2) / 2);
   _root.varTip = _root.funcRandom(1,_root.listWagePortal[_root.statsPortalRank][1]);
   _loc2_ += _root.listWagePortal[_root.statsPortalRank][0] + _root.varTip;
   return _loc2_;
}
function funcBBSJobWage()
{
   var _loc2_ = int((_root.statsBrains / 2 + _root.statsCharm / 2) / 2);
   _root.varTip = _root.funcRandom(1,_root.listWageBBS[_root.statsBBSRank][1]);
   _loc2_ += _root.listWageBBS[_root.statsBBSRank][0] + _root.varTip;
   return _loc2_;
}
function funcPortalPromotionCalculate()
{
   var _loc4_ = _root.statsBrains + _root.statsBalls;
   var _loc2_ = (_loc4_ - _root.listPromoReqPortal[_root.statsPortalRank]) / (_root.listPromoReqPortal[_root.statsPortalRank + 1] - _root.listPromoReqPortal[_root.statsPortalRank]) * 100;
   var _loc3_ = int(Math.random() * 100 + 1);
   if(_loc2_ >= _loc3_)
   {
      _root.varIsPromoted = true;
      _root.statsPortalRank++;
   }
   else
   {
      _root.varIsPromoted = false;
   }
}
function funcBBSPromotionCalculate()
{
   var _loc4_ = _root.statsBrains + _root.statsCharm;
   var _loc2_ = (_loc4_ - _root.listPromoReqBBS[_root.statsBBSRank]) / (_root.listPromoReqBBS[_root.statsBBSRank + 1] - _root.listPromoReqBBS[_root.statsBBSRank]) * 100;
   var _loc3_ = int(Math.random() * 100 + 1);
   if(_loc2_ >= _loc3_)
   {
      _root.varIsPromoted = true;
      _root.statsBBSRank++;
   }
   else
   {
      _root.varIsPromoted = false;
   }
}
function funcArtQualityCalculate()
{
   var _loc2_ = funcRandom(0,_root.statsCre);
   if(_loc2_ >= 135)
   {
      _root.statArtQuality = 4;
   }
   else if(_loc2_ >= 80)
   {
      _root.statArtQuality = 3;
   }
   else if(_loc2_ >= 50)
   {
      _root.statArtQuality = 2;
   }
   else if(_loc2_ >= 15)
   {
      _root.statArtQuality = 1;
   }
   else
   {
      _root.statArtQuality = 0;
   }
}
function funcFlashCompleteCalculate()
{
   if(_root.statsFlash >= 150)
   {
      return funcRandom(20,30);
   }
   if(_root.statsFlash >= 100)
   {
      return funcRandom(15,25);
   }
   if(_root.statsFlash >= 50)
   {
      return funcRandom(10,20);
   }
   return funcRandom(10,15);
}
function funcFlashQualityCalculate()
{
   var _loc2_ = funcRandom(0,_root.statsFlash);
   if(_loc2_ >= 175)
   {
      _root.statsFlashQuality = 4;
   }
   else if(_loc2_ >= 130)
   {
      _root.statsFlashQuality = 3;
   }
   else if(_loc2_ >= 55)
   {
      _root.statsFlashQuality = 2;
   }
   else if(_loc2_ >= 15)
   {
      _root.statsFlashQuality = 1;
   }
   else
   {
      _root.statsFlashQuality = 0;
   }
}
function funcCompleteTask(task, taskdone)
{
   var _loc2_ = 0;
   while(_loc2_ < _root.statsGirlTasks.length)
   {
      if(_root.statsGirlTasks[_loc2_] == task)
      {
         _root.statsGirlTasks.splice(_loc2_,1);
         _root.statsGirlTasks.push(taskdone);
         break;
      }
      _loc2_ = _loc2_ + 1;
   }
}
_root.frictionWorld = 5;
_root.frictionLocation = 45;
_root.frictionCharacter = 100;
_root.frictionGirl = 250;
_root.statsMax = 300;
_root.statsPerMax = 160;
_root.statsFlashMax = 200;
_root.statsPerUpMax = 10;
_root.girlRPAddTalk = 10;
_root.girlCharmFriction = 10;
_root.statsGirlGiftLevels = new Array(10,15,25);
_root.statsTime = 1;
_root.statsDay = 1;
_root.statsWeekday = "MON";
_root.statsMoney = 150;
_root.statsBalls = 1;
_root.statsBrains = 1;
_root.statsCharm = 1;
_root.statsFlash = 10;
_root.statsGrade = 0;
_root.statsPortalRank = 0;
_root.statsBBSRank = 0;
_root.statsAud = 10;
_root.statsCon = 10;
_root.statsCre = 10;
_root.statsDil = 10;
_root.statsHum = 10;
_root.statsSen = 10;
_root.statsInventoryKey = new Array();
_root.statsInventoryGifts = new Array(0,0,0,0,0,0);
_root.statsArtComplete = 0;
_root.statsArtPogress = 0;
_root.statsArtValue = 0;
_root.statArtProject = "";
_root.statArtQuality = 0;
_root.statsFlashComplete = 0;
_root.statsFlashProgress = 0;
_root.statsFlashValue = 0;
_root.statsFlashProject = "";
_root.statsFlashType = 0;
_root.statsFlashQuality = 0;
_root.statsGirlRLevel = new Array(0,0,0,0,0,0);
_root.statsGirlHeartLevel = new Array([0,65],[0,65],[0,65],[0,65],[0,65],[0,65]);
_root.statsGirlLevel2RPReq = 200;
_root.statsGirlTaskLevel = new Array(0,0,0,0,0,0);
_root.statsGirlTaskActive = new Array([],[],[],[],[],[]);
_root.statsGirlTasks = new Array();
_root.statsGirlTexts = new Array();
_root.statsGirlPhotos = new Array();
_root.statsAlertTask = false;
_root.statsAlertText = false;
_root.statsFlashMadeHum = 0;
_root.statsFlashMadeDil = 0;
_root.statsArtMade = 0;
_root.statsArtMasterpieces = 0;
_root.taskBreeFoundVillage = false;
_root.disMoney = "$" + _root.statsMoney;
_root.guiActionDesc = "";
_root.diaName = "";
_root.diaDialog = "";
_root.disRelationship = "";
_root.varIsNap = true;
_root.varIsTestPass = true;
_root.varLerpStat = 0;
_root.varLerpStatDis = 0;
_root.varPay = 0;
_root.varTip = 0;
_root.varPayMax = 0;
_root.varIsOvertime = false;
_root.varStatGain = "";
_root.varIsPromoted = false;
_root.varPerUp = "";
_root.varPerUpValue = 0;
_root.varItemName = "";
_root.varItemDesc = "";
_root.varDisArtCost = 0;
_root.varDisReqCre = 0;
_root.varAdventureResult = "";
_root.varAdventureStory = "";
_root.varAdventureHeadline = "";
_root.varDateGirlHP = 0;
_root.varDateGirlHPMax = 0;
_root.varDateGirlLerp = 0;
_root.varDatePicoHP = 0;
_root.varDatePicoHPMax = 0;
_root.varDatePicoLerp = 0;
_root.varDateGiftsGiven = 0;
_root.varDateTalksGiven = 0;
_root.varDateHumMoves = 0;
_root.varDateConMoves = 0;
_root.varDateDilMoves = 0;
_root.varDateSenMoves = 0;
_root.varDateAudMoves = 0;
_root.varDateCreMoves = 0;
_root.varDateKissing = false;
_root.varChosenGirl = 0;
_root.varGirlTalked = false;
_root.varGirlIsUpgrading = false;
_root.varGirlIsAsking = false;
_root.varChosenText = "";
_root.varChosenPhoto = 0;
_root.varDiaryChoice1 = "";
_root.varDiaryChoice2 = "";
_root.varDiaryChoice3 = "";
_root.varDiaryChosenChoice = 0;
_root.varDiaryPreviousChoice = 0;
_root.varDiaryStatIncrease = "";
_root.varCustomizeXtraPts = 15;
_root.specialAllieKeyChance = 45;
_root.specialBreeVillageChance = 45;
_root.listGrades = new Array("F","D-","D","D+","C-","C","C+","B-","B","B+","A-","A","A+");
_root.listPortalRanks = new Array("Town Watch","Scout","Portal Security","Police Officer","Police Captain","Vigilante","Private","Major","Supreme Commander","Portal Savior");
_root.listBBSRanks = new Array("Lurker","Janitor","Technician","Intern","Topic Participant","Debater","Judge","Moderator","Admin","Fulp\'s Right Hand");
_root.listWagePortal = new Array([5,2],[10,4],[20,6],[40,12],[60,20],[100,30],[140,45],[180,60],[240,80],[500,100]);
_root.listPromoReqPortal = new Array(25,50,75,100,125,175,225,275,400,600);
_root.listWageBBS = new Array([5,2],[10,4],[20,6],[40,12],[60,20],[100,30],[140,45],[180,60],[240,80],[500,100]);
_root.listPromoReqBBS = new Array(25,50,75,100,125,175,225,275,400,600);
_root.listPromoGradeReqBBS = new Array(0,1,2,3,4,6,8,10,12,12);
_root.listArtProjects = new Array(["Sketch","Drawing"],["Painting","Photo Collage"],["Pottery","Sculpture"],["Statue","City Mural"]);
_root.listArtReq = new Array(0,35,80,135,80);
_root.listArtCost = new Array(10,25,45,70,300);
_root.listArtQuality = new Array("Crappy...","Average","Exceptional","Fantastic!","A Masterpiece!","Cosmic!");
_root.listArtReward = new Array(-15,0,25,55,100,0);
_root.listFlashProjects = new Array("Epic","Series","Original","Educational","Funny","Emotional");
_root.listFlashReq = new Array(50,60,0,20,40,30);
_root.listFlashQuality = new Array("BLAMMED","Average","Daily Feature","Best Monthly!","Legendary!");
_root.listFlashReward = new Array(-20,0,35,65,120);
_root.listGirlRelationships = new Array("STRANGERS","AQUAINTANCES","NEW FRIENDS","CLOSE FRIENDS","GIRLFRIEND","LOVER","LOVER");
_root.tuneDateCharmLevelMin = new Array(50,150,250);
_root.tuneDateItemDamage = new Array(1.5,3,6.25);
_root.tuneDateTalkTopicDamage = new Array(1.25,2.5,5);
_root.tuneDateQuestionDamage = 12.5;
_root.tuneDateItemCap = new Array(20,30,40);
_root.tuneDateTalkTopicCap = new Array(10,20,30);
_root.tuneDateQuestionCap = new Array(50,60,100);
_root.tuneDateMaxGifts = 2;
_root.tuneDateMaxTalk = 5;
_root.tuneDateTopicEffect = new Array([0,1,0,2,0,1],[1,2,0,0,1,0],[1,0,1,0,2,0],[0,0,2,1,0,1],[2,1,1,0,0,0],[0,0,0,1,1,2]);
_root.tuneDateHumMoves = new Array(20,70,120);
_root.tuneDateConMoves = new Array(20,70,120);
_root.tuneDateDilMoves = new Array(20,70,120);
_root.tuneDateSenMoves = new Array(20,70,120);
_root.tuneDateCreMoves = new Array(20,80);
_root.tuneDateCreMovesMulti = 1.75;
_root.tuneDateAudMoves = new Array(20,80);
_root.tuneDateAudMovesMulti = 2;
_root.tuneFlashAbilityUpgrades = new Array(25,50);
_root.tuneDiaryStatIncrease = 6;
_root.tuneDiaryPerIncrease = 10;
_root.musicCurrentTrack = 99;
_root.musicIsOn = true;
_root.musicWorldReset = false;
_root.musicMenu = new Sound();
_root.musicMenu.attachSound("musicMenu");
_root.musicWorld = new Sound();
_root.musicWorld.attachSound("musicWorld");
_root.musicBattleIntro = new Sound();
_root.musicBattleIntro.attachSound("musicBattleIntro");
_root.musicBattle = new Sound();
_root.musicBattle.attachSound("musicBattle");
_root.musicVictory = new Sound();
_root.musicVictory.attachSound("musicVictory");
_root.musicDiary = new Sound();
_root.musicDiary.attachSound("musicDiary");
_root.musicDiaryIntroIntro = new Sound();
_root.musicDiaryIntroIntro.attachSound("musicDiaryIntroIntro");
_root.musicDiaryIntro = new Sound();
_root.musicDiaryIntro.attachSound("musicDiaryIntro");
_root.soundMenuPlay = new Sound();
_root.soundMenuPlay.attachSound("soundMenuPlay");
_root.soundMenuPlay2 = new Sound();
_root.soundMenuPlay2.attachSound("soundMenuPlay2");
