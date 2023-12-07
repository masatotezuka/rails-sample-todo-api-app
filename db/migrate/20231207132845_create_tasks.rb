class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :content, null: false
      t.boolean :done, null: false, default: false
      t.date :deadline

      t.timestamps
    end
  end
end
