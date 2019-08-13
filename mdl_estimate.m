%this code creates blank models using the specifications and then estimates
%the parameters of these models using the differenced data


% % %code for model 1, AR(351) with signifacnt values at lags 229,231,232,256,262,350,351
% Mdl1 = arima('ARLags', [229,231,232,256,262,350,351]);
% [EstMdl1, EstParamCov1, LogL1, info1] = estimate(Mdl1, diffdata)

% % code for model 2, AR(351) with signifacnt values at lags 1,2,4,9,12,24,42,229,231,232,256,262,350,351
Mdl2 = arima('ARLags', [1,2,4,9,12,24,42,229,231,232,256,262,350,351]);
[EstMdl2, EstParamCov2, LogL2, info2] = estimate(Mdl2, diffdata)

% % %code for model 3, AR(362) with signifacnt values at lags 1,2,9,12,24,42,215,229,231,232,233,240,256,262,342,350,351,362
% Mdl3 = arima('ARLags', [1,2,9,12,24,42,215,229,231,232,233,240,256,262,342,350,351,362]);
% [EstMdl3, EstParamCov3, LogL3, info3] = estimate(Mdl3, diffdata)
% 
% %code for model 4, AR(362) with signifacnt values at lags 1,2,3,4,7,9,12,16,17,24,42,215,229,231,232,233,240,256,262,342,350,351,362
% Mdl4 = arima('ARLags', [1,2,3,4,7,9,12,16,17,24,42,215,229,231,232,233,240,256,262,342,350,351,362]);
% [EstMdl4, EstParamCov4, LogL4, info4] = estimate(Mdl4, diffdata)