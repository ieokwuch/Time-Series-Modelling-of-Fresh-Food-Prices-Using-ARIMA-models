% Use Box-Cox transformation to transform the data and save the new data in the variable ‘transdata’. 
%This transformation is to remove heteroscedasticity and non-normality.
%Another stationarity test is done after the transformation

[transdata, lambda] = boxcox(Data);
Zt = kpsstest(transdata) 