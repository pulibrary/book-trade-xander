# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mystery = Genre.create(genre: 'Mystery')
poetry = Genre.create(genre: 'Poetry')
nonfiction = Genre.create(genre: "Nonfiction")
science_fiction = Genre.create(genre: "Science Fiction")

david = User.new
david.email = 'dave@gmail.com'
david.encrypted_password = 'sdfaddsg'
david.password = 'sdfaddsg'
david.password_confirmation = 'sdfaddsg'
david.name = 'David Johnson'
david.save!
kim = User.new
kim.email = 'kim@gmail.com'
kim.encrypted_password = 'sfgjehjeh'
kim.password = 'sfgjehjeh'
kim.password_confirmation = 'sfgjehjeh'
kim.name = 'Kim Smith'
kim.save!
hen = User.new
hen.email = 'hen45mr@gmail.com'
hen.encrypted_password = 'password'
hen.password = 'password'
hen.password_confirmation = 'password'
hen.name = 'Mr. Hen'
hen.save!

Book.create(title: "The Silent Patient", author: "Alex Michael", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", user: kim, genre: mystery)
Book.create(title: "The Murder Club", author: "Richard Osmosis", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", user: hen, genre: mystery)
Book.create(title: "Murder on the Orient Express", author: "Agatha Christe", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", user: kim, genre: mystery)

Book.create(title: "Milk and Honey", author: "Rupi Kaur", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", user: david, genre: poetry)
Book.create(title: "The Sun and Her FLowers", author: "Rupi Kaur", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", user: hen, genre: poetry)
Book.create(title: "An American Citizen", author: "Claudia Ranford", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", user: david, genre: poetry)
Book.create(title: "Leave of Grass", author: "Walt Whitman", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", user: kim, genre: poetry)

Book.create(title: "Educationed", author: "Tara Weston", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", user: kim, genre: nonfiction)

Book.create(title: "Dune", author: "Frank Herbert", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", user: david, genre: science_fiction)
Book.create(title: "The Left Hand of Darkness", author: "Ursula", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", user: david, genre: science_fiction)
