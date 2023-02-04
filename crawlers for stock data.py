# -*- coding: utf-8 -*-
"""
Created on Sun Jul 26 11:01:39 2020

@author: Lenovo
"""

import tushare as ts
import pandas as pd
import time


def maintask():
    pro = ts.pro_api()
    pool = pro.stock_basic(exchange = '',
                           list_status = 'L',
                           adj = 'qfq',
                           fields = 'ts_code,symbol,name,area,industry,fullname,list_date, market,exchange,is_hs')

    print('获得上市股票总数：', len(pool)-1)
    j = 1
    for i in pool.ts_code:
        print('正在获取第%d家，股票代码%s.' % (j, i))
        time.sleep(0.301)
        j += 1
        df = pro.daily(ts_code = i,
                       start_date = startdate,
                       end_date = enddate,
                       fields = 'ts_code, trade_date, open, high, low, close, pre_close, change, pct_chg, vol, amount')
        #print(df.head())
        writer = pd.ExcelWriter('C:\\Users\\Lenovo\\Desktop\\group project\\数据\\'+ i + '.xlsx',mode="w")
        
        df.to_excel(writer, sheet_name = i + '',index = False)
        writer.save()                
if __name__ == '__main__':
    startdate = '20200226'
    enddate = '20200726'
    maintask()
    #在20200226-20200725期间已退市股票7支，待退市股票4支
    #其中已退市的有5支在数据集中，代码是601588，600175，300156，300090，002220
    #待退市的有三支在数据集中，代码是002256，600614，600856
