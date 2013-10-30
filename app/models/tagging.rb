class Tagging
  include Mongoid::Document
  field :tag_id, type: Integer
  field :taggable_id, type: Integer
  field :taggable_type, type: String
  field :tagger_id, type: Integer
  field :tagger_type, type: Integer
  field :context, type: String
  field :created_at, type: Time

  #GEMS USED

  #ACCESSORS

  #ASSOCIATIONS
  belongs_to :tag

  #VALIDATIONS

  #CALLBACKS

  #SCOPES
  def self.pluck_taggable_ids(tid)
  	where(tag_id: tid, taggable_type: "Article").pluck(:taggable_id)
  end

  #OTHER METHODS

  #JOBS

  #PRIVATE
end
