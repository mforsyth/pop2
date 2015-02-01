class AboutPopController < ApplicationController
  def index
  end

  def manifesto
  end

  def staff
  end

  def board
    @bios = BoardMember.find(:all, :order => "rank is not null desc, rank asc, last_name asc")
  end

  def faq
  end


  def self.sections
    [
      ['The Organization', 'index'],
      ['Staff Directory', 'staff'],
      ['Board Member Bios', 'board'],
      ['FAQ', 'faq']
    ]
  end

end
