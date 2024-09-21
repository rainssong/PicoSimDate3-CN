onClipEvent(enterFrame){
   var screenwidth = 850;
   var screenheight = 550;
   velocityx = _level0._xmouse / screenwidth * -100;
   velocityy = _level0._ymouse / screenheight * -100;
   _X = _X + (velocityx - _X) / friction;
   _Y = _Y + (velocityy - _Y) / friction;
}
