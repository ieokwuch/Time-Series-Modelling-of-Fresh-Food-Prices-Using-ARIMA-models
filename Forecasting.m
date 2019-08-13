Forcastf = [];
diffdataf = diffdata;
% create a loop to estimate parameters from data, forecast future values and update data set
for i = 1:10 
   [EstMdl4f,EstParamCov4f,logL4f,info4f] = estimate(Mdl4,diffdataf);
   [forcast4f,YMSE] = forecast(EstMdl4f,1);
   Forcastf = [Forcastf; forcast4f];
   diffdataf = [diffdataf; forcast4f];
end
 
% create a loop to remove the differencing from the data and perform an inverse box-cox transformation
newset = transdata(464);
NFFM = [];
for j = 1:length(Forcastf)
    Newtransdata = Forcastf(i) + newset(end); %remove differencing
    Newforecast=(lambda*Newtransdata + 1).^(1/lambda); %remove box-cox transformation
%     Newforecast = 10.^(Newtransdata);
    NFFM = [NFFM;Newforecast];
    newset = [newset;Newtransdata];
end
disp(NFFM)