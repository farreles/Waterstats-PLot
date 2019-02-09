View(abund) #shows data frame in new window 
data_summary <- function(data, vername, groupnames){
  require(plyr)
  summary_func <- function(x, col){
    c(mean = mean(x[[col]], na.rm=TRUE),
      sd = sd(x[[col]], na.rm=TRUE))
  }
  data_sum<-ddply(data, groupnames, .fun=summary_func, varname)
  data_sum <- rename(data_sum, c("mean" = varname))
  return(data_sum)
}
p
> barplot(table(df$status), ylab='Percent body weight lost daily', main='Waterstats Plot B', xlab='Reproductive Status')
> barplot(table(df$status), ylab='Percent body weight lost daily', main='Waterstats Plot B', xlab='Reproductive Status', col= rainbow(4))
> df<-ggplot(df, aes(x=status, y=total.percent, fill=status)) + geom_bar(stat="identity")+theme_minimal()
> p
> xlab="Reproductive Status" 
> p 
> print(waterplot_1 + ggtitle("Bar PLot Homework"))
