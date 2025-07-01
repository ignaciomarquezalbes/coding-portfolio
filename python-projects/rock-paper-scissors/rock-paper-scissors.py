import os
import time
from getpass import getpass

#--------------------------------------------------------------------------------

def get_valid_choice(player):
    while True:
        choice = getpass(f"{player}, choose R, P, or S: ").strip().upper()
        if choice in ("R", "P", "S"):
            return choice
        print("\nWrong input! Try again and make sure you are choosing R, P, or S!\n")

#--------------------------------------------------------------------------------

def determine_winner(p1, p2):
    if p1 == p2:
        return "Tie", None

    outcomes = {("R", "S"): "rock breaks scissors",
                ("P", "R"): "paper covers rock",
                ("S", "P"): "scissors cuts paper"}

    if (p1, p2) in outcomes:
        return "Player 1", outcomes[(p1, p2)]
    else:
        return "Player 2", outcomes[(p2, p1)]

#--------------------------------------------------------------------------------

def play_game():
    p1_wins = 0
    p2_wins = 0
    round_num = 1

    while True:
        os.system("clear")
        print(f"Round {round_num}\n")
        print(f"Player 1 wins: {p1_wins} | Player 2 wins: {p2_wins}\n")

        p1 = get_valid_choice("Player 1")
        print()
        p2 = get_valid_choice("Player 2")
        print()

        winner, reason = determine_winner(p1, p2)

        if winner == "Tie":
            print("Result:\nIt's a tie!\n")
        else:
            print(f"Result:\n{winner} wins ({reason})\n")
            if winner == "Player 1":
                p1_wins += 1
            else:
                p2_wins += 1

        time.sleep(1)

        if p1_wins == 2 or p2_wins == 2:
            os.system("clear")  # Clear before final result
            print("GAME OVER!\n")
            if p1_wins == 2:
                print(f"Player 1 wins the best of 3 after {round_num} rounds!\n")
            else:
                print(f"Player 2 wins the best of 3 after {round_num} rounds!\n")
            time.sleep(2)
            break

        round_num += 1

#--------------------------------------------------------------------------------

print("Let's rock paper scissors (Bo3). You will need two players:\n")
time.sleep(2)
os.system("clear")

while True:
    play_game()

    os.system("clear")  # Clear before replay prompt
    while True:
        replay = input("\nPlay again? (y/n): ").strip().lower()
        if replay in ('y', 'n'):
            break
        print("\nI couldn't understand that. Please, reply 'y' or 'n'.")

    if replay == 'n':
        print("\nThanks for playing!")
        break
