# R API Tutorial (with docker!)

This code is what was used in our blog posts on [using R to make an API](https://medium.com/@heathernolis/r-can-api-c184951a24a3) and [using R with docker](https://medium.com/@skyetetra/using-docker-to-deploy-an-r-plumber-api-863ccf91516d).

The three R files are used to create a simple API with the plumber R library. The dockerfile can be used to take the API and create a docker container with it.

To run the API directly, run the `main.R` script (or deploy the container). Then go to http://127.0.0.1/cnpj?cnpj=00000000000191 to run the model on a petal width of 1.

docker build -t r-cnpj-api .
docker run --rm -it -p 3000:80 r-cnpj-api