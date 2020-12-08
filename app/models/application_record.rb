class ApplicationRecord < ActiveRecord::Base
  scope :popular, -> {group('name').order('count_all').limit(1).count}
  self.abstract_class = true
end
