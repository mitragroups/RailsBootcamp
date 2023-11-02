class Book < ApplicationRecord
  def self.buku_mahal
    where('price > 500000')
  end

  def self.buku_tebal
    where('page > 300').pluck(:title, :price)
  end

  def self.urutan_buku_sesuai_abjad
    order(title: :asc).pluck(:title, :price)
  end
end
