# encoding: utf-8
require "single1_multi2_counter/version"

module Single1Multi2Counter
  SINGLE_CHARS = (" ".."~").to_a.freeze   #http://e-words.jp/p/r-ascii.html
  HANKAKU_CHARS = ("｡".."ﾟ").to_a.freeze  #http://ja.wikipedia.org/wiki/%E5%8D%8A%E8%A7%92%E3%82%AB%E3%83%8A
  LINE_BREAKES = ["\r", "\n"].freeze
  
  def count_as_s1m2(options = {:ignore_line_breaks => true})
    chars       = self.chars.to_a
    
    singles     = chars.find_all{|char| SINGLE_CHARS.include?(char)}.size
    hankakues   = chars.find_all{|char| HANKAKU_CHARS.include?(char)}.size
    line_breaks = options[:ignore_line_breaks] ? chars.find_all{|char| LINE_BREAKES.include?(char)}.size : 0
    multies     = (chars.size - singles - hankakues - line_breaks) * 2
    
    singles + hankakues + multies
  end
end

class String
  include Single1Multi2Counter
end