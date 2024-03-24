# Cosmos Watches

Welcome to Cosmos Watches, a Django-based web application that brings the universe to your wrist with our exclusive collection of space-themed timepieces. Explore our premium collections including Neptune, Jupiter, BigBang, and more, and discover your universe on your wrist today.

## Live Demo

Visit the live demo on Heroku: [Cosmos Watches Live Demo](https://pp5-bryar-475062670c00.herokuapp.com/)
![](/documentation/homepage.png)
---
![](/documentation/responsive_views.png)

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

![](/documentation/website_basket.png)
When a product is added to the basket, the cart page displays the item(s), including details such as product name, quantity, price, and the total amount. It offers options to adjust the quantity, remove items, continue shopping, or proceed to checkout. The layout is designed to provide a clear summary of what's been selected for purchase, making it easy for users to review and manage their choices before finalizing their order.

---

![](/documentation/website_product.png)
The products page on the Cosmos Watches website lists various space-themed timepieces and accessories. Items like the "Mars," "Phobos," and "Deimos" watches are featured, each with a price and customer rating. The page includes a sorting feature allowing viewers to organize products by price or rating. Accessories such as the "Cosmos Slide Card Holder" and "PYRAMID - Unisex cuff" are also available, showcasing a variety of options for customers interested in space-themed fashion.

---

![](/documentation/website_product_info.png)
The specific product page for the "Mars" watch at Cosmos Watches provides details about this space-themed timepiece. Inspired by the red planet, it features a robust design with a red dial and a durable case reflecting Mars' rugged terrain. It is marketed towards those with an adventurous spirit, priced at 1250.00 SEK, and has a customer rating of 5.00 out of 5.

---

![](/documentation/website_add_review.png)
The page for adding a review for the "Mars" watch at Cosmos Watches is a login portal. To submit a review, users must first log in with their account credentials. This ensures that reviews are posted by verified users or purchasers, maintaining the authenticity of feedback on the website.

---

![](/documentation/website_current_product_reviews.png)
Once a review is submitted for a product like the "Mars" watch on Cosmos Watches, it becomes visible on the product's page. This allows future customers to see real feedback from users who have purchased and experienced the watch, aiding them in making an informed decision.

---

![](/documentation/website_all%20reviews.png)
The reviews page on the Cosmos Watches website showcases customer feedback on various products. Reviews feature ratings, represented by filled rocket icons, and brief comments praising the products, such as watches and accessories, for their quality, design, and functionality. The page provides potential buyers with insights from previous customers, helping them make informed decisions about their purchases.

---

![](/documentation/website_all%20reviews.png)
 The blog section contains articles related to space and time, aimed at enriching the reader's knowledge and connecting them to the thematic essence of the Cosmos Watches brand.

---

![](/documentation/website_blog.png)
One of the added post by superuser/admin: The blog post "Battery Replacement Guide for Cosmos Watches Sweden" offers a comprehensive tutorial on changing the battery of Cosmos watches, covering necessary tools, detailed steps for different back types, and advice on workspace setup, handling the battery safely, and disposal of the old battery. It also mentions the option of professional assistance for those who prefer it. Users can leave comment.

---

![](/documentation/website_blog_comment.png)
The comment section beneath the blog post allows readers to share their thoughts, questions, or experiences related to the content of the "Battery Replacement Guide for Cosmos Watches Sweden." It's a space for community engagement and interaction with the brand, providing valuable feedback and additional insights.

---

![](/documentation/)
The comment section beneath the blog post allows readers to share their thoughts, questions, or experiences related to the content of the "Battery Replacement Guide for Cosmos Watches Sweden." It's a space for community engagement and interaction with the brand, providing valuable feedback and additional insights.

---

![](/documentation/website_FAQ.png)
The FAQ section of the Cosmos Watches website provides answers to general questions about the brand's watch origin, uniqueness, return policy, shipping, and care instructions. It emphasizes the Swedish design, global material sourcing

---

![](/documentation/website_FAQ.png)




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

Profile Page
![](/documentation/balsamic_Profile_Page.png)

Order History
![](/documentation/balsamic_Order_history.png)

CRUD Product
![](/documentation/balsamic_CRUD_product.png)

Edit Product
![](/documentation/balsamic_edit_product.png)

Delete Product
![](/documentation/balsamic_Delete_PRODUCT.png)

Delete Account
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

- HTML, CSS, JavaScript
- Python + Django
- PostgreSQL
- Bootstrap 4
- Stripe for payment processing
- AWS S3 for static and media file storage
- Heroku for deployment
- Mailchimp for e-mail Newsletter 

## Getting Started

### Prerequisites

- Python 3.8 or later
- pip
- A virtual environment

### Installation

1. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/Bryaro/pp5.git

## User story

For a detailed overview of the functionalities and expectations from a user's perspective, refer to our [User Stories documentation](userstory.md).

### Marketing
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

### Future Directions

We are constantly exploring new technologies and marketing approaches to enhance our online presence and customer engagement. Augmented reality (AR) viewings, virtual try-ons, and interactive online events are among the innovations we are considering to offer an even more engaging and personalized shopping experience.

## Color Scheme
![](/documentation/color_scheme.png)

## Testing

To ensure the Cosmos Watches platform meets our high standards for reliability and user experience, we've outlined comprehensive testing guidelines. You can find these by visiting our [Testing Documentation](testing.md).
