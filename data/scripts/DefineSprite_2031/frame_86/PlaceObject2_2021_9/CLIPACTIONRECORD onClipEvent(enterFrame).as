onClipEvent(enterFrame){
   var screenwidth = 850;
   velocityx = _level0._xmouse / screenwidth * -100;
   _X = _X + (velocityx - _X) / friction;
}
