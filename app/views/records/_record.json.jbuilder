json.extract! record, :id, :user_name, :crop_name, :date, :work_name, :work_reason, :technical_supplement, :consideration, :evidence, :photo, :created_at, :updated_at
json.url record_url(record, format: :json)
