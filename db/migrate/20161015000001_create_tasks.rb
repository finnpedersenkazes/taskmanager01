class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :short_description
      t.string :long_description
      t.string :nature
      t.string :urgency
      t.string :duration
      t.date :attention_date
      t.date :deadline
      t.date :expiration_date
      t.date :planned_date
      t.time :starting_time
      t.date :removed_date
      t.integer :status, default: 0
      t.timestamps null: false
    end
  end
end
