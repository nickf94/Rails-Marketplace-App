---
title: T2A2 - Marketplace Project
created: '2019-10-28T01:46:19.093Z'
modified: '2019-11-08T03:14:41.744Z'
---

# T2A2 - Marketplace Project

<h1> Motorbike's R Us</h1>

<h3> What problems did I face while making my marketplace?</h3>
<p>Some problems i faced while making my project were some tiny ones like my code not working or not being able to push my work to github or heroku. One big problem I encountered was getting sick. I was in bed for a few days greatly reducing the process of my app but i still managed when i wasn't so dead to get in some coding. As always my fellow classmates and educators were a big help with any errors i was running into and there were a lot. During the final days of my project i found that I was stressing over the time and whether or not i would finish my app on time or not but i just kept on coding away finding errors and fixing them. I also ran into problems with Stripe and Cloudinary, So i just decided to concentrate on one at a time instead of doing both at the same time. Being sick is something i would not reccomend for anyone doing a rails app on a short timeframe as it can be very messy. Although i continued to run into problems i knew i could count on my classmates and teachers to help me fix the errors.



<h3> Link to my website </h3>
[Heroku Website](https://young-eyrie-95304.herokuapp.com/)
For this application I used Heroku to deploy my marketplace application. Here is the link.



<h3> Link to my repo</h3>
[Githubb Repo](https://github.com/nickf94/Rails-Marketplace-App)




<h3> Description of my application </h3>
<p>My idea for the Ruby on Rails Marketplace app was to do a simple motorbike part store, where people can come and buy different parts for the motorbikes. I came up with this idea because I love to ride my own motorbike and through talking to some of my classmates who said that I should make a store for motorbikes I decided that I would give it a go. On the main page you have a section of new parts available or any parts that are on special. You also have a navbar that goes to a page where all of the products on sale are viewed. You can sign up to a make an account to buy things and sign out once you have finished. 




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









<h3>Third party services</h3>






<h3>Model relations within App</h3>
With my Marketplace app I made it so that I could sell products to users, so with my model relations I had to have the products belong to users. I then looked at my Orders model and found out that had many products so i concluded that i needed to make a method called "has_many :products" within the order model.

'
class Order < ApplicationRecord
  has_many :products
end
'

'
class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :cover
end
'

'
class User < ApplicationRecord
  has_many :products, dependent: :destroy
  rolify
  after_create :assign_default_role
  / Include default devise modules. Others available are:
  / :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end
end
'





