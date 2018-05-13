class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :activity
      t.string :type
      t.string :location
      t.integer :size
      t.string :promoter
      t.string :architect
      t.string :manager
      t.date :start_date
      t.date :end_date
      t.string :photo

      t.timestamps
    end
  end
end
