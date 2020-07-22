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
  # Product.create(name: 'iPlay, iLearn Kids Kitchen Pretend Play', Description: '❤ Safe Material ❤ This toy was tested by CPSC accepted third party laboratories. All passed.', price: '999', Category_id: '1')
# Product.create(name: 'Melissa & Doug', Description: 'Hand polished stainless steel: The Melissa & doug stainless steel pots & pans play set for kids is an 8 piece stainless steel set including a colander, pot with lid, 2 pans, 2 wooden utensils, and rack', price: '4999')
# Product.create(name: 'kids kitchen set', Description: 'Step2 Fun with Friends Kitchen | Large Plastic Play Kitchen with Realistic Lights & Sounds | Blue Kids Kitchen Playset & 45-Pc Kitchen.', price: '845')
# Product.create(name: 'Electronic Products', Description: 'SHOPEE Gadget Organizer Black Canvas Bag for Power Bank, Cables, Usb Pen Drives, Mobile Phone AccessoriesSHOPEE Gadget Organizer Black Canvas Bag for Power Bank, Cables, Usb Pen Drives, Mobile Phone Accessories', price: '19,000')
# Product.create(name: 'TV', Description: 'Main consumer electronics products include radio receivers, television sets, MP3', price: '24,000')
p = Product.new(:name => "Hawkins Toy Cooker, Silver", :Description => "It's miniature of original hawkins cooker. It even includes washer and small whistle. While whistle is fixed and non removable", :price => "19,000", :category_id =>"3")
p.save
p = Product.new(:name => "mobile", :Description => "64gb ram mo
bile 1 year warrenty", :price => "19,000", :category_id =>"2")
p.save
p = Product.new(:name => "spoon set", :Description => "new design spoon set", :price => "999", :category_id =>"3")
p.save
