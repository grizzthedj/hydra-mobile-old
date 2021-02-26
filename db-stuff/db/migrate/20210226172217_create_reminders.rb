class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      t.datetime :reminder_time
      t.string :type
    end
    add_reference :reminders, :activity
    add_foreign_key :reminders, :activities
  end
end
