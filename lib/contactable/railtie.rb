module Contactable
  class Railtie < Rails::Railtie
    initializer 'contactable' do |app|
      ActiveSupport::on_load(:action_view) do
        include Contactable::ActionViewExtension
      end

      ActiveSupport::on_load(:active_record) do
        include Contactable::ActiveRecordModelExtension
      end
    end
  end
end