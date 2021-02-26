class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :details
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.integer :reminder
    end
    add_reference :activities, :category
    add_foreign_key :activities, :categories
  end
end
