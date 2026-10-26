library(quantmod)
library(TTR)

symbols <- c("AAPL", "MSFT", "GOOGL")

for (symbol in symbols) {
  getSymbols(symbol, src = "yahoo", from = "2023-01-01", auto.assign = TRUE)
  
  chartSeries(get(symbol), 
              name = paste("Technical Analysis -", symbol),
              theme = chartTheme("white"),
              TA = "addSMA(n = 20, col = 'blue')")
}