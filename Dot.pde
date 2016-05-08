/* Define a Dot class */
class Dot {
  int dotX, dotY, dotWidth, dotHeight;    //  Variables to hold the dot's coordinates and width/height
 
  Dot ( int dX, int dY, int dW, int dH )  //  Class constructor- sets all the values when a new dot object is created
  {
    dotX = dX;
    dotY = dY;
    dotWidth = dW;
    dotHeight = dH;
  }
 
  int update()              //  The Dot update function
  {
    boolean hit = false;    //  Flag whether PacMan has hit this dot
    for(int i = 0; i < blobs.size(); i++) {  //  Loop through all blobs
      Blob _blob = (Blob) blobs.get(i);      //  Copy temp blob
      if(_blob.isPacMan) {                   //  Check whether blob is PacMan
        if(dotX > _blob.blobX.get(_blob.blobX.size()-1)-20 && dotX < _blob.blobX.get(_blob.blobX.size()-1)+20) {    //  Check whether dot is in range of PacMan
          if(dotY > _blob.blobY.get(_blob.blobY.size()-1)-20 && dotY < _blob.blobY.get(_blob.blobY.size()-1)+20) {  //  Check whether dot is in range of PacMan
            hit = true;  // In case PacMan is in range, flag that dot has been eaten
          }
        }
      }
    }
    if(hit) {     //  In case dot has been eaten
      score++;    //  Score goes 1 up
      return 1;   //  Return 1 so dot gets destroyed
    } else {
      image(dotPNG, dotX, dotY);  // Draw dot on screen
      return 0;   //  Return 0 so dot is saved
    }
  }
}