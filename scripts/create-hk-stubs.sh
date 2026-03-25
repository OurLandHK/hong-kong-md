#!/bin/bash
# Generate Hong Kong knowledge article stubs
# This creates empty article files with proper frontmatter and section headers

KNOWLEDGE_DIR="/Users/pegasus/hongkong-md/knowledge"
DATE="2026-03-24"

create_zh_stub() {
  local category="$1"
  local title="$2"
  local filename="$3"
  local tags="$4"
  
  cat > "$KNOWLEDGE_DIR/$category/$filename.md" << EOF
---
title: '$title'
description: ''
date: $DATE
category: $(echo "$category" | tr '[:upper:]' '[:lower:]')
tags: [$tags]
lastVerified: '$DATE'
lastHumanReview: false
---

## 三十秒認識

<!-- 30-second overview goes here -->

## 深入了解

<!-- 5-minute read goes here -->

## 延伸閱讀

<!-- Further reading links go here -->

## 參考資料

<!-- References with clickable URLs go here -->
EOF
}

create_en_stub() {
  local category="$1"
  local title="$2"
  local filename="$3"
  local tags="$4"
  
  cat > "$KNOWLEDGE_DIR/en/$category/$filename.md" << EOF
---
title: '$title'
description: ''
date: $DATE
category: $(echo "$category" | tr '[:upper:]' '[:lower:]')
tags: [$tags]
chineseTitle: ''
translationStatus: 'planned'
lastVerified: '$DATE'
lastHumanReview: false
---

## In 30 Seconds

<!-- 30-second overview goes here -->

## Deep Dive

<!-- 5-minute read goes here -->

## Further Reading

<!-- Further reading links go here -->

## References

<!-- References with clickable URLs go here -->
EOF
}

create_hub() {
  local category="$1"
  local title_zh="$2"
  local title_en="$3"
  local desc_zh="$4"
  
  cat > "$KNOWLEDGE_DIR/$category/_${category} Hub.md" << EOF
---
title: '$title_en'
description: '$desc_zh'
date: $DATE
category: $(echo "$category" | tr '[:upper:]' '[:lower:]')
tags: []
featured: true
lastVerified: '$DATE'
lastHumanReview: false
---

# $title_zh

<!-- Hub introduction goes here -->

## 核心文章

<!-- Links to key articles in this category -->

## 延伸探索

<!-- Links to related categories -->
EOF
}

# ═══════════════════════════════════════════
# HISTORY
# ═══════════════════════════════════════════
create_hub "History" "香港歷史" "History" "從漁村到殖民港口到國際都會：一百八十年的變遷"

create_zh_stub "History" "開埠前的香港" "開埠前的香港" "'歷史', '開埠前'"
create_zh_stub "History" "南京條約與香港割讓" "南京條約與香港割讓" "'歷史', '殖民'"
create_zh_stub "History" "英治時期" "英治時期" "'歷史', '殖民'"
create_zh_stub "History" "日佔時期" "日佔時期" "'歷史', '戰爭'"
create_zh_stub "History" "戰後重建與經濟起飛" "戰後重建與經濟起飛" "'歷史', '經濟'"
create_zh_stub "History" "六七暴動" "六七暴動" "'歷史', '社會運動'"
create_zh_stub "History" "香港回歸" "香港回歸" "'歷史', '回歸'"
create_zh_stub "History" "回歸後的香港" "回歸後的香港" "'歷史', '一國兩制'"

create_en_stub "History" "Pre-colonial Hong Kong" "Pre-colonial Hong Kong" "'history', 'pre-colonial'"
create_en_stub "History" "Treaty of Nanjing and the Cession of Hong Kong" "Treaty of Nanjing" "'history', 'colonial'"
create_en_stub "History" "British Colonial Era" "British Colonial Era" "'history', 'colonial'"
create_en_stub "History" "Japanese Occupation" "Japanese Occupation" "'history', 'war'"
create_en_stub "History" "Post-war Reconstruction and Economic Takeoff" "Post-war Economic Takeoff" "'history', 'economy'"
create_en_stub "History" "1967 Riots" "1967 Riots" "'history', 'social movement'"
create_en_stub "History" "Handover of Hong Kong" "Handover of Hong Kong" "'history', 'handover'"
create_en_stub "History" "Post-handover Hong Kong" "Post-handover Hong Kong" "'history', 'one country two systems'"

