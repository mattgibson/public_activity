module PublicActivity
  module ORM
    module ActiveRecord
      # Implements {PublicActivity::Trackable} for ActiveRecord
      # @see PublicActivity::Trackable
      module Trackable
        # Creates an association for activities where self is the *trackable*
        # object.
        def self.extended(base)
          base.has_many PublicActivity.config.table_name.to_sym, :class_name => "::PublicActivity::Activity", :as => :trackable
        end
      end
    end
  end
end
