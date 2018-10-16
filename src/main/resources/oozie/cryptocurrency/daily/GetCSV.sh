#!/bin/sh

curl 'https://www.alphavantage.co/query?function=TIME_SERIES_DAILY_ADJUSTED&symbol=MSFT&apikey=demo&datatype=csv' | hadoop fs -put - /user/omran/mydata/daily/stock_time_series.csv

hadoop fs -chmod -R 777 /user/omran/mydata/daily/stock_time_series.csv

echo "Done!"