# ═══════════════════════════════════════════
# GEOGRAPHY
# ═══════════════════════════════════════════
create_hub "Geography" "香港地理" "Geography" "維多利亞港、263個島嶼、郊野公園覆蓋四成土地"

create_zh_stub "Geography" "維多利亞港" "維多利亞港" "'地理', '海港'"
create_zh_stub "Geography" "新界" "新界" "'地理', '區域'"
create_zh_stub "Geography" "九龍" "九龍" "'地理', '區域'"
create_zh_stub "Geography" "香港島" "香港島" "'地理', '區域'"
create_zh_stub "Geography" "大嶼山" "大嶼山" "'地理', '島嶼'"
create_zh_stub "Geography" "香港郊野公園" "香港郊野公園" "'地理', '自然'"
create_zh_stub "Geography" "離島" "離島" "'地理', '島嶼'"

create_en_stub "Geography" "Victoria Harbour" "Victoria Harbour" "'geography', 'harbour'"
create_en_stub "Geography" "New Territories" "New Territories" "'geography', 'region'"
create_en_stub "Geography" "Kowloon" "Kowloon" "'geography', 'region'"
create_en_stub "Geography" "Hong Kong Island" "Hong Kong Island" "'geography', 'region'"
create_en_stub "Geography" "Lantau Island" "Lantau Island" "'geography', 'island'"
create_en_stub "Geography" "Hong Kong Country Parks" "Hong Kong Country Parks" "'geography', 'nature'"
create_en_stub "Geography" "Outlying Islands" "Outlying Islands" "'geography', 'islands'"

# ═══════════════════════════════════════════
# CULTURE
# ═══════════════════════════════════════════
create_hub "Culture" "香港文化" "Culture" "粵劇、東西文化交匯、節慶傳統、廟宇文化"

create_zh_stub "Culture" "粵劇" "粵劇" "'文化', '表演藝術'"
create_zh_stub "Culture" "黃大仙祠" "黃大仙祠" "'文化', '宗教'"
create_zh_stub "Culture" "長洲太平清醮" "長洲太平清醮" "'文化', '節慶'"
create_zh_stub "Culture" "中秋節在香港" "中秋節在香港" "'文化', '節慶'"
create_zh_stub "Culture" "九龍城寨歷史" "九龍城寨歷史" "'文化', '遺產'"
create_zh_stub "Culture" "中西文化交融" "中西文化交融" "'文化', '身份'"
create_zh_stub "Culture" "香港電影業" "香港電影業" "'文化', '電影'"
create_zh_stub "Culture" "廣東話與語言" "廣東話與語言" "'文化', '語言'"
create_zh_stub "Culture" "香港漫畫文化" "香港漫畫文化" "'文化', '漫畫'"

create_en_stub "Culture" "Cantonese Opera" "Cantonese Opera" "'culture', 'performing arts'"
create_en_stub "Culture" "Wong Tai Sin Temple" "Wong Tai Sin Temple" "'culture', 'religion'"
create_en_stub "Culture" "Cheung Chau Bun Festival" "Cheung Chau Bun Festival" "'culture', 'festival'"
create_en_stub "Culture" "Mid-Autumn Festival in Hong Kong" "Mid-Autumn Festival in Hong Kong" "'culture', 'festival'"
create_en_stub "Culture" "Kowloon Walled City History" "Kowloon Walled City" "'culture', 'heritage'"
create_en_stub "Culture" "East-West Cultural Fusion" "East-West Cultural Fusion" "'culture', 'identity'"
create_en_stub "Culture" "Hong Kong Film Industry" "Hong Kong Film Industry" "'culture', 'cinema'"
create_en_stub "Culture" "Cantonese Language" "Cantonese Language" "'culture', 'language'"
create_en_stub "Culture" "Hong Kong Comics Culture" "Hong Kong Comics Culture" "'culture', 'comics'"

