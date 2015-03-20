class Magagine < ActiveRecord::Base
  attr_accessible :mgcode, :mgname, :number, :price, :publisheddate, :publisher, :volume
end
