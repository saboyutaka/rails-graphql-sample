module Types
  class BookType < Types::BaseObject
    field :name, String, null: false
    field :author, UserType, null: false
  end
end
