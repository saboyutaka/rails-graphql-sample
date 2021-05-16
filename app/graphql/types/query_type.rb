module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :hello, String, null: false,
      description: "An example field added by the generator"
    def hello
      "Hello World!"
    end

    field :books, [BookType], null: false
    def books
      [{
        name: "New book",
        author: {
          name: "Author",
          country: "US"
        }
      },
      {
        name: "book2",
        author: {
          name: "Author",
          country: "JP"
        }
      },
    ]
    end
  end
end
