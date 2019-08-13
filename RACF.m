%This code uses the calibrated model to generate data. It then subtracts
%the generated data from the original data to get the residuals. The
%residual autocorrelation is then plotted.

res = infer(EstMdl4, diffdata);
autocorr(res, 'NumLags',462);