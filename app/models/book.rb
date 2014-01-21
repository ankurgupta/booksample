class Book < ActiveRecord::Base
  attr_accessible :title, :body, :author, :isbn10, :isbn13, :rank

  

end
