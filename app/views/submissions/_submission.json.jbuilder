json.extract! submission, :id, :job_id, :user_id, :description, :status, :created_at, :updated_at
json.url submission_url(submission, format: :json)
