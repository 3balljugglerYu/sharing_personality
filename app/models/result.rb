class Result < ActiveHash::Base
  self.data = [
    { id: 1,name: '--'},
    { id: 2,
      name:'完璧主義者',
      important:'「理想」「正義」「慎重さ」「綿密さ」「丁寧さ」「時間厳守」「約束」「改革」「真実」',
      good1:'判断力と理解力に優れている',
      good2:'現実的でバランスが取れている',
      good3:'合理的で良心的',
      bad1:'あなたは些細なことにこだわり、「木を見て森を見ない」状態になりがちです',
      bad2:'それが決断の乏しさにつながります。プロセスにこだわるあまり、重要でない細かな仕事を綿密にやりすぎ、時間が足らないことを不満に感じます',
      bad3:'融通が利かず、独善的になり、他人のミスや悪事にこだわり、非難がましくなります。 その結果自分の理想とは反対の行動にでることがあります',
      learn1:'『完璧主義者』は『楽天家タイプ』から学ぶとよいでしょう',
      stop1:'みんなの前で直接批判されたり、叱られる事',
      stop2:'完全性や公正さを疑う発言をされる事',
      stop3:'言った事を実行してもらえない事',
      motivation1:'一生懸命取り組んでいることを認めてあげましょう',
      motivation2:'プロセスを承認してあげましょう',
      motivation3:'目先の目標よりも将来的な理想の状態を描いて提示してあげましょう',
      advice1:'『やりたい』より『やらないといけない』という気持ちが強い傾向にある為、『やりたいことはなにか』を聞いてあげましょう',
      advice2:'プロセスにこだわりすぎて全体の流れを見落としてしまう傾向がある為、一緒にチェックしてあげましょう'

    },
    { id: 3,
      name:'献身家',
      important:'「愛」「慈愛」「思いやり」「心」「支援」「親切心」「世話」「奉仕」「自己犠牲」「優しさ」',
      good1:'利己心がなく公平',
      good2:'感受性が豊か',
      good3:'本能的に暴力を嫌う',
      bad1:'あなたは自分を他者より大きな存在と感じ、周囲に愛情を与えてあげるといった態度をとることがあります。そして、人に与えたかつての恩義の見返りを得ようとします',
      bad2:'自分のしたことが感謝されないと、侮辱されたように感じて苛立ち、相手をヒステリックに非難します',
      bad3:'人に対してノーと言えず、自己評価が低く、自分の容姿や身なりに、気を使いすぎます',
      learn1:'『献身家』は『芸術家タイプ』から学ぶとよいでしょう',
      stop1:'やってることに対して当然だという態度を取られたり、良い評価をもらえないこと',
      stop2:'友好的な態度を無視されること',
      stop3:'利己的な面を非難されること',
      motivation1:'「助けられており感謝している」という言葉を入れ伝えてあげましょう',
      motivation2:'具体的な事柄について褒めてあげましょう',
      motivation3:'人との関係を大事にする性格ですので、信頼を築く為に人一倍親身に話を聞いてあげましょう',
      advice1:'他人に焦点をあてて物事を考える傾向がある為、自分にもっと焦点を当てて自己本位に考えてみる事を伝えてあげましょう',
      advice2:'頼まれた仕事をどんどん引き受けてしまう傾向があるので、状況をよく観察して、負担が過度になっていないか確認してあげましょう'
    },
    { id: 4,
      name:'達成者',
      important:'「目標」「達成」「自尊心」「野心」「能率」「勤勉さ」「果断」「ステイタス」「実力」「リーダー」「組織」「マネジメント」',
      good1:'成功への決意が強い',
      good2:'積極的で明るい',
      good3:'行動力がある',
      bad1:'あなたはご都合主義となり、他者を成功の為の飛び石としたり、道具のように扱ったりすることがあります',
      bad2:'地位や名声を気にかけるがゆえ、実際より自分をよく見せようとします',
      bad3:'成功できないことや、成功しているように見られないことを極端に恐れます。自分より優秀な人と自分を比較するのを嫌がります',
      learn1:'『達成者』は『堅実家』から学ぶとよいでしょう',
      stop1:'「成長していない」と言ったり、態度などをとり感じさせる事',
      stop2:'他人と比較され、劣っている点を言われたりする事',
      stop3:'欠点や失敗に焦点を当てて話す事',
      motivation1:'成功した事について賞賛してあげましょう',
      motivation2:'人前で褒めてあげましょう',
      motivation3:'リーダーを任せ、成功イメージを語ってもらいましょう',
      advice1:'毎日、果敢に仕事をこなしていき、知れずとストレスが溜まってしまう傾向があります。休憩することも大切である事を伝えてあげましょう',
      advice2:'自身が１番でありたいという気持ちが強いタイプですので、協調性を求める様伝えてあげましょう'
    },
    { id: 5,
      name:'芸術家',
      important:'「想像力」「創造性」「独自性」「ユニークさ」「感覚」「感性の豊かさ」「ロマン」「芸術」「美意識」「夢」',
      good1:'創造的でユニーク',
      good2:'ロマンチスト',
      good3:'洞察力が鋭い',
      bad1:'あなたは自分は特別だと思っているので、優越感を持ち、お高くとまっているような印象を与えます。その為、互いに平等な関係を結ぶのが困難です',
      bad2:'時として何か喪失感のようなものがあり、悲観的な気分に流され、希望を失ってしまいます',
      bad3:'あらゆることを、個人的に解釈し、自分の世界に没頭して孤立します。非現実的になり、どんな圧力も受けない幻想の世界に生きます',
      learn1:'『芸術家』は『完全主義者タイプ』から学ぶとよいでしょう',
      stop1:'自身を理解されず、きちんと対応されないこと',
      stop2:'他人の前で傷つく様な事を言われること',
      stop3:'やりたくない事を頭ごなしに強制されること',
      motivation1:'特別でありたいという気持ちが強い為、ユニークな才能を認めてあげましょう',
      motivation2:'人前で賞賛される事を好まない傾向がある為、感謝を伝える程度が良いでしょう',
      motivation3:'芸術的感情を理解する為に、しっかりと話を聞いてあげましょう',
      advice1:'自分自身を受け入れ、誇りを持って行動する様伝えてあげましょう',
      advice2:'自分の価値に対する思いこみが強い傾向がある為、そこを理解しつつ現実とのギャップを伝えてあげましょう'
    },
    { id: 6,
      name:'研究者',
      important:'「知識」「宇宙の摂理」「情報」「蓄積」「賢明」「分析力」「解析力」「研究」「専門分野」「博識」「倹約」「節約」「節制」',
      good1:'聡明',
      good2:'分析力が優れている',
      good3:'集中力がある',
      bad1:'あなたは自分の時間や知識を他人と分かち合うのを惜しむことがあります',
      bad2:'現実から離れて孤立し、知識や情報を蓄えることに専念します',
      bad3:'自分の気に入った理論に従って解析し、自分の方法で単純化し、時に常軌を逸したこじつけを行うことがあります。そんな時周囲から変わり者に映ります',
      learn1:'『研究者』は『統率者タイプ』から学ぶとよいでしょう',
      stop1:'能力や専門性を疑われること',
      stop2:'やっていることを中断させられたり、邪魔されること',
      stop3:'複数の仕事を長期的に同時遂行させられること',
      motivation1:'具体的な事象についてさりげなく褒めてあげましょう',
      motivation2:'やみくもに褒めると逆効果になりがちです',
      motivation3:'人に甘えることが苦手な為、こちら側から優しく接してあげる様関わってあげましょう',
      advice1:'恐れず自分をはっきり表現する様伝えてあげましょう',
      advice2:'物事を一つ一つ組み立てていく傾向がある為、そこを承認しつつ時間がかかる様であれば現時点でのアイデアを軸に先に進める様促してあげましょう'
    },
    { id: 7,
      name:'堅実家',
      important:'「組織」「ルール」「規則」「規範」「誠実さ」「忠実さ」「責任感」「会社」「家庭」「友情」「親友」「団欒」「法」「マナー」',
      good1:'温厚で愛情深い',
      good2:'誠実で堅実',
      good3:'洞察力に優れている',
      bad1:'あなたは何か問題が起こりはしなかと恐れ、不安に駆られ、用心深く身構えます。自信が持てない為、自分で結論を出すのを避けます',
      bad2:'時に劣等感を強く持ち、自分を軽視し、依存的になります',
      bad3:'優柔不断になり、無分別に行動し、自分が最も恐れていた結果を招いたりします',
      learn1:'『堅実家』は『調停者タイプ』から学ぶとよいでしょう',
      stop1:'サポートされなかったり、途中でサポートを放棄されること',
      stop2:'秘密を持たされ知らされないこと',
      stop3:'相談を完全否定され、反対の立場を取られること',
      motivation1:'一緒の方向性に向かっていることを常に発信していきましょう',
      motivation2:'不安に思っていることを聞いてあげて一緒に解決してあげましょう',
      motivation3:'過去の成功体験を引き出して褒めてあげましょう',
      advice1:'不安の根元を、一緒に考えてあげましょう',
      advice2:'日常業務で誠心誠意働き、責任を果たしていることへの承認や励ましを常に行ってあげましょう'
    },
    { id: 8,
      name:'楽天家',
      important:'「明朗さ」「闊達」「快楽」「極楽」「柔軟性」「遊び」「欲」「気分転換」「楽天的」「財産」「音楽」「友人」「恋人」',
      good1:'発想力豊か',
      good2:'明るく楽天的',
      good3:'集中力がある',
      bad1:'あなたは厳しい現実から逃げようとして、自分を甘やかします。時間や約束を守らず周囲を困惑させます',
      bad2:'衝動的で、無計画で、抑えがきかず、思いつきで行動します。いろいろ中途半端に手をつけて、途中で止めてしまいます',
      bad3:'飽きやすく子供じみているように見られます。浮気性で、気まぐれで遊び好きです',
      learn1:'『楽天家』は『研究者タイプ』から学ぶとよいでしょう',
      stop1:'自由を失い、選択の幅を狭められてしまうこと',
      stop2:'同じ仕事を何度も繰り返しやらされること',
      stop3:'悲観的なことを言われること',
      motivation1:'自由に仕事をさせ、失敗しても挽回できるチャンスを与えてあげましょう',
      motivation2:'次々と新しい材料を提供していきましょう',
      motivation3:'多彩で好奇心旺盛なところを承認してあげましょう',
      advice1:'厳しい状況におかれても責任を持って立ち向かうことを伝えてあげましょう',
      advice2:'物事を決断して実行する力を養える様な仕事を与えてげましょう'
    },
    { id: 9,
      name:'統率者',
      important:'「力」「パワー」「勇気」「決断」「独断」「英雄」「戦い」「支配」「権威」「権力」「義理」「人情」「勝利」「No１」',
      good1:'パワーにあふれている',
      good2:'正義を重んじる',
      good3:'勇気がある',
      bad1:'人と敵対すると我が強くなります。敵に対して無慈悲になり、容赦なく徹底的にやり込めます',
      bad2:'自己中心的で尊大で、他人にも自分のやり方を押し付けます',
      bad3:'妥協する人間を安っぽい人間と見ます。復讐心を強く持ち野蛮になります',
      learn1:'『統率者』は『献身家タイプ』から学ぶとよいでしょう',
      stop1:'細かい指示を多く出されること',
      stop2:'今やっていることがチャレンジ性の無いことだと感じさせられること',
      stop3:'曖昧で不確実な指示を出されること',
      motivation1:'統率者の性格や特徴は褒めず、統率者が行った事について褒めてあげましょう',
      motivation2:'周りにどの様な影響があったかを伝えてあげましょう',
      motivation3:'率直で短めの言葉で簡潔に伝えていくことがポイントです',
      advice1:'いつも統率者の考えが一番正しいわけでは無いことを伝えてあげましょう',
      advice2:'みんな統率者の様に強く無いことを伝え、頼りにしていることを伝えてあげましょう'
    },
    { id: 10,
      name:'調停者',
      important:'「平和」「安らぎ」「思いやり」「落ち着き」「調和」「一体感」「日常」「仲裁」「マイペース」',
      good1:'穏やかで寛大',
      good2:'人の気持ちを理解できる',
      good3:'協調性に富む',
      bad1:'あなたは表情や話し方が一本調子で、人に無気力で退屈な印象を与えることがあります',
      bad2:'自分の価値や重要性を否定し、他人に同調しすぎる傾向があります',
      bad3:'時に意固地になり、投げやりで問題を直視しようとしません。優柔不断で自分自身に批判的です',
      learn1:'『調停者』は『達成者タイプ』から学ぶとよいでしょう',
      stop1:'不本意な変化を強いられること',
      stop2:'地味であっても頑張っていることを評価されないこと',
      stop3:'存在を無視されること',
      motivation1:'自分の考えを出しても争いに巻き込まれないことを伝えてあげましょう',
      motivation2:'急激な変化に対応できない為、忍耐強く関わってあげましょう',
      motivation3:'第三者と通じて間接的に褒めらえる方が良いでしょう',
      advice1:'感じたことや思ったことを行動に移す様伝えてあげましょう',
      advice2:'楽なことからやってしまう傾向がある為、優先順位をはっきりさせてあげましょう'
    }
  ]
end