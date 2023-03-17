# Install  dependencies 
from requirements.txt
ipython kernel install —user —name=<project_name>
# Acctivate venv
source ~/.venv/bin/activate

# Project is an example of data mining workflow
concepts used here is oversimplified for educational purposes

# Repo information
lab_2_base_model 
contains initial classification using xgboost
best hyperparameters were defiined by gridsearch
file saves model to xgb_classifier_from_greedsearch.pkl

lab2/lab_2_inference
contains an inference part
it takes most relevant data 
does prediction and saves plots to artifacts

augment_customer_data
it simulates data changes
distfit library used here to determine the distribution columns from dataset mirror
with find distribution 10 new records are added

webserver, home.html is additional utility to visualize plots


# Steps to use it
1. install terminal-notifier bash util
 $ brew install terminal-notifier
2. Modify cron.sh with paths relevant to your setup
3. execute cron.sh

As an additional enhancment you may add cronjob to execute chron.sh 
on some daily/weekly basis


$ whoami
$ sudo crontab -u {username} -e
add a linefor executable
crontab -l
15 * * * * ~/{path}/cron.sh > /tmp/stdout.log 2> /tmp/stderr.log
