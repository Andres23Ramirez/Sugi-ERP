# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Establishment.create!([   {number: 1, name: "Salome", numberPhone: "7411722"}])
establishment1 = Establishment.find_by name: "Salome"

ContracEstablishment.create!([{establishment: establishment1, description: "Contrato a termino indefinido ", wayToPay: "Efectivo", porpuse: "La actividad economica sera comercial de ventas de zapatos"}])

Bill.create!([{number: 00001, amount: 1000000, establishment: establishment1}])