class JournalReaction < ActiveRecord::Base
  unloadable
  belongs_to :journal
  has_many :journal_reaction_users, dependent: :destroy
end
