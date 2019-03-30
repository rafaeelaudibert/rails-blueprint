# frozen_string_literal: true

# Default Model class
# Every other Model in the app should inherit from this class
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
