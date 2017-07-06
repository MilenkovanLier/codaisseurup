# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Theme.destroy_all

family = Theme.create(name: "Family")
sport_and_health = Theme.create(name: "Sport and Helath")
advanture = Theme.create(name: "Adventure")
elderly = Theme.create(name: "Elderly")
creative = Theme.create(name: "Creative")

miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")

event = Event.create(
name: "Codaisseur opendag",
description:" open dag voor de nieuwe codaisseur acedemie",
location: "Singel 524, Amsterdam",
price:" 0,0",
capacity:"28",
includes_food: false,
includes_drinks: true,
starts_at: 1800,
ends_at: 2100,
active: true,
user: miriam,
themes: [family, sport_and_health])
