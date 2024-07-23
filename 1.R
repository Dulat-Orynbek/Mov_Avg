require('quantmod')
getSymbols("AAPL", src = 'yahoo')
  
plot(Ad(AAPL))
log_rets = diff(log(Ad(AAPL)))
plot(log_rets)
acf(log_rets, na.action = na.omit)
ma = arima(log_rets, order = c(0,0,4))
residuals = ma$res[-1]
acf(residuals)
  