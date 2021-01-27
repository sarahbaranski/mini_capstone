class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { minimum: 2, maximum: 500 }
  #validates :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "must have a valid file type", multiline: true
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :categories, through: :category_products

  def is_discounted
    price <= 300
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
