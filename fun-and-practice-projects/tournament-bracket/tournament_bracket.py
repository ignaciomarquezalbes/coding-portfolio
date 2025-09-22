import numpy as np

#-------------------------------------------------------------------------

def Prob_matrix():
    
    while True:
          try:
            rounds = int(input("How many rounds of single elimination bracket are in the tournament?: "))
            if rounds > 0:
                N = 2 ** rounds
                print(f"\nWe have a tournament of {N} teams playing {rounds} rounds of single elimination bracket")
                break
            else:
                print("\nInvalid input! Please enter a positive integer.\n")
          except ValueError:
            print("\nInvalid input! Please enter a positive integer.\n")
    
    P = np.zeros((N, N))

    for i in range(N):
      for j in range(i + 1, N):
          p = round(np.random.rand(),2)
          P[i, j] = p
          P[j, i] = 1 - p

    return P
  
#-------------------------------------------------------------------------

def Opps_round(i,r):

    j=i//(2**r)
    mid=(2*j+1)*2**(r-1)

    if i < mid:
        opp = list(range(mid, (j+1) * (2**r)))
    else:
        opp = list(range(j*2**r,mid))

    return opp
        
#-------------------------------------------------------------------------
def Tourn_prob_calculator(P):

    N = P.shape[0]
    R = int(np.log2(N))

    rounds_prob = np.ones((N, R + 1), dtype=float)

    for r in range(1,R+1):
        for i in range(N):
            
            opponents=Opps_round(i,r)
            accum_prob_opp=0
            
            for j in opponents:
                
                accum_prob_opp+=P[i,j]*rounds_prob[j,r-1]
                
            rounds_prob[i,r]=rounds_prob[i,r-1]*accum_prob_opp

    return rounds_prob[:,R]
   
#-------------------------------------------------------------------------

P = Prob_matrix()

print(f"\nHere's the corresponding probability matrix:\n\n {P}")

solution = Tourn_prob_calculator(P)

print(f"\nHere's the probability vector contaning the probability of each team winning the entire tournament:\n\n {solution}")
