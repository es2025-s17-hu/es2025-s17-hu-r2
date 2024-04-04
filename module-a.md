# Module A - DineEase Backend

## Description of the Module
In this module you need to create the prototype of the backend of the DineEase service. The backend will provide data to the admin application managed by the DineEase staff and to the web application providing the service.

The data served by the backend is stored in a MySQL database. The database is accessed at db.dineease.com, port 3306, with the username and password provided.  The name of the database is `dineeasy_YYYY`, where `YYYY` is the four-digit pin.

The database is currently empty. Use the givem SQL dump in `assets/module-a/dineeasy.sql` to import the data.

## Data Conversation Task
Before building the backend, the company wants to test your data management skills in a separate exercise. An `assets/module-a/allUsers.json`file contains the data of all registered users. If a user is a restaurant owner, his record contains his registered restaurants and the restaurant records contain the ratings given to the restaurant. Based on allUsers.json, create separate json files corresponding to the entities in the database with the following names: 
- restaurants.json
- reviews.json
- users.json
- roles.json
- plans.json
Store these files in the `/jsons` folder of your backlend repo.

## Backend Task
The details of the endpoints implemented by the backend are contained in the `assets/module-a/dineeasy.yaml` file in OpenAPI format. 



