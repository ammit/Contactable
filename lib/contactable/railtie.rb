module Sortable
  class Railtie < Rails::Railtie
    initializer 'contactable' do |app|
      ActiveSupport::on_load(:action_view) do
        include Sortable::ActionViewExtension
      end

      ActiveSupport::on_load(:active_record) do
        include Sortable::ActiveRecordModelExtension
      end
    end
  end
end