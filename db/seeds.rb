# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	Order.destroy_all
	User.destroy_all

	orders = Order.create([
		{orderstyle: "burrito",
		protein: "chicken",
		beans: true,
		rice: true,
		cheese: true,
		sour_cream: false, 
		fresh_tomato_salsa: true,
		fajita_veggies: true },


		{orderstyle: "salad",
		protein: "steak",
		beans: false,
		rice: false,
		cheese: true,
		sour_cream: false, 
		fresh_tomato_salsa: true,
		fajita_veggies: true }

])