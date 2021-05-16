module Types
  class UserType < Types::BaseObject
    field :name, String, null: false
    field :country, String, null: false
    field :name2, String, null: false

    def name2
        name = object[:name]
        "#{name} #{name}"
    end
  end
end
