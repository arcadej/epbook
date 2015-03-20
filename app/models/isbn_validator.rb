# coding: utf-8

class IsbnValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    record.errors.add(attribute, "は10桁か13桁で入力してください")
    unless value =~ /(^[0-9]{3})?-[0-9]{1}-[0-9]{3,5}-[0-9]{4}-[0-9X]{1}$/
    end
  end
