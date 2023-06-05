# Scrape Diesel Fuel Prices
The purpose of this repo is to scrape public data capturing diesel fuel prices 

#------------------


*Procedures and Background*  

This code will scrape both national and state level diesel fuel prices and save in the folder data/Diesel_final.csv
This code is self-sufficient, meaning the code will download the data directly from the url within R.  No other procedures are needed to obtain data. In addition, this code will produce a time series plot of diesel fuel prices for both national and state. Final plot
will be saved as figures/diesel_prices.png

*How to use*

  - Open up the "Diesel Prices.Rproj"
  - Run the script code/01 - scraping diesel prices.R to download the data
  - Run the script code/02 - creating plots.R to create the time series figure
  
*Inputs requried*

This code does not require any input files or supporting code.



------------------
## Data Sources 

The data sets 

  - National
  https://www.eia.gov/dnav/pet/hist/LeafHandler.ashx?n=pet&s=emd_epd2d_pte_nus_dpg&f=m
  https://data.bls.gov/pdq/SurveyOutputServlet

  - State
  https://dbedt.hawaii.gov/economic/energy-trends-2/

  