# ═══════════════════════════════════════════
# FOOD
# ═══════════════════════════════════════════
create_hub "Food" "香港美食" "Food" "飲茶點心、茶餐廳、燒味、雲吞麵、大排檔"

create_zh_stub "Food" "飲茶與點心" "飲茶與點心" "'美食', '點心'"
create_zh_stub "Food" "茶餐廳文化" "茶餐廳文化" "'美食', '茶餐廳'"
create_zh_stub "Food" "燒鵝" "燒鵝" "'美食', '燒味'"
create_zh_stub "Food" "蛋撻" "蛋撻" "'美食', '糕點'"
create_zh_stub "Food" "雲吞麵" "雲吞麵" "'美食', '麵食'"
create_zh_stub "Food" "大排檔" "大排檔" "'美食', '街頭美食'"
create_zh_stub "Food" "菠蘿包" "菠蘿包" "'美食', '麵包'"
create_zh_stub "Food" "港式奶茶" "港式奶茶" "'美食', '飲品'"
create_zh_stub "Food" "避風塘炒蟹" "避風塘炒蟹" "'美食', '海鮮'"
create_zh_stub "Food" "香港街頭小吃" "香港街頭小吃" "'美食', '小吃'"

create_en_stub "Food" "Dim Sum and Yum Cha" "Dim Sum" "'food', 'dim sum'"
create_en_stub "Food" "Cha Chaan Teng Culture" "Cha Chaan Teng" "'food', 'restaurant'"
create_en_stub "Food" "Roast Goose" "Roast Goose" "'food', 'roast meats'"
create_en_stub "Food" "Egg Tarts" "Egg Tarts" "'food', 'pastry'"
create_en_stub "Food" "Wonton Noodles" "Wonton Noodles" "'food', 'noodles'"
create_en_stub "Food" "Dai Pai Dong" "Dai Pai Dong" "'food', 'street food'"
create_en_stub "Food" "Pineapple Bun" "Pineapple Bun" "'food', 'bread'"
create_en_stub "Food" "Hong Kong-style Milk Tea" "Hong Kong Milk Tea" "'food', 'beverage'"
create_en_stub "Food" "Typhoon Shelter Crab" "Typhoon Shelter Crab" "'food', 'seafood'"
create_en_stub "Food" "Hong Kong Street Snacks" "Hong Kong Street Snacks" "'food', 'snacks'"

# ═══════════════════════════════════════════
# ART
# ═══════════════════════════════════════════
create_hub "Art" "香港藝術" "Art" "M+博物館、Art Basel、香港電影黃金時代、水墨畫傳統"

create_zh_stub "Art" "M+博物館" "M+博物館" "'藝術', '博物館'"
create_zh_stub "Art" "香港電影黃金時代" "香港電影黃金時代" "'藝術', '電影'"
create_zh_stub "Art" "Art Basel香港" "Art Basel香港" "'藝術', '當代藝術'"
create_zh_stub "Art" "水墨畫傳統" "水墨畫傳統" "'藝術', '傳統藝術'"
create_zh_stub "Art" "香港街頭藝術" "香港街頭藝術" "'藝術', '街頭藝術'"
create_zh_stub "Art" "香港國際電影節" "香港國際電影節" "'藝術', '電影節'"

create_en_stub "Art" "M+ Museum" "M+ Museum" "'art', 'museum'"
create_en_stub "Art" "Hong Kong Cinema Golden Age" "Hong Kong Cinema Golden Age" "'art', 'cinema'"
create_en_stub "Art" "Art Basel Hong Kong" "Art Basel Hong Kong" "'art', 'contemporary art'"
create_en_stub "Art" "Ink Painting Tradition" "Ink Painting Tradition" "'art', 'traditional art'"
create_en_stub "Art" "Street Art in Hong Kong" "Street Art in Hong Kong" "'art', 'street art'"
create_en_stub "Art" "Hong Kong International Film Festival" "HKIFF" "'art', 'film festival'"

