clc;
clear;

[~, ~, raw0_0] = xlsread('data2.xls','���Ѿ�','C3:E29');
[~, ~, raw0_1] = xlsread('data2.xls','���Ѿ�','H3:J29');
[~, ~, raw0_2] = xlsread('data2.xls','���Ѿ�','L3:N29');
[~, ~, raw0_3] = xlsread('data2.xls','���Ѿ�','P3:R29');
[~, ~, raw0_4] = xlsread('data2.xls','���Ѿ�','T3:X29');
[~, ~, raw0_5] = xlsread('data2.xls','���Ѿ�','Z3:AB29');
[~, ~, raw0_6] = xlsread('data2.xls','���Ѿ�','AD3:AH29');
raw = [raw0_0,raw0_1,raw0_2,raw0_3,raw0_4,raw0_5,raw0_6];
data2S1 = reshape([raw{:}],size(raw));
clearvars raw raw0_0 raw0_1 raw0_2 raw0_3 raw0_4 raw0_5 raw0_6;
X=zscore(data2S1)
xlswrite('red_8.xls',X)


