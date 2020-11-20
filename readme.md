# How to install docker and docker-compose

`setup.sh` automate installation process described in our [document](https://github.com/dtws/ts-docs/tree/create-airflow-dev-environment/docs/create-airflow-dev-environment).

I (hotoku-dtws) tested the following process in GCE instance with Cent OS 8.

## steps
Do the following steps as `airflow` user.

1. clone this repository into `/home/airflow/airflow`. (e.g. `git clone https://github.com/dtws/docker-airflow ~/airflow`)
1. move to the root of the repository and run `setup.sh`. (e.g. `cd ~/airflow; ./setup.sh`)
1. log into docker group (e.g. `newgrp docker`)
1. test docker run (e.g. `docker run hello-world`)