# ═══════════════════════════════════════════
# MUSIC
# ═══════════════════════════════════════════
create_hub "Music" "香港音樂" "Music" "廣東歌黃金年代、Beyond、梅艷芳、獨立音樂復興"

create_zh_stub "Music" "廣東歌歷史" "廣東歌歷史" "'音樂', '廣東歌'"
create_zh_stub "Music" "Beyond樂隊" "Beyond樂隊" "'音樂', '搖滾'"
create_zh_stub "Music" "梅艷芳" "梅艷芳" "'音樂', '人物'"
create_zh_stub "Music" "張國榮" "張國榮" "'音樂', '人物'"
create_zh_stub "Music" "香港獨立音樂" "香港獨立音樂" "'音樂', '獨立'"
create_zh_stub "Music" "香港電影配樂" "香港電影配樂" "'音樂', '電影'"

create_en_stub "Music" "History of Cantopop" "History of Cantopop" "'music', 'cantopop'"
create_en_stub "Music" "Beyond (Band)" "Beyond Band" "'music', 'rock'"
create_en_stub "Music" "Anita Mui" "Anita Mui" "'music', 'person'"
create_en_stub "Music" "Leslie Cheung" "Leslie Cheung" "'music', 'person'"
create_en_stub "Music" "Hong Kong Independent Music" "Hong Kong Indie Music" "'music', 'indie'"
create_en_stub "Music" "Hong Kong Film Scores" "Hong Kong Film Scores" "'music', 'film'"

# ═══════════════════════════════════════════
# TECHNOLOGY
# ═══════════════════════════════════════════
create_hub "Technology" "香港科技" "Technology" "金融科技中心、數碼港、科學園、智慧城市"

create_zh_stub "Technology" "數碼港" "數碼港" "'科技', '創科'"
create_zh_stub "Technology" "科學園" "科學園" "'科技', '創科'"
create_zh_stub "Technology" "香港金融科技" "香港金融科技" "'科技', '金融科技'"
create_zh_stub "Technology" "智慧城市計劃" "智慧城市計劃" "'科技', '智慧城市'"
create_zh_stub "Technology" "八達通系統" "八達通系統" "'科技', '支付'"

create_en_stub "Technology" "Cyberport" "Cyberport" "'technology', 'innovation'"
create_en_stub "Technology" "Science Park" "Science Park" "'technology', 'innovation'"
create_en_stub "Technology" "Hong Kong Fintech" "Hong Kong Fintech" "'technology', 'fintech'"
create_en_stub "Technology" "Smart City Initiatives" "Smart City" "'technology', 'smart city'"
create_en_stub "Technology" "Octopus Card System" "Octopus Card" "'technology', 'payment'"

# ═══════════════════════════════════════════
# NATURE
# ═══════════════════════════════════════════
create_hub "Nature" "香港自然" "Nature" "聯合國教科文組織世界地質公園、24個郊野公園、中華白海豚"

create_zh_stub "Nature" "香港地質公園" "香港地質公園" "'自然', '地質'"
create_zh_stub "Nature" "中華白海豚" "中華白海豚" "'自然', '保育'"
create_zh_stub "Nature" "郊野公園系統" "郊野公園系統" "'自然', '公園'"
create_zh_stub "Nature" "米埔濕地" "米埔濕地" "'自然', '濕地'"
create_zh_stub "Nature" "龍脊步道" "龍脊步道" "'自然', '遠足'"
create_zh_stub "Nature" "珊瑚群落" "珊瑚群落" "'自然', '海洋'"

create_en_stub "Nature" "Hong Kong UNESCO Global Geopark" "UNESCO Geopark" "'nature', 'geology'"
create_en_stub "Nature" "Chinese White Dolphins" "Pink Dolphins" "'nature', 'conservation'"
create_en_stub "Nature" "Country Parks System" "Country Parks" "'nature', 'parks'"
create_en_stub "Nature" "Mai Po Wetlands" "Mai Po Wetlands" "'nature', 'wetlands'"
create_en_stub "Nature" "Dragon's Back Trail" "Dragons Back Trail" "'nature', 'hiking'"
create_en_stub "Nature" "Coral Communities" "Coral Communities" "'nature', 'marine'"

