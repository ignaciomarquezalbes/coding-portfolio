clear all

[f,a,eta,h,npas,sol,isol]=problem_data;

euler_implicit(f,a,eta,h,npas,sol,isol);
