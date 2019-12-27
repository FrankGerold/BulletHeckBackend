# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Player.destroy_all

# fra = Player.create({name: 'Frank'})
# co = Player.create(name: 'Cochise')

players = [
  {name: 'Frank'},
  {name: 'Cochise'},
  {name: 'Elizabeth'}
]
# Had to create the players FIRST for the dynamic references in the games creation to actually work.
Player.create(players)

games = [
  {level: 2, score: 1000, player: Player.first},
  {level: 1, score: 500, player: Player.second},
  {level: 4, score: 2000, player: Player.last}
]

Game.create(games)
