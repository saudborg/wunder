class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, limit: 255, null: false
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
