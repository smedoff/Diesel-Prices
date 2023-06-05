
#' Title: Creating Diesel Price Plots
#' Author: Sarah Medoff
#' Purpose: The point of this script is to plot diesel fuel prices extracted in 01.R script

# Data Source 
#  - https://www.eia.gov/dnav/pet/hist/LeafHandler.ashx?n=pet&s=emd_epd2d_pte_nus_dpg&f=m
#  - https://dbedt.hawaii.gov/economic/files/2021/02/Monthly_Energy_Data.xlsx

#----------------------------
# Plotting and Saving the data

  # Read file in
  no2_diesel.df <- read.csv(file = file.path(".",
                                            "data",
                                            "Diesel_final.csv"))
  
  # Produce a time series plot
  ggplot(no2_diesel.df, aes(Date, Price, color = Source)) + 
    geom_line(aes(group = Source, color = Source)) + 
    ylab("Diesel $/Gal") +
    labs(title = "Time Series of Monthly Diesel Prices",
         caption = "US: https://www.eia.gov/dnav/pet/hist/LeafHandler.ashx?n=pet&s=emd_epd2d_pte_nus_dpg&f=m
                      \n HI: https://dbedt.hawaii.gov/economic/energy-trends-2/") + 
    theme(plot.caption=element_text(hjust = 0)) +
    scale_x_discrete(guide = guide_axis(check.overlap = TRUE))
    
  ggsave(file.path(".",
                   "figures",
                   "diesel_prices.png"), 
         device = "png")
  
  
  
  
  
  
