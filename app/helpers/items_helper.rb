module ItemsHelper
  # How much time is left before the specified item is expired?
  def time_left(item)
    return "No time left" if item.expired?
    distance_of_time_in_words(item.validity.ago, item.created_at) + " left"
  end
end
