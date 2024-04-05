# Module B - DineEase Admin

<!-- - Login page (there is no fully functional endpoint, only get all users, simulate logging process)
- Menu (Restaurants, Users, Reviews, Logout)
- Restaurants page: list retaurants (paging) with their brief data (name, city, countryCode, address, average review rating)
- Users page: list restaurant owner users with their brief data (name, e-mail, isEnabled), show details (brief + plan, frequency of payment)+ when click and can change isEnabled
- Reviews page: list reviews (name of the restaurant, city, country code, name of the reviwer, rating) sorted by createdAt desc, review text show as accordion, delete button at the end of the row
- Logout (simulate) -->

## Description of the Module
This module requires competitors to develop an admin application for DineEase staff, utilizing the backend developed in Module A. The admin application is a crucial tool for managing data related to restaurants, users, and reviews. It includes several key features and pages, each serving a specific administrative function.

The admin app should be designed with a user-friendly interface and provide efficient navigation through its various functionalities. Below are the detailed descriptions of the different subtasks involved in this module.

### Login Page
- **Objective**: Create a login page for DineEase staff. Although there is no fully functional authentication endpoint available, simulate the login process using the "get all users" endpoint from Module A.
- **Tasks**:
  - Design a login form with fields for username (email) and password.
  - Check that the username user entered matches the email address format and that the password at least 4 characters long.
  - On form submission, fetch the list of users and simulate authentication. If the user exists with the specified email address and their role is admin, then consider the user logged in. Otherwise the following error message should display: "Incorrect username or password"
  - Redirect authenticated users to the Restaurants page menu.

### Menu
- **Objective**: Implement a navigation menu with links to the main sections of the admin app: Restaurants, Users, Reviews, and Logout.
- **Tasks**:
  - Design a menu accessible throughout the admin app.
  - Ensure easy navigation to the Restaurants, Users, Reviews pages, and a Logout option.

### Restaurants Page
- **Objective**: List restaurants with pagination, displaying brief data for each restaurant.
- **Tasks**:
  - Fetch and display a list of restaurants showing name, city, countryCode and average of ratings from reviews.
  - Implement pagination to manage the display of a large number of restaurants. Maximum number of items per page is 10.
  - Design the UI for clarity and ease of use.

### Users Page
- **Objective**: List restaurant owner users and provide functionality to view detailed information and update user status.
- **Tasks**:
  - Display a list of users showing their name, e-mail, and whether they are enabled or disabled.
  - Allow staff to click on a user to view detailed information, including their subscription plan and payment frequency.
  - Provide an option to change the user's enabled status.

### Reviews Page
- **Objective**: Display reviews sorted by creation date, with additional restaurant and reviewer information.
- **Tasks**:
  - List reviews showing the restaurant's name, city, country code, reviewer's name, rating, and review text.
  - Sort reviews by the date of creation in descending order.
  - Implement an accordion view for the review text to save space and improve readability.
  - Include a delete button for each review, allowing staff to remove inappropriate content.

### Logout
- **Objective**: Simulate a logout process for the admin application.
- **Tasks**:
  - Implement a logout mechanism that, when triggered, redirects the user back to the login page.
  - Ensure that the logout process is intuitive and accessible from the navigation menu.

