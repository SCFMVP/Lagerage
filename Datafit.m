%ԭʼ����
year=1790:10:1960;    % �������
people=[3.9,5.3,7.2,9.6,12.9,17.1,23.2,31.4,38.6,50.2,62.9,76,92,106.5,123.2,131.7,150.7,179.3];  % �˿�����
figure(1);
plot(year,people,'o');hold on  % ��ɢ����
grid on;
p = polyfit(year,people,2);    % ����2�����
year2=year;
people2 = polyval(p,year2);    % ��ȡ���ֵ
plot(year2,people2,'-');hold on% ������Ͻ��
err=people-people2;            % ���������� 
%���������
fprintf('���    ������\n');
for i=1:length(year)
    fprintf('%d    %f\n',year(i),err(i));
end
xlabel('���');ylabel('�˿�/*10^6');
legend('ʵ������','��Ϻ���');
title('1790�굽1960���ڼ��������˿�����');


