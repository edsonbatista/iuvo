class CreateAdministrations < ActiveRecord::Migration[5.0]
  def change
    create_table :administrations do |t|
      t.references :user, foreign_key: true
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end
