class StaticPagesController < ApplicationController
  
  def home
  end

  def hackers
    @users = User.where(kind: 'hacker')
    @new_user = User.new
  end

  def sponsors
    @users = User.where(kind: 'sponsor')
    @new_user = User.new(kind: 'sponsor')
  end

  def judges
    @users = User.where(kind: 'judge')
    @new_user = User.new(kind: 'judge')
  end

  def sponsor_deck

  end
  
end
