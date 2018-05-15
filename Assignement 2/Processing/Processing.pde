User[] listOfUsers = new User[4]; 
Buttons[] button = new Buttons[17];
User selectedUser = null;
int screenDecider = 0;
boolean loggedIn;
boolean userNameEntered;
String userInputName = "";
String userInputPassword = "";
boolean invalidpassword = false;
void settings() {
  size(600, 600);
}

void setup() {
  button[0] = new Buttons(150, 250, 100, "A Super", 18);
  button[1] = new Buttons(350, 250, 100, "B Super", 18);
  button[2] = new Buttons(250, 250, 100, "A Main", 18);
  button[3] = new Buttons(0, 0, 100, "Exercise 1", 18);
  button[4] = new Buttons(0, 100, 100, "Exercise 2", 18);
  button[5] = new Buttons(0, 200, 100, "Exercise 3", 18);
  button[6] = new Buttons(0, 300, 100, "Exercise 4", 18);
  button[7] = new Buttons(0, 400, 100, "Exercise 5", 18);
  button[8] = new Buttons(0, 500, 100, "Exercise 6", 18);
  button[9] = new Buttons(100, 0, 100, "Exercise 7", 18);
  button[10] = new Buttons(150, 250, 100, "B Main", 18);
  button[11] = new Buttons(0, 100, 100, "Exercise_8", 18);
  button[12] = new Buttons(0, 200, 100, "Exercise_9", 18);
  button[13] = new Buttons(0, 300, 100, "Exercise_10", 18);
  button[14] = new Buttons(0, 400, 100, "Exercise_11", 18);
  button[15] = new Buttons(0, 500, 100, "Exercise_12", 18);
  button[16] = new Buttons(500, 500, 100, "Back", 18);

  listOfUsers[0] = new User("", "de", 2);
  listOfUsers[1] = new User("Marie", "load", 19);
  listOfUsers[2] = new User("John", "tri", 2);
  listOfUsers[3] = new User("Bertha", "boi", 1);
}

void draw() {
  background(0);
  if (loggedIn) {
    superior();
    userA();
    userB();
  } else {
    drawLogin();
  }
}
void drawLogin() {
  noFill();
  stroke(255);
  if (userNameEntered) {
    rect(305, 280, 200, 25);
    text("Password " + userInputPassword, 250, 300);
    rect(295, 230, 200, 25);
    text("Login      " + userInputName, 250, 250);
  } else {
    rect(295, 230, 200, 25);
    text("Login      " + userInputName, 250, 250);
  }
  if (invalidpassword == true) {
    text("Invalid password", 250, 200);
  }
}
void keyPressed() {
  if (!loggedIn) {
    if (!userNameEntered) {
      if (key == RETURN || key == ENTER) {
        for (int i = 0; i < listOfUsers.length; i++) {
          if (listOfUsers[i].matchUsername(userInputName)) {
            userNameEntered = true;
            selectedUser = listOfUsers[i];
            break;
          }
        }
      } else {
        if (key==BACKSPACE) {
          userInputName = userInputName.substring(0, max(0, userInputName.length()-2));
        } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
          userInputName +=key;
        }
      }
    } else {
      if (key == RETURN || key == ENTER) {
        if (selectedUser.comparePassword(userInputPassword)) {
          loggedIn = true;
          screenDecider = selectedUser.getNextScreen();
          invalidpassword = false;
        } else {
          invalidpassword = true;
        }
      } else {
        if (key==BACKSPACE) {
          userInputPassword = userInputPassword.substring(0, max(0, userInputPassword.length()-2));
        } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
          userInputPassword += key;
        }
      }
    }
  }
}
// Button 0  = User A superior
// Button 1 = User B Superior
// Button 2 = User A Main
// Button 3 = Exercise_1
// Button 4 = Exercise_2
// Button 5 = Exercise_3
// Button 6 = Exercise_4
// Button 7 = Exercise_5
// Button 8 = Exercise_6
// Button 9 = Exercise_7
// Button 10 = User B Main
// Button 11 = Exercise_8
// Button 12 = Exercise_9
// Button 13 = Exercise_10
// Button 14 = Exercise_11
// Button 15 = Exercise_12
// Button 16 = Back

//---------------------------------------------


