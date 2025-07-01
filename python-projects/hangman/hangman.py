import random
import os
import time
from random_word import RandomWords

#--------------------------------------------------------------------------------

def obtain_word():
    randomwords = RandomWords()
    for _ in range(3):
        word = randomwords.get_random_word()
        if word and word.isalpha():
            return word.lower()

    fallback_words = ["apple", "orange", "grapes", "pear"]
    return random.choice(fallback_words)

#--------------------------------------------------------------------------------

def display_word(word, guessed):
    return ' '.join([letter if letter in guessed else '_' for letter in word])

#--------------------------------------------------------------------------------

def play_game():
    os.system("clear")
    guessed = []
    lives = 6
    word = obtain_word()

    print("Welcome to Hangman!")
    print(f"Guess the letters of the word. You have {lives} lives.\n")
    time.sleep(1.5)

    while True:
        os.system("clear")
        print(display_word(word, guessed))

        if all(letter in guessed for letter in word):
            print("\nYou won!")
            time.sleep(1)
            break

        print("\nGuessed letters:", ", ".join(sorted(guessed)) if guessed else "-")
        print(f"Lives: {lives}")
        letter = input("\nChoose a letter: ").lower()

        if len(letter) != 1 or not letter.isalpha():
            print("\nPlease enter a single letter (a-z).\n")
            time.sleep(1)
            continue

        if letter in guessed:
            print("\nYou already guessed that!\n")
            time.sleep(1)
            continue

        guessed.append(letter)

        if letter in word:
            print("\nGood guess!")
            time.sleep(1)
        else:
            print("\nNope, not in there\n")
            lives -= 1
            time.sleep(1)
            if lives == 0:
                print(f"Game over! The word was: {word}\n")
                time.sleep(1)
                break

#--------------------------------------------------------------------------------

while True:
    play_game()
    
    while True:
        replay = input("\nPlay again? (y/n): ").strip().lower()
        if replay in ('y', 'n'):
            break
        print("\nI couldn't understand that. Please, reply 'y' or 'n'.")

    if replay == 'n':
        print("\nThanks for playing!")
        break

    os.system("clear")
