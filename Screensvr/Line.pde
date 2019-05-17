class Line {
  //Member Variables
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;

  //Constructor
  Line(float xpos, float ypos, float strokeW, float pointCount) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.strokeW = strokeW;
    this.pointCount = pointCount;
  }

  //Display Method
  void display() {
    strokeW = random(1, 5);
    pointCount = random(1, 35);
    stroke(0);
    strokeWeight(strokeW);
    //moveRight(xpos,ypos,pointCount);
    //moveLeft(xpos,ypos,pointCount);
    //moveUp(xpos,ypos,pointCount);
    //moveDown(xpos,ypos,pointCount);
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>70) {
        strokeWeight(strokeW);
        stroke(random(255), random(255), random(255));
        moveLeft(xpos, ypos, pointCount);
      } else if (random(100)>55) {
        strokeWeight(strokeW);
        stroke(random(255), random(255), random(255));
        moveRight(xpos, ypos, pointCount);
      } else if (random(100)>50) {
        strokeWeight(strokeW);
        stroke(random(255), random(255), random(255));
        moveDown(xpos, ypos, pointCount);
      } else {
        strokeWeight(strokeW);
        stroke(random(255), random(255), random(255));
        moveUp(xpos, ypos, pointCount);
      }
    }
  }


  //Movement Method
    void moveRight(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX+i, startY);
        xpos = startX + i;
      }
    }

    void moveLeft(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX-i, startY);
        xpos = startX - i;
      }
    }

    void moveDown(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX, startY+i);
        ypos = startY + i;
      }
    }

    void moveUp(float startX, float startY, float moveCount) {
      for (float i=0; i<moveCount; i++) {
        point(startX, startY-i);
        ypos = startY - i;
      }
    }
  }
