class AddHomeUrlDigitalServiceProviders < ActiveRecord::Migration[5.0]
  def change
    add_column :digital_service_providers, :home_url, :text
  end
end
