class SeverityLevel
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  field :color, :type => String
end
