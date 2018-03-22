class UsersController < ApplicationController


  def show
    user_repo = UserRepository.new(rom)
    @results = user_repo.by_id(1)
    #@results = rom.relations[:users].by_pk(1).one
  end

end
