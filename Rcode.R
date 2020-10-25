
  cat('\t', 'Earth data from 1750 to 2003 analysis program', "\n")

  cat('\t','Data is loading...',  "\n")

  #Get the GlobalLandTemperaturesByCity in R
  suppressMessages(require(tidyverse))
  suppressMessages(require(lubridate))

  GlobalLandTemperaturesByCity <- data.table::fread("GlobalLandTemperaturesByCity.csv")
  cat('\t',"Get specific info such as the highest, lowest and the average temperature since 1750 for specific city." , "\n")

  # convert character into character

  if (interactive() ){raw <-
    readline("TRUE or FALSE -- this is a validation run: ")

  if (raw == "F" | raw == "FALSE" | raw == "False"){
    validation <- F
  } else{
    validation <- T
  }
  rm(raw)  } else{
    #  non-interactive
    cat('\t',"Enter a Name of a city please: ", "\n");
    CityName <- readLines("stdin",n = 1);}
  CityName <- as.character(CityName)
  cat('\t',"The result is: ", "\n")
   suppressMessages(GlobalLandTemperaturesByCity %>% group_by(City) %>% filter(City == CityName) %>%
    summarise(min=min(AverageTemperature,na.rm = TRUE),
              max=max(AverageTemperature,na.rm = TRUE),
              mean=mean(AverageTemperature,na.rm = TRUE)))%>% as.data.frame()

  #With the funciton check the highest, lowest and the average temperature since 1750 for specific city. The name of the city should be in quotes("",'')

  cat('\t','Plot the evolution of the temperature between two dates and for a city specified by the user', '\n')

  #Get the GlobalLandTemperaturesByCity in R
  suppressMessages(require(tidyverse))
  library(ggplot2)
  if (interactive() ){raw <-
    readline("TRUE or FALSE -- this is a validation run: ")
  if (raw == "F" | raw == "FALSE" | raw == "False"){
    validation <- F
  } else{
    validation <- T
  }
  rm(raw)  } else{
    #  non-interactive
    cat('\t',"Enter a Name of a city please: ", "\n");
    CityName <- readLines("stdin",n = 1);
  CityName <- as.character(CityName);

  cat('\t',"Enter the first year between 1750 and 2013 : ", "\n");
              year1<-readLines("stdin",n = 1);
              year1<-as.integer(year1);
        cat('\t',"Enter the first year between ", year1, " and 2013", "\n");
              year2<-readLines("stdin",n = 1)
              # convert character into character
              year2<-as.integer(year2)
              suppressMessages(data <-GlobalLandTemperaturesByCity %>% filter(year(dt)
               %in% c(year1:year2), City== CityName) %>% select(dt, AverageTemperature))
              write.table(data, file = "data.dat")
              system('gnuplot my_plot.dem')}
