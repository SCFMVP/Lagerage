%原始数据
year=1790:10:1960;    % 年份数据
people=[3.9,5.3,7.2,9.6,12.9,17.1,23.2,31.4,38.6,50.2,62.9,76,92,106.5,123.2,131.7,150.7,179.3];  % 人口数据
figure(1);
plot(year,people,'o');hold on  % 离散数据
grid on;
p = polyfit(year,people,2);    % 进行2次拟合
year2=year;
people2 = polyval(p,year2);    % 求取拟合值
plot(year2,people2,'-');hold on% 绘制拟合结果
err=people-people2;            % 计算拟合误差 
%输出拟合误差
fprintf('年份    拟合误差\n');
for i=1:length(year)
    fprintf('%d    %f\n',year(i),err(i));
end
xlabel('年份');ylabel('人口/*10^6');
legend('实际数据','拟合函数');
title('1790年到1960年期间美国的人口数据');


