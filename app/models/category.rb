class Category < ActiveRecord::Base
  attr_accessible :name
  
  def self.tokens(query)
    authors = where("name like ?", "%#{query}%")
    if authors.empty?
      [{id: "<<<#{query}>>>", name: "Novo: \"#{query}\""}]
    else
      authors
    end
  end

  def self.ids_from_tokens(tokens)
    tokens.gsub!(/<<<(.+?)>>>/) { create!(name: $1).id }
    tokens.split(',')
  end
end
