class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.references :institution, foreign_key: true
      t.references :job_type, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
