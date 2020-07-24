syms x0 x1 y x n x_para
x0=-1:0.02:1;%作为画图的点
y=1./(1+25.*(x0.^2));
m=1;
for n=[2 4 6 8 12 14 16 20]
    k=0:n;  
    x(k+1)=-1+2*k/n; 
    for i=1:(n+1) 
        part_x(i)=(x_para-x(i)); 
    end   
    Ln_x=Lagerage_1(x,part_x,x_para,n);
    x_vector=-0.99:0.0051:0.99;
    Ln_x=subs(Ln_x,x_para,x_vector);
    %绘图
    subplot(2,4,m);
    plot(x0,y);hold on;
    subplot(2,4,m);
    plot(x_vector,Ln_x);m=m+1;
    legend ('被插值函数','插值函数')
    title(['n=',num2str(n)])
    ylabel('f(x) and Ln(x) '); 
end

