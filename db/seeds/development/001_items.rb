item_data = [
  { id: 1, icon_name: 'key_icon.png', name: 'No. 1' },
  { id: 2, icon_name: 'key_icon.png', name: 'No. 2' },
  { id: 3, icon_name: 'key_icon.png', name: 'No. 3' },
]

item_data.each do |d|
  next if Item.find_by_id(d[:id]).present?
  h = Item.new
  d.each do |k, v|
    h.send("#{k}=", v)
  end
  h.save!
end
