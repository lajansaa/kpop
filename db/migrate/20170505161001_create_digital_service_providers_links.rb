class CreateDigitalServiceProvidersLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :digital_service_providers_links do |t|
      t.integer :song_id
      t.integer :digital_service_provider_id
      t.text :link
      t.timestamps
    end
  end
end
