class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :short_description
      t.string :long_description
      t.string :nature
      t.string :urgency
      t.string :duration
      t.string :attention_date
      t.string :deadline
      t.string :expiration_date
      t.string :planned_date
      t.string :starting_time
      t.string :removed_date
      t.string :status
      t.timestamps null: false
    end
  end
end
