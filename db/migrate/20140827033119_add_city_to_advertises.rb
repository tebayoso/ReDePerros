class AddCityToAdvertises < ActiveRecord::Migration
  def change
    add_column :advertises, :city, :string
  end
end
