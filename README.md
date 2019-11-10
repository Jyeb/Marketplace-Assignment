# Two Sided Marketplace 

Github URL: https://github.com/Jyeb/Marketplace-Assignment
Heroku Link: https://stark-gorge-91671.herokuapp.com/

## Problem and purpose

The aim of this assessment piece was to create a two sided marketplace application, utilizing the Ruby on Rails framework. This assessment was created as an E-bay styled website in which users can upload used or new products to be sold. The purpose of the application is to create an intermediary which links buyers and sellers at an affordable rate. 

The online retail, and used items marketplace are dominated by a select group of companies, which take exuberant fee's off the final sale price of products, and often also charge for item listing. The scale of these websites also means they are dominated by a select number of larger retailers decreasing the market for used products and smaller retailers. Another product which solves many of the problems associated with companies such as E-bay is Gumtree, which predominately acts as an intermediary between sellers parting with individual used items. 
The idea of this online retailer, is to predominately focus on appealing towards both smaller retailers, and individual sellers who are put off by the fee's of similar products. An area which Gumtree lacks in comparison to the aforementioned competitor is in regards to the lack of built in delivery options within the product. The MVP of this product does not contain this feature, however in an attempt to combine the best elements of similar products, it's a feature which would be of great benefit to the product. 

The identification of these problem areas will see an improved  user experience for those wishing to sell secondhand goods and small retailers with a focus on streamlined transactions, minimizing the steps between viewing and purchasing products. The differentiating factors between the larger retailers and the experience of this product are intended to decrease the costs and steps involved with selling a product.

## Functionality/Features

The app will contain all of the rubric required features as well as implementation of several of the recommended optional features. The **devise** gem will be used in order to authenticate newly created user information, along with user sessions.  The **rolify** gem will also be used to authorize users, in particular it will separate *admin* users, giving them editing, and viewing options of pages restricted for regular *user* profiles. Accounts will be assigned the *user* role upon creation allowing for item sale and purchase. 
 Users will also be given the ability to upload images when creating a product listing, which will then be stored on the **cloudinary** CDN. Deployment of the application will be completed using **Heroku**, which can be done using simple git commands. 

 All users will be given the ability to perform CRUD operations on their user account, along with products owned by a particular user. A navigation bar is also a feature of the application allowing ease of use. A search option will also be featured, which will make database calls to display the requested information.  

## Sitemap
The sitemap below slightly differs from the final product. Initially, the website contained an additional two static pages being about and contact page, at the time of project submission information for these pages was lackluster and as such they were removed. It can be seen that the flow between pages is rather simplistic, and creates for an enjoyable user experience, with the ability to redirect to the desired page with minimal navigation. 

![Sitemap](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Sitemap.png)

## Screenshots
Below are screenshots of the various pages, features and functionality of the application. 
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough1.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough2.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough3.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough4.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough5.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough5.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough6.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough7.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough8.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough9.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough10.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough11.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough12.png)
![Screenshot](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/Website-walkthrough13.png)

## User Stories/Project Task Allocation
Both the user stories and task allocation were done through Trello. The checklist and label features were used to gauge the status of individual tasks, by swapping tasks from red to green upon completion. 

![Trello Board](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/userstories-tasks.png)
## Wireframes

Insert wireframes here

## ERD (Entity Relationship Diagram)

Below is the entity relationship diagram which displays the model relation using computer science notation. Listed below, it states that user products have and belong to many categories, which creates a specialized join table. The database is setup to allow for this interaction, however the MVP product is yet to give users the ability to assign multiple categories to a product, implementation of this feature in further iterations will be simplified by the fact the database is already constructed to allow this behavior. The Order model was also made obsolete as the ordering functionality was completed using the product model, however the current approach is rather limited in terms of capability, and further iterations would see development incorporating the Order model. 
The information below represents the following relationships.
  * User has_many products
  * User has_many orders
  * Product belongs_to User
  * Product has_and_belongs_to_many categories
  * Order has_many products

![Entity Relationship Diagram](https://github.com/Jyeb/Marketplace-Assignment/blob/master/docs/MarketPlaceERD.png)
## Project models (relationships) active record associations

  * **User** 
	Both the **product** and **order** model have an active record relation to the user model. The relation being the *has_many* relationship. As the name indicates, it allows a user to create many products, and place multiple orders, containing multiple products.  
	
  * **Product**
The product model has a belongs_to and has_many relationship with categories. This is denoted using a *join table* which creates a intemediary table containing foreign key references for both the categories and products. A product also belongs_to a user, which allows a user to create products which are to be sold. 
 
  * **Order**
An order *has_many* **products**, and *belongs_to* a user. Functionality of the order model is yet to be implemented, and purchasing of items is currently completed through the product model. 

  * **Category**
The model relationships for **category** have been described within the **product** example listed above. 

## High Level Components (abstractions)

  * **Navigation Bar**
    The navigation bar is a component which is displayed on all website pages to optimize user experience, the navigation bar contains links which make request to the routes, to display the appropriate information. The category drop down menu allows a user to select a product category, redirecting the user to a page filtering the search results to return only products contained within their chosen category. The JavaScript functionality for this feature required alterations from initial design to ensure proper operation. The *event-listener* which is intended to initialize desired functionality upon page loading was by default firing before the rest of the document was ready which was not initially obvious by the returned errors. In order to solve this problem, a document state check is performed before the the filtering functions are run. 
 
   * **Search Field**
 The home and category pages feature a search bar component to assist users in finding a product. It takes in a user input, and passes the information to a method, comparing the input to information contained within the database. The filtering system allows for search bar input as well as category selection. The attributes of this component were completed using Javascript. 
 
   * **Tabs Component**
  The tabs component is an implementation of a bulma component with use of JavaScript to allow dynamic display on the categories page. It will change the current product display based on the category chosen, user input will be accepted in the form of a click, and execute the relevant function. 
   
  * **Card Component**
A card component has been used to contain product information, and to display user profile options. The component is also a link to individual product information, or the page relevant to the selection option. 


## Third party services

  * **Cloudinary**
Cloudinary is a CDN (content delivery network) used as a cloud based image management platform. The service is used to improve the performance of a website when dealing with image rendering, whilst also externally storing imagery within their cloud platform removing the need for content to be stored on your own server. Cloudinary servers are located in various locations globally, all of which contain the entirety of their database, to maximizing website performance regardless of user location.

  *  **Heroku**
  The platform used for the deployment of this product is Heroku. Heroku is one of the more simplistic deployment options, with great compatibility with rails and git.


## Target Audience 

The target audience of the application is retailers who wish to expand their customer base but are currently not selling their products online as a result of fee prices, or unwillingness to arrange their own delivery options. It was also designed for anyone wishing to sell used items which they no longer use. 

## Teck Stack

Listed below is the tech stack used for website development, and the areas which the technology was used.
  * Backend Framework (Ruby on Rails)

  * Frontend (Ruby, Javascript, HTML,  scss)
  * Deployment Platform (Heroku) 
  * Git repository (Github) 
  * Image hosting (Cloudinary) 

