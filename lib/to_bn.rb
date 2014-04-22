# encoding: utf-8

require "to_bn/version"

class String
  def to_bn(params = {:parse_date => false})
    bn = gsub(/[1234567890]/, '1'=>'১', '2'=>'২', '3'=>'৩', '4'=>'৪', '5'=>'৫', '6'=>'৬', '7'=>'৭', '8'=>'৮', '9'=>'৯', '0'=>'০')

    if params[:parse_date] == true
      bn.gsub!('January', 'জানুয়ারী')
      bn.gsub!('February', 'ফেব্রুয়ারী')
      bn.gsub!('March', 'মার্চ')
      bn.gsub!('April', 'এপ্রিল')
      bn.gsub!('May', 'মে')
      bn.gsub!('June', 'জুন')
      bn.gsub!('July', 'জুলাই')
      bn.gsub!('August', 'অগাষ্ট')
      bn.gsub!('September', 'সেপ্টেম্বর')
      bn.gsub!('October', 'অক্টোবর')
      bn.gsub!('November', 'নভেম্বর')
      bn.gsub!('December', 'ডিসেম্বর')

      bn.gsub!('Jan', 'জানুয়ারী')
      bn.gsub!('Feb', 'ফেব্রুয়ারী')
      bn.gsub!('Mar', 'মার্চ')
      bn.gsub!('Apr', 'এপ্রিল')
      bn.gsub!('May', 'মে')
      bn.gsub!('Jun', 'জুন')
      bn.gsub!('Jul', 'জুলাই')
      bn.gsub!('Aug', 'অগাষ্ট')
      bn.gsub!('Sep', 'সেপ্টেম্বর')
      bn.gsub!('Oct', 'অক্টোবর')
      bn.gsub!('Nov', 'নভেম্বর')
      bn.gsub!('Dec', 'ডিসেম্বর')

      bn.gsub!('Saturday', 'শনিবার')
      bn.gsub!('Sunday', 'রবিবার')
      bn.gsub!('Monday', 'সোমবার')
      bn.gsub!('Tuesday', 'মঙ্গলবার')
      bn.gsub!('Wednesday', 'বুধবার')
      bn.gsub!('Thursday', 'বৃহস্পতিবার')
      bn.gsub!('Friday', 'শুক্রবার')

      bn.gsub!('Sat', 'শনি')
      bn.gsub!('Sun', 'রবি')
      bn.gsub!('Mon', 'সোম')
      bn.gsub!('Tues', 'মঙ্গল')
      bn.gsub!('Tue', 'মঙ্গল')
      bn.gsub!('Wed', 'বুধ')
      bn.gsub!('Thurs', 'বৃহস্পতি')
      bn.gsub!('Thu', 'বৃহস্পতি')
      bn.gsub!('Fri', 'শুক্র')

      bn.gsub!('Boishakh', 'বৈশাখ')
      bn.gsub!('Joishtho', 'জ্যৈষ্ঠ')
      bn.gsub!('Ashar', 'আষাঢ়')
      bn.gsub!('Srabon', 'শ্রাবণ')
      bn.gsub!('Bhadro', 'ভাদ্র')
      bn.gsub!('Ashin', 'আশ্বিন')
      bn.gsub!('Kartrik','কার্তিক')
      bn.gsub!('Agrohayon','অগ্রহায়ণ')
      bn.gsub!('Poush', 'পৌষ')
      bn.gsub!('Magh', 'মাঘ')
      bn.gsub!('Falgun', 'ফাল্গুন ')
      bn.gsub!('Chaitro', 'চৈত্র')
    end

    return bn
  end
end

class Integer < Numeric
  def to_bn(params = {:in_words => false})
    self.to_s.to_bn
  end
end

class Float < Numeric
  def to_bn(params = {:in_words => false})
    self.to_s.to_bn
  end
end

