# Tournament Bracket  

This program calculates the probability of each team winning a **single-elimination tournament**.  

The input is a probability matrix `P` where each element `p_ij` represents the probability that team *i* beats team *j*. Using this matrix and the tournament structure, the program computes the probability that each team advances through each round and ultimately wins the tournament.  

---

## Program Overview  

- The tournament is structured as a **single-elimination bracket**.  
- The user inputs the number of rounds, which determines the number of teams (`N = 2^rounds`).  
- A probability matrix is generated randomly (values between 0 and 1, rounded to 2 decimals).  
- The main function `Tourn_prob_calculator(P)` computes the probability of each team winning the entire tournament.  

---

## Code Structure  

- **`Prob_matrix()`**  
  Asks the user for the number of rounds, calculates the number of teams, and generates a valid probability matrix.  

- **`Opps_round(i, r)`**  
  Given a team `i` and a round `r`, returns the indices of possible opponents for that round.  

- **`Tourn_prob_calculator(P)`**  
  Uses the probability matrix to calculate the probability of each team advancing through the rounds.  
  Returns a vector where the i-th element is the probability of team *i* winning the tournament.  
