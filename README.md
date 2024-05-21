# HR Analytics

HR Analytics is an automated pipeline to provide graph analytics created using Neo4j with synthetic data generation, enabling a staging version for testing that is done in Python.

## Prerequisites
1. **Conda-based Workspace:** This project requires a Conda-based workspace. If you don't have Conda installed, you can download it from [here](https://docs.conda.io/projects/conda/en/latest/user-guide/install/).

2. **Neo4j Instance:** This project requires a running Neo4j instance. Follow the instructions [here](https://neo4j.com/developer/get-started/) to get a Neo4j instance running.

3. **Google Cloud Platform (GCP):** This project uses Google Drive. Follow the instructions [here](https://cloud.google.com/resource-manager/docs/creating-managing-projects) to create a project in GCP that uses Google Drive. After creating the project, you need to create a client for the project. Follow the instructions [here](https://cloud.google.com/docs/authentication/getting-started) to create a client.

## Installation

1. Create a Conda Environment:

Create a Conda environment using the provided environment.yaml:

```bash
conda env create -f environment.yaml
```

2. Provide Client Secrets:

You need to provide the client secrets in `secrets/client_secrets.json`. Replace the placeholders in the file with your actual client secrets.

3. Provide Neo4j Database Details:

You need to provide the Neo4j database details in the `.env` file. Replace the placeholders in the file with your actual database details.

4. Specify Data Lake Folder:

Specify a folder in the Google Drive root for the data lake folder name. Replace the placeholder in the `DATA_LAKE_FOLDER` variable in the `.env` file with your actual folder name.