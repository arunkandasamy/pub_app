class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  field :post, type: String
  field :title, type: String
  field :is_published, type: Boolean
  field :meta_keys, type: String
  field :meta_descriptions, type: String
  field :user_id, type: Integer
  #field :_id, :type => String, default: -> { name.to_s.parameterize }
  
  #ACCESSORS
  attr_accessible :post, :title, :is_published, :meta_keys, :meta_descriptions, :created_at, :user_id


  #ASSOCIATIONS
  belongs_to :user
  belongs_to :tagging, polymorphic: true



  #VALIDATIONS
  validates :post, presence: true
  validates :title, presence: true
  validates :meta_keys, presence: true, length: {minimum: 1, maximum: 1000}
  validates :meta_descriptions, presence: true, length: {minimum: 1, maximum: 200}

  #CALLBACKS  
  
  #SCOPES  

  
  #OTHER METHODS  
  #JOBS
  #PRIVATE
end
