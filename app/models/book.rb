# -*- coding: utf-8 -*-
class Book < ActiveRecord::Base
  attr_accessible :ISBN, :bookname, :author, :price, :publisheddate, :publisher, :place
#  attr_accessible :ISBN, :bookname, :author, :price, :publisheddate, :publisher
  has_one :status

  def ISBN=(value)
    value = value.gsub('-','')
    write_attribute(:ISBN, value)
  end

  validates_presence_of :ISBN, :bookname, :author,
    :message => 'が入力されてません。'
  validates_format_of :ISBN, :with => /^[0-9]{3}?[0-9]{9}[0-9X]$/,
  :message => '"は10桁か13桁で入力してください'
#  validates_length_of :ISBN, :within => 13..13,
#    :message => 'は13桁で入力してください。'
  validates_uniqueness_of :ISBN,
    :message => 'は既に登録されています。'
  validates_numericality_of :price,
    :message => 'は半角数字で入力してください', :allow_blank => true
end
