# Cosmos Watches Manual Testing Document

## Test Cases

Below is a comprehensive list of test cases designed to cover key functionalities of the Cosmos Watches website. This includes navigation, user authentication, product catalog interaction, shopping cart management, and the checkout process.

| Test Case ID | Description                              | Steps                                                                 | Expected Result                                           | Status       |
|--------------|------------------------------------------|-----------------------------------------------------------------------|----------------------------------------------------------|--------------|
| TC-001       | Homepage loads correctly                 | 1. Navigate to the homepage URL                                       | Homepage is displayed with all elements correctly loaded | Pass         |
| TC-002       | Navigation bar works                    | 1. Click on each navigation link                                      | Each link navigates to the correct page                  | Pass         |
| TC-003       | User registration                        | 1. Navigate to the signup page<br>2. Enter user details<br>3. Submit  | User is registered and logged in                         | Pass         |
| TC-004       | User login                               | 1. Navigate to the login page<br>2. Enter credentials<br>3. Submit    | User is logged into their account                        | Pass         |
| TC-005       | User logout                              | 1. Click on the logout link                                           | User is logged out and redirected to the homepage        | Pass         |
| TC-006       | View product list                        | 1. Navigate to the products page                                      | List of products is displayed                            | Pass         |
| TC-007       | View product details                     | 1. Click on a product<br>2. View details                              | Product details are displayed                            | Pass         |
| TC-008       | Add product to cart                      | 1. View a product's details<br>2. Click add to cart                   | Product is added to the shopping cart                    | Pass         |
| TC-009       | View shopping cart                       | 1. Click on the cart icon                                              | Shopping cart page displays all added items              | Pass         |
| TC-010       | Update product quantity in cart          | 1. Add a product to the cart<br>2. Change quantity                    | Product quantity is updated in the cart                  | Pass         |
| TC-011       | Remove product from cart                 | 1. Add a product to the cart<br>2. Click remove                       | Product is removed from the cart                         | Pass         |
| TC-012       | Checkout process                         | 1. Add product to cart<br>2. Proceed to checkout<br>3. Enter details<br>4. Complete purchase | User completes purchase and receives confirmation        | Pass         |
| TC-013       | Search functionality                     | 1. Use the search bar to find products                                | Relevant search results are displayed                    | Pass         |
| TC-014       | Payment processing                       | 1. Complete the checkout process with a valid payment method          | Payment is processed successfully                        | Pass         |
| TC-015       | Blog section access                      | 1. Navigate to the blog section                                       | Blog posts are displayed                                 | Pass         |
| TC-016       | Read blog post                           | 1. Click on a blog post                                               | Full blog post content is displayed                      | Pass         |
| TC-017       | Responsive design check on mobile             | 1. Open the website on a mobile device                                                                                    | The website adjusts to the mobile screen size                                    | Pass         |
| TC-018       | Responsive design check on tablet             | 1. Open the website on a tablet                                                                                           | The website adjusts to the tablet screen size                                    | Pass         |
| TC-019       | SSL Certificate Validation                    | 1. Check the website URL                                                                                    | URL starts with `https` and browser shows a lock icon                               | Pass         |
| TC-020       | Input validation for forms                    | 1. Try to submit forms with invalid data                                                                    | Forms highlight errors and do not submit                                            | Pass         |
| TC-021       | Viewing blog posts                            | 1. Navigate to the blog section<br>2. Select a blog post to view                                            | The selected blog post is displayed with full content                               | Pass         |
| TC-022       | Attempting to comment on a blog post (Guest)  | 1. Navigate to a blog post as a guest (not logged in)<br>2. Attempt to enter a comment                       | The website prompts the user to log in or displays a message indicating the need    | Pass         |
| TC-023       | Admin editing a comment                       | 1. Log in as an admin<br>2. Navigate to the Django admin panel<br>3. Locate and edit a comment<br>4. Save    | The comment is updated with the new content                                         | Pass         |
| TC-024       | Admin deleting a comment                      | 1. Log in as an admin<br>2. Navigate to the Django admin panel<br>3. Locate and delete a comment             | The comment is deleted and no longer appears on the blog post                       | Pass         |
| TC-025       | Filtering products by category                | 1. Navigate to the products page<br>2. Use category filters                                                  | Only products belonging to the selected category are displayed                      | Pass         |
| TC-026       | Search functionality returns relevant results | 1. Use the search bar to search for a specific product or category                                           | The search results page displays relevant products                                   | Pass         |


