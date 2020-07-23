# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: 'food')

ary = ["Electronics","kitchen"]
 ary.each do |sample|
 	Category.create(name: sample)
 end
#  p = Product.new(:name => "Hawkins Toy Cooker, Silver", :Description => "It's miniature of original hawkins cooker. It even includes washer and small whistle. While whistle is fixed and non removable", :price => "19,000", :category_id =>"3")
# p.save
# p = Product.new(:name => "mobile", :Description => "64gb ram mo
# bile 1 year warrenty", :price => "19,000", :category_id =>"2")
# p.save
# p = Product.new(:name => "spoon set", :Description => "new design spoon set", :price => "999", :category_id =>"3")
# p.save
