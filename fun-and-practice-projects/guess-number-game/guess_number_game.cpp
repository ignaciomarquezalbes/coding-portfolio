#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>
#include <cctype>
#include <vector>

//----------------------------------------------------------------------------------

bool IsInteger(std::string input) {
  for (int i = 0; i < input.size(); i++) {
      char c = input[i];
      if (!isdigit(c)){
        return false;
      }
  }
  return true;
}

//----------------------------------------------------------------------------------

bool IsNew(int item, const std::vector<int>& list){
  for (int i = 0; i < list.size(); i++) {
    if (item == list[i]){
      return false;
    }
  }
  return true;
}

//----------------------------------------------------------------------------------

void CustomSettings(int& max, int& attempts){

  std::string input;
  while (true){
    std::cout << "Enter an integer number greater than one.\n";
    std::cout << "The number to guess will be between 1 and your input: ";
  
    std::cin >> input;
  
    if (!IsInteger(input)) {
        std::cout << "\n\nYou typed an INVALID answer\n\n";
        continue;
    }
    
    max = std::stoi(input);
    if (max <=1){
      std::cout << "\n\nPlease enter an integer number greater than 1.\n\n";
      continue;
    }
    std::cout << "\n";
    break;
  }

  std::string input2;
  while (true){
    std::cout << "Enter an integer number greater than zero.\n";
    std::cout << "This will be the number of attempts to guess the number: ";

    std::cin >> input2;

    if (!IsInteger(input2)) {
        std::cout << "\n\nYou typed an INVALID answer\n\n";
        continue;
    }

    attempts = std::stoi(input2);
    if (attempts <=0){
      std::cout << "\n\nPlease enter a integer number greater than 0.\n\n";
      continue;
    }
    std::cout << "\n";
    break;
  }
}

//----------------------------------------------------------------------------------

void Game(int max, int attempts){
  
    int RN = 1 + (std::rand() % max);
    std::vector<int> guesses;
    std::string input;
    int guess;

    while (attempts > 0) {
        std::cout << "You have " << attempts << " attempts left\nGuess an integer number between 1 and " << max << ": ";
        std::cin >> input;

        if (!IsInteger(input)) {
            std::cout << "\nYou typed an INVALID answer\n\n";
            continue;
        }

        guess = std::stoi(input);
        if (guess < 1 || guess > max) {
            std::cout << "\nNumber outside of the guess range\n\n";
            continue;
        }

        if (!IsNew(guess, guesses)) {
            std::cout << "\nYou already guessed this number\n\n";
            continue;
        }

        guesses.push_back(guess);

        if (guess == RN) {
            std::cout << "\nYou guessed the number!\n";
            return;
        } 
        else if (guess > RN) {
            attempts--;
            std::cout << "\nToo high!\n\n";
        } 
        else {
            attempts--;
            std::cout << "\nToo low!\n\n";
        }
    }

    std::cout << "You ran out of attempts.\nThe number was " << RN << "\n";
}

//----------------------------------------------------------------------------------

bool Replay(){
  std::string replayInput;
  
  while (true) {
    std::cout << "\nDo you want to play again? (y/n): ";
    std::cin >> replayInput;

    if (replayInput == "y" || replayInput == "Y") {
      return true;
      break;
    } 
    else if (replayInput == "n" || replayInput == "N") {
      std::cout << "\nThanks for playing! Goodbye.\n";
      return false;
    } 
    else {
      std::cout << "\nInvalid input. Please type 'y' or 'n'.\n";
    }
  }
}

//----------------------------------------------------------------------------------

int main() {
  std::srand(std::time(nullptr));

  while (true) {
    std::cout << "Let's play a number guessing game!\n\n";
    int max, attempts;
    CustomSettings(max, attempts);
    Game(max, attempts);

    if (Replay()){
      (void)system("clear");
    }
    else {
      return 0;
    }
  }
}
