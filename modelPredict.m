clc
close all 
clearvars

% Load model 
load('NBAClassificationModel_V4.mat', 'NBAClassificationModel_V4')

% Input data for prediction 
% Currently it's the first 3 rows of ProjectData.csv
x = [0.425, 0.917, 0.393, 27, 41, 0.413, 1, 0.413, 27, 44;     
    0.466, 0.867, 0.225, 23, 39, 0.413,	0.677, 0.344, 18, 47;     
    0.4, 0.737,	0.395, 22, 42, 0.44, 0.8, 0.349, 20, 55];


% Make predictions using the sim function
Y = sim(NBAClassificationModel_V4, x')';

disp(Y)