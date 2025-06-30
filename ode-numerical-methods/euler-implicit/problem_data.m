function[f,a,eta,h,npas,sol,isol]=problem_data

h= 1.000e-03;    %step
npas=99;         %number of steps

f='rhs_function';
sol='solution';
isol=1;

a=1.000e-03;     %x initial condition
eta=1.053e-03;   %y initial condition

end
