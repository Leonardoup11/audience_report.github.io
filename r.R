library(mosaic)
library(tidyverse)
library(pander)
library(readr)
library(dbplyr) #Import queries from SQL
library(RColorBrewer)
library(mosaic)
library(tidyverse)
library(DT)
library(car)
library(pander)
library(readr)
setwd("C:/Users/leonardo.urbiola_fox/Desktop/Leads_Projections")

df <- read.csv('leadspendmonth.csv')
df
ggplot(data = df, aes(x= Spend, y = LeadCount, col=Branch)) +
  geom_point() +
  geom_smooth(method = "lm", se = F , formula = y~x, size = 0.3) +
    labs(title = 'Spend vs Year', x = 'Date', y= 'Spend' ) +
      theme_bw()


tyt.sqrt.lm = lm(sqrt(Month)~Spend, data=df)

par(mfrow=c(1,3))

plot(tyt.sqrt.lm, which=1:2)

plot(tyt.sqrt.lm$residuals, main="Residuals vs Order", xlab="", ylab="Residuals")


tyt.lm <- lm(LeadCount ~ Spend, data= df)
boxCox(tyt.lm)


corolla.log.lm <- lm(LeadCount~Spend, data=df)
summary(corolla.log.lm) %>% pander()

select()
pairs(df)

leadm <- lm(LeadCount ~ )


