function Y=Lagerage_1(x,y,X,n)
%Lagrange ��ֵ�������ݣ�x,y�������ʽ�ĺ����ڲ�ֵ��xx���Ĳ�ֵ
for i=1:(n+1)  
    W1x(i)=1;
    for j=1:(n+1) 
        if i~=j
            W1x(i)=W1x(i)*(x(i)-x(j)); 
        end
    end
end
Wx(n+1)=prod(y);  
for j=1:(n+1)
    Y(j)=(1/(1+25*(x(j)^2))) * Wx(n+1) / ( (X-x(j))*(W1x(j)) );
end
Y=sum(Y);    
end
