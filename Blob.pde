class Blob {
  ArrayList<Integer> blobX = new ArrayList<Integer>();  //  X coordinates
  ArrayList<Integer> blobY = new ArrayList<Integer>();  //  Y coordinates
  ArrayList<Integer> blobS = new ArrayList<Integer>();  //  # of sections
  ArrayList<Integer> blobA = new ArrayList<Integer>();  //  Area in pixels
  boolean isPacMan = false;                             //  Pacman flag
  
  Blob (int bX, int bY, int bS, int bA, boolean selected) // Constructor
  {
      blobX.add(bX);
      blobY.add(bY);
      blobS.add(bS);
      blobA.add(bA);
      isPacMan = selected;
  }
  
  void addXYSA(int X, int Y, int S, int A) // add coordinates
  {
      blobX.add(X);
      blobY.add(Y);
      blobS.add(S);
      blobA.add(A);
  }
  
  void togglePacMan() {
    if(isPacMan) { 
      isPacMan = false;
    } else {
      isPacMan = true;
    }
  }
}