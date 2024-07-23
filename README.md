# Moving Average Model Analysis

This project analyzes the performance of a Moving Average (MA) model on stock price data using the 'quantmod' package in R. The analysis is conducted using Apple Inc.'s stock data obtained from Yahoo Finance.

## Moving Average Model Overview

The Moving Average (MA) model is used to capture the temporal dependencies in a time series. It is expressed as:

\[ x[t] = \mu + \epsilon[t] + \theta_1 \epsilon[t-1] + \theta_2 \epsilon[t-2] + ... + \theta_q \epsilon[t-q] \]

where:
- \( \epsilon[t] \) are the white noise errors
- \( \theta_i \) are the parameters of the model
- \( q \) is the order of the MA model

## Implementation

The implementation is carried out in R, using the following steps:

1. **Data Acquisition**: Apple Inc. stock data is fetched using the `quantmod` package.
2. **Data Transformation**: Log returns of the adjusted closing prices are computed to stabilize the variance.
3. **Model Fitting**: A Moving Average model of order 4 is fitted to the log returns.
4. **Residual Analysis**: Residuals from the MA model are analyzed for stationarity.

## Results

- **Log Returns**: The log returns of Apple stock prices are plotted and examined.
- **Model Fit**: A Moving Average model with order \( q = 4 \) is fitted.
- **Residuals Analysis**: The residuals of the MA model are plotted and analyzed. The analysis reveals that the residuals are not stationary, suggesting that the MA model may not be fully capturing the underlying dynamics of the data.

## Conclusion

The analysis shows that while the Moving Average model provides some insights, the residuals are not stationary, indicating that the model might not be capturing all the underlying patterns in the data. Further refinement or alternative modeling approaches may be necessary to improve the fit.

## Files

- `moving_average_analysis.R`: The R script containing the implementation of the MA model and residual analysis.
