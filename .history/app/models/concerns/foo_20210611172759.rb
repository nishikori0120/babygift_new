require "nkf"

module Katakana
  extend ActiveSupport::Concern

  def change_kana(text)
    NKF.nkf("-W -w -Z1 --katakana", text).strip
  end
end