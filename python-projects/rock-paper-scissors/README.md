# Rock Paper Scissors (Best of 3)

A simple command-line Rock Paper Scissors game in Python.

Two players compete in a best-of-3 format. Players input their moves secretly, and the game tracks scores until someone wins 2 rounds!

## Code Structure

- `get_valid_choice(player)` — Prompts a player for a valid choice (R, P, or S) securely using hidden input  
- `determine_winner(p1, p2)` — Determines the winner of a single round and returns the reason  
- `play_game()` — Contains the main game loop, manages rounds, scores, and final results  
