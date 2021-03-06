class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.references :user, index: true
      t.string :name
      t.references :location, index: true
      t.string :description
      t.string :web
      t.string :phone

      t.timestamps null: false
    end
    add_foreign_key :companies, :users
    add_foreign_key :companies, :locations
  end
end
