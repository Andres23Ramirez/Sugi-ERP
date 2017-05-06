# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating establishment' 

Establishment.destroy_all
Establishment.create!([   {number: 1, name: "Salome", numberPhone: "7411722"}])
Establishment.create!([   {number: 2, name: "Super tenis", numberPhone: "7411733"}])
Establishment.create!([   {number: 3, name: "Comidas rapidas", numberPhone: "7411744"}])
Establishment.create!([   {number: 4, name: "Super electro", numberPhone: "7411755"}])
Establishment.create!([   {number: 5, name: "Gym el poderoso", numberPhone: "74117777"}])


establishment1 = Establishment.find_by number: 1
establishment2 = Establishment.find_by number: 2
establishment3 = Establishment.find_by number: 3
establishment4 = Establishment.find_by number: 4
establishment5 = Establishment.find_by number: 5


puts 'Creating Contrac of establishment'

ContracEstablishment.destroy_all
ContracEstablishment.create!([{establishment: establishment1, description: "Contrato a termino indefinido ", wayToPay: "Efectivo",     porpuse: "La actividad economica sera comercial de ventas de zapatos"}])
ContracEstablishment.create!([{establishment: establishment2, description: "Contrato a año ",                wayToPay: "consignacion", porpuse: "La actividad economica sera comercial de ventas de zapatos"}])
ContracEstablishment.create!([{establishment: establishment3, description: "Contrato a dos años ",           wayToPay: "Efectivo",     porpuse: "La actividad economica sera comercial de ventas de comida"}])
ContracEstablishment.create!([{establishment: establishment4, description: "Contrato a termino indefinido ", wayToPay: "Efectivo",     porpuse: "La actividad economica sera comercial de ventas de gadgets electronicos"}])
ContracEstablishment.create!([{establishment: establishment5, description: "Contrato a un año ",             wayToPay: "consignacion", porpuse: "La actividad economica sera comercial de gimnasio"}])




puts 'Creating bill'

Bill.destroy_all
Bill.create!([{number: 00001, amount: 1000000, establishment: establishment1, state: "pagado"}])
Bill.create!([{number: 00002, amount: 2000000, establishment: establishment2, state: "pendiente"}])
Bill.create!([{number: 00003, amount: 3000000, establishment: establishment3, state: "pagado"}])
Bill.create!([{number: 00004, amount: 4000000, establishment: establishment4, state: "cancelado"}])
Bill.create!([{number: 00005, amount: 5000000, establishment: establishment5, state: "pagado"}])


puts 'Creating Employees'

Employee.destroy_all
Employee.create!([{ first_name: "Pedro", last_name: "Perez", date_hire: "2008-01-01", position: "Vigilante", salary: 600000}])
Employee.create!([{ first_name: "Pablo", last_name: "Gallo", date_hire: "2008-01-01", position: "Oficios varios", salary: 300000}])
Employee.create!([{ first_name: "Hector", last_name: "Marulanda", date_hire: "2008-01-01", position: "Administrador", salary: 900000}])
Employee.create!([{ first_name: "Miguel", last_name: "Baroni", date_hire: "2008-01-01", position: "Logistica", salary: 500000}])
Employee.create!([{ first_name: "Juana", last_name: "De Arco", date_hire: "2008-01-01", position: "Aseadora", salary: 300000}])

 
 empleado1 = Employee.find_by first_name: "Pedro"
 empleado2 = Employee.find_by first_name: "Pablo"
 empleado3 = Employee.find_by first_name: "Hector"
 empleado4 = Employee.find_by first_name: "Miguel"
 empleado5 = Employee.find_by first_name: "Juana"


 puts 'Creating Contrac Employees'

 ContractEmployee.destroy_all
 ContractEmployee.create!([{ dateStart: "2017-01-01", dateEnd: "2017-01-01", salary: 1000000, employee: empleado1}])
 ContractEmployee.create!([{ dateStart: "2017-02-01", dateEnd: "2017-01-01", salary: 1000000, employee: empleado2}])
 ContractEmployee.create!([{ dateStart: "2017-03-01", dateEnd: "2017-01-01", salary: 1000000, employee: empleado3}])
 ContractEmployee.create!([{ dateStart: "2016-01-01", dateEnd: "2017-01-01", salary: 1000000, employee: empleado4}])
 ContractEmployee.create!([{ dateStart: "2015-01-01", dateEnd: "2017-01-01", salary: 1000000, employee: empleado5}])


puts 'Creating Entries'

Entry.destroy_all
Entry.create!([{ description: "Evento de fotografia",  amount: 500000, date: "2017-02-01"}])
Entry.create!([{ description: "Venta de camisetas",    amount: 578000, date: "2017-03-01"}])
Entry.create!([{ description: "Evento de matrimonio",  amount: 500000, date: "2017-04-01"}])
Entry.create!([{ description: "Evento de Cumpleaños",  amount: 500000, date: "2017-01-01"}])
Entry.create!([{ description: "Concurso de disfrases", amount: 500000, date: "2017-02-01"}])


puts 'Creating Outflow'
Outflow.destroy_all
Outflow.create!([{description: "Servio de Agua",     price: 100000, date: "2017-02-01", type_service: "servicios" }])
Outflow.create!([{description: "Pago de empleado",   price: 200000, date: "2017-02-01", type_service: "nomina" }])
Outflow.create!([{description: "Compras pequeñas",   price: 300000, date: "2017-02-01", type_service: "menor"}])
Outflow.create!([{description: "Servio de Internet", price: 400000, date: "2017-02-01", type_service: "servicios" }])
Outflow.create!([{description: "pago por domicilio", price: 500000, date: "2017-02-01", type_service: "otro" }])


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
