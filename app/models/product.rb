class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates(:price, numericality: {greater_than_or_equal_to: 0} )

  def purchase
    if quantity > 0
      decrement(:quantity)
      return true
    end
  end

  def self.available
    Product.where.not(quantity: 0)
  end

  def self.newest
    Product.order(:created_at).last
  end

  def self.oldest
    Product.order(:created_at).first
  end


end
