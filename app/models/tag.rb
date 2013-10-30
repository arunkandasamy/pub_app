class Tag
  include Mongoid::Document
  field :name, type: String
  #GEMS USED
  #ACCESSORS
  #ASSOCIATIONS
 
  #VALIDATIONS
  #CALLBACKS
  #SCOPES
  scope :pub_tags, where(id: Tagging.where(taggable_id: Article.pub.pluck(:id)).pluck(:tag_id).uniq).order(:name)
  #OTHER METHODS
  #JOBS
  #PRIVATE
end
