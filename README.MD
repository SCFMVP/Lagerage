DEMO
===========================

##  环境依赖
MATLAB1016a

##  部署步骤
1. 加入工作目录

2. 运行Lagerage_2.m


##  目录结构描述


##  关键代码
```c
function Y=Lagerage_1(x,y,X,n)
%Lagrange 插值，求数据（x,y）所表达式的函数在插值点xx处的插值
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

```

##  运行效果
![龙格现象](/pic/1.png)
  
##  V1.0.0 版本内容更新
1. 龙格现象
