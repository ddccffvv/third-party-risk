class ControllerProcessor < ApplicationRecord

  belongs_to :controller, class_name: "Service", foreign_key: "controller_id", inverse_of: "controller_processor_associations"
  belongs_to :processor, class_name: "Service", foreign_key: "processor_id", inverse_of: "processor_controller_associations"
end
