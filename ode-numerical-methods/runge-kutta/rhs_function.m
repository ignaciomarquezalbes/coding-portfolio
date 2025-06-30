function [f]=rhs_function(x,y)

f(1)=2*x*y(4)*y(1);
f(2)=10*x*y(4)*(y(1))^5;
f(3)=2*x*y(4);
f(4)=-2*x*(y(3)-1);

end
