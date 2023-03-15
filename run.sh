### Examples

# VIC-ResOpt is demonstrated via two case studies

# - A toy case study, that is, a small catchment with dimension of 5 x 5 (cell)
#   (see *Rainfall-runoffSetup* and *RoutingSetup* folders). The representation
#   of water reservoirs is exemplified in the file *reservoirlocation.txt*,
#   which contains three reservoirs (Reservoir 1, Reservoir 2, and Reservoir 3;
#   IDs 1, 2 and 3). The files containing all specifications of these reservoirs
#   are named *res1.txt* (rule curve),*res2.txt* (operating rule), and
#   *res3.txt* (pre-defined release).

# - The case study of the Upper Chao Phraya river basin in Thailand (see
#   *Rainfall-runoffSetupChaoPhraya* and *RoutingSetupChaoPhraya*). The basin,
#   which has a drainage area of 110,000 km2, is modelled by using VIC-ResOpt
#   with 4,426 cells (0.0625 x 0.0625 degree). Rainfall time series data are
#   from the Asian PrecipitationHighly Resolved Observational Data Integration
#   Towards Evaluation of Water Resources (APHRODITE) product which is developed
#   based on multiple-gauging stations. Other climatic forcings, including
#   maximum/minimum temperature and wind speeds, are derived from the NCEP
#   Climate Forecast System Reanalysis (CFSR). These datasets are available at
#   different spatial resolutions and are interpolated to the resolution of the
#   adopted VIC cell size by the bilinear interpolation method. This method
#   calculates a grid-based value based on its four neighbouring values,
#   considering distance weighting. Land cover data which are obtained from the
#   Global Land Cover Project (GLCP) database, and soil characteristics are
#   obtained from the Harmonized World Soil Database (HWSD). These datasets have
#   a spatial resolution of 30 arcseconds (around 1 km), so they are rescaled to
#   the resolution of VIC using the majority interpolation method. This method
#   assigns the most frequent values of the pixels inside the search space for
#   the pixel with the unknown value. Due to the large size of climate forcing
#   data and limited available storage of this repository, we do not upload the
#   forcing input. However, these data are freely available on the website of
#   the providers or they can be also replaced by other products. 

# mkdir Rainfall-runoffSetup/Results
bin/vicNl -g Rainfall-runoffSetup/globalparam.txt
