@hide
@blackout time=2000 hitCancel
@cg file=white
@update transition=crossfade time=1000
@waitUpdate
@playSe file=SE089	
@フェード出しＰ bg=BG12a01 time=1500
@char file=CA06A713F	
@Talk name=ツクヨミ voice=TKY000072
「起きてください。時間です、マスター。起きてください。
　遅刻してしまいます、マスター。
　社会的信用の危機です、マスター」
@Hitret id=299
@stopSe fade=1000
@AddSelect text=起きる
@AddSelect text=寝続ける
@StartSelect
@if exp="ChkSelect(1)"
	@onFlag id=1
	@目開け背景のみ bg=BG01a01		
	@Talk name=心の声
	俺は目元をこすり、ゆっくり瞼を開いた。
	@Hitret id=300
	@Talk name=塊斗
	「うっ……」
	@Hitret id=301
@elsif exp="ChkSelect(2)"
	@onFlag id=2
	@Talk name=塊斗
	「グゥ……」
	@Hitret id=302
	@char file=CA06A306F	
	@Talk name=ツクヨミ voice=TKY000073
	「……マスター、起きないのですか？」
	@Hitret id=303
	@char file=CA06A001F	
	@Talk name=ツクヨミ voice=TKY000074
	「……でしたら、学園には欠席の連絡を」
	@Hitret id=304
	@Talk name=塊斗
	「ま、待った。起きるから」
	@Hitret id=305
	@Talk name=心の声
	さすがに、ズル休みする気はなかった。
	@Hitret id=306
	@目開け背景のみ bg=BG01a01		
