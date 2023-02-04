filename='C:\\Users\\Lenovo\\Desktop\\group project\\数据\\000004.SZ.xlsx';
data=xlsread(filename,'B1:F103');
for i = 8:103
    close=data(i-7:i-1,4);
    closet=close';
    stdv=std(closet);
    BUYLINE=data(i-2,4)+stdv;
    SELLLINE=data(i-2,4)-stdv;
    if data(i-1,4)>=BUYLINE
        disp('买入');
    elseif data(i-1,4)<=SELLLINE
        disp('卖出');
    else
        disp('继续持有');
    end
end
%以000004.SZ为例 
%测试集：日均值0.000167 标准差0.0295
%年化收益9.24% 年化夏普率0.090
%训练集：标准差0.0300 日均值-0.00124
%年化收益-31.24% 年化夏普率