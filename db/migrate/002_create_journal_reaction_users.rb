class CreateJournalReactionUsers < ActiveRecord::Migration
  def change
    create_table :journal_reaction_users do |t|
      t.belongs_to :journal_reaction, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
