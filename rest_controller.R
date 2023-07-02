library(cnpjReceita)

#* @get /cnpj
get_predict_length <- function(petal_width){
  cnpj <- '00.000.000/0001-91'

  d_result <- buscar_cnpj(cnpj, output = 'df', qsa = TRUE)
  d_result
}
