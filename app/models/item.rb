class Item < ActiveRecord::Base
  has_many :item_histories, -> {
    order(created_at: :desc)
  }

  # 最新のstatusを返す
  def current_status
    return item_histories.first.status if item_histories.first.present?
    ItemHistory::Status::INITIALIZED
  end

  # 貸出可能かどうかを調べる
  def available?
    [ItemHistory::Status::AVAILABLE].include?(current_status) ? true : false
  end
end
