class Job < ApplicationRecord
  belongs_to :institution
  belongs_to :job_type
end
