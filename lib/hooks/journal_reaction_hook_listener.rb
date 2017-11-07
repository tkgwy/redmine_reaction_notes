class JournalReactionHookListener < Redmine::Hook::ViewListener
  render_on :view_issues_show_details_bottom, partial: 'journal_reaction_init'
  render_on :view_issues_history_journal_bottom, partial: 'journal_reaction_show'
end