@endif
@playBgm file=BGM01		
@char file=CA06A307M	
@Talk name=ツクヨミ voice=TKY000075
「おはようございます、マスター」
@Hitret id=307
@Talk name=塊斗
「……誰！？」
@Hitret id=308
@Talk name=塊斗
「って……ツクヨミか……」
@Hitret id=309
@Talk name=心の声
自分の部屋に、こんな美少女がいることに、
ぜんぜん慣れないんだが。
@Hitret id=310
@Talk name=心の声
いや、ロボットなんだけど。
@Hitret id=311
@clearChar id=ツクヨミ
@Talk name=心の声
ツクヨミが来た次の日の朝だった。
@Hitret id=312
@Talk name=心の声
前日は、消耗しきっていたうえ、ろくに寝ておらず、
朝から全力疾走して、死にかけて……
@Hitret id=313
@Talk name=心の声
はっきり言って、朝からＨＰは残１だった。
@Hitret id=314
@Talk name=心の声
結局、１日かけて何が起きたのか受け入れたものの……
いろいろ考えるうちに寝落ちして、もう翌日の朝だ。
@Hitret id=315
@Talk name=心の声
やっぱり、夢ではなかったのか。
@Hitret id=316
@char file=CA06A506M	
@Talk name=心の声
信じられないような美しさの少女が、ライトブルーの瞳で
じっと見つめていた。
@Hitret id=317
@char file=CA06A507M	
@Talk name=ツクヨミ voice=TKY000076
「マスター、ベッドを降りて、顔を洗ってください」
@Hitret id=318
@Talk name=塊斗
「あ、うん」
@Hitret id=319
@char file=CA06A001M	
@Talk name=ツクヨミ voice=TKY000077
「ベッドを降りるときは、まず右足を下ろしまして……」
@Hitret id=320
@Talk name=塊斗
「いや……降り方がわからないわけじゃないから。
　ちょっと、あっち向いてて」
@Hitret id=321
@clearChar id=ツクヨミ
@Talk name=心の声
俺は思わず下腹部をシーツで隠してしまう。
@Hitret id=322
@char file=CA06A306M	
@Talk name=ツクヨミ voice=TKY000078
「いかがしましたか、マスター」
@Hitret id=323
@Talk name=塊斗
「朝は、いろいろあってさ」
@Hitret id=324
@char file=CA06A507M	
@Talk name=ツクヨミ voice=TKY000079
「ああ、朝勃ちですか」
@Hitret id=325
@カメラ揺らし大
@Talk name=塊斗
「ぶっふぉ！」
@Hitret id=326
@stopSe fade=1000
@char file=CA06A814M	
@Talk name=ツクヨミ voice=TKY000080
「生理現象は若く健康な証です、むしろ誇るべきです、
　マスター」
@Hitret id=327
@Talk name=塊斗
「お、おい……？」
@Hitret id=328
@char file=CA06A713M	
@Talk name=ツクヨミ voice=TKY000081
「Ｃ‐ＡＩは判断しました。〝大好き〟な人が
　健康であるなら、それは喜ぶべきである――と」
@Hitret id=329
@Talk name=塊斗
「あ……うん、まぁ、そうだね」
@Hitret id=330
@char file=CA06A307M	
@Talk name=ツクヨミ voice=TKY000082
「ですから、私はマスターの朝勃ちを全力で
　喜びたいと思います」
@Hitret id=331
@Talk name=塊斗
「え……？」
@Hitret id=332
@char file=CA06A714M	
@ジャンプ id=ツクヨミ
@Talk name=ツクヨミ voice=TKY000083
「うふっ……ツクヨミね、マスターが朝勃ちしてくれて、
　とーっても嬉しいです！」
@Hitret id=333
@Talk name=塊斗
「ほんと、やめて」
@Hitret id=334
@Talk name=心の声
恐くなって、収まった。
@Hitret id=335
@Talk name=心の声
ツクヨミが深刻そうな顔をする。
@Hitret id=336
@char file=CA06A508M	
@ううっ id=ツクヨミ
@Talk name=ツクヨミ voice=TKY000084
「不評……！？
　このＣ‐ＡＩが、ミスを？
　いったい、どのセクションで計算違いが……」
@Hitret id=337
@Talk name=心の声
ツッコミどころしかなかったが、恥ずかしいので
説明はしなかった。
@Hitret id=338
@clearChar id=ツクヨミ
@Talk name=心の声
俺はそそくさとベッドを降りると、洗面台で顔を洗う。
すっかり目が覚めた。
@Hitret id=339
@char file=CA06A506M	
@Talk name=ツクヨミ voice=TKY000085
「マスターの制服を用意しておきました」
@Hitret id=340
@Talk name=塊斗
「お……ありがとう。すごいなぁ、新品みたいだ。
　いつクリーニングに？」
@Hitret id=341
@char file=CA06A507M	
@Talk name=ツクヨミ voice=TKY000086
「新品です」
@Hitret id=342
@Talk name=塊斗
「うえぇ！？　……買ったの？」
@Hitret id=343
@char file=CA06A713M	
@Talk name=ツクヨミ voice=TKY000087
「マスターが喜んでくださるかと」
@Hitret id=344
@Talk name=塊斗
「いやいや、物もお金も大切にしよう。
　使える物は使わないと」
@Hitret id=345
@char file=CA06A509M	
@おじぎ大 id=ツクヨミ
@Talk name=ツクヨミ voice=TKY000088
「……了解いたしました。ご命令を記録しておきます」
@Hitret id=346
@Talk name=心の声
命令ってわけじゃないんだけどなー……と思いつつも、
ややこしくなりそうなので黙っておいた。
@Hitret id=347
@char file=CA06A406M	
@Talk name=ツクヨミ voice=TKY000089
「マスター、朝食を用意してあります」
@Hitret id=348
@hide
@stopBgm fade=3000
@whiteout time=1000
@cg file=white
@waitUpdate
@フェード出しＰ bg=ez02_01
@playBgm file=BGM22		
@Talk name=ツクヨミ voice=TKY000090
「いかがでしょうか？」
@Hitret id=349
@Talk name=塊斗
「おお、すごいな」
@Hitret id=350
@Talk name=心の声
さすが、と言うべきか。
@Hitret id=351
@Talk name=塊斗
「Ｃ‐ＡＩは、世界中で料理のアシストをしたり、
　実際に料理をしているもんな」
@Hitret id=352
@Talk name=ツクヨミ voice=TKY000091
「はい。マスターのお口に合えばよいのですが」
@Hitret id=353
@Talk name=塊斗
「いただきます！」
@Hitret id=354
@Talk name=心の声
ホテルの朝食みたい。完璧な味だった。
@Hitret id=355
@Talk name=心の声
そういえば、食べるのは自分だけか。
@Hitret id=356
@Talk name=心の声
ツクヨミはロボットだから食事しないのだろう。
それは仕方ない。
@Hitret id=357
@Talk name=塊斗
「美味しいよ、ありがとう」
@Hitret id=358
@cg file=ez02_02
@Talk name=ツクヨミ voice=TKY000092
「よかったです」
@Hitret id=359
@Talk name=心の声
俺が食べるのをツクヨミは、じっと見つめていた。
@Hitret id=360
@cg file=ez02_01
@Talk name=ツクヨミ voice=TKY000093
「ちなみに、この朝食には精力を増強する成分が、
　安全摂取量上限まで入れてあります」
@Hitret id=361
@Talk name=塊斗
「え！？　な、なんで……？」
@Hitret id=362
@cg file=ez02_02
@Talk name=ツクヨミ voice=TKY000094
「間違いなく、バキバキになります」
@Hitret id=363
@Talk name=塊斗
「これから、登校なんだけど……」
@Hitret id=364
@Talk name=心の声
バキバキになったら、困るんですが。
@Hitret id=365
@cg file=ez02_01
@Talk name=ツクヨミ voice=TKY000095
「……このツクヨミの〝大好き〟を
　理解してもらうためには」
@Hitret id=366
@Talk name=塊斗
「なんの関係が……？」
@Hitret id=367
@Talk name=ツクヨミ voice=TKY000096
「やはり、私をマスターに利用していただくのが一番、
　と判断しました」
@Hitret id=368
@Talk name=ツクヨミ voice=TKY000097
「このボディの〝巨乳〟が偽りでないことも、
　確かめていただきたく」
@Hitret id=369
@cg file=ez02_02 zoom=50 pos=0,-20,0
@Talk name=心の声
ぐぐっ、と彼女が身を乗り出してくる。
@Hitret id=370
@Talk name=心の声
ロボットだから、ある意味で偽りのような、
そういう問題ではないような……
@Hitret id=371
@Talk name=心の声
とにかく、神々しいほど優れた容姿の少女から、
〝使って〟だの〝確かめて〟だの言われたら……
@Hitret id=372
@Talk name=心の声
気圧されて無理だった。
@Hitret id=373
@フェード出しＰ bg=BG01a01		
@カメラ揺らし大
@Talk name=心の声
俺は口の中にパンを放りこむと、牛乳で流しこむ。
@Hitret id=374
@Talk name=塊斗
「ご、ごちそうさま！　もう、行かないと」
@Hitret id=375
@Talk name=心の声
急いで席を立った。
@Hitret id=376
@Talk name=心の声
まだ、遅刻を心配するような時間ではないが。
@Hitret id=377
@hide
@cg file=black
@playSe file=SE185	
@update transition=universal rule=WIP_BRUSHLR time=300
@waitUpdate
@Talk name=心の声
学生鞄を掴むと、逃げるように部屋を出るのだった。
@Hitret id=378
@char file=CA06A815F	
@Talk name=ツクヨミ voice=TKY000098
「あ……いってらっしゃいませ、マスター」
@Hitret id=379
@change target=01_02
