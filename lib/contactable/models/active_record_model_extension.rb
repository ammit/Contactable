module Contactable
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern

    class_methods do
      def has_contacts
        has_many :contacts, as: :contactable, dependent: :destroy
        accepts_nested_attributes_for :contacts, allow_destroy: true


        # Removed
        # As casuing n+1 query

        # after_initialize do |record|
        #   record.contacts.build if record.contacts.count <= 0
        # end
      end
    end
  end
end