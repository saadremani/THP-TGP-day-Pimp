# README

This README would normally document whatever steps are necessary to get the
application up and running.


 LE STEP BY STEP DES CORRECTIONS ##########################
STEP: 0 | Bundle Install
bundle install
On install nos amies les gem
---------------------------------------------------------------------
STEP: 1 | Vérification des versions RUBY, RAILS et le type de BDD de l'app Rails
rails about => # List versions of all Rails frameworks and the environment
--------------- SI TU VOIS RAILS 6
:arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up: :arrow_up: 
:arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up:Rails 6 soit = NON soit vous revenez plus haut dans ce chanel pour trouver la solution :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up:
:arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up: :arrow_up::arrow_up:
Résultat de la commande attendue:
Rails version             5.2.3
Ruby version              2.5.1-p57 (x86_64-linux)
...
Database adapter          postgresql
---------------------------------------------------------------------
STEP:2 | Drop la BDD
rails db:drop => # Drops the database from DATABASE_URL or config/database.yml for the current RAILS_ENV (use db:drop:all to drop all databases in the config).
---------------------------------------------------------------------
STEP:3 | Recréation de la BDD
rails db:create => # Creates the database from DATABASE_URL or config/database.yml for the current RAILS_ENV
rails db:migrate => # Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)
rails db:migrate:status => # Display status of migrations
---------------------------------------------------------------------
STEP:4 | Loads des DATA depuis Seed.rb
rails db:seed => # Loads the seed data from db/seeds.rb
---------------------------------------------------------------------
STEP:5 | On lance le serveur
rails server
Tips si vous voulez lancer le serveur sur un port spécifique
rails server -p 4000 pour le lancer sur le port 4000 par exemple
---------------------------------------------------------------------
