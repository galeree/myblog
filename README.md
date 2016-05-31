# Ruby on Rails blog
This is a blog developed using Ruby on Rails and used mongoDB as a database. User can sign in and manage content. And using materialize-sass as styling framework.

# Structured
- <b>app</b>
  - <b>asset</b>        Contains default javascript and css code that used in every page.
  - <b>models</b>       Contains model to interact with  database.
  - <b>views</b>        Contains view to show.
  - <b>controllers</b>  Contains application logic and authentication logic.
- <b>config</b>
  - <b>routes.rb</b>    Contains route file for each url.
- <b>gulpfile.js</b>    Convert and minify scss and js file
- <b>public</b>         Contains converted and minified css and js file
- <b>source</b>         Contains source scss and js file to be converted

# Feature
- <b>Dashboard</b>     CRUD operation for each content such as category, post, novel and song.
- <b>Guest</b>         Including Landing page, About page, Novel page, Song page and Post page
