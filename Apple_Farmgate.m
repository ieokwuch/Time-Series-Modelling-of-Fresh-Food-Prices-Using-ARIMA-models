%This program reads the apple price data from an excel file and replaces
%the missing values with ones calculated using the least squares
%approximation.

%read the excel file
filename = 'Fruit_Data.xlsx';
sheet = 6;
xlRange = 'B6:M44';
Data = xlsread(filename,sheet,xlRange);

%transpose the matirx and covert the matrix to a vector
Data = Data';
Data = Data(:);
Data = Data(1:464);

%replace the missing values with the estimated ones.
Data(400:411) = missingset;
