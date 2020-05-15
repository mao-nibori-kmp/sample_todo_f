class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :status
      t.date :limitDay

      t.timestamps
    end
  end
end
