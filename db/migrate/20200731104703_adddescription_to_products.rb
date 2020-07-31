class AdddescriptionToProducts < ActiveRecord::Migration[6.0]
  def change
  	add_column :products, :descripton, :string
  end
end