<br>
<br>

## Detailed Testing for Authentication, Email Confirmations, and User Profile Management

This document outlines detailed test cases focusing on user authentication via Django allauth, email confirmations for various actions, and user profile management functionalities on the Cosmos Watches website.


| Test Case ID | Description                                           | Steps                                                                                                                     | Expected Result                                                                                   | Status       |
|--------------|-------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|--------------|
| TC-A001      | User Registration                                     | 1. Go to the signup page.<br>2. Enter required information.<br>3. Submit the form.                                        | User is registered and a confirmation email is sent.                                              | Pass         |
| TC-A002      | Email Confirmation for New Registration               | 1. Open the email received after registration.<br>2. Click the confirmation link.                                         | Email is confirmed, and user is redirected to the login page with a confirmation message.         | Pass         |
| TC-A003      | User Login                                            | 1. Go to the login page.<br>2. Enter user credentials.<br>3. Submit the form.                                             | User is logged in and redirected to the homepage or user dashboard.                               | Pass         |
| TC-A004      | Password Reset Request                                | 1. Go to the login page.<br>2. Click on the "Forgot password?" link.<br>3. Submit the email address form.                 | A password reset email is sent to the user's email address.                                       | Pass         |
| TC-A005      | Password Reset via Email                              | 1. Open the password reset email.<br>2. Follow the link to reset the password.<br>3. Enter a new password.                | Password is successfully reset, and user is redirected to the login page with a confirmation message. | Pass         |
| TC-A006      | Logout Functionality                                  | 1. While logged in, click on the logout link or button.                                                                   | User is logged out and redirected to the homepage.                                                | Pass         |
| TC-A007      | Viewing Order History                                 | 1. Log in and navigate to "My Profile".<br>2. Click on "Order History".                                                   | User can view a list of their past orders.                                                       | Pass         |
| TC-A008      | Viewing an Individual Order                           | 1. From the Order History, click on an order to view its details.                                                         | User can view the details of the selected order, including items, quantities, and total cost.    | Pass         |
| TC-A009      | Navigating from Order Details                         | 1. Within an order's detail view, use the provided buttons to navigate back to the profile or home.                       | Buttons correctly navigate the user back to their profile or the homepage.                       | Pass         |
| TC-A010      | Deleting User Profile                                 | 1. Navigate to "My Profile".<br>2. Select the option to delete the profile.<br>3. Confirm profile deletion.                | User's profile is deleted, and they are logged out and redirected to the homepage.               | Pass         |
| TC-A011      | Email Confirmation for Order Placement                | 1. Place an order.<br>2. Complete the checkout process.                                                                   | An order confirmation email is sent to the user's email address.                                  | Pass         |
| TC-A012      | Admin Editing a Comment Through Django Admin Panel    | 1. Log in as an admin.<br>2. Navigate to the Django admin panel.<br>3. Locate and edit a comment.<br>4. Save changes.     | The comment is updated with the new content.                                                     | Pass         |
| TC-A013      | Admin Deleting a Comment Through Django Admin Panel   | 1. Log in as an admin.<br>2. Navigate to the Django admin panel.<br>3. Locate and delete a comment.                       | The comment is deleted and no longer appears on the blog post.                                   | Pass         |
| TC-A014      | User Receives Email Notification for Support Contact  | 1. Use the contact form to send a message.<br>2. Submit the form.                                                         | User receives an email confirmation that their message was received.                              | Pass         |
| TC-A015      | Admin Receives Email for User Contact Form Submission | 1. A user fills out and submits the contact form on the website.                                                          | An email notification is sent to the admin detailing the user's message from the contact form.   | Pass         |

