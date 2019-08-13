Forcastff = [];
diffdataff = diffdata(1:462);
% create a loop to estimate parameters from data, forecast future values and update data set
for i = 1:1
   [EstMdlff,EstParamCovff,logLff,infoff] = estimate(Mdl2,diffdataff);
   [forcastff,YMSE] = forecast(EstMdlff,1);
   Forcastff = [Forcastff; forcastff];
   diffdataff = [diffdataff; forcastff];
end
 
% create a loop to remove the differencing from the data and perform an inverse box-cox transformation
newsetf = transdata(463);
NFFMf = [];
for j = 1:length(Forcastff)
    Newtransdataf = Forcastff(i) + newsetf(end);  %removing differencing
    Newforecastf=(lambda*Newtransdataf + 1).^(1/lambda);  %inverse box-cox
%     Newforecast = 10.^(Newtransdataf);
    NFFMf = [NFFMf;Newforecastf];
    newsetf = [newsetf;Newtransdataf];
end
disp(NFFMf)