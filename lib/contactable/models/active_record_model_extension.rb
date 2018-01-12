module Sortable
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern

    included do
      def self.sort(sort='created_at', direction='desc')
        sort = 'created_at' unless sort.present?
        direction = 'desc' unless direction.present?
        order(sort + " " + direction)
      end
    end
  end
end