Inflation.Data <- read.csv("C:/Users/janub/OneDrive/Desktop/Inflation Data.csv")
plot(Inflation.Data$Year, Inflation.Data$Ave)
Inflation.regression <- lm(Year ~ Ave, data = Inflation.Data)
summary(Inflation.regression)

###o/p:
  Call:
  lm(formula = Year ~ Ave, data = Inflation.Data)

Residuals:
  Min     1Q Median     3Q    Max 
-6.667  0.000  0.000  1.000  5.333 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 2009.0000     4.6577 431.326 1.05e-14 ***
  Ave0.1         6.0000     6.5870   0.911    0.397    
Ave1.2        11.0000     6.5870   1.670    0.146    
Ave1.3         7.0000     6.5870   1.063    0.329    
Ave1.5         4.0000     6.5870   0.607    0.566    
Ave1.6        -0.3333     5.3783  -0.062    0.953    
Ave1.8        10.0000     6.5870   1.518    0.180    
Ave2.1         5.5000     5.7045   0.964    0.372    
Ave2.3        -6.0000     6.5870  -0.911    0.397    
Ave2.4         9.0000     6.5870   1.366    0.221    
Ave2.7        -5.0000     6.5870  -0.759    0.477    
Ave2.8        -5.0000     5.7045  -0.876    0.414    
Ave3.2        -0.5000     5.7045  -0.088    0.933    
Ave3.4        -6.5000     5.7045  -1.139    0.298    
Ave3.8        -1.0000     6.5870  -0.152    0.884    
AveÂ          12.0000     6.5870   1.822    0.118    
---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 4.658 on 6 degrees of freedom
Multiple R-squared:  0.853,	Adjusted R-squared:  0.4855 
F-statistic: 2.321 on 15 and 6 DF,  p-value: 0.1529