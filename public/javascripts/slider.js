var animationObject = new AnimationObject('examplePanel');
 animationObject.AddFrame(new AnimationFrame(0, -1, 150, 130, 500));

function runAnimation(animation, header)
{
   if(header.expanded)
   {
     animation.RunBackward();
     header.expanded = false;
   }
   else
   {
     animation.RunForward();
     header.expanded = true;
   }
}