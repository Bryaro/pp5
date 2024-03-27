# Cosmos Watches

Welcome to Cosmos Watches, a Django-based web application that brings the universe to your wrist with our exclusive collection of space-themed timepieces. Explore our premium collections including Neptune, Jupiter, BigBang, and more, and discover your universe on your wrist today.
git co
This website is easy to use on any device, like your phone or computer, making sure everyone can have a good look around. It's safe to make an account, and once you do, you can keep track of what you buy and look at your past orders. Shopping is fun and straightforward here. You can add watches to a cart, check out securely, and even manage products if you're the admin/superuser.

Besides shopping, there's also a section for blogs. This part has the latest news and cool stories about space and watches. You can learn a lot here and even leave reviews for the watches you buy to help others decide.

Social media is a big deal for Cosmos Watches. I use their real Facebook and Instagram pages to talk to customers and share cool stuff since I earlier been the ownder of the Cosmos Watches Sweden, and this is making the website to feel more personal and connected to what people like.

In short, the Cosmos Watches Sweden website is more than just a place to buy watches. It's a way to explore space themes through watches, get involved with the brand, and enjoy a smooth and secure shopping experience.

## Live Demo

Visit the live demo on Heroku: [Cosmos Watches Live Demo](https://pp5-bryar-475062670c00.herokuapp.com/)
![](/documentation/homepage.png)
---
![](/documentation/responsive_views.png)

### Responsiveness Testing
The website's responsiveness across different devices was tested using TechSini’s Multi Device Website Mockup Generator. You can perform similar tests by visiting [Multi-Mockup](https://techsini.com/multi-mockup/).

# Table of Contents
1. [Welcome to Cosmos Watches](#cosmos-watches)
2. [Live Demo](#live-demo)
3. [Features](#features)
4. [Technologies Used](#technologies-used)
5. [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
6. [Deployment Guide](#deployment-guide)
7. [Usage Instructions](#usage-instructions)
8. [E-commerce Business Model and Marketing Strategies](#e-commerce-business-model-and-marketing-strategies)
9. [Data Schema Description](#data-schema-description)
10. [Testing](#testing)
    - [Additional Quality Assurance Tests](#additional-quality-assurance-tests)
11. [User Story](#user-story)
12. [Marketing](#marketing)
13. [Color Scheme](#color-scheme)
14. [Contribution Guidelines](#contribution-guidelines)
15. [Acknowledgments](#acknowledgments)



## Features

- **Responsive Web Design:** Ensures the website is accessible and visually appealing on any device, from desktops to smartphones.
- **User Authentication:** Secure login and registration functionalities for users to manage their profiles and view personal order history.
- **E-commerce Functionality:** Including a shopping cart and checkout system, allowing users to browse, add products to their cart, and securely complete their purchases.
- **Product Management:** Admin panel for adding, editing, and deleting products, facilitating easy management of product listings.
- **Order history:** Enables user to view order history.
- **Blog Section:** For the latest news, updates, and informative articles about watches and space exploration, enhancing engagement with the brand.
- **Product Reviews and Ratings:** Customers can leave reviews and rate products they've purchased, aiding others in making informed decisions.
- **Search Functionality:** Users can easily find products through a search bar, improving the shopping experience.
- **Detailed Product Pages:** Offering comprehensive information, including images, descriptions, specifications, and customer reviews.
- **Secure Payment Processing:** Integrates Stripe for safe and secure payment transactions.
- **Personal and Payment Information Encryption:** To protect user privacy and enhance security during transactions.
- **Social Media Integration:** For marketing and user engagement, including direct links to Facebook and Instagram.
- **Email Newsletter Subscription:** Allowing users to subscribe to updates, offers, and news etc.

![](/documentation/website_header.png)

The website's header prominently features the Cosmos Watches logo, emphasizing its focus on space-themed timepieces. It includes navigation links to different sections such as Collections, Accessories, Sale, and more, offering users a clear path to explore products, special offers, and additional content. The header is designed to be both visually appealing and functional, ensuring easy access to various parts of the site while highlighting the brand's unique theme.

---

![](/documentation/website_footer.png)
The footer typically contains practical information and additional navigation links, such as contact details, FAQs, about the company, terms of service, privacy policy, and social media links. This section is essential for user support, legal information, and connecting with the brand on various platforms.

---

![](/documentation/website_shoppingcart.png)
This section displays the user's selected items for purchase. Currently, it indicates that the cart is empty and provides an option to "Keep Shopping," which likely redirects users back to the product pages to continue browsing.

---
Checkout form:
![](/documentation/website_checkout_form.png)
with pre-filled registered email

---

![](/documentation/website_shoppingcart.png)
This section displays the user's selected items for purchase. Currently, it indicates that the cart is empty and provides an option to "Keep Shopping," which likely redirects users back to the product pages to continue browsing.

---

![](/documentation/website_basket.png)
When a product is added to the basket, the cart page displays the item(s), including details such as product name, quantity, price, and the total amount. It offers options to adjust the quantity, remove items, continue shopping, or proceed to checkout. The layout is designed to provide a clear summary of what's been selected for purchase, making it easy for users to review and manage their choices before finalizing their order.

---

Payment and order confirmed:
![](/documentation/website_shopping_confirmed.png)
When the payment is confirmed

---

User Profile:
![](/documentation/website_profile.png)

---

View order:
![](/documentation/website_vewed_specific_order_hsitory.png)

---
Products:
![](/documentation/website_product.png)
The products page on the Cosmos Watches website lists various space-themed timepieces and accessories. Items like the "Mars," "Phobos," and "Deimos" watches are featured, each with a price and customer rating. The page includes a sorting feature allowing viewers to organize products by price or rating. Accessories such as the "Cosmos Slide Card Holder" and "PYRAMID - Unisex cuff" are also available, showcasing a variety of options for customers interested in space-themed fashion.

---
Product Info:
![](/documentation/website_product_info.png)
The specific product page for the "Mars" watch at Cosmos Watches provides details about this space-themed timepiece. Inspired by the red planet, it features a robust design with a red dial and a durable case reflecting Mars' rugged terrain. It is marketed towards those with an adventurous spirit, priced at 1250.00 SEK, and has a customer rating of 5.00 out of 5.

---
Add review:
![](/documentation/website_add_review.png)
The page for adding a review for the "Mars" watch at Cosmos Watches is a login portal. To submit a review, users must first log in with their account credentials. This ensures that reviews are posted by verified users or purchasers, maintaining the authenticity of feedback on the website.

---
Product Reviews
![](/documentation/website_current_product_reviews.png)
Once a review is submitted for a product like the "Mars" watch on Cosmos Watches, it becomes visible on the product's page. This allows future customers to see real feedback from users who have purchased and experienced the watch, aiding them in making an informed decision.

---
All Reviews
![](/documentation/website_all%20reviews.png)
The reviews page on the Cosmos Watches website showcases customer feedback on various products. Reviews feature ratings, represented by filled rocket icons, and brief comments praising the products, such as watches and accessories, for their quality, design, and functionality. The page provides potential buyers with insights from previous customers, helping them make informed decisions about their purchases.

---
Blog:
![](/documentation/website_blog.png)
 The blog section contains articles related to space and time, aimed at enriching the reader's knowledge and connecting them to the thematic essence of the Cosmos Watches brand.

One of the added post by superuser/admin: The blog post "Battery Replacement Guide for Cosmos Watches Sweden" offers a comprehensive tutorial on changing the battery of Cosmos watches, covering necessary tools, detailed steps for different back types, and advice on workspace setup, handling the battery safely, and disposal of the old battery. It also mentions the option of professional assistance for those who prefer it. Users can leave comment.

---
Blog comments:
![](/documentation/website_blog_comment.png)
The comment section beneath the blog post allows readers to share their thoughts, questions, or experiences related to the content of the "Battery Replacement Guide for Cosmos Watches Sweden." It's a space for community engagement and interaction with the brand, providing valuable feedback and additional insights.

---

![](/documentation/website_blog.png)
The comment section beneath the blog post allows readers to share their thoughts, questions, or experiences related to the content of the "Battery Replacement Guide for Cosmos Watches Sweden." It's a space for community engagement and interaction with the brand, providing valuable feedback and additional insights.

---

![](/documentation/website_FAQ.png)
The FAQ section of the Cosmos Watches website provides answers to general questions about the brand's watch origin, uniqueness, return policy, shipping, and care instructions. It emphasizes the Swedish design, global material sourcing

---

![](/documentation/website_contact.png)
The contact page on the Cosmos Watches website provides a simple form for visitors to fill out their name, email, and message to reach out to the brand directly. It's designed for customer inquiries, feedback, or any other communications users wish to have with the company. 

---

![](/documentation/website_message_sent.png)
When the contact form on the website is submitted, the server processes the submitted information to send an email with the sender's name, email address, and message content to the designated recipient email set in the website's settings. Upon successful email dispatch, a success message is displayed to the user, confirming the message has been sent, and then redirects the user to the home page. This process provides a straightforward way for users to communicate with the site administrators or support team.

---

![](/documentation/website_add_product.png)
same page if scrolled down
![](/documentation/website_exising_products.png)
The product addition page on the Cosmos Watches website is designed for administrators to add new items to their catalog. This function is integral for maintaining and updating the product offerings, in the futre even ensuring the website reflects the latest inventory. Access is restricted to ensure that only authorized(superuser/admin) personnel can make changes to the product listings, safeguarding the integrity of the website's content. For detailed operations, users must log in with the appropriate credentials.

![](/documentation/website_delete_product.png)

---

![](/documentation/website_edit_product.png)
The page for editing a product at the provided URL requires user authentication, indicating that modifications to product details are restricted to authorized users. This setup ensures that product information, such as descriptions, pricing, and images, can be updated or corrected by administrators or staff, maintaining the accuracy and relevance of the website's offerings. For access to this feature, appropriate login credentials are necessary.

---
subscribed:
![](/documentation/subscribed.png)

---
mailChimp:
![](/documentation/mailChimp.png)
This is an interface from the Mailchimp service, which is a marketing automation platform and an email marketing service. In the context of the Cosmos Watches website, when users subscribe to the site, their information is automatically saved in the Mailchimp audience list. This allows the website's superuser and admin to manage subscriber information, create segments for targeted campaigns, and handle communications effectively. This integration allows for streamlined communication and marketing efforts, directly reaching out to interested users with updates, promotions, and more.

---
Warning before deleting account:
![](/documentation/website_delete_Account.png)

---

Warning before deleting Product:
![](/documentation/website_delete_product.png)

### Wireframe balsamic
Main
![](/documentation/balsamic_MAIN.png)

Products
![](/documentation/balsamic_Products.png)

Products Info
![](/documentation/balsamic_Product_Info.png)

Shopping Cart
![](/documentation/balsamic_Shopping_cart.png)

Pay Now
![](/documentation/balsamic_paynow.png)

Payment Confirmation
![](/documentation/balsamic_pay_confirm.png)

Profile Page:
![](/documentation/balsamic_Profile_Page.png)

Order History
![](/documentation/balsamic_Order_history.png)

CRUD Product:
![](/documentation/balsamic_CRUD_product.png)

Edit Product:
![](/documentation/balsamic_edit_product.png)

---

Delete Account:
![](/documentation/balsamic_delete_Account.png)

# Data Schema Description

The data schema for the application encompasses several key models: `User`, `Category`, `Post`, `Comment`, `Order`, `OrderLineItem`, `Product`, and `Review`. Below is a brief overview of each model and its relationships.

## Models and Relationships

![](/documentation/database_scheme.png)

- **User**: Represents users of the application. Users can author posts (`Post`), make comments (`Comment`), place orders (`Order`), and write reviews (`Review`).

- **Category**: Categories can be associated with both blog posts (`Post`) and products (`Product`). This model facilitates grouping of posts and products into distinct categories.

- **Post**: Blog posts authored by users. Each post can belong to multiple categories and has an `author`(superuser/and or admin) linking back to the `User` model.

- **Comment**: Comments made on blog posts. Each comment is associated with a `Post` and a `User`.

- **Order**: Orders placed by users, containing various `OrderLineItem`s. An order is linked to the user who placed it.

- **OrderLineItem**: Represents individual items within an order. Each line item is linked to a `Product` and an `Order`.

- **Product**: Products available for purchase. Each product belongs to a category and can have multiple reviews.

- **Review**: Reviews written for products by users. Each review is linked to a `Product` and a `User`.

This schema allows for a comprehensive representation of the application's data, supporting features like blogging, commenting, e-commerce, and user feedback.

## Technologies Used

- **HTML**: For structuring the web pages and laying out content.
- **CSS**: For styling the web pages and customizing the look and feel.
- **JavaScript**: For interactive elements on the website, enhancing user experience.
- **Python + Django**: Python as the programming language with Django as the web framework to handle backend operations, including data manipulation, URL routing, and server-side logic.
- **PostgreSQL**: As the primary database system to store and manage application data efficiently.
- **Bootstrap 4**: For responsive design, making the website mobile-friendly and accessible across all devices.
- **Stripe**: Integrated for secure online payment processing.
- **AWS S3**: Used for storing static and media files in the cloud, ensuring fast access and scalability.
- **Heroku**: As the cloud platform service for hosting the web application, allowing it to be accessible on the internet.
- **Mailchimp**: For managing email marketing campaigns, newsletters, and automated messages to engage with users and promote the brand effectively.
- **Gunicorn**: A Python WSGI HTTP Server for UNIX, used to serve Python applications from Heroku.
- **Git**: For version control, tracking changes in source code during development.
- **GitHub**: Hosting the project repository and facilitating code management and collaboration.
- **ElephantSQL**: An add-on for providing a managed PostgreSQL database service, making database management simpler.
- **dj-database-url**: A Django utility allows you to utilize the `DATABASE_URL` environment variable to configure your Django application's database.
- **Psycopg2**: A PostgreSQL adapter for Python, enabling Django applications to interact with PostgreSQL databases.
- **Grammarly**: Utilized to check and improve the spelling, grammar, and clarity of the project's documentation and code comments.
- **Chrome DevTools**: Used for debugging, optimizing, and ensuring the responsiveness of the web pages.
- **Adobe Photoshop**: Used for designing and creating the logo, enhancing the visual identity of the website.


## Design and Visual Resources

**Canva**: A user-friendly graphic design tool that played a crucial role in the creation of our homepage image and other visual elements throughout the site. Canva enabled us to design custom, eye-catching graphics that embody the essence of Cosmos Watches, contributing significantly to our site's aesthetic appeal and user experience.

**Flaticon**: Our go-to resource for icons, where we sourced the rocket icon used across the website. Flaticon offers an extensive collection of icons, allowing us to add intuitive, thematic visual cues that enhance site navigation and the overall visual language of Cosmos Watches.

These design and visual resources have been instrumental in bringing the thematic elements of Cosmos Watches to life, ensuring that our platform is not only functional but also visually engaging and aligned with our cosmic theme.

These technologies and tools represent a robust stack for developing, deploying, and managing a dynamic, data-driven web application like Cosmos Watches.


<br>

## Getting Started

### Deployment Guide:

### Hosting and Deployment Overview

The project is managed via GitHub for version control and is deployed on Heroku, a cloud platform service that supports Python applications. Since GitHub Pages only serves static files and cannot execute Python, Heroku is used to host the full application, including its Django backend.

### Heroku Deployment and Setup

#### Initial Setup on Heroku

1. **Heroku Account**: Create a new account or log into an existing account at [Heroku](https://www.heroku.com/).
2. **Heroku CLI**: If not already installed, install the Heroku Command Line Interface (CLI) by running `curl https://cli-assets.heroku.com/install.sh | sh` in your terminal.
3. **Login via CLI**: Authenticate your Heroku CLI with `heroku login -i`.

#### Database Setup with ElephantSQL

1. **ElephantSQL Account**: Visit [ElephantSQL](https://www.elephantsql.com/) and log in or sign up.
2. **Create New Instance**: Click "Create New Instance".
3. **Instance Configuration**:
    - Name your instance (typically, the project name).
    - Choose "Tiny Turtle" for a free plan.
    - Select a data center close to you.
    - Review and create your instance.

#### Creating and Configuring Heroku App

- **Via Heroku CLI**:
    - Create an app: `heroku apps:create your-app-name --region eu`.
    - Check your apps: `heroku apps`.
    - Verify remotes: `git remote -v`.

- **Via Heroku Dashboard**:
    - Click "New" > "Create new app".
    - Assign a unique app name and select the nearest region.

#### Database Connection on Heroku

- Navigate to your app's "Settings" on Heroku.
- Under "Config Vars", add `DATABASE_URL` with the ElephantSQL database URL as its value.

### Installing Project Dependencies

- **Database URL and psycopg2**: Run `pip3 install dj-database-url==0.5.0 psycopg2` and update `requirements.txt` with `pip3 freeze > requirements.txt`.
- Modify `settings.py` to use `dj_database_url` to parse `DATABASE_URL`.

### Preparing Deployment

1. **Database Configuration**: In `settings.py`, configure the database to use `DATABASE_URL` in production and `db.sqlite3` locally.
2. **Gunicorn**: Install with `pip3 install gunicorn` and update `requirements.txt`.
---
<details>
<summary><b>Project Requirements</b> (click to expand)</summary>
<br>

asgiref==3.7.2

boto3==1.34.50

botocore==1.34.50

dj-database-url==0.5.0

Django==5.0.2

django-allauth==0.61.1

django-countries==7.2.1

django-crispy-forms==1.14.0

django-rated-reviews==1.0.1

django-storages==1.14.2

gunicorn==21.2.0

jmespath==1.0.1

oauthlib==3.2.2

pillow==10.2.0

psycopg2==2.9.9

PyJWT==2.8.0

python3-openid==3.2.0

pytz==2024.1

requests-oauthlib==1.3.1

s3transfer==0.10.0

sqlparse==0.4.4

stripe==8.4.0

urllib3==2.0.7

3. **Procfile**: Create a `Procfile` with `web: gunicorn your_project_name.wsgi:application`.
4. **Static Files**: Set `DISABLE_COLLECTSTATIC=1` in Heroku's config vars to disable automatic `collectstatic`.
5. **Allowed Hosts**: Add your Heroku app's hostname to `ALLOWED_HOSTS` in `settings.py`.

</details>

---

### Deploying to Heroku

1. **Connect GitHub and Heroku**: In your Heroku app's "Deploy" tab, link your GitHub repository and enable automatic deploys.
2. **Manual Deployment**: If preferred, push changes to Heroku using `git push heroku main`.

### GitHub Integration

- **Repository Setup**: Log into GitHub, create a new repository, and follow the instructions to push your local project to GitHub.
- **Forking**: To fork the repository, click the "Fork" button on the original repository's page.
- **Cloning**: Clone the repository:
   ```sh
   git clone https://github.com/Bryaro/pp5.git

For the Cosmos Watches project, the application is accessible at [https://pp5-bryar-475062670c00.herokuapp.com/](https://pp5-bryar-475062670c00.herokuapp.com/), and the source code is hosted on GitHub at [https://github.com/Bryaro/pp5](https://github.com/Bryaro/pp5).

---

## Stripe Setup

To integrate Stripe payments into your Django project, follow these steps:

1. **Create a Stripe Account**: Sign up at [stripe.com](https://stripe.com) if you haven't already.

2. **Obtain API Keys**: From your Stripe dashboard, navigate to the Developers > API keys section to find your Publishable Key and Secret Key.

3. **Configure Environment Variables**: Store your API keys and webhook secret (`STRIPE_PUBLIC_KEY`, `STRIPE_SECRET_KEY`, `STRIPE_WH_SECRET`) in environment variables for security. This can be done in a `.env` file or directly in your environment's configuration, depending on your setup.

4. **Update `settings.py`**: Ensure your project's `settings.py` includes these environment variables as shown below:

   ```python
   STRIPE_PUBLIC_KEY = os.getenv('STRIPE_PUBLIC_KEY', '')
   STRIPE_SECRET_KEY = os.getenv('STRIPE_SECRET_KEY', '')
   STRIPE_WH_SECRET = os.getenv('STRIPE_WH_SECRET', '')

---

## Integrating Stripe Webhooks

Stripe webhooks are essential for real-time notifications about Stripe events. This project includes a robust implementation for handling Stripe webhook events, ensuring that actions like successful payments, failed payments, and other significant events are processed accordingly.

### Overview

The webhook implementation consists of two main components:

- **Webhook Handler (`webhook_handler.py`)**: A class responsible for defining specific actions based on different types of webhook events received from Stripe. It includes methods for handling events such as `payment_intent.succeeded`, `payment_intent.payment_failed`, and any unhandled events.

- **Webhook Receiver (`webhooks.py`)**: A Django view that listens for incoming webhook events from Stripe, verifies their authenticity, and dispatches them to the appropriate handler methods defined in the `StripeWH_Handler` class.

### Setup Instructions

To set up Stripe webhooks for your project, follow these steps:

1. **Configure Stripe API Keys**: Ensure you have set the `STRIPE_SECRET_KEY` and `STRIPE_WH_SECRET` in your environment variables. These are crucial for interacting with the Stripe API and verifying webhook signatures.

2. **Create a Webhook Endpoint on Stripe**: Log in to your Stripe dashboard and navigate to the Developers > Webhooks section. Click "Add endpoint" and specify the URL where your Django app will receive webhook events (e.g., `https://yourdomain.com/webhooks/stripe/`). Select the events you wish to receive notifications for.

3. **Implement the Webhook Receiver**: In your Django app, ensure the `webhooks.py` file is correctly set up to listen for POST requests at the endpoint you specified in Stripe. This file should authenticate the incoming requests using Stripe's signature verification method.

4. **Handle Events with StripeWH_Handler**: Customize the `StripeWH_Handler` class to define how your application should respond to each event. For instance, after a successful payment, you may want to create an order in your database and send a confirmation email to the user.

5. **Secure Your Endpoint**: Use Django's `@csrf_exempt` decorator to exempt your webhook view from CSRF verification, as the requests will be coming from Stripe's servers. However, ensure that you verify the requests' authenticity using the signature in the headers.

6. **Test Your Webhook**: Use Stripe's CLI or dashboard to send test webhook events to your endpoint. Ensure your handlers are correctly processing the events and that your application behaves as expected.

### Testing and Debugging

- **Stripe CLI**: Stripe offers a CLI tool that can forward webhook events to your local development server. This is invaluable for testing and debugging during development.

- **Logs and Errors**: Implement logging within your webhook handlers to capture any errors or unexpected behavior. This will aid in troubleshooting and ensuring that webhooks are processed correctly.

### Going Live

Before going live, double-check that you've updated your webhook endpoint to the production URL and selected the appropriate events on Stripe's dashboard. It's also recommended to review Stripe's best practices for securing webhooks.

---

## Monitoring Webhooks

After setting up your Stripe webhooks, you can monitor their performance directly from the Stripe dashboard. Below are screenshots that show where you can find information about webhook attempts and the status of your hosted endpoints.

### Webhook Attempts

Here you can see the list of attempts made to your webhook endpoints within the last 15 days. Each entry will show if the attempt was successful and provide details about the request.

![Webhook Attempts](/documentation/webhook%20attempt.png)

### Hosted Endpoints

This section of the Stripe dashboard provides an overview of your webhook endpoints, showing the error rate and status of each. It's essential to keep an eye on the error rate to ensure reliable operation.

![Hosted Endpoints](/documentation/webhook_endpoint.png)

### Reviewing Webhook Events

You should regularly review the events that Stripe sends to your webhook endpoints. Successful events indicate proper communication between Stripe and your application. If there are failed attempts, investigate the logs to determine the cause and implement necessary fixes.

---


## User story

For a detailed overview of the functionalities and expectations from a user's perspective, refer to our [User Stories documentation](userstory.md).

## Marketing

## Transition from already-owning a webshop to Custom bulding Website for project 5: Utilizing Real Social Media Presence

In the development of this website, a strategic decision was made to leverage the existing digital footprint of Cosmos Watches, built over several years through our authentic presence on social media platforms. Unlike traditional approaches that may use mock-ups for educational or developmental purposes, this project directly integrates our real, active Facebook and Instagram pages. These platforms have not only been instrumental in building our brand's community but also in understanding our customers' preferences and feedback.

## Why Not Facebook and Instagram Mock-ups?

As the owner of Cosmos Watches, I've made a deliberate choice to integrate my actual Facebook and Instagram pages into this project, rather than relying on mock-ups. This decision is rooted in several key considerations:

- **Authenticity**: My social media pages are not just platforms for promotion; they are spaces where real interactions happen. They have been instrumental in shaping the brand's identity and forging genuine connections with my audience. By utilizing these real pages, the project reflects the authentic essence of Cosmos Watches.

- **Engagement**: Over the years, I've built a loyal community around my brand on these platforms. My followers don't just see my content; they engage with it—through likes, comments, and shares. This level of interaction and engagement has been pivotal in my marketing strategy and is something that mock-ups could never replicate.

- **Brand History**: The Facebook and Instagram pages of Cosmos Watches are rich with history. They chronicle my journey, showcase my growth, and highlight my milestones. This historical depth adds a layer of context and meaning to the project that would be absent with the use of mock-ups.

- **Strategic Integration**: Incorporating my actual social media pages allows for a seamless integration of online identities. It ensures that the project is not an isolated endeavor but a continuation of my established digital presence. This strategic choice underscores the project's role in my broader digital marketing strategy, aligning with my goals of enhancing brand visibility and engagement.

### Emphasizing Real-World Applications

By choosing to utilize my genuine social media pages, I aim to provide a real-world application to my full stack development project. This approach not only showcases my technical skills but also my ability to think strategically about brand development and digital marketing. It's a reflection of my commitment to authenticity, engagement, and the continual evolution of Cosmos Watches in the digital realm.


## From Platform-Based to Personal Development: The Cosmos Watches Web Transition

The journey of Cosmos Watches' online presence has evolved significantly over the years, initially leveraging the convenience and simplicity offered by platforms such as Shopify and Wix. These platforms served as a launching pad, allowing us to quickly establish our online store and reach our customers with ease. However, the progression of my skills and the ambition to further personalize our brand's digital footprint led to a pivotal decision.

### The Decision for a Personal Touch

As I embarked on Project 5, a realization dawned upon me: the opportunity to blend my educational pursuits with my entrepreneurial spirit by developing the website myself. This project is not merely an academic requirement but a strategic step towards crafting a digital presence that is wholly reflective of Cosmos Watches' ethos and vision.

### Transitioning to a Self-Developed Website

This endeavor marks a significant shift from relying on external platforms to taking full control of our online presence. The aim is to develop a bespoke website that encapsulates the essence of Cosmos Watches, offering:

- **Enhanced functionality:** Implementing features and tools specifically tailored to our products and customers.
- **Improved user experience:** Creating a seamless, intuitive, and engaging online environment for our visitors.
- **Greater control over our digital presence:** Directly managing every aspect of the website, from design to content, aligning it closely with our brand's identity and goals.

### The Path Forward

This move towards a self-developed website represents a bold leap forward in our digital strategy, underpinned by a desire to more intimately connect with our customers and fully embody the Cosmos Watches brand online. As this project unfolds, it symbolizes not just a technical achievement, but a personal journey of growth, learning, and commitment to excellence.



This move to a custom-built website, developed with Django and Python, represents a significant step forward in our digital strategy. It allows us to more effectively integrate our social media content, offer a seamless shopping experience, and ultimately, provide a platform that grows with our business and meets the evolving needs of our customers.

### My Own Real Social Media Integration

Below are links to our official social media pages, which have been directly integrated into this project:

- **Facebook**: A cornerstone of our digital marketing strategy, offering a space for updates, promotions, and customer engagement.


#### Socialmedia
facebook ![Facebook](/media/documentations/facebook_screenshot.png)
Instagram ![Facebook](/media/documentations/instagram_screenshot.png)

## E-commerce Business Model and Marketing Strategies

### Business Model

Cosmos Watches operates on a direct-to-consumer e-commerce business model, offering an exclusive range of space-themed timepieces directly to customers through our online platform. By leveraging cutting-edge web technologies and e-commerce strategies, we provide a seamless shopping experience that combines the convenience of online retail with the allure of the cosmos. Our product lineup includes uniquely designed watches, each themed after a celestial body, offering both style and storytelling to our customers.

### Product Strategy

Our products are designed to appeal to space enthusiasts and watch collectors alike, featuring limited edition models that offer exclusivity and appeal. Each collection is crafted to represent a specific aspect of the cosmos, from the rugged terrain of Mars to the swirling storms of Jupiter, ensuring there is a watch for every taste and interest.

### Marketing Strategies

1. **Content Marketing:** We employ a robust content marketing strategy, including a regularly updated blog that shares insights into space exploration, watch craftsmanship, and the stories behind our collections. This approach helps in building brand authority and engaging our target audience.

2. **Social Media Marketing:** Cosmos Watches leverages social media platforms, including Instagram, Facebook, and Twitter, to showcase our products, share customer testimonials, and engage with our community. Our social media strategy focuses on visual content that highlights the beauty and uniqueness of our watches, accompanied by storytelling that connects with the space exploration theme.

3. **Email Marketing:** Through email newsletters, we keep our subscribers informed about new collections, exclusive offers, and behind-the-scenes content. This direct line of communication helps in nurturing customer relationships and encouraging repeat business.

4. **SEO & SEM:** Search engine optimization (SEO) and search engine marketing (SEM) tactics are employed to increase our online visibility and attract potential customers actively searching for space-themed watches or luxury timepieces. By targeting specific keywords and employing paid advertisements, we drive targeted traffic to our website.

5. **Influencer Collaborations:** Collaborating with influencers and thought leaders within the space exploration and luxury watch communities allows us to reach a broader audience. These partnerships help in authenticating our brand's presence and enhancing product visibility through social proof.

By integrating our e-commerce business model with these targeted marketing strategies, Cosmos Watches aims to not only sell products but also to create an immersive brand experience that resonates with our customers' passions and interests.

In developing this project, I focused on enhancing the website's Search Engine Optimization (SEO) to ensure better visibility and accessibility via search engines:

- **Robots.txt Implementation**: A `robots.txt` file was incorporated into the website's root directory. This file is crucial for SEO as it directs search engines on which parts of the site to avoid and which pages should not be indexed. By providing clear instructions, it optimizes the website’s presence in search results, focusing on content that offers the most value.

- **Sitemap Creation**: To help search engines efficiently crawl and understand the website's structure, I created a detailed sitemap. This XML-formatted sitemap lists the website's key URLs, serving as a roadmap for search engines. The sitemap was generated using [www.XML-sitemaps.com](https://www.XML-sitemaps.com), ensuring an accurate and comprehensive guide to the site's layout.

These steps were key to improving the website's SEO, making it easier for search engines to index the site effectively and enhance its visibility to potential visitors.


### Future Directions

We are constantly exploring new technologies and marketing approaches to enhance our online presence and customer engagement. Augmented reality (AR) viewings, virtual try-ons, and interactive online events are among the innovations we are considering to offer an even more engaging and personalized shopping experience.

## Color Scheme
![](/documentation/color_scheme.png)

## Testing

To ensure the Cosmos Watches platform meets our high standards for reliability and user experience, we've outlined comprehensive testing guidelines. You can find these by visiting our [Testing Documentation](testing.md).

## Additional Quality Assurance Tests

### Google Lighthouse Audit
An extensive audit was conducted covering performance, accessibility, SEO, and best practices using Google Lighthouse. Detailed audit results are provided below:
![Google Lighthouse Audit Results](/documentation/lighthouse.png)

### Code Validation and Responsiveness Testing

#### CSS Code Verification
The CSS code was thoroughly checked for standards compliance and error-free validation using the W3C CSS Validation Service. More information about the validation service can be found at [W3C CSS Validator](https://jigsaw.w3.org/css-validator/).
![CSS Code Verification Results](/documentation/CSS_jigsaw_validator.png)

#### HTML Code Verification
HTML code validation and compliance with web standards were ensured using the W3C Markup Validation Service. Visit [W3C HTML Validator](https://validator.w3.org/) for more details.
![HTML Code Verification Results](/documentation/HTML_W3C_validator.png)

#### Python Code Quality Check
The Python code was examined for syntax correctness and adherence to coding standards using PEP8 online checker. The testing tool used is available at [PEP8 Online Checker](https://pep8ci.herokuapp.com/).
![Python Code Quality Check Results](/documentation/CI_python_linter.png)

#### JavaScript Code Quality with JSHint
Quality and error analysis of JavaScript code were conducted using JSHint, a tool for detecting potential problems. Explore JSHint at [JSHint](https://jshint.com/).
![JavaScript Code Quality Results](/documentation/jshint_validator.png)

## Privacy Policy

### Overview

I am committed to maintaining the privacy and protection of your personal information. As part of this commitment, my Privacy Policy has been crafted to be transparent about what information I collect, how it is used, and the choices you have regarding your information.

### Generation Process

To ensure compliance with legal standards and best practices, I utilized the [Privacy Policy Generator](https://www.termsfeed.com/privacy-policy-generator/) provided by TermsFeed. This tool helped me create a Privacy Policy that is tailored to the specific needs and operations of my project.

### Highlights of My Privacy Policy

- **Information Collection:** Details on the types of information I collect and how it is gathered.
- **Use of Information:** How I use the collected information to enhance your experience.
- **Data Protection:** Measures in place to protect your information from unauthorized access or disclosure.
- **Your Rights:** An overview of your rights regarding your personal information and how you can exercise them.

For a complete understanding of my practices, I encourage you to read the full Privacy Policy available on my website.

### Contact Me

Should you have any questions or concerns about my Privacy Policy or the handling of your personal information, please feel free to contact me through the provided channels on my website.

<br>

### Web Accessibility Evaluation

#### Web Accessibility Evaluation with WAVE
The website's accessibility, especially contrast, was evaluated using WAVE, ensuring no contrast errors were present. For further details, check [WAVE Web Accessibility Evaluation Tool](https://wave.webaim.org/).
![Web Accessibility Evaluation Results](/documentation/wave_contrast_test.png)

## Acknowledgments

- **Stack Overflow**: Immense gratitude for Stack Overflow's invaluable assistance with programming dilemmas and its community's collective wisdom.
  
- **Slack**: Appreciation for Slack, the collaborative platform that enhances team communication and knowledge exchange.
  
- **Django**: Heartfelt thanks to the Django Documentation for offering exhaustive information on setup, application, and optimal practices for Django.

[↩ Back to Table of Contents](#table-of-contents)
