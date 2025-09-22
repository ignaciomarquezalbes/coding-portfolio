# Tournament Bracket  

This program calculates the probability of each team winning a **single-elimination tournament**.  

Let `P` be a probability matrix where each element `p_ij` represents the probability that team *i* beats team *j*. Using this matrix and the tournament structure, the program computes the probability that each team advances through each round and ultimately wins the tournament.  

The probability of team *i* reaching round *r* is computed recursively as:

$$p_{i,r} = p_{i,r-1} · \sum_{j \in Opp(i,r)} (p_{j,r-1} · p_ij),$$

where  $p_{i,r}$ is the probability of team *i* reaching the *r* round, and $Opp(i,r)$ is the set of possible opponents for team *i* in round `r`. For consistency, we set $p_{i,0}$ = 1 since, at round 0, all teams have probability 1 of being in the tournament.

The set of possible opponents is determined by the function `Opps_round(i,r)` according to the bracket structure: 

- Teams are grouped by their position in the bracket  
- In round 1, team 0 plays team 1, team 2 plays team 3, etc.  
- In later rounds, possible opponents are the winners of the previous matches in the same half of the bracket  

This ensures that the probability calculation respects the fixed bracket structure and accounts for all possible paths to victory.

## Program Overview  
 
- The user inputs the number of rounds, which determines the number of teams (`N = 2^rounds`).  
- A probability matrix is generated randomly (values between 0 and 1, rounded to 2 decimals).  
- The main function `Tourn_prob_calculator(P)` computes the probability of each team winning the entire tournament.  

## Code Structure  

- `Prob_matrix()`—  Asks the user for the number of rounds, calculates the number of teams, and generates a valid probability matrix.  
- `Opps_round(i, r)`— Given a team `i` and a round `r`, returns the indices of possible opponents for that round.  
- `Tourn_prob_calculator(P)` — Uses the probability matrix to calculate the probability of each team advancing through the rounds.  
  Returns a vector where the i-th element is the probability of team *i* winning the tournament.  
