%This code uses the calibrated model to generate data. It then subtracts
%the generated data from the original data to get the residuals. The
%residual autocorrelation is then plotted.

figure
res2 = infer(EstMdl2, diffdata);
autocorr(res2, 'NumLags',462);

%carry out a Ljung-Box test to confirm whiteness of the residuals.
H = lbqtest(res2)