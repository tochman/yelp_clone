module RestaurantsHelper

  def image_url(object)
    object.image_url.nil? ? default_url : object.image_url
  end

  def calculated_rating(object)
    total_rating = object.comments.any? ? get_rating(object) : object.rating
    count = object.comments.any? ? object.comments.count : 1
    total_rating / count.to_f
  end

  private
  def get_rating(object)
    rating = 0
    object.comments.each do |comment|
      rating += comment.rating
    end
    rating
  end

  def default_url
    'http://www.pricepoint.com/_ProductImages/NoImageFound/Default/960x600/no_image_found.jpg'
  end
end
