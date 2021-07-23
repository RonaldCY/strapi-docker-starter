### Docker Local
- Build

      docker build -t web-church-image -f ./Dockerfile .

- Run

      docker run --env DATABASE_CLIENT=mongo --env DATABASE_NAME=server --env DATABASE_HOST=cluster0.37ysk.mongodb.net --env DATABASE_PORT=27017 --env DATABASE_USERNAME=ronaldchan --env DATABASE_PASSWORD=1q2wEDRF --env DATABASE_SRV=true --env DATABASE_SSL=true -it --rm -p 1337:1337 web-church-image


[strapi-docker Ref](https://github.com/strapi/strapi-docker)

### Google Cloud
- Build

      gcloud builds submit --config cloudbuild.yaml .
- Run

      gcloud beta run deploy web-church-20210722 --image gcr.io/web-church-20210722/web-church-image --update-env-vars DATABASE_CLIENT=mongo --update-env-vars DATABASE_NAME=server --update-env-vars DATABASE_HOST=cluster0.37ysk.mongodb.net --update-env-vars DATABASE_PORT=27017 --update-env-vars DATABASE_USERNAME=ronaldchan --update-env-vars DATABASE_PASSWORD=1q2wEDRF --update-env-vars DATABASE_SRV=true --update-env-vars DATABASE_SSL=true --allow-unauthenticated --platform managed


[Cloud RUn Ref](https://cloud.google.com/build/docs/deploying-builds/deploy-cloud-run)