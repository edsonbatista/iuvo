class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.references :job, foreign_key: true
      t.references :user, foreign_key: true
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
