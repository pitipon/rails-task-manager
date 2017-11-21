class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :todo
      t.boolean :done

      t.timestamps
    end
  end
end
