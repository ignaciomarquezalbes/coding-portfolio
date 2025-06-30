function[f,a,eta,h,npas,sol,isol]=datos3

h=0.05;        %step
npas=20;       %number of steps

f='rhs_function';
sol='solution';
isol=1;

a=0;              %x initial value
eta=[1,1,1,1];    %y initial value

end
