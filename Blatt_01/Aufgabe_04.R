# Title     : TODO
# Objective : TODO
# Created by: sbutz
# Created on: 7/9/21

data = read.table("./Blatt_01/miete03.csv", sep="\t", header=TRUE)

modell = lm(nm ~ wfl + rooms + factor(bez) + bj + kueche + badkach0, data=data)
modell2 = lm(nm ~ wfl + I(wfl^2) + rooms + factor(bez) + bj + kueche + badkach0, data=data)

predict(modell2, newdata = data.frame(wfl=80, rooms=4, bj=1991, bez=2, kueche=1, badkach0=0))