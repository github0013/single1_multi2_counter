# encoding: utf-8
require File.dirname(__FILE__) + "/spec_helper"

require "single1_multi2_counter"

describe "Single1Multi2Counter" do
  
  it "should count zenkaku" do
    "全角　文字".count_as_s1m2.should == 5*2
  end
  
  it "should count single" do
    "012 abc".count_as_s1m2.should == 7*1
  end
  
  it "should count hankaku" do
    "ﾊﾝｶｸ ﾃﾞｽ".count_as_s1m2.should == 8*1
  end
  
  it "should count mixed" do
    "UP down 123 全角　スペース ﾊﾟﾙﾌﾟﾝﾃ".count_as_s1m2.should == 34
  end
  
  it "should not count line breaks" do
    "\r\n".count_as_s1m2.should == 0
  end
end