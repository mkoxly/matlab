%% 清理环境
clc
clear all
%% 生成数据
data=zeros(3,100);
a=1:100 ;
data(1,:)=a ;
data(2,:)=log10(a);
data(3,:)=sqrt(a);
xlswrite('d:\workspace\matlab\data.xls',data) ;
%% 载入数据
data=xlsread('d:\workspace\matlab\data.xls') ;
%% 画图部分
x = data(1,:);
y1 = data(2,:);
y2 = data(3,:);
figure
xlabel('x')
h1 = plot(x,y1) ;
hold on
%grid on
h2 = plot(x,y2) ;
set(h1,'LineStyle','-','color','r')
set(h2,'LineStyle','*','color','b')
h3 = legend('log(x)','sqrt(x)','location','northwest');
%% 