## Product Management Testing for Admin/Superuser

This section details the testing procedures for admin/superuser product management on the Cosmos Watches platform, ensuring comprehensive coverage of all functionalities involved in creating, reading, updating, and deleting (CRUD) products.

| Test Case ID | Description                                 | Steps                                                                                                                            | Expected Result                                                                                     | Status       |
|--------------|---------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|--------------|
| TC-P001      | Admin Adds a New Product                    | 1. Log in as an admin/superuser.<br>2. Navigate to the product management section.<br>3. Enter product details including price, SKU number, choose a category from the list, add a description, and upload a product image.<br>4. Submit the form. | New product is added with the specified details and visible on the website.                         | Pass         |
| TC-P002      | Admin Edits a Product                       | 1. Log in as an admin/superuser.<br>2. Navigate to the existing product list.<br>3. Select a product to edit.<br>4. Update details such as price, SKU, category, description, and product image.<br>5. Save changes.  | Product details are updated as specified, and changes are reflected on the website.                | Pass         |
| TC-P003      | Admin Views Product Details                 | 1. Log in as an admin/superuser.<br>2. Navigate to the existing product list.<br>3. Select a product to view its detailed information.                                                    | Detailed page for the selected product is displayed, showing all specified details.                | Pass         |
| TC-P004      | Admin Deletes a Product with Confirmation   | 1. Log in as an admin/superuser.<br>2. Navigate to the existing product list.<br>3. Click the delete option on a product.<br>4. In the confirmation modal, choose 'Delete'.                    | Product is deleted from the system after confirmation, and is no longer visible on the website.   | Pass         |
| TC-P005      | Admin Cancels Product Deletion              | 1. Log in as an admin/superuser.<br>2. Navigate to the existing product list.<br>3. Click the delete option on a product.<br>4. In the confirmation modal, choose 'Cancel'.                      | Deletion process is cancelled, and the product remains unchanged in the system.                   | Pass         |
| TC-P006      | Admin Clears/Removes Product Image          | 1. Log in as an admin/superuser.<br>2. Navigate to an existing product's edit page.<br>3. Use the option to clear/remove the current product image.<br>4. Save changes.                         | The product image is removed, and changes are reflected on the website.                            | Pass         |

These test cases aim to thoroughly verify the admin/superuser's ability to manage product inventory effectively, with specific attention to user experience aspects such as confirmation modals to prevent accidental deletions.

## Enhanced User Reviews and Ratings Testing

This section expands on user review functionalities, focusing on the unique rating system using rockets instead of stars, and the ability for users to add comments, upload images, and submit their reviews on the Cosmos Watches platform.

