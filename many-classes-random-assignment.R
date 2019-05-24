set.seed(12604)
max.classes <- 100
assignment <- rep(NA, max.classes)
for(i in seq(from=1,to=max.classes-1,by=2)){
  if(rbinom(1,1,0.5)==1){
    assignment[i] <- "Incentivized"
    assignment[i+1] <- "Non-Incentivized"
  } else {
    assignment[i+1] <- "Incentivized"
    assignment[i] <- "Non-Incentivized"
  }
}

df <- data.frame(CourseID=1:max.classes, IncentiveCondition=assignment)

write.csv(df, file="ManyClassesCourses.csv")
