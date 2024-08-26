library(tidyverse)
library(scales)
library(here)

# Load the data
data_co <- read_csv(here('data','lmr-data.csv'))

# bar chart for cat_type netsales in 2020
data_co %>% group_by(cat_type, cyr) %>% summarize(netsales=sum(netsales)) %>% 
  filter(cyr==2020) %>% ggplot(aes(x=cat_type, y=netsales)) + geom_col()

# clean up the chart with more readable formatting for y-axis numbers, removal of x-axis ticks,
# remove space between bottom of columns and x-axis, add a different color for each cat_type column
# and a descriptive title and axis labels
data_co %>% group_by(cat_type, cyr) %>% summarize(netsales=sum(netsales)) %>% 
  filter(cyr==2020) %>% ggplot(aes(x=cat_type, y=netsales, fill=cat_type)) + 
  geom_col() +
  scale_y_continuous(labels = comma_format(scale = 1e-6, prefix = "$", suffix = "M"),
                     expand = expansion(add = c(0, 0.1))) +
  labs(title = "Total Net Sales by Category Type in 2020", x = "Category Type", y = "Net Sales")

# hide the legend and remove x-axis tick-marks
data_co %>% group_by(cat_type, cyr) %>% summarize(netsales=sum(netsales)) %>% 
  filter(cyr==2020) %>% ggplot(aes(x=cat_type, y=netsales, fill=cat_type)) + 
  geom_col() +
  scale_y_continuous(labels = comma_format(scale = 1e-6, prefix = "$", suffix = "M"),
                     expand = expansion(add = c(0, 0.1))) +
  labs(title = "Total Net Sales by Category Type in 2020", x = "Category Type", y = "Net Sales") +
  theme(legend.position = "none", axis.ticks.x = element_blank())


