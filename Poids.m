function [Wi,Wi2]=Poids(X,n)
if isempty(X)
    %%%Formule de Newton_Côtes

    v=0:n;
    M=vander(v);
    V=fliplr(M);

    for i=0:1:n
        B(i+1)=(n.^(i+1))/(i+1);
    end
    A=inv(V')*B';
    Wi=A*(2/n);%multiplication par 2/n pour normaliser
else

    %%%Formule de Gauss-Legendre

    M2=vander(X);
    V2=fliplr(M2);

    for j=0:n-1
        Bh(j+1)=(1-(-1)^(j+1))/(j+1);
    end
    Wi2=inv(V2')*Bh';
    %multiplication par 2/n pour normaliser
end

end