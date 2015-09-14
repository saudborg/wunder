class CreateDriverApplications < ActiveRecord::Migration
  def change
    create_table :driver_applications do |t|
      t.integer :user_id, null: false
      t.string :phone, limit: 255, null: false
      t.string :status, limit: 255, null: false, default: "pending"
      t.integer :city_id, null: false
      t.datetime :created_at
      t.datetime :updated_at

    end
  end
end
