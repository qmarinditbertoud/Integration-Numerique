clear all;
close all;


f=@(x)cos(pi*x/2);
I=[];
in=integral(f,-1,1);





for n=1:6
    
    [Wi]=Poids([],n);
    
    I(n)=Quadrature(f,[],Wi);
    
    err(n)=abs(I(n)-in);

end

plot(err);



