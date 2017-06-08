json.extract! job, :id, :institution_id, :job_type_id, :title, :description, :created_at, :updated_at
json.url job_url(job, format: :json)
