class Status < ActiveRecord::Base
  attr_accessible :book_id, :existance, :rental
belongs_to :book

#def existance
#  if :existance == "true"
#    :existace => true
#  else
#    :existace => false
#  end
#end

end
