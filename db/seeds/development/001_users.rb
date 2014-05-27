users_data = [
  {
    id:       1,
    email:    'morimori@bpsinc.jp',
    password: 'test'
  },
  {
    id:       2,
    email:    'test@bpsinc.jp',
    password: 'test'
  }
]

users_data.each do |d|
  next if User.find_by_id(d[:id]).present?
  h = User.new
  d.each do |k, v|
    h.send("#{k}=", v)
  end
  h.password_confirmation = d[:password]
  h.save!
end
