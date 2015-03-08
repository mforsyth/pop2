class AboutPopController < ApplicationController
  def index
  end

  def manifesto
  end

  def staff
  end

  def board
    @bios = BoardMember.
      order("rank is not null desc, rank asc, last_name asc")
  end

  def faq
  end


  def self.sections
    [
      ['The Organization', '/about_pop'],
      ['Staff Directory', '/about_pop/staff'],
      ['Board Member Bios', '/about_pop/board'],
      ['FAQ', '/about_pop/faq']
    ]
  end

end
