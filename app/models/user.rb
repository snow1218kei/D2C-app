class User < ApplicationRecord	
  has_many :relationships
  has_many :products, through: :relationships
  
  def purchase(something)
    self.relationships.find_or_create_by(product_id: something.id)
  end  
  
  before_save { self.email.downcase! }	
  validates :name, presence: true, length: { maximum: 50 }	
  validates :email, presence: true, length: { maximum: 255 },	
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },	
                    uniqueness: { case_sensitive: false }	
  has_secure_password	
end	