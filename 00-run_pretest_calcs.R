
run_pretest_calcs <- function(round, lab_date){
  rmarkdown::render(
    "./eea_pretest_calcs.Rmd",
    params = list(round = round, 
                  lab_date = lab_date), 
    output_format = "html_document", 
    output_file = paste0("./results/reports/eea_pretest",
                         round, "-", lab_date, ".html")
  )
}


# run_pretest_calcs(1, 20200205) # this doesn't work because I used a totally different plate layout
#in the first pretest - made the mistake of pipetting all B enzyme into the assay wells.  
# Not taking the time to fix this because the data isn't really useful. 

run_pretest_calcs(2, 20200706)

run_pretest_calcs(3, 20200707)
