``` {r, echo=FALSE}
  
Skills <- c('Reading','Critical Thinking','Time Management','Mathematics','Computer Programming',
          'System Design','Report Writing','Listening','Teamwork','Curiosity')

## Attribute score
reading <- c(8)
critical_thinking <- c(7)
time_management <- c(6)
mathematics <- c(8)
computer_programming <- c(7)
system_design <- c(6)
report_writing <- c(7)
listening <- c(9)
teamwork <- c(6)
curiosity <- c(8)

Score <- c(reading, critical_thinking, time_management, 
           mathematics, computer_programming, system_design, 
           report_writing, listening, teamwork, curiosity)

skill_table <- data.frame(Skills,Score)

print(skill_table)


## Visualise my data
library('ggplot2')
ggplot(data = skill_table, aes(x= Skills , y= Score)) +
  geom_bar(stat="identity") +
  ggtitle("My Data Science Profile") + 
  theme(plot.title = element_text(lineheight=1.2, face="bold")) +
  theme(axis.title.y = element_text(colour="#990000", size=15),
        axis.title.x = element_text(colour="#990000", size=15),
        axis.text.x  = element_text(angle=90, vjust=0.5, size=10))

```
!{'Awhys Profile'}(Awhys_Profile.png)