# ═══════════════════════════════════════════
# PEOPLE
# ═══════════════════════════════════════════
create_hub "People" "香港人物" "People" "李小龍、成龍、王家衛、梅艷芳、張國榮…"

create_zh_stub "People" "李小龍" "李小龍" "'人物', '武術', '電影'"
create_zh_stub "People" "成龍" "成龍" "'人物', '電影'"
create_zh_stub "People" "王家衛" "王家衛" "'人物', '導演'"
create_zh_stub "People" "梅艷芳" "梅艷芳_人物" "'人物', '音樂', '電影'"
create_zh_stub "People" "張國榮" "張國榮_人物" "'人物', '音樂', '電影'"
create_zh_stub "People" "鄧麗欣" "鄧麗欣" "'人物', '演藝'"
create_zh_stub "People" "李嘉誠" "李嘉誠" "'人物', '商業'"
create_zh_stub "People" "黃霑" "黃霑" "'人物', '音樂', '文學'"
create_zh_stub "People" "金庸" "金庸" "'人物', '文學'"

create_en_stub "People" "Bruce Lee" "Bruce Lee" "'people', 'martial arts', 'film'"
create_en_stub "People" "Jackie Chan" "Jackie Chan" "'people', 'film'"
create_en_stub "People" "Wong Kar-wai" "Wong Kar-wai" "'people', 'director'"
create_en_stub "People" "Anita Mui" "Anita Mui Person" "'people', 'music', 'film'"
create_en_stub "People" "Leslie Cheung" "Leslie Cheung Person" "'people', 'music', 'film'"
create_en_stub "People" "Li Ka-shing" "Li Ka-shing" "'people', 'business'"
create_en_stub "People" "James Wong (Lyricist)" "James Wong" "'people', 'music', 'literature'"
create_en_stub "People" "Louis Cha (Jin Yong)" "Jin Yong" "'people', 'literature'"

# ═══════════════════════════════════════════
# SOCIETY
# ═══════════════════════════════════════════
create_hub "Society" "香港社會" "Society" "一國兩制、基本法、新聞自由、教育、身份認同"

create_zh_stub "Society" "一國兩制" "一國兩制" "'社會', '政治'"
create_zh_stub "Society" "基本法" "基本法" "'社會', '法律'"
create_zh_stub "Society" "新聞自由" "新聞自由" "'社會', '媒體'"
create_zh_stub "Society" "香港教育制度" "香港教育制度" "'社會', '教育'"
create_zh_stub "Society" "住屋危機" "住屋危機" "'社會', '房屋'"
create_zh_stub "Society" "身份認同與歸屬" "身份認同與歸屬" "'社會', '身份'"

create_en_stub "Society" "One Country Two Systems" "One Country Two Systems" "'society', 'politics'"
create_en_stub "Society" "The Basic Law" "Basic Law" "'society', 'law'"
create_en_stub "Society" "Press Freedom" "Press Freedom" "'society', 'media'"
create_en_stub "Society" "Hong Kong Education System" "Education System" "'society', 'education'"
create_en_stub "Society" "Housing Crisis" "Housing Crisis" "'society', 'housing'"
create_en_stub "Society" "Identity and Belonging" "Identity and Belonging" "'society', 'identity'"

# ═══════════════════════════════════════════
# ECONOMY
# ═══════════════════════════════════════════
create_hub "Economy" "香港經濟" "Economy" "金融中心地位、物業市場、股票交易所、貿易物流"

create_zh_stub "Economy" "金融中心地位" "金融中心地位" "'經濟', '金融'"
create_zh_stub "Economy" "香港物業市場" "香港物業市場" "'經濟', '地產'"
create_zh_stub "Economy" "香港交易所" "香港交易所" "'經濟', '股票'"
create_zh_stub "Economy" "貿易與物流" "貿易與物流" "'經濟', '貿易'"
create_zh_stub "Economy" "旅遊業" "旅遊業" "'經濟', '旅遊'"
create_zh_stub "Economy" "零售與奢侈品" "零售與奢侈品" "'經濟', '零售'"

