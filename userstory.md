# User Stories for Cosmos Watches

## Admin and Superuser Stories

### Admin User Story: Adding Products

**As an admin,**  
I want to add new products to the website,  
so I can expand the product offerings to customers.

#### Acceptance Criteria
- Logged in as admin, can view and add new products.
- Navigate to the "Add Product/manage products/dashboard" to add products.

#### Tasks
- Design "Add Product" page.
- Implement form for product details and submission.

---

### User Story 14: Deleting Products

**As an admin,**  
I want to delete products from the website,  
so I can remove items no longer available.

#### Acceptance Criteria
- Viewing the product list as admin, can delete a product.
- Product removed from the website after confirmation.

#### Tasks
- Add a "Delete" button with confirmation dialog.

---

### User Story 13: Editing Products

**As an admin/or superuser,**  
I want to edit existing product details,  
so I can update product information.

#### Acceptance Criteria
- Viewing the product list as admin, can edit a product.
- Modify product details and submit the changes.

#### Tasks
- Implement an "Edit Product" page with existing product details.

---

### User Story as Admin: Create Blog

**As a Superuser,**  
I want to create new blog posts,  
so I can share content with users.

#### Acceptance Criteria
- As a superuser, navigate to the create post interface to create a new blog post.

#### Tasks
- Develop an interface for superusers to create blog posts.

---

## Customer Stories

### User Story: Browsing Products

**As a Customer,**  
I want to easily browse through different categories of watches,  
so I can explore the variety of products.

#### Acceptance Criteria
- On the homepage, can navigate through different categories.

#### Tasks
- Implement category-based navigation.

---

### User Story: Adding Product Reviews

**As a customer,**  
I want to add reviews and ratings for products,  
so I can provide feedback.

#### Acceptance Criteria
- After purchasing a product, can submit a review with a rating.

#### Tasks
- Develop a system for customers to submit reviews.

---

### User Story: Viewing Personal Order History

**As a site user,**  
I want to view my personal order history,  
so I can track my past purchases.

#### Acceptance Criteria
- Logged in, navigating to my profile shows past orders.

#### Tasks
- Implement an order history section in the user profile.

---

### User Story: Adding Products to Cart and Checkout

**As a Customer,**  
I want to add products to my cart and checkout,  
so I can purchase selected items.

#### Acceptance Criteria
- Selected products can be viewed and edited in the shopping cart.

#### Tasks
- Develop functionality for a shopping cart and checkout process.

---

### User Story: Searching for Products

**As a Customer,**  
I want to use the search bar to find specific products,  
so I can quickly find what I'm looking for.

#### Acceptance Criteria
- Using the search bar presents relevant search results.

#### Tasks
- Integrate a search bar for filtering products.

---

### User Story: Viewing Product Details

**As a Customer,**  
I want to view detailed information about products,  
so I can make informed decisions.

#### Acceptance Criteria
- Clicking on a product shows detailed information.

#### Tasks
- Design a detailed product page layout.

---

### User Story: Shopping on Mobile Devices

**As a Customer,**  
I want the website to be responsive on mobile devices,  
so I can shop seamlessly on any device.

#### Acceptance Criteria
- The website provides a seamless shopping experience on mobile.

#### Tasks
- Ensure website design is responsive on mobile devices.

---

## General User Stories

### User Story: Seamless Account Management with Django allauth

**As a site user,**  
I want seamless and secure account management with Django's allauth,  
so my account is secure and easy to manage.

#### Acceptance Criteria
- Experience seamless account management processes.

#### Tasks
- Integrate Django's allauth for account functionalities.

---

### User Story: View Blog and Comment as Registered User

**As a User,**  
I want to view blog posts and comment,  
so I can engage with content and community.

#### Acceptance Criteria
- As a user, can view blog posts and, if registered, comment on them.

#### Tasks
- Develop a homepage with blog post feed and comment functionality.

---

### User Story: Securing Personal and Payment Information

**As a Customer,**  
I want my information to be encrypted and securely processed,  
so I can protect my privacy and security when making a purchase.

#### Acceptance Criteria
- Personal and payment information is encrypted and securely processed during purchase.

#### Tasks
- Integrate Stripe's payment processing API for secure transactions.
- Conduct thorough testing with Stripe's test mode to ensure security.

---

