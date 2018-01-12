## script for checking r packages across platform
## run from within package development directory

library(rhub)
library(tidyverse)

## use if first time running on system
# validate_email()


# platforms()

pl <- c('ubuntu-gcc-devel',
				'ubuntu-gcc-release',
				'windows-x86_64-release',
				'windows-x86_64-devel'
				)

walk(pl,~{
	cat(,'\n')
	check(platform = .)
	})
