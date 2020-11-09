# frozen_string_literal: true

require 'dish'

hash = {
  title: 'My Title',
  authors: [
    { id: 1, name: 'Mike Anderson' },
    { id: 2, name: 'Well D.' }
  ],
  active: false
}

p book = Dish(hash) # or hash.to_dish if you required "dish/ext"
p book.title           # => "My Title"
p book.authors.length  # => 2
p book.authors[1].name # => "Well D."
p book.title?          # => true
p book.active?         # => false
p book.other           # => nil
p book.other?          # => false
