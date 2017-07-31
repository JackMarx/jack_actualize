class CreateDailyProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :daily_problems do |t|
      t.text :content
      t.integer :week
      t.integer :day

      t.timestamps
    end
  end
end
