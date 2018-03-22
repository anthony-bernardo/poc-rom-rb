require 'entities'

class UserRepository < ROM::Repository[:users]

  def by_id(id)
    users.by_pk(id).one
  end

end