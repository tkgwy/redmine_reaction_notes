require_dependency 'user'

module UserPatch
  extend ActiveSupport::Concern

  included do
    unloadable
    has_many :journal_reaction_users
  end
end

ActionDispatch::Reloader.to_prepare do
  unless User.included_modules.include?(UserPatch)
    UserPatch.send(:include, UserPatch)
  end
end