## Additional User Stories

### User Story: Adding Products to Cart and Checkout

**As a Customer,**  
I want to be able to add products to my cart and proceed through the checkout process,  
so I can purchase the items I have selected.

#### Acceptance Criteria
- Can view a summary of selected items and enter shipping and payment information at checkout.

#### Tasks
- Develop functionality to add products to the shopping cart.
- Implement a checkout process that includes forms for payment and shipping information.

---

### User Story: Searching for Products

**As a Customer,**  
I want to use the search bar to find specific types of watches or accessories,  
so I can find exactly what I am looking for quickly.

#### Acceptance Criteria
- Presented with relevant search results when using the search bar.

#### Tasks
- Integrate a search bar in the website header.
- Create search functionality to filter products based on keywords.

---

### User Story: Editing Products

**As an admin/or superuser,**  
I want to edit existing product details,  
so I can update product information such as price, description, and images.

#### Acceptance Criteria
- Can modify product's details and submit the changes as an admin.

#### Tasks
- Implement an "Edit Product" page with form pre-populated with existing details.

---

### User Story: Viewing Product Details

**As a Customer,**  
I want to view detailed information about each product,  
so I can make informed purchasing decisions.

#### Acceptance Criteria
- Taken to a detailed product page with comprehensive information upon clicking a product.

#### Tasks
- Design and develop a detailed product page layout.

---

### User Story: Shopping on Common Mobile Devices

**As a Customer,**  
I want the website to be fully responsive on mobile devices,  
so I can have a seamless shopping experience on any device.

#### Acceptance Criteria
- The website is responsive and provides a seamless shopping experience on mobile devices.

#### Tasks
- Test website navigation, product browsing, and checkout process on various screen sizes.

<br>
<br>

## Agile Methodology Adapted for Solo Development

In the development of the Cosmos Watches website for my school project at Code Institute, I adapted Agile methodology principles to suit a solo project environment. This approach enabled me to manage my workload effectively, prioritize tasks, and adapt to changes and feedback dynamically, ensuring a disciplined yet flexible development process.

### Agile Practices for Solo Development

- **Sprints**: I organized my work into one-week sprints, setting achievable goals for each sprint that aligned with the project milestones. This structure allowed me to maintain focus and momentum, ensuring consistent progress.

- **Kanban Board**: Utilizing a Kanban board on GitHub, I visualized my workflow, tracking tasks from "To Do," through "In Progress," to "Done." This tool was instrumental in managing my workload and prioritizing features and bug fixes.
  - **Project Backlog Link**: [Cosmos Watches Project Backlog](https://github.com/users/Bryaro/projects/5/views/1)

- **User Stories**: The development was driven by user stories that I created to represent the needs and goals of the end-users. This approach ensured that the website's features were developed with the users' experiences and satisfaction in mind.

- **Regular Reviews and Adaptation**: At the end of each sprint, I conducted a review of what was accomplished, assessed the current backlog, and adjusted plans based on what was learned. This self-reflection helped me stay aligned with project goals and adapt to any challenges or new insights.

- **Continuous Learning and Improvement**: The solo application of Agile allowed me to reflect on my personal workflow and efficiency continuously. I identified areas for improvement in my development practices and iteratively enhanced my approach to problem-solving and project management.

### Reflecting on the Learning Curve

Adopting Agile methodologies as a student was both enlightening and challenging. While it empowered me to tackle project management systematically, I encountered hurdles, particularly with time tracking and the discipline required to update task statuses regularly. There were instances when tasks completed were not promptly moved to "Done," which occasionally affected my perception of progress and time management.

This experience has been a valuable part of my learning journey, highlighting the importance of not just planning and execution but also the rigor of tracking and reflection. It taught me the significance of discipline in project management and the continuous effort needed to improve workflows and productivity. As I move forward, these lessons will be instrumental in refining my approach to both solo and collaborative projects.

### Impact of Agile on Solo Development

Since I was working alone on the Cosmos Watches project, I had to use the Agile method by myself. This was actually a good thing. It helped me organize my work better and make sure I was always moving forward, keeping the project's quality high. Even though Agile is usually used by teams, I found it really useful for working alone too. It helped me adjust when things changed and made sure I kept my project on the right track. Working with others is great, but this experience showed me that Agile can work well for just one person, too.
