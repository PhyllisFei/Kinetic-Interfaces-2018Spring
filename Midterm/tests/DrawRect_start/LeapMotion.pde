import de.voidplus.leapmotion.*;

LeapMotion leap;

void LeapMotion_setup() {
  leap = new LeapMotion(this);
}

void LeapMotion_run() {
  for (Hand hand : leap.getHands ()) {
    PVector handPosition = hand.getPosition();
    handX = handPosition.x;
    handY = handPosition.y;

    boolean handIsLeft         = hand.isLeft();
    boolean handIsRight        = hand.isRight();

    if (handIsLeft) {
      handR = false;
    } else if (handIsRight) {
      handR = true;
    }
  }
}
