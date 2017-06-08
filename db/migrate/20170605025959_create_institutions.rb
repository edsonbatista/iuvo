class CreateInstitutions < ActiveRecord::Migration[5.0]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :registration
      t.string :email,              null: false, default: ""
      t.integer :phone
      t.string :password 
      t.timestamps
    end
    add_index :institutions, :email,                unique: true

  end
end
