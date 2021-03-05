json.extract! dispatch, :id, :status, :description, :time_arrived, :driver_id, :plantation_id, :created_at, :updated_at
json.url dispatch_url(dispatch, format: :json)
