module TagsHelper

  def display_tags(tagable_object)
    if tagable_object.tags.any?
      content_tag :span do
        tagable_object.tag.each do |tag|
          concat content_tag :span, tag.name
        end
      end
    end
  end
end