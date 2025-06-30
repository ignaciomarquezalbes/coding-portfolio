function[A,b]=problem_data(n)

A=zeros(n,n);

for i=1:n-1
    A(i,i+1)=1;
    A(i+1,i)=1;
    A(i,i)=4;
end
A(n,n)=4;

b=zeros(n,1);

b(1,1)=3;
b(n,1)=3*(-1)^(n+1);
for i=2:2:n-2
    b(i,1)=-2;
    b(i+1,1)=2;
end
end

