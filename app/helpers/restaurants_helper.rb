module RestaurantsHelper

  def image_url(object)
    object.image_url.nil? ? 'http://www.pricepoint.com/_ProductImages/NoImageFound/Default/960x600/no_image_found.jpg' : object.image_url
  end

  def calculated_rating(object)
    total_rating = 0
    count = object.comments.count
    object.comments.each do |comment|
      total_rating += comment.rating
    end
    total_rating / count.to_f
  end
end
