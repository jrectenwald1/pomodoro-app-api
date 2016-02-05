class CreatePomodoros < ActiveRecord::Migration
  def change
    create_table :pomodoros do |t|
      t.string :task
      t.integer :to_do_id

      t.timestamps null: false
    end
  end
end
