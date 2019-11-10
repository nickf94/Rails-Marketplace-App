---
title: T2A2 - Marketplace Project
created: '2019-10-28T01:46:19.093Z'
modified: '2019-11-09T11:22:55.364Z'
---

# T2A2 - Marketplace Project

<h1> Motorbike's R Us</h1>

<h3> What problems did I face while making my marketplace?</h3>
<p>Some problems i faced while making my project were some tiny ones like my code not working or not being able to push my work to github or heroku. One big problem I encountered was getting sick. I was in bed for a few days greatly reducing the process of my app but i still managed when i wasn't so dead to get in some coding. As always my fellow classmates and educators were a big help with any errors i was running into and there were a lot.</p>



<h3> Link to my website </h3>

<p>The link to my Heroku deployed page is</p> [Heroku app](https://rails-marketplace-app.herokuapp.com/)


<h3> Link to my repo</h3>
<p>The link to my github repo is</p>[Github Repo](https://github.com/nickf94/Rails-Marketplace-App)




<h3> Description of my application </h3>
<p>My idea for the Ruby on Rails Marketplace app was to do a simple motorbike part store, where people can come and buy different parts for the motorbikes. I came up with this idea because I love to ride my own motorbike and through talking to some of my classmates who said that I should make a store for motorbikes I decided that I would give it a go. On the main page you have a section of new parts available or any parts that are on special. You also have a navbar that goes to a page where all of the products on sale are viewed. You can sign up to a make an account to buy things and sign out once you have finished.</p> 




<h3> Rails App ERD </h3>
![Rails App ERD](/NickFletcher_T2A2/Docs/Rails-App-ERD.jpeg)


<h3> Rails App User Stories </h3>
<a>https://trello.com/b/pree17Y7/marketplace-project</a>



<h3> Rails App Wireframes </h3>
![Mockup of App](/NickFletcher_T2A2/Docs/New-Mockup-1.png)
![Mockup of App](/NickFletcher_T2A2/Docs/New-Mockup-2.png)
![Mockup of App](/NickFletcher_T2A2/Docs/New-Mockup-2.png)
![Mockup of App](/NickFletcher_T2A2/Docs/New-Mockup-2.png)


<h3>High-level components</h3>
<p>For my rails application I used high-level components to get my code to work. I added some controllers, models and views to code up the back-end and front-end of my marketplace.</p> 

<p>Controllers: The controllers i used for my application are as listed:</p>

<ul>
<li>Pages_controller</li>
<li>Orders_controller</li>
<li>Product_controller</li>
</ul>

<p>Models: The models I implemented into my code to get model relations were:</p>

<ul>
<li>Order.rb</li>
<li>Product.rb</li>
<li>Role.rb</li>
<li>User.rb<li>
</ul>

<p>Views: To add some front-end code to my code i used these view folders:</p>

<ul>
<li>Orders</li>
<li>Pages</li>
<li>Products</li>
</ul>

<p>For each view folder i had a _navbar partial file which allows the user to navigate my marketplace. I also had a new and show view file for both of my products and orders view folders to allow the admin to create products and then see them show up and then click on the product and see the description of the product which the user can also see. I also made a form partial to get a form so that my products could be placed into the form. The user can get to the form from the index page which i made a view file for to view the products.</p>








<h3>Third party services</h3>
<p>The third party services or gems that i used to create my application were:
Bulma - Bulma is a scss workframe that allows you to create scss styling to your code relatively easy.</p>
<ul>
<li>Rolify - Rolify is a gem that makes a user model and will create authorisation methods.</li>

<li>Devise - Devise is a gem that works with Rolify in that it creates users and makes authentication easy.</li>

<li>Cloudinary - Cloudinary is a service that allows you to upload images and store them in the cloudinary database so that you don't have to save the images to a local network.</li>

<li>Stripe - Stripe is a payment gem and service that redirects the user to a payment form so that they can input their bank details so that you don't have to save any credit card details locally.</li>
</ul>


<h3>Model relations within App</h3>
<p>In my models I have implemented that a user can have many products and a product has an image attached and belongs to the users. Also a order can have many products.</p>



