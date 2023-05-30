require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

=begin
### Exercise 6: One-to-many association

We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer)
column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

Let's tell Active Record that these two tables are in fact related via the `store_id` column.

1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
2. Add the following code directly inside the Employee model (class): `belongs_to :store`
3. Add some data into employees. Here's an example of one 
(note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
=end

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "The", last_name: "Morrigan", hourly_rate: 60)
@store1.employees.create(first_name: "Nesta", last_name: "Archeron", hourly_rate: 50)
@store2.employees.create(first_name: "Lucien", last_name: "Vanserra", hourly_rate: 50)
@store2.employees.create(first_name: "Feyre", last_name: "Archeron", hourly_rate: 60)