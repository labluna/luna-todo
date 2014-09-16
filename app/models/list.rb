class List
  include Mongoid::Document

  field :title, type: String
  field :owner, type: Fixnum

  embeds_many :items

  accepts_nested_attributes_for :items, allow_destroy: true

  # Validates
  validates_presence_of :title, :owner

end

