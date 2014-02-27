class Project < ActiveRecord::Base
  attr_accessible :description, :name, :project_picture, :tags_attributes
  has_many :project_picture, as: :picable
  has_many :tags, as: :taggable
  accepts_nested_attributes_for :tags
  has_attached_file :project_picture, styles: { large: "600x600>", medium: "300x300>", small: "150x150>", tiny:"25x25>"}
end
