library(admiral)
library(dplyr, warn.conflicts = FALSE)
library(pharmaversesdtm)
library(lubridate)
library(stringr)

data("dm")
data("ds")
data("ex")
data("ae")

dm <- convert_blanks_to_na(dm)
ds <- convert_blanks_to_na(ds)
ex <- convert_blanks_to_na(ex)
ae <- convert_blanks_to_na(ae)

# 1) Create a new dataset “ds_ext” with all of “ds”, plus derive a numeric date
# version of DS.DSSTDTC without any imputation as DSSTDT.
# Hint: use derive_vars_dt()



# 2) Create a new dataset “adsl_1” with all of “dm”, plus derive an end of study
# date (EOSDT) using the DSSTDT from “ds_ext” where DSCAT is "DISPOSITION EVENT"
# & DSDECOD is NOT "SCREEN FAILURE".
# Hint: use derive_vars_merged()



# 3) Create a new dataset “adsl_2” with all of “adsl_1”, plus derive a safety
# population flag (SAFFL) as “Y” for any patient from “ex” with a record where
# EXDOSE > 0.
# Hint: use derive_var_merged_exist_flag()



# 4) Create a new dataset “adsl_3” with all of “adsl_2”, plus derive a last
# known alive date (LSTALVDT) as the latest date of the following variables from
# “ae”: AESTDTC and AEENDTC, imputing missing day and month to the first.
# Hint: use derive_var_extreme_dt()



# BONUS) If time permits, explore the higher order functions that give greater
# flexibility to all {admiral} functions. 


