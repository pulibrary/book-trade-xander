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

Book.create(title: "The Silent Patient", author: "Alex Michael", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", contact_name: "david", contact_email: "dave@gmail.com", genre: mystery)
Book.create(title: "The Murder Club", author: "Richard Osmosis", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", contact_name: "john", contact_email: "john@gmail.com", genre: mystery)
Book.create(title: "Murder on the Orient Express", author: "Agatha Christe", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", contact_name: "Mr. Hen", contact_email: "hen@gmail.com", genre: mystery)

Book.create(title: "Milk and Honey", author: "Rupi Kaur", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", contact_name: "linsey smith", contact_email: "linsey@gmail.com", genre: poetry)
Book.create(title: "The Sun and Her FLowers", author: "Rupi Kaur", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", contact_name: "herbert", contact_email: "fkgdj@gmail.com", genre: poetry)
Book.create(title: "An American Citizen", author: "Claudia Ranford", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", contact_name: "John Smith", contact_email: "mrsmith@gmail.com", genre: poetry)
Book.create(title: "Leave of Grass", author: "Walt Whitman", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", contact_name: "Kim", contact_email: "kim22@gmail.com", genre: poetry)

Book.create(title: "Educationed", author: "Tara Weston", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", contact_name: "Frank Omis", contact_email: "rank2@gmail.com", genre: nonfiction)

Book.create(title: "Dune", author: "Frank Herbert", description: "Vestibulum pretium accumsan ipsum, nec fringilla erat ultricies ut. Nullam at ipsum id arcu feugiat tincidunt. Nullam nec mi a ligula maximus condimentum. Sed porta nisl neque, non eleifend lorem sollicitudin sit amet. Sed eu velit malesuada, fermentum urna ut, pharetra nisi. Quisque vulputate pellentesque faucibus.", contact_name: "Agatha K", contact_email: "ak@gmail.com", genre: science_fiction)
Book.create(title: "The Left Hand of Darkness", author: "Ursula", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu malesuada ex, ut dapibus quam. Nullam molestie dui elit, nec volutpat nunc aliquet cursus. Mauris porttitor aliquam ullamcorper", contact_name: "Mike Con", contact_email: "conn@gmail.com", genre: science_fiction)
