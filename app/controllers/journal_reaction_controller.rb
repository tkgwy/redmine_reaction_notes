class JournalReactionController < ApplicationController
  unloadable


  def create
    @journal = Journal.find(params[:journal_id])
    reaction = @journal.journal_reactions.find_or_create_by(body: params[:body])
    reaction_user = reaction.journal_reaction_users.find_or_initialize_by(user: User.current)
    unless reaction_user.new_record? then
      reaction_user.destroy
    else
      reaction_user.save!
    end

    reaction.destroy if reaction.journal_reaction_users.size == 0
  end
end
