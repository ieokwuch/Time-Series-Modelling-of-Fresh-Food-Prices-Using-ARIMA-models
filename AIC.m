%this calculates the AIC of the various models for the purpose of
%comparing and selecting the best model

numParam1 = length(info1.X);
numParam2 = length(info2.X);
numParam3 = length(info3.X);
numParam4 = length(info4.X);
aic1 = aicbic(LogL1, numParam1);
aic2 = aicbic(LogL2, numParam2);
aic3 = aicbic(LogL3, numParam3);
aic4 = aicbic(LogL4, numParam4);