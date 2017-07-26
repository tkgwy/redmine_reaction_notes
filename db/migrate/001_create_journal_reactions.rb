class CreateJournalReactions < ActiveRecord::Migration
  def change
    create_table :journal_reactions do |t|
      t.belongs_to :journal, index: true, foreign_key: true
      t.string :body
      t.timestamps null: false
    end
  end
end
