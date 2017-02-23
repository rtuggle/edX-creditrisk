#Expected shortfall
(10*0.01 + 5*0.02 + 1*0.02) / 0.05

#Joint Portfolio

losses <- c(20,15,11,9,10,6,4,2,0,-2)
probs <- c(0.01^2, 0.02*0.01*2, 0.01*0.03*2, 
           0.01*0.94*2, 0.02^2, 0.02*0.03*2,
           0.02*0.94*2, 0.03^2, 0.03*0.94*2,
           0.94^2)

df.folio <- data.frame(losses, probs)
df.folio.s <- df.folio[order(probs),]
test <- 