create_en_stub "Economy" "Financial Centre Status" "Financial Centre" "'economy', 'finance'"
create_en_stub "Economy" "Hong Kong Property Market" "Property Market" "'economy', 'real estate'"
create_en_stub "Economy" "Hong Kong Stock Exchange" "Stock Exchange" "'economy', 'stocks'"
create_en_stub "Economy" "Trade and Logistics" "Trade and Logistics" "'economy', 'trade'"
create_en_stub "Economy" "Tourism Industry" "Tourism Industry" "'economy', 'tourism'"
create_en_stub "Economy" "Retail and Luxury" "Retail and Luxury" "'economy', 'retail'"

# ═══════════════════════════════════════════
# LIFESTYLE
# ═══════════════════════════════════════════
create_hub "Lifestyle" "香港生活" "Lifestyle" "港鐵文化、飲茶日常、行山、街市、打風訊號"

create_zh_stub "Lifestyle" "港鐵文化" "港鐵文化" "'生活', '交通'"
create_zh_stub "Lifestyle" "叮叮電車" "叮叮電車" "'生活', '交通'"
create_zh_stub "Lifestyle" "飲茶文化" "飲茶文化" "'生活', '飲食'"
create_zh_stub "Lifestyle" "行山文化" "行山文化" "'生活', '戶外'"
create_zh_stub "Lifestyle" "街市文化" "街市文化" "'生活', '市場'"
create_zh_stub "Lifestyle" "颱風訊號" "颱風訊號" "'生活', '天氣'"
create_zh_stub "Lifestyle" "小巴文化" "小巴文化" "'生活', '交通'"

create_en_stub "Lifestyle" "MTR Culture" "MTR Culture" "'lifestyle', 'transport'"
create_en_stub "Lifestyle" "Ding Ding Trams" "Ding Ding Trams" "'lifestyle', 'transport'"
create_en_stub "Lifestyle" "Yum Cha Culture" "Yum Cha Culture" "'lifestyle', 'food'"
create_en_stub "Lifestyle" "Hiking Culture" "Hiking Culture" "'lifestyle', 'outdoors'"
create_en_stub "Lifestyle" "Wet Market Culture" "Wet Markets" "'lifestyle', 'markets'"
create_en_stub "Lifestyle" "Typhoon Signals" "Typhoon Signals" "'lifestyle', 'weather'"
create_en_stub "Lifestyle" "Minibus Culture" "Minibus Culture" "'lifestyle', 'transport'"

# ═══════════════════════════════════════════
# ABOUT
# ═══════════════════════════════════════════
create_zh_stub "About" "緣起故事" "緣起故事" "'關於'"
create_zh_stub "About" "為什麼香港需要自己的知識庫" "為什麼香港需要自己的知識庫" "'關於'"

create_en_stub "About" "Origin Story" "Origin Story" "'about'"
create_en_stub "About" "Why Hong Kong Needs Its Own Knowledge Base" "Why HongKong.md" "'about'"

echo "✅ Created all Hong Kong knowledge stubs!"
echo ""
echo "Summary:"
echo "  History: 8 zh + 8 en articles"
echo "  Geography: 7 zh + 7 en articles"
echo "  Culture: 9 zh + 9 en articles"
echo "  Food: 10 zh + 10 en articles"
echo "  Art: 6 zh + 6 en articles"
echo "  Music: 6 zh + 6 en articles"
echo "  Technology: 5 zh + 5 en articles"
echo "  Nature: 6 zh + 6 en articles"
echo "  People: 9 zh + 8 en articles"
echo "  Society: 6 zh + 6 en articles"
echo "  Economy: 6 zh + 6 en articles"
echo "  Lifestyle: 7 zh + 7 en articles"
echo "  About: 2 zh + 2 en articles"
echo "  + 12 Hub pages"
echo ""
echo "Total: ~99 zh + ~86 en + 12 hubs = ~197 files"
