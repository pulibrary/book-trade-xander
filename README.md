Book-Trade
======
[![CircleCI](https://circleci.com/gh/pulibrary/book-trade-xander/tree/main.svg?style=svg)](https://circleci.com/gh/pulibrary/book-trade-xander/tree/main)

  Book-Trade is a hub for finding and connecting with others to exchange books. Features include seperate users, books by genre, jobs for cleaning up old posts, and admin controls. This is a final checkpoint project for rails.

_________

### Setup
1. Clone the repository:
```
git clone https://github.com/pulibrary/book-trade-xander.git
cd book-trade-xander
```
2. Install dependecies:
```
bundle install
```
3. Install Lando from https://github.com/lando/lando/releases

_________

### Database Setup
- Create database:
```
rails db:create
rails db:migrate
```
- Seed database:
```
rails db:seed
```
- Drop database and reseed (warning, all data will be lost)
```
rake db:reseed
```

________

### Running background jobs in development
1. Install Redis:
```
brew install redis
```
2. Jobs are performed by background workers. Run Sidekiq to execute background jobs that are queued:
```
bundle exec sidekiq
```
_________

### Launch the project locally
1. Start lando services:
```
rake servers:start
```
2. Start Redis with `brew services start redis` or `redis-server`
3. Start the local server
```
rails s
```
4. See the application at http://localhost:3000/

Note: Stop lando services with `rake servers:stop` or `lando stop`. Stop Redis with `brew services stop redis`

_________

