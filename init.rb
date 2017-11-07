require 'model/journal_patch'
require 'model/user_patch'
require 'hooks/journal_reaction_hook_listener'
Redmine::Plugin.register :redmine_reaction_notes do
  name 'Redmine Reaction Notes plugin'
  author 'Yosuke Takigawa'
  description 'This plugin provides reaction feature like Slack for notes.'
  version '0.0.1'
  url 'https://github.com/tkgwy/redmine_reaction_notes'
  author_url 'https://github.com/tkgwy'
end
