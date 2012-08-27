class Product < ActiveRecord::Base
  attr_accessible :brand, :category, :description, :name, :price, :reviews_count
  has_many :reviews, :dependent => :destroy

  validates :name, length: {minimum: 4},
            :allow_blank => true
  validates :price, presence: true, numericality: true

  validate :validate_price_free

  def validate_price_free
    if category == 'hogar'  &&  price > 0
        errors.add :base, "para la categoria hogar el precio debe ser 0"
    end
  end
  before_save :fill_description

  def fill_description

      self.description = name if description.blank?

  end

end
