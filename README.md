# README
<div id="header" align="center">

<img width="300" alt="stud and eat" src="https://images.pexels.com/photos/7034226/pexels-photo-7034226.jpeg?auto=compress&cs=tinysrgb&w=600">
</div>

<h1 align="center"> Lunch and Learn</h1>



## Table of Contents

- [Project Overview](#project-overview)
- [Learning Goals](#learning-goals)
- [Planning Documents](#planning-documents)
- [Technologies and Tools](#technologies-and-tools)
- [Setup](#setup)


## Project Overview
Back-end portion of a Service Oriented Architecture  application to search for cuisines by country, and provide opportunity to learn more about that countries culture. This app will allow users to search for recipes by country, favorite recipes, and learn more about a particular country.


## Learning Goals

- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Expose an API for CRUD functionality
- Determine completion criteria based on the needs of other developers
- Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).

## Planning Documents


[Project Spec](https://backend.turing.edu/module3/projects/lunch_and_learn/)
[Project requirements](https://backend.turing.edu/module3/projects/lunch_and_learn/requirements)


## Technologies and Tools

#### Built With: 
- [Rails v5.2.8](https://guides.rubyonrails.org/v5.2/)
- [Ruby 2.7.2](https://www.ruby-lang.org/en/news/2021/07/07/ruby-2-7-4-released/)

#### Tested With:
- [RSpec](https://github.com/rspec/rspec-rails)
- [PostMan](https://www.postman.com/)
- [SimplCov](https://github.com/simplecov-ruby/simplecov)
- [Pry](https://github.com/pry/pry)



#### Other Gems Used: 
- [Faker](https://github.com/faker-ruby/faker)
- [Factorybot](https://github.com/thoughtbot/factory_bot)
- [Figaro](https://github.com/laserlemon/figaro)
- [Faraday](https://github.com/lostisland/faraday)
- [Webmock](https://github.com/bblimke/webmock)
- [VCR](https://github.com/vcr/vcr)
- [jsonapi-serializer](https://github.com/codecutout/JsonApiSerializer)

#### API Keys need

- Get a free API Key for EDAMAM Recipe [Here](https://developer.edamam.com/edamam-recipe-api)
- Get a free API Key for YouTube videos at [Here](https://developers.google.com/youtube/v3/getting-started)
- Get a free API Key for Unsplash images at[Here](https://unsplash.com/developers)


## Setup

1. Fork and clone this repository.
2. Cd into the root directory and run `code .`(for Visual Studio).
3. To run this server, run `rails s` in the terminal and rails will start the development server. To stop the local server, use command `Control + C`.
4. Please use Postman to view endpoint information. url: http://localhost:3000<'END POINT HERE> 

## End Points 

Get Recipes for a Particular Country
- `GET /api/v1/recipes?country=#{country}`
[Frontend wireframe](https://backend.turing.edu/module3/projects/lunch_and_learn/images/recipes-show.png)

Get Learning Resources for a Particular Country
- `GET /api/v1/learning_resources?country=#{country}`
[Frontend wireframe](https://backend.turing.edu/module3/projects/lunch_and_learn/images/country-show.png)

User Registration
- `POST /api/v1/users`
[Frontend wireframe](https://backend.turing.edu/module3/projects/lunch_and_learn/images/register-fake.png)


Add Favorites
- `POST /api/v1/favorites`
[Frontend wireframe](https://backend.turing.edu/module3/projects/lunch_and_learn/images/favorites.png)


Get a User's Favorites
- `GET /api/v1/favorites?api_key=jgn983hy48thw9begh98h4539h4`
[Frontend wireframe](https://backend.turing.edu/module3/projects/lunch_and_learn/images/favorites.png)

<table>
  <tr>
    <td>Kevin Ta</td>
  </tr>
  <tr>
     <td>
      <a href="https://www.linkedin.com/in/kevin-ta-b1a36723b/">LinkedIn</a>
    </td>
  </tr>
</table>