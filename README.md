# Ruby on Rails blog
This is a blog developed using Ruby on Rails and used mongoDB as a database. User can register, sign in and manage content. And using materialize-sass as styling framework.

# Structured
- app
  - asset       Contains default javascript and css code that used in every page.
  - models      Contains model to interact with  database.
  - views       Contains view to show.
  - controllers Contains application logic and authentication logic.
- config
  - routes.rb   Contains route file for each url.
- gulpfile.js   Convert and minify scss and js file
- public        Contains converted and minified css and js file
- source        Contains source scss and js file to be converted

# Feature
- Dashboard     CRUD operation for each content such as category, post, novel and song.
- Guest         Including Landing page, About page, Novel page, Song page and Post page
