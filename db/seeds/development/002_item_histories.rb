item_histories_data = [
  {
    id:               1,
    item_id:          1,
    status:           ItemHistory::Status::AVAILABLE,
    having_user_id:   1,
    acceptee_user_id: 1,
  },
  {
    id:               2,
    item_id:          2,
    status:           ItemHistory::Status::AVAILABLE,
    having_user_id:   2,
    acceptee_user_id: 1,
    created_at:       '2014-05-01',
  },
  {
    id:               3,
    item_id:          2,
    status:           ItemHistory::Status::USING,
    having_user_id:   1,
    acceptee_user_id: 1,
    created_at:       '2014-05-10',
  },
]

item_histories_data.each do |d|
  next if ItemHistory.find_by_id(d[:id]).present?
  h = ItemHistory.new
  d.each do |k, v|
    h.send("#{k}=", v)
  end
  h.save!
end
