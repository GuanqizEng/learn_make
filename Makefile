learn_make.html: learn_make.Rmd data/fire_stations.rds data/ok_tor.rds data/school_districts.rds
	Rscript -e "rmarkdown::render('learn_make.Rmd')"
  
data/fire_stations.rds: R/get_fire_stations.R
	Rscript R/get_fire_stations.R
  
data/ok_tor.rds: R/get_tornadoes.R
	Rscript R/get_tornadoes.R
  
data/school_districts.rds: R/get_school_districts.R
	Rscript R/get_school_districts.R

clean_data:
	cd data/; rm *.rds

clean_html:
	rm learn_make.html
  
.PHONY: clean_data clean_html