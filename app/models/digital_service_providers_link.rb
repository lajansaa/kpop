class DigitalServiceProvidersLink < ApplicationRecord
  belongs_to :song
  belongs_to :digital_service_provider
end
