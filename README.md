# Two Sided Marketplace 

## Problem and purpose

The aim of this assessment piece was to create a two sided marketplace application, utilizing the Ruby on Rails framework. This assessment piece was created as an E-bay styled website in which Sellers can upload products for purchase, they can also choose to either set an instant purchase price, or allow for potential buyers to bid on the product until a bid has been accepted by the seller. The purpose of the application is to create an intermediary which links buyers and sellers of various products at an affordable rate. 

The aforementioned competitor has issues pertaining to their fee structure. Their current model has a 10.9% fee attached to any products sold, along with insertion fees dependent on the asking price of the product. Exuberant fee's often make it unfeasible to bother selling a used item, for both independent item sale and many retailers.

Another similar website is Gumtree, who in essence solved the previous problem by entirely removing the fee's from sold products and instead placed optional purchases for buyers to spotlight or advertise items. 
They do however fail to allow default delivery options within the application, typically limiting the scope of its user interaction to those within close proximity. Locally limited user interaction will also greatly decrease the range of options for buyers, and simultaneously decrease the likelihood of an item being sold. The purpose of this application is to create an alternative in which both of these problems have been solved.

The problems being solved is of benefit to those wishing to sell secondhand goods, and also small retailers who's sale numbers do not allow for such a high cut from profit margins. In solving these issues, you can create opportunity for local businesses to feasibly expand their customer base and profits in situations which would've previously not been possible. In particular it can be hypothesized that local businesses with niche products are among those to benefit  the most, as a result of the option for product delivery. 

## Functionality/Features

The app will feature all of the rubric required features as well as implementation of the recommended optional features. The app will use the **devise** gem in order to authenticate newly created user information, along with user sessions.  The **rolify** gem will also be used to authorize users, in particular it will separate admin users, giving them editing, and restricted viewing options. Users will also be given the ability to upload images when creating a product listing, which will then be stored on the **cloudinary** CDN. Deployment of the application will be completed using **Heroku**. 

 All users will be given the ability to perform CRUD operations on their user account, along with the **Product** model which is the model relating to item listings. Users will also have the ability to purchase items. A navigation bar is also a feature of the application allowing ease of use. A search option will also be featured, which will make database calls to display the requested information.  

## Sitemap

insert sitemap image here

## Screenshots

insert screenshots here 

## User Stories

user stories here


## Wireframes

Insert wireframes here

## ERD

Below is the entity relationship diagram which displays the model relation using computer science notation. 
The information below represents the following relationships.

  * User has_many products
  * User has_many orders
  * Product belongs_to User
  * Product has_and_belongs_to_many categories
  * Order has_many products

![Entity Relationship Diagram](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/MarketPlaceERD.png)

## High Level Components (abstractions)

  * **Navigation Bar**
    The navigation bar is a component which is displayed on all website pages to optimize user experience, the navigation bar contains links which make request to the routes, to display the appropriate information.
 
   * **Search Field**
 The home and category pages feature a search bar component to assist users in finding a product. It takes in a user input, and passes the information to a method, comparing the input to information contained within the database. 
 
   * **Tabs Component**
  The tabs component is an implementation of a bulma component with use of JavaScript to allow dynamic display on the categories page. It will change the current product display based on the category chosen, user input will be accepted in the form of a click, and execute the relevant function. 
   
  * **Card Component**
A card component has been used to contain product information, and to display user profile options. The component is also a link to individual product information, or the page relevant to the selection option. 


## Third party services

Cloudinary will be used as as an image management platform for the application, it will both allow users to upload images to the website, and will also store the images on their cloud platform. ```add information about how the api works ```. The third party service stripe will be used in order to manage all aspects of the payment system. This improves website security, as no payment information will be stored within the website database, and is instead handled by a verified service. ```add api info on stripe```

## Target Audience 

The target audience of the application is retailers who wish to expand their customer base, but are currently not selling their products online as a result of fee prices, or unwillingness to arrange their own delivery options. It was also designed for anyone wishing to sell used items which they no longer use. 

## Project models (relationships) active record associations

## Teck Stack
Listed below is the tech stack used for website development, and the areas which the technology was used.
  * Backend Framework (Ruby on Rails)
  * Frontend (Ruby, Javascript, HTML,  scss)
  * Deployment Platform (Heroku) 
  * Git repository (Github) 
  * Image hosting (Cloudinary) 
  * Payment options (Stripe)
   
  
