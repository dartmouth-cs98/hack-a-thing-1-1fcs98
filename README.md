# hack-a-thing-1-1fcs98
Inspired by my interview experience, I built a simple web app, called We Act, using Ruby on Rails. I wanted to explore solutions for automatically sending email updates to users and thought creating a sign-in system that emails the user on account creation would be a great test case. I used bootstrap to help create a grid system and handle the front end so I could focus on the mailer for this hack-a-thing. 

Run the following always before starting the application

    bundle update
    bundle install
    rake db:migrate
    rails s
    

### Login
I used Devise for Rails to create a secure login system to hold user data. I worked based on this tutorial https://guides.railsgirls.com/devise
Hangups - I wanted to integrate Facebook login as an option but could not get it to work in time, this would simplify the account creation process by pulling in profile information right away. 

### Image Upload
I use ImageMagick and Paperclip to handle uploading and displaying images for events. I based my solution off of this tutorial https://scotch.io/tutorials/file-upload-in-rails-with-paperclip

    brew install imagemagick

### Mailer
Using gmail credentials and Rails Action Mailer I created a simple automated mailer that sends an "Account Created" email to the user after they sign up. I based my solution off this documentation and tutorial https://guides.rubyonrails.org/action_mailer_basics.html
You need to set up ENV variables for GMAIL_USERNAME and GMAIL_PASSWORD

    export GMAIL_USERNAME='gmailusername'
    export GMAIL_PASSWORD='gmailpassword'
