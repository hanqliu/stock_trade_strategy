filename='C:\\Users\\Lenovo\\Desktop\\group project\\数据\\000001.SZ.xlsx';
data=xlsread(filename,'B1:F103');
%菲阿里四价基于分钟级交易数据实现
%根据前一交易日的最高价、最低价设置阻力线breakthrough和支撑线holdline
for i=2:52
    holdline=data(i-1,3);
    breakthr=data(i-1,2);
    disp(i);
    if data(i,1)<breakthr&&data(i,1)>holdline
           disp('按照分钟级交易数据，选择在超出阻力线时多头，在越过支撑线时空头。这一模块因为缺乏分钟级交易数据未能实现');
    elseif data(i,1)>=breakthr
        disp('按照分钟级交易数据，跌破阻力线前空头，否则持有');
    else
        disp('按照分钟级交易数据，涨过支撑线前多头，否则持有');
    end
end