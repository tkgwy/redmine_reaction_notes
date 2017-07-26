require_dependency 'journal'

module JournalPatch
  extend ActiveSupport::Concern
  included do
    unloadable
    has_many :journal_reactions, dependent: :destroy
  end
end

ActionDispatch::Reloader.to_prepare do
  unless Journal.included_modules.include?(JournalPatch)
    Journal.send(:include, JournalPatch)
  end
end
