#! /usr/bin/env bash

venv_dir=~/coding/DATASCIENNCE/playgr/.venv/bin/activate
dir=~/coding/DATASCIENNCE/playgr/nn_scratch/lab_AI_techn/lab2
notifier=/usr/local/bin/terminal-notifier

source $venv_dir
cd $dir

papermill augment_customer_data.ipynb augment_customer_data.ipynb
papermill lab_2_inference.ipynb lab_2_inference.ipynb


$notifier -title CustomerData -subtitle "Daily Updated" -message "Completed" -open "http://localhost:8000/home"
now=$(date)
echo "Cron job update completed at $now"
