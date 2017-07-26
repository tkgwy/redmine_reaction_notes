class JournalReactionUser < ActiveRecord::Base
  unloadable
  belongs_to :journal_reaction
  belongs_to :user
end
