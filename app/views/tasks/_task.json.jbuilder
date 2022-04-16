json.extract! task, :id, :title, :post_start_at, :post_end_at, :post_is_all_day, :post_memo, :created_at, :updated_at
json.url task_url(task, format: :json)
