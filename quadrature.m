function [I,I2] =Quadrature(f,X,Wi)


%%%%%%% Newton-Côtes
I=0;
I2=0;
n=length(Wi)-1;

for i=0:1:n
    xi=-1+((2/n)*(i+1));
    I=I+(Wi(i+1).*f(xi));

end


%%%%%% Gauss-Legendre

for i=0:1:n
    X=-1+((2/n)*(i+1));
    I2=I2+(Wi(i+1).*f(X));

end

end