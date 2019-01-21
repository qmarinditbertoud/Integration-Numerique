clear all;
close all;
n=3;

Mk=[];
f=@(x)cos(pi*x/2);
I=[];
in=integral(f,-1,1);



for k=1:n  
    Mk=[Mk,k/(sqrt(4*(k)^2-1))];
end

M=diag(Mk,1)+diag(Mk,-1);
P=poly(M);
R=roots(P);
X=sort(R);

[Wi,Wi2]=Poids(X,n);


% 

% %I(n)=Quadrature(f,X,Wi);
% I2(n)=Quadrature(f,X,Wi2);
% err(n)=abs(I2(n)-in);



