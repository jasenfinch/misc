## script for checking r packages across platform
## run from within package development directory

library(rhub)
library(tidyverse)

## use if first time running on system
# validate_email()

walk(platforms()$name,~{
	cat(.,'\n')
	check_for_cran(platform = .)
	})
