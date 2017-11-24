class KakaoController < ApplicationController
  def keyboard
    keyboard = {
    :type => "buttons",
    :buttons => ["중식", "일식", "고기", "라면", "한식", "치킨", "분식/야식/디저트", "기타" ]
    }

    render json: keyboard
    
  end

  def message
    msg = "안녕"
    
    basic_keyboard  = {
      :type => "buttons",
      :buttons => ["중식", "일식", "고기", "라면", "한식", "치킨", "분식/야식/디저트", "기타" ]
    }
    
    user_msg = params[:content]
    if user_msg == "중식"
      msg = ["탕수육", "깐풍기", "칠리새우", "짬뽕", "짜장면", "유린기", "북경식 탕수육", "사천 탕수육"].sample
    elsif user_msg == "일식"
      msg = ["초밥", "돈부리", "참치회", "소바", "라멘", "장어덮밥", "우동", "오코노미야끼", "연어회"].sample
    elsif user_msg == "고기"
      msg = ["삼겹살", "갈비", "갈매기살", "항정살", "목살", "가브리살", "등심", "안심"].sample
    elsif user_msg == "라면"
      msg = ["비빔면", "신라면", "짜왕", "너구리", "삼양라면", "진라면", "안성탕면", "불닭볶음면", "와사마요"].sample
    elsif user_msg == "한식"
      msg = ["냉면", "설렁탕", "간장게장", "닭볶음탕", "김치찌개", "낙지", "육회", "불고기백반", "곱창", "대창", "알탕", "대구탕", "매운탕"].sample
    elsif user_msg == "치킨"
      msg = ["BBQ 양념치킨", "굽네치킨", "교촌치킨", "KFC", "파파이스", "네네치킨 스노윙", "네네치킨 파닭", "BHC 뿌링클", "노랑통닭 반반", "치킨마을 역삼점", "교촌 허니콤보"].sample
    elsif user_msg == "분식/야식/디저트"
      msg = ["떡볶이", "오뎅", "케이크", "빵", "푸딩", "슈크림", "보쌈", "빙수", "순대", "베스킨라빈스 파인트"].sample
    elsif user_msg == "기타"
      msg = ["스테이크", "파스타", "훈제오리", "햄버거", "피자", "만두", "커리", "베트남쌀국수", "굶어", "샐러드", "다이어트해"].sample
    else
      msg = "?????"
    end

    result = {
      message: {
        text: msg
      },
      keyboard: basic_keyboard
    }

    
    render json: result
  end
end

