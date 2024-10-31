# test-data-process-api
Mule application to process user data

# Overview
The Test Data Process API is a MuleSoft application designed to process user data and send it to third party for further processing. This API streamlines user data management and integrates with third party systems to ensure data consistency and accessibility.

# Feature
- **Process Data**: Take the input from user and process the data with some business logic and send it to third party for further processing and validation.

- **EndPoint** : /processData

- **Policy** : This API implemented client ID enforcement policy from Anypoint

# Prerequisites
- MuleSoft Anypoint Studio
- Mule Runtime (version 4.8.0)
- Anypoint platform and account
- PostMan
- Basic knowledge of RESTful APIs and MuleSoft concepts

# Installation

1. Clone the repository
   git clone https://github.com/puru-savi/test-data-process-api.git

2. Import into anypoint studio
   - Open Anypoint Studio.
   - Select File > Import.
   - Choose Anypoint studio project from File system and select the cloned repository.
  
3. Run the application locally
   - Right click on the project and select Run As > MuleSoft Application
   - Wait for the application to be deployed and up locally.
  
4. Alternatively you can deploy and run the application on CloudHub as well
   - Right click on the project and select Anypoint Platform > Deploy to CloudHub
   - Enter your username and password for anypoint when prompted
   - It will land to runtime manager page with all the information prefiled regarding your application
   - Click on Deploy button
   - Wait and check the logs until it deployed
  
# Testing

   - Open Postman and put below details
      - URL for local: http://localhost:8081/api/processData
      - URL for cloudHub: check your cloudhub url of deployed application and use it here
      - Method: POST
      - Body: {
    "id": "22",
    "name": "John Doe",
    "email": "john.doe@example.com"
}
   - Click on Send button
   - Validate the response from server

# Error Handling

The API return standarized error response in case of failures. Error response includes

- **ErrorCode 400**: In case of bad request
- **ErrorCode 503**: In case of service not available
