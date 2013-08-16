class TagsController < ApplicationController
  def index
  	@tags = Contact.tag_counts_on(:tags)
  end
end