| Test Case ID | Description                                      | Steps                                                                                                                                                               | Expected Result                                                                                                                 | Status       |
|--------------|--------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|--------------|
| TC-R008      | Submitting a Review with Rocket Rating            | 1. Log in as a user.<br>2. Navigate to a product page.<br>3. Click on the "Write a Review" link/button.<br>4. Select a rocket rating from 0 to 5.<br>5. Enter review details and submit. | Review is successfully submitted with the selected rocket rating. The overall product rating is updated accordingly.             | Pass         |
| TC-R009      | Adding a Comment to Review                       | 1. Follow steps for TC-R008 to navigate to the review submission area.<br>2. In addition to the rocket rating, add a detailed comment in the review text area.                                | Review is successfully submitted with the user's comment visible under the product page's review section.                        | Pass         |
| TC-R010      | Uploading an Image with Review                    | 1. Follow steps for TC-R008, and before submitting, use the option to upload an image of the watch.<br>2. Select an image file and submit the review.                                        | Review is successfully submitted with the image displayed alongside the comment and rocket rating under the product's reviews.   | Pass         |
| TC-R011      | Editing a Review to Change Rocket Rating          | 1. Log in and navigate to a previously submitted review.<br>2. Click on "Edit" and select a new rocket rating.<br>3. Update any additional review details and save changes.                  | The review is updated with the new rocket rating and details. The overall product rating reflects this change.                   | Pass         |
| TC-R012      | Editing a Review to Add/Change Image              | 1. Log in and navigate to a previously submitted review without an image.<br>2. Click on "Edit" and use the option to upload or change the image.<br>3. Save changes.                         | The review is updated to include the new or updated image.                                                                       | Pass         |
| TC-R013      | Removing an Image from a Review                   | 1. Log in and navigate to a previously submitted review with an image.<br>2. Click on "Edit" and use the option to remove the existing image.<br>3. Save changes.                            | The review is updated, and the previously uploaded image is no longer displayed.                                                 | Pass         |
| TC-R014      | Viewing Reviews with Rocket Ratings and Images    | 1. Navigate to a product page.<br>2. Scroll to the reviews section or click on 'Reviews' in the navbar.                                                                                      | Reviews with rocket ratings and user-uploaded images are visible to all users, showcasing the community's feedback visually.     | Pass         |

This expanded testing suite is designed to comprehensively assess the functionalities surrounding the innovative rocket rating system and the enriched user review experience, including text comments and image uploads. These tests ensure that users can effectively share their experiences and feedback in a visually engaging and informative way, aligning with the Cosmos Watches brand identity.


## Additional Testing Areas

### Responsiveness

- **TC1: Responsiveness on Mobile Devices**
  - **Objective:** Ensure the website is responsive and functional on mobile devices.
  - **Steps to Reproduce:** Open the website on a mobile device or use a browser's mobile view feature.
  - **Expected Result:** The website adjusts to fit the screen size, with all features accessible and usable.

- **TC2: Responsiveness on Tablets**
  - **Objective:** Verify the website's responsiveness on tablet devices.
  - **Steps to Reproduce:** Open the website on a tablet device or simulate a tablet device in a browser.
  - **Expected Result:** The website content scales appropriately, and functionalities work as expected on tablet screens.

### Security

- **TC1: SSL Certificate Validation**
  - **Objective:** Confirm that the website is served over HTTPS and the SSL certificate is valid.
  - **Steps to Reproduce:** Check the website URL to ensure it begins with `https://` and look for the browser's security icon.
  - **Expected Result:** The website uses HTTPS, and the browser indicates that the connection is secure.

- **TC2: Input Validation and Sanitization**
  - **Objective:** Ensure that all input fields validate and sanitize user input to prevent SQL injection, cross-site scripting (XSS), and other common web vulnerabilities.
  - **Steps to Reproduce:** Attempt to enter malicious code snippets into form inputs and URLs.
  - **Expected Result:** The application either rejects the input, escapes special characters, or sanitizes the input to prevent execution of malicious code.

### Performance

- **TC1: Page Load Speed**
  - **Objective:** Test the loading speed of the website's pages.
  - **Steps to Reproduce:** Use tools like Google PageSpeed Insights to analyze the load times of various pages.
  - **Expected Result:** Pages load within an acceptable time frame, as defined by web performance best practices.

- **TC2: Stress Testing**
  - **Objective:** Determine how the website performs under heavy load.
  - **Steps to Reproduce:** Use load testing tools to simulate multiple users accessing the website simultaneously.
  - **Expected Result:** The website remains responsive and functional under simulated stress conditions.

## Conclusion

This manual testing guide aims to cover key functionalities of the Cosmos Watches website to ensure a seamless and secure user experience. Testers are encouraged to report any deviations from expected outcomes, as detailed in the reporting section. Continuous testing and improvement are essential to maintaining the quality and reliability of the Cosmos Watches online platform.
