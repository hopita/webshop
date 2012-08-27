class Review < ActiveRecord::Base
  attr_accessible :description, :rating, :sumary
  belongs_to :product
  belongs_to :user, :counter_cache => :reviews_count

  after_create :increment_count

  def increment_count

    #self.product.reviews_count +=1
    #self.product.save

    self.product.increment! :reviews_count
  end
end
