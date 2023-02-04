%dual thrust策略实现--对于单只股票
%策略需要基于一个选股策略
%策略考虑了T+1规则
%通过使用前一天收盘价作为参考价格避免了前视偏差
%共模拟了96个交易日的数据
filename='C:\\Users\\Lenovo\\Desktop\\group project\\数据\\000001.SZ.xlsx';
data=xlsread(filename,'B1:F103');
for i = 8:103
    HH=max(data(i-7:i-2,2));
    LC=min(data(i-7:i-2,4));
    HC=max(data(i-7:i-2,4));
    LL=min(data(i-7:i-2,3));
    RANGE=max(HH-LC,HC-LL);
    BUYLINE=data(i-2,4)+0.3*RANGE;
    SELLLINE=data(i-2,4)-0.3*RANGE;
    disp(i-7);
    if data(i-1,4)>=BUYLINE
        disp('买入');
    elseif data(i-1,4)<=SELLLINE
        disp('卖出');
    else
        disp('继续持有');
    end
end
%以000001.SZ为例 标准差：0.0143 日均值 0.00299
%年化收益率75.34%
%年化夏普比率3.32
