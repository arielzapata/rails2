class Home
  include Mongoid::Document
  include Mongoid::Enum  
  
  set_total_amount :sum

  enum :status, [:in_progress, :published, :rented]

  field :price, type: Float
  field :extra_service, type: Float
  field :total_amount, type: Float
  field :home_features, type: Float
    
  has_many :rents 
  belongs_to :owner

  validates_presence_of :price
  validates_presence_of :extra_service
  validates_presence_of :total_amount
  validates_presence_of :home_features
  
  def sum
    self.total_amount = price + extra_service
  end
end


