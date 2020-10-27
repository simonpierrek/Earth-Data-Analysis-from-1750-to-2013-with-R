# Earth-Data-Analysis-from-1750-to-2013-with-R
The data

The dataset used in this project comes from Berkeley Earth data. These are
data showing temperature records around the world since 1750. A copy of the data can be downloaded using this
link.(https://drive.google.com/file/d/1zcdJriWGGatlEuo0hduQOg7q2h4bqtYX/view?usp=sharing)

The description of the data can be seen here
http://berkeleyearth.org/archive/data/


The data presents the temperature records of various cities around the world since 1750. The file consists of 8,599,212 rows. And the header
is as follows : (1) dt - The date of the reading in the format Y-m-d, (2) AverageTemperature - The average temperature in celsius, (3) AverageTemperatureUncertainty -
The 95% confidence interval around the average, (4) City - The name of the City, (5)
Country - The name of the Corresponding Country, (6) Latitude and (7) Longitude.

The program (it uses parallel execution approach to minimize the time of each request)is meant to :

1. Allows the user to get specific info such as the highest, lowest and the average temperature since 1750 for specific city. 

2. Allows the user to plot the evolution of the temperature between two dates and for a
city specified by the user.

The file "my_plot.dem" is the Gnuplot code that will alow the Gnuplot to plot the data specified by the user.

The "Rcode.R" can be processed only in a Terminal with the required packages(tidyverse, lubridate, fread) of R and with Gnuplot installed.
