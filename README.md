<p align="center">
    <h1 align="center"> Goal App  </h1>    
</p>

Goal App is a web application with responsive behavior for mobile usage built with <b>Ruby on Rails</b> 
<!-- this application is based on an app for grouping payments by a goal with your family/friends --> 
you can find the full requirements <a href="https://www.notion.so/microverse/Group-our-transactions-ccea2b6642664540a70de9f30bdff4ce" alt="Requirements">here</a>. Exploring this project you can find these options (<b>sign-up</b>, <b> sign-in</b>,<b> all my goals</b>,<b> all my external goals</b>,<b> all groups and log out</b>) 

<!-- <b> check out a wish list as an additional feature</b> --> 

<!--
It is required to sing in before to start using this application, Goal App is related with an online store where you buy some products, sometimes you just want to save some product that you want to review later, this is the basic idea about group our wishlist, <b> you can save a product wish</b>, groups allow you to separate your list of wish with a specific category. 
When you don't want to associate with any category you can create a wishlist that will be not associated with any group or category, finally check out is the extra feature added to be able to proceed with the check out for any of the products you saved.
-->

## Live Version

Click on the link to see  [live version]()

## Getting Started

This project was built using Ruby and Rails version 6, it is a web application and for running on your local environment you should follow these guidelines.

### Prerequisites

- Ruby 2.7.2
- Rails 6.1.3.2
- Git

### Setup

+ Clone the project using this command.

```
Using SSH 

# git clone  https://github.com/ahmetbozaci/goal-app.git

Using HTTPS

# git clone  git@github.com:ahmetbozaci/goal-app.git

```

+ Change to the parent directory of the project using 

```
cd /home/workspace/Project-name
```

## Install

+ Install the needed gems:

```
# bundle install --without production
```

+ Migrate the database:

```
# rails db:migrate
```

+ Install webpacker

```
# rails webpacker:install
```

### Run tests

+ Run the test suite to verify that everything is working correctly:

```
# bundle exec rspec
```

+ If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## Authors

👤 **Ahmet Bozacı**
- Github:[@ahmtbozaci](https://github.com/ahmetbozaci)
- Twitter:[@ahmtbozaci](https://twitter.com/ahmtbozaci)
- LinkedIn:[@ahmtbozaci](https://www.linkedin.com/in/ahmetbozaci/)

## 🤝 Contributing

This project was created for educational purposes as part of the Microverse web development curriculum; contributing is not accepted.

Feel free to check the [issues page](https://github.com/ahmetbozaci/goal-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments



## 📝 License

This project is [MIT](https://mit-license.org/) licensed.

