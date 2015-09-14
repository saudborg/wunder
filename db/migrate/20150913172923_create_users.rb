class CreateUsers < ActiveRecord::Migration
  #script to create the fields with their proper validations
  def change
    create_table :users do |t|
      t.string :first_name, limit: 255, null: false
      t.string :last_name, limit: 255, null: false
      t.string :email, limit: 255, null: false
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
