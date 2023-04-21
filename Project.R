library(readr)
UE <- read_csv("Desktop/Admin/UMass Boston/Sem1/Multivariate & Regression/Inflation Data & unemployment.csv")
Total=na.omit(UE$Total)
View(UE)
UE$Asian=na.omit(UE$Asian)
time=na.omit(UE$Month)
UE$Ave=na.omit(UE$Ave)
UE$AUR=na.omit(UE$AUR)

m1 <- lm(Total ~ White, data = unemployement)
summary(m1)
coeftest(m1, vcov. = vcovHC, type = "HC1")

plot(unemployment_rate, time, main='Scatterplot of \nunemployment and time',xlab='months',ylab='unemployement rate')

m1 <- lm(Ave~AUR, data = UE)
summary(m1)
cor(UE$Ave,UE$AUR)
shapiro.test(UE$Ave)
shapiro.test(UE$AUR)

ggqqplot(UE$Ave, ylab = "AVG Inflation Rate")
# wt
ggqqplot(UE$AUR, ylab = "AVG UnEmployement Rate")



require(ggplot2)
theme_set(theme_bw()) # Change the theme to my preference
ggplo2(aes(x =time , y = unemployment_rate), data = UE) + geom_point()
ggplot(aes(x = time, y = unemployment_rate), data = UE) + geom_line()


attach(unemployement)
qqnorm(unemployement$Total)
qqline(unemployement$`Hispanic or Latino`, col = 2)
qqline(unemployement$`Men, 20 years and over`, col = 3)
qqline(unemployement$`16 to 19 years old`, col = 4)
qqline(unemployement$White, col = 4)
qqline(unemployement$`Black or African American`, col = 5)
qqline(unemployement$Asian, col = 4)



log_total<- Log(unemployement$Total)
model01 <- lm(log(Total) ~ `Men, 20 years and over`+`Women, 20 years and over`+`16 to 19 years old`+White+`Black or African American`+Asian+`Hispanic or Latino`, data = unemployement)
mp1 <- model_parameters(model01, robust = TRUE, vcov_estimation = "CL", vcov_type = "HC1")
mp1

plot(Total~Men_20years_and_over, 
     col = "red", 
     pch = 20, 
     data = unemployement,
     main = "Log-Linear Regression Function")

plot(log(Total)~ log(Men_20years_and_over), 
     col = "red", 
     pch = 20, 
     data = unemployement,
     main = "Log-Log Regression Function")

plot(log(Total)~Men_20years_and_over`, 
     col = "steelblue", 
     pch = 20, 
     data = unemployement,
     main = "Log-Log Regression Function")

# add the log-linear regression line
order_id  <- order(unemployement$`Men, 20 years and over`)

lines(unemployement$`Men, 20 years and over`[order_id], 
      fitted(lm1)[order_id], 
      col = "red", 
      lwd = 2)
summary(model01)$coef
summary(model01)