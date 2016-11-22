sdata <- read.csv("./linear/concrete.csv")

sdata[sdata=="ash"]

sdata["ash"] <- as.factor(ifelse(sdata["ash"]==0,0,1))
max(sdata["ash"])

train[target] = (train[target] - min(train[target]))/(max(train[target]) - min(train[target]))

model <<- glm(fmla, data = train, family=binomial(link="logit"))