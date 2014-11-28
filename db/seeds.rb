# いずれ rake タスクとかにする！
puts 'load lt data...'
lt_data = {
 'いろ'                                       => 'DockerとCapistranoとPerfume',
 '伊藤邦彦@kunitoo'                           => 'Hypermicrodata Client',
 'いがいが'                                   => 'そろそろTDDについて一言いっておくか',
 'tatsuoSakurai'                              => 'KPT@home',
 '馬場 一樹 (ばば かずき) @kbaba1001'         => 'Rails Validation',
 'chezou'                                     => 'iruby+nbviewerのススメ',
 '久保優子か檜山学'                           => '経営者の妻を持つ夫が知るべき96のこと(仮)」',
 'joker1007'                                  => '５分で話せる限り話すRSpec Hacking Guide',
 'みかみよしゆき'                             => 'Rubyで出来ているかもしれないRTMを6年間愛用している自分の使い方について',
 '@igjit'                                     => 'Rails初心者が【Emacs Lisp Package推薦サービス】つくってみた。',
 'こしばとしあき'                             => '＼Tokyuだからこそできる／ ＼Tokyu以外ではとてもできない／【撮影禁止】「RWCに行ってきたのだが…」ぶっちゃけトーク大会【ツイート禁止】',
 '雨宮 悟(@rail44)'                           => 'Webアプリケーションフレームワーク Lotus',
 '@1syo'                                      => 'Testing wercker plugin with bats',
 '沢田正 (@cesare)'                           => '会社員→フリーランス→経営者→会社員 (予) だけど質問ある？',
 'sue445'                                     => 'プリキュアのRuby実装の紹介',
 '福井修 @iR3'                                => 'エンドツーエンドテストの今後',
 'ぺけみさお'                                 => 'BestGems.org -RubyGemsランキングサイトのご紹介-',
 'kk_Ataka'                                   => 'jekyllドキュメント翻訳を継続するための取組(仮)',
 '小川 伸一郎'                                => '転職（仮）',
 '河野 誠'                                    => 'MDD',
 '海沼 玲史'                                  => 'gem作った（仮）',
 'Nekoteni'                                   => 'Road to Rails Madam',
 'publichtml'                                 => '私とRubyと彼氏(仮)',
 'tk0miya (Takeshi KOMIYA)'                   => 'マークアップ言語のエコシステムについて',
 '伊藤 浩一 (@koic)'                          => 'オルフェウス・プロセス',
 'はるかさん'                                 => 'デジタルネイティブと趣味のWeb開発について',
 '赤塚 妙子 @ken_c_lo'                        => 'そろそろ esa についてひとこと言っておくか (\( ⁰⊖⁰)/) （仮）',
 '原 征弘'                                    => 'コンポーネントベースのUI構築 on Rails',
 '@chiastolite'                               => 'VAGRANT STORY',
 '大林'                                       => '最近Ruby/SDL2というのを開発していて当日にはいい感じにできているはずなのでその話をしたいと思います。',
 '株式会社永和システムマネジメント 羽根田 洋' => '僕（営業）とRuby×Agile～営業からみたうちのメンバー達～',
 'kwappa (Hiromu Shioya)'                     => 'アート・オブ・ジョブホッピング',
 '@trmmy'                                     => 'TJARやってきた',
 'onk'                                        => 'ドキッ！mountable engine だらけの Rails アプリ開発 (ポロリもあるよ'
}

lt_data.each do |nickname, title|
  Lt.create!(title: title, nickname: nickname)
end

puts 'end'
