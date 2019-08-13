%To remove the non-stationarity, we differnce the already transformed
%data. Note that this makes the data lose one data point.

diffdata = diff(transdata);
Zd = kpsstest(diffdata)