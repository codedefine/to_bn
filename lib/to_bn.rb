# encoding: utf-8

require "to_bn/version"

class String
  def to_bn(params = {:parse_date => false, :in_words => false})
    if params[:in_words] == true
      bn = gsub(/[1234567890]/, '1'=>'এক', '2'=>'দুই', '3'=>'তিন', '4'=>'চার', '5'=>'পাঁচ', '6'=>'ছয়', '7'=>'সাত', '8'=>'আট', '9'=>'নয়', '0'=>'শূন্য')
    else
      bn = gsub(/[1234567890]/, '1'=>'১', '2'=>'২', '3'=>'৩', '4'=>'৪', '5'=>'৫', '6'=>'৬', '7'=>'৭', '8'=>'৮', '9'=>'৯', '0'=>'০')
    end

    if params[:parse_date] == true
      bn.gsub!(/January/i, 'জানুয়ারী')
      bn.gsub!(/February/i, 'ফেব্রুয়ারী')
      bn.gsub!(/March/i, 'মার্চ')
      bn.gsub!(/April/i, 'এপ্রিল')
      bn.gsub!(/May/i, 'মে')
      bn.gsub!(/June/i, 'জুন')
      bn.gsub!(/July/i, 'জুলাই')
      bn.gsub!(/August/i, 'অগাষ্ট')
      bn.gsub!(/September/i, 'সেপ্টেম্বর')
      bn.gsub!(/October/i, 'অক্টোবর')
      bn.gsub!(/November/i, 'নভেম্বর')
      bn.gsub!(/December/i, 'ডিসেম্বর')

      bn.gsub!(/Jan/i, 'জানুয়ারী')
      bn.gsub!(/Feb/i, 'ফেব্রুয়ারী')
      bn.gsub!(/Mar/i, 'মার্চ')
      bn.gsub!(/Apr/i, 'এপ্রিল')
      bn.gsub!(/May/i, 'মে')
      bn.gsub!(/Jun/i, 'জুন')
      bn.gsub!(/Jul/i, 'জুলাই')
      bn.gsub!(/Aug/i, 'অগাষ্ট')
      bn.gsub!(/Sep/i, 'সেপ্টেম্বর')
      bn.gsub!(/Oct/i, 'অক্টোবর')
      bn.gsub!(/Nov/i, 'নভেম্বর')
      bn.gsub!(/Dec/i, 'ডিসেম্বর')

      bn.gsub!(/Saturday/i, 'শনিবার')
      bn.gsub!(/Sunday/i, 'রবিবার')
      bn.gsub!(/Monday/i, 'সোমবার')
      bn.gsub!(/Tuesday/i, 'মঙ্গলবার')
      bn.gsub!(/Wednesday/i, 'বুধবার')
      bn.gsub!(/Thursday/i, 'বৃহস্পতিবার')
      bn.gsub!(/Friday/i, 'শুক্রবার')

      bn.gsub!(/Sat/i, 'শনি')
      bn.gsub!(/Sun/i, 'রবি')
      bn.gsub!(/Mon/i, 'সোম')
      bn.gsub!(/Tues/i, 'মঙ্গল')
      bn.gsub!(/Tue/i, 'মঙ্গল')
      bn.gsub!(/Wed/i, 'বুধ')
      bn.gsub!(/Thurs/i, 'বৃহস্পতি')
      bn.gsub!(/Thu/i, 'বৃহস্পতি')
      bn.gsub!(/Fri/i, 'শুক্র')

      bn.gsub!(/Boishakh/i, 'বৈশাখ')
      bn.gsub!(/Joishtho/i, 'জ্যৈষ্ঠ')
      bn.gsub!(/Ashar/i, 'আষাঢ়')
      bn.gsub!(/Srabon/i, 'শ্রাবণ')
      bn.gsub!(/Bhadro/i, 'ভাদ্র')
      bn.gsub!(/Ashin/i, 'আশ্বিন')
      bn.gsub!(/Kartrik/i,'কার্তিক')
      bn.gsub!(/Agrohayon/i,'অগ্রহায়ণ')
      bn.gsub!(/Poush/i, 'পৌষ')
      bn.gsub!(/Magh/i, 'মাঘ')
      bn.gsub!(/Falgun/i, 'ফাল্গুন ')
      bn.gsub!(/Chaitro/i, 'চৈত্র')
    end

    return bn
  end
end

class Integer < Numeric
  def to_bn(params = {:in_words => false})
    if params[:in_words] == true
      list = %w(শূন্য এক দুই তিন চার পাঁচ ছয় সাত আট নয় দশ এগার বারো তেরো চৌদ্দ পনেরো ষোল সতের আঠারো উনিশ বিশ একুশ বাইশ তেইশ চৌব্বিশ পঁচিশ ছাব্বিশ সাতাশ আঠাশ উনত্রিশ ত্রিশ একত্রিশ বত্রিশ তেত্রিশ চৌত্রিশ পঁয়ত্রিশ ছত্রিশ সাঁইত্রিশ আটত্রিশ উনচল্লিশ চল্লিশ একচল্লিশ বিয়াল্লিশ তেতাল্লিশ চুয়াল্লিশ পঁয়তাল্লিশ ছেচল্লিশ সাতচল্লিশ আটচল্লিশ উনপঞ্চাশ পঞ্চাশ একান্ন বায়ান্ন তিপ্পান্ন চুয়ান্ন পঞ্চান্ন ছাপ্পান্ন সাতান্ন আটান্ন উনষাট ষাট একষট্টি বাষট্টি তেষট্টি চৌষট্টি পঁয়ষট্টি ছেষট্টি সাতষট্টি আটষট্টি উনসত্তর সত্তর একাত্তর বাহাত্তর তিয়াত্তর চুয়াত্তর পঁচাত্তর ছিয়াত্তর সাতাত্তর আটাত্তর উনআশি আশি একাশি বিরাশি তিরাশি চুরাশি পঁচাশি ছিয়াশি সাতাশি আটাশি উননব্বই নব্বই একানব্বই বিরানব্বই তিরানব্বই চুরানব্বই পঁচানব্বই ছিয়ানব্বই সাতানব্বই আটানব্বই নিরানব্বই)
      if self < 100
        return list[self]
      else
        if self >= 10000000
          if self % 10000000 > 0
            return (self/10000000).to_bn(params) + " কোটি  " + (self % 10000000).to_bn(params)
          else
            return (self/10000000).to_bn(params) + " কোটি "
          end
        elsif self >= 100000
          if self % 100000 > 0
            return (self/100000).to_bn(params) + " লক্ষ " + (self % 100000).to_bn(params)
          else
            return (self/100000).to_bn(params) + " লক্ষ"
          end
        elsif self >= 1000
          if self % 1000 > 0
            return (self/1000).to_bn(params) + " হাজার " + (self % 1000).to_bn(params)
          else
            return (self/1000).to_bn(params) + " হাজার"
          end
        elsif self >= 100
          if self % 100 > 0
            return (self/100).to_bn(params) + " শত " + (self % 100).to_bn(params)
          else
            return (self/100).to_bn(params) + " শত"
          end
        end
      end
    else
      return self.to_s.to_bn params
    end
  end
end

class Float < Numeric
  def to_bn(params = {:in_words => false})
    if params[:in_words] == true
      parts = self.to_s.split(".")
      if parts.count > 1
        self.to_i.to_bn(params) + ' দশমিক ' + parts[1].scan(/./).join(' ').to_bn(params)
      else
        return self.to_i.to_bn(params)
      end
    else
      self.to_s.to_bn params
    end
  end
end

