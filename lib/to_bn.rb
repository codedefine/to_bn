# encoding: utf-8

require "to_bn/version"

class String
  def to_bn(params = {:parse_date => false})
    unless params[:parse_date] == true
      return gsub(/[1234567890]/, '1'=>'১', '2'=>'২', '3'=>'৩', '4'=>'৪', '5'=>'৫', '6'=>'৬', '7'=>'৭', '8'=>'৮', '9'=>'৯', '0'=>'০')
    else
      date = to_bn
      date.gsub!('January', 'জানুয়ারী')
      date.gsub!('February', 'ফেব্রুয়ারী')
      date.gsub!('March', 'মার্চ')
      date.gsub!('April', 'এপ্রিল')
      date.gsub!('May', 'মে')
      date.gsub!('June', 'জুন')
      date.gsub!('July', 'জুলাই')
      date.gsub!('August', 'অগাষ্ট')
      date.gsub!('September', 'সেপ্টেম্বর')
      date.gsub!('October', 'অক্টোবর')
      date.gsub!('November', 'নভেম্বর')
      date.gsub!('December', 'ডিসেম্বর')

      date.gsub!('Jan', 'জানুয়ারী')
      date.gsub!('Feb', 'ফেব্রুয়ারী')
      date.gsub!('Mar', 'মার্চ')
      date.gsub!('Apr', 'এপ্রিল')
      date.gsub!('May', 'মে')
      date.gsub!('Jun', 'জুন')
      date.gsub!('Jul', 'জুলাই')
      date.gsub!('Aug', 'অগাষ্ট')
      date.gsub!('Sep', 'সেপ্টেম্বর')
      date.gsub!('Oct', 'অক্টোবর')
      date.gsub!('Nov', 'নভেম্বর')
      date.gsub!('Dec', 'ডিসেম্বর')

      date.gsub!('Saturday', 'শনিবার')
      date.gsub!('Sunday', 'রবিবার')
      date.gsub!('Monday', 'সোমবার')
      date.gsub!('Tuesday', 'মঙ্গলবার')
      date.gsub!('Wednesday', 'বুধবার')
      date.gsub!('Thursday', 'বৃহস্পতিবার')
      date.gsub!('Friday', 'শুক্রবার')

      date.gsub!('Sat', 'শনি')
      date.gsub!('Sun', 'রবি')
      date.gsub!('Mon', 'সোম')
      date.gsub!('Tues', 'মঙ্গল')
      date.gsub!('Tue', 'মঙ্গল')
      date.gsub!('Wed', 'বুধ')
      date.gsub!('Thurs', 'বৃহস্পতি')
      date.gsub!('Thu', 'বৃহস্পতি')
      date.gsub!('Fri', 'শুক্র')

      date.gsub!('Boishakh', 'বৈশাখ')
      date.gsub!('Joishtho', 'জ্যৈষ্ঠ')
      date.gsub!('Ashar', 'আষাঢ়')
      date.gsub!('Srabon', 'শ্রাবণ')
      date.gsub!('Bhadro', 'ভাদ্র')
      date.gsub!('Ashin', 'আশ্বিন')
      date.gsub!('Kartrik','কার্তিক')
      date.gsub!('Agrohayon','অগ্রহায়ণ')
      date.gsub!('Poush', 'পৌষ')
      date.gsub!('Magh', 'মাঘ')
      date.gsub!('Falgun', 'ফাল্গুন ')
      date.gsub('Chaitro', 'চৈত্র')
    end
  end
end

class Integer < Numeric
  def to_bn
    self.to_s.to_bn
  end
end

class Float < Numeric
  def to_bn
    self.to_s.to_bn
  end
end

