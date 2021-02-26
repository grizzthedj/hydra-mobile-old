class CreateJournal < ActiveRecord::Migration[6.1]
  def change
    create_table :journals do |t|
      t.string :mood
      t.datetime :journal_date
      t.string :went_well
      t.string :gone_better
      t.string :thankful
    end 
  end
end
