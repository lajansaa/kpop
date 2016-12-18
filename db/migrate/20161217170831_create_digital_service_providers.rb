class CreateDigitalServiceProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :digital_service_providers do |t|
      t.string :name
      t.text :profile_img
    end
  end
end
