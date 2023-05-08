clc; clearvars; close all

%Getting data from pizza.csv file
x = readmatrix("ProjectData.csv");

%Building PCA model with 3 components
[t, p, R2, res] = nipalspca(x,8);


t1 = t(:,1);
t2 = t(:,2);
p1 = p(:,1);
p2 = p(:,2);

dataset = ["FG_PCT_Home" "FT_PCT_Home" "FG3_PCT_Home" "AST_Home" "REB_Home" "FG_PCT_Away" "FT_PCT_Away" "FG3_PCT_Away" "AST_Away" "REB_Away" ];
loading_plot(p1,1,dataset)
loading_plot(p2,2,dataset)
score_loading_plot(t1,t2,p1,p2,dataset)
SPEplot(res)