// Screen decider 1 = Superior
// SD2 = User A superior
// SD3 - 11 = Set A exercises
// SD12 = B main
// SD13 - 18 = Set B exercises
// SD19 = User B main
void mousePressed() {
  //if (screenDecider == 1) {
  if (button[0].press() == true) {
    button[0].removeButton();
    button[1].removeButton();
    screenDecider = 4;
  } else if (button[1].press() == true) {
    button[0].removeButton();
    button[1].removeButton();
    screenDecider = 12;
  } else if (button[2].press() == true) {
    button[2].removeButton();
    screenDecider = 4;
  } else if (button[3].press() == true) {
    removeExerciseAButtons();
    screenDecider = 5;
  } else if (button[4].press() == true) {
    removeExerciseAButtons();
    screenDecider = 6;
  } else if (button[5].press() == true) {
    removeExerciseAButtons();
    screenDecider = 7;
  } else if (button[6].press() == true) {
    removeExerciseAButtons();
    screenDecider = 8;
  } else if (button[7].press() == true) {
    removeExerciseAButtons();
    screenDecider = 9;
  } else if (button[8].press() == true) {
    removeExerciseAButtons();
    screenDecider = 10;
  } else if (button[9].press() == true) {
    removeExerciseAButtons();
    screenDecider = 11;
    //SET B --------------------------------------------------------------------
  } else if (button[10].press() == true) {
    button[10].removeButton();
    screenDecider = 12;
  } else if (button[11].press() == true) {
    removeExerciseBButtons();
    screenDecider = 13;
  } else if (button[12].press() == true) {
    removeExerciseBButtons();
    screenDecider = 14;
  } else if (button[12].press() == true) {
    removeExerciseBButtons();
    screenDecider = 15;
  } else if (button[16].press() == true){
     // if(listOfUsers){
          
     // }
  }
}

void removeExerciseAButtons() {
  button[3].removeButton();
  button[4].removeButton();
  button[5].removeButton();
  button[6].removeButton();
  button[7].removeButton();
  button[8].removeButton();
  button[9].removeButton();
}

void removeExerciseBButtons() {
  button[10].removeButton();
  button[11].removeButton();
  button[12].removeButton();
  button[13].removeButton();
  button[14].removeButton();
  button[15].removeButton();
}

void superior() {
  if (screenDecider == 1) {
    button[0].addButton();
    button[1].addButton();
  }
}
void userB() {
  if (screenDecider == 3) {
    button[1].addButton();
  }
  if (screenDecider == 19) {
    button[10].addButton();
  }
  if (screenDecider == 12) {
    button[11].addButton();
    button[12].addButton();
    button[13].addButton();
    button[14].addButton();
    button[15].addButton();
  } else if (screenDecider == 13) {
    //Exercise_8
    button[16].addButton();
  } else if (screenDecider == 14) {
    //run Exercise_8
    button[16].addButton();
  } else if (screenDecider == 15) {
    //run Exercise_9
    button[16].addButton();
  } else if (screenDecider == 16) {
    //run Exercise_10
    button[16].addButton();
  } else if (screenDecider == 17) {
    //run Exercise_11
    button[16].addButton();
  } else if (screenDecider == 18) {
    //run Exercise_12
    button[16].addButton();
  }
}

void userA() {
  if (screenDecider == 2) {
    button[2].addButton();
  }
  if (screenDecider == 18) {
    button[2].addButton();
  }
  if (screenDecider == 4) {
    button[3].addButton();
    button[4].addButton();
    button[5].addButton();
    button[6].addButton();
    button[7].addButton();
    button[8].addButton();
    button[9].addButton();
  }
  if (screenDecider == 5) {
    //run Exercise_1
    button[16].addButton();
  }
  if (screenDecider == 6) {
    //run Exercise_2
    button[16].addButton();
  }
  if (screenDecider == 7) {
    //run Exercise_3
    button[16].addButton();
  }
  if (screenDecider == 8) {
    //run Exercise_4
    button[16].addButton();
  }

  if (screenDecider == 9) {
    //run Exercise_5
    button[16].addButton();
  }
  if (screenDecider == 10) {
    //run Exercise_6
    button[16].addButton();
  }
  if (screenDecider == 11) {
    //run Exercise_7
    button[16].addButton();
  }
}
