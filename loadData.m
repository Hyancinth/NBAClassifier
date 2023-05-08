% Used to initially load the data into the workspace to create/train model

clc
close all 
clearvars

input = readmatrix("ProjectData.csv");
outcome = readmatrix("Wins.csv"); x