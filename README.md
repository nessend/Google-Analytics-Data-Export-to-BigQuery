# Google Analytics Data Export to BigQuery

This Python script extracts data from Google Analytics and loads it into Google BigQuery. Big thanks to gpt4 for helping with the documentation <3

## Table of Contents
1. [Pre-requisites](#pre-requisites)
2. [Setup Instructions](#setup-instructions)
3. [Running the Script](#running-the-script)

## Pre-requisites

To use this script, you will need:

1. Python 3.7 or higher installed on your machine. You can download Python from the official website [here](https://www.python.org/downloads/)
2. A Google Cloud account with a project where you have permissions to create and manage BigQuery datasets and tables.
3. Access to a Google Analytics account and view, with a service account that has permissions to read data from this view.
4. A service account key file (in JSON format) for authenticating your requests to the Google Analytics API and Google BigQuery.
5. The `google-api-python-client`, `google-auth`, `google-cloud-bigquery`, and `google-auth-httplib2` Python libraries installed in your Python environment.

## Setup Instructions

Follow these steps to set up your environment:

### Install the Required Python Libraries

Run the following command in your terminal to install the necessary Python libraries:

```shell
pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib google-auth google-cloud-bigquery
```

### Set Up Your Google Cloud and Google Analytics Access

1. In the Google Cloud Console, create a new project (or select an existing one).
2. Enable the Google Analytics API and BigQuery API for your project.
3. Create a service account for your project in the IAM & Admin section, and generate a JSON key file for this account.
4. In the IAM section, give your service account the roles of "BigQuery Data Editor" and "BigQuery Job User" (for BigQuery access), and "Viewer" role (for Google Analytics access).
5. In your Google Analytics account, add the service account email as a user with Read & Analyze permissions at the view level.

### Set Up Your Config JSON Files
Each config.json file should be in the following format (with your values):

```
{
    "SERVICE_KEY_PATH": "Your Service Key.json",
    "VIEW_ID": "Your Google Analytics View Id",
    "PROJECT_ID": "Your GCP Project",
    "DATASET_ID": "Your dataset id"
}
```


### Customize your reports (optional)

Edit the report_requests list to include the Google Analytics reports you want to export, specifying the metrics and dimensions for each report.

## Running the Python Script

To run the script, navigate to the directory containing the script in your terminal and run the command:

```shell
python script.py --config "config.json"
```

## Running the run_reports.sh

If you have multiple google analytics properties or views to export to BigQuery, you can create multiple configX.json files and list them out in the bash script.

Then you can run them all at once and go do something else:

```
chmod +x run_reports.sh
./run_reports.sh
```
