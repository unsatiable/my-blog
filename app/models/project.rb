class Project < ActiveRecord::Base
  attr_accessible :description, :name, :project_picture
  has_attached_file :project_picture, styles: { large: "600x600>", medium: "300x300>", small: "150x150>", tiny:"25x25>"}
end
