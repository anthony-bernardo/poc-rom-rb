module Entities
  class User < ROM::Struct
    def hello
      name
    end
  end
end