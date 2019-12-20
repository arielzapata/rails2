class Home
  include Mongoid::Document
  
  before_validation :sum
  
  field :price, type: Float
  field :extra_service, type: Float
  field :total_amount, type: Float
  field :home_features, type: Hash, default: { garden: false, furnished: false, gym: false }
    
  has_many :rents 
  belongs_to :owner

  validates_presence_of :price
  validates_presence_of :extra_service
  validates_presence_of :home_features

  def sum
    self.total_amount = price + extra_service
  end
end
