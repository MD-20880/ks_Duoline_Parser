@hide
@blackout time=2000 hitCancel
@update transition=crossfade time=1000
@waitUpdate
@cg file=BG01c01 pos=-400,-75 zoom=100
@playBgm file=BGM21
@update transition=crossfade time=2000
@moveCamera id=cg pos=-200,-75,0 time=40000 accel=2
@waitUpdate
@Talk name=塊斗
「見つけた……」
@Hitret id=1
@playSe file=SE053	
@Talk name=塊斗
「見つけたぞ……」
@Hitret id=2
@Talk name=塊斗
「1234123」
@Hitret id=3
@stopSe fade=1000
@Talk name=塊斗
「21341234」
@Hitret id=4
@Ruby mess=Ｃ‐ＡＩ read=セントラルエーアイ
@Talk name=塊斗
「123412341234」
@Hitret id=5
@暗転 time=1500
@cg file=ez01_01 pos=-200,-170 zoom=100
@update transition=crossfade time=1500
@playSe file=SE053	
@Talk name=塊斗
「12342134！」
@Hitret id=6
@Talk name=塊斗
「ふっ……ふはっ！　ふはははっ！」
@Hitret id=7
@stopSe fade=1000
@cg file=ez01_01 zoom=0
@update transition=crossfade time=750
@Talk name=ツクヨミ/Ｃ‐ＡＩ voice=TKY000001_E04
「クライアントを無制限オペレーターとして
/n/n　登録しました」
@Hitret id=8
@Talk name=
心の声
@Hitret id=9
@cg file=ez01_02
@Talk name=自分でも信じられないような気分だった。
塊斗
@Hitret id=10
@Talk name=「本当に……Ｃ‐ＡＩなんだよな？」 voice=TKY000002_E04
ツクヨミ/Ｃ‐ＡＩ
@Hitret id=11
@Talk name=「はい、マスター。私はＣ‐ＡＩです」
心の声
@Hitret id=12
@Talk name=ＡＩは世界を変えた。
心の声
現在、人が生きるために必要なインフラスト
@Hitret id=13
@Talk name=/nラクチャーの/n大半は、ＡＩにより最
適化
されている。
@Hitret id=14
@Talk name=心の声/n電気水道ガスの管理や、交通整理
や、役所の
手続きや、/n銀行の業務など、ＡＩはどこ
@Hitret id=15
@Talk name=にでも使われていた。/n心の声

@Hitret id=16
@Talk name=そのなかでも、最高の性能を誇るＣ‐ＡＩは voice=TKY000003_E04
、/n世界を動かしていると言っても過言で

@Hitret id=17
@Talk name=はない。
塊斗/n「そのＣ‐ＡＩへ、命令できるのか
@Hitret id=18
@cg file=ez01_03
@Talk name=……俺が
」
ツクヨミ/Ｃ‐ＡＩ
@Hitret id=19
@Talk name=「はい、マスターは無制限オペレーターとし voice=TKY000004_E04
て/n　登録されています」/n心の声
@Hitret id=20
@Talk name=

@Hitret id=21
@Talk name=身震いした。 voice=TKY000005_E04
塊斗
@Hitret id=22
@Talk name=「俺の口座を国家予算並にすることだって…
…/n　できる、よな？」
@Hitret id=23
@Talk name=
ツクヨミ/Ｃ‐ＡＩ
@Hitret id=24
@暗転 time=750
@cg file=BG12c01
@update transition=crossfade time=750
@Talk name=「もちろんです、マスター」
塊斗
@Hitret id=25
@Talk name=「国家機密を閲覧することだって……？」
ツクヨミ/Ｃ‐ＡＩ
@Hitret id=26
@Talk name=「機密レベルＡＡ以上のファイルを一覧なさ
いますか？」
塊斗
@Hitret id=27
@Talk name=「くっくっ……俺としたことが、手に汗を…
…」
心の声
抑えきれない興奮に、背筋がぞくぞくした。
@Hitret id=28
@Talk name=/n心の声
ふと窓の外に目を向ける。
@Hitret id=29
@暗転 time=750
@cg file=ez01_02
@update transition=crossfade time=750
@Talk name=心の声/n金色の月が輝いていた。/n心の voice=TKY000006_E04
声
@Hitret id=30
@Talk name=
Ｃ‐ＡＩを構成する大半――記憶装置や演算
@Hitret id=31
@Talk name=装置などは、/n地上に分散して置かれてい

@Hitret id=32
@cg file=ez01_01
@update transition=crossfade time=750
@Ruby mess=城前塊斗 read=しろまえ　かいと
@Talk name=る。
心の声
しかし、アカウント管理などの中枢部分は、
/n災害やテロによる致命的な喪失を防ぐた
@Hitret id=33
@Talk name=
め、/n月の基地にあった。
@Hitret id=34
@Talk name=心の声 voice=TKY000007_E04
そこに、俺は手を届かせたのだ。
@Hitret id=35
@cg file=ez01_02
@update transition=crossfade time=750
@Talk name=ツクヨミ/Ｃ‐ＡＩ/n「マスター、ご命令
を」/n心の声
@Hitret id=36
@stopBgm fade=3000
@Talk name= voice=TKY000008_E04
深呼吸をした。
@Hitret id=37
@cg file=ez01_04
@update transition=crossfade time=750
@Talk name=塊斗
「よし……無制限のマスターとして命ずる！
@Hitret id=38
@Talk name=」 voice=TKY000009_E04
塊斗
「この俺、城前塊斗のことを大好き、という
@Hitret id=39
@Talk name=女の子と/n　会わせてほしい！　目がぱっ
ちりかわいくて、/n　優しく甘えさせてく
@Hitret id=40
@playBgm file=BGM09		
@暗転 time=750
@cg file=BG01c01 pos=-300,-75 zoom=100		
@update transition=crossfade time=500
@waitUpdate
@カメラ揺らし大
@Talk name=
れて、あと、巨乳で！」
@Hitret id=41
@Talk name=心の声
世界に１人くらい、いるにちがいない。きっ
@Hitret id=42
@Talk name=と。たぶん。/nツクヨミ/Ｃ‐ＡＩ

@Hitret id=43
@Talk name=「検索が完了しました」
塊斗
「お、おう」
@Hitret id=44
@Talk name=ツクヨミ/Ｃ‐ＡＩ
「該当者なし。検索結果は０件。存在いたし
@Hitret id=45
@stopBgm fade=3000
@stopSe fade=1000
@Talk name=ませんでした」 voice=TKY000010_E05
塊斗
@Hitret id=47
@暗転 time=750
@playSe file=SE054	
@cg file=ez01_05
@playBgm file=BGM12		
@Talk name=「……なし？」
ツクヨミ/Ｃ‐ＡＩ
@Hitret id=48
@Talk name=「はい、マスター。Ｃ‐ＡＩが把握している
/n/n　約６０億人の中に該当者はおりま
せん
@Hitret id=49
@stopSe fade=1000
@Talk name=」
塊斗
@Hitret id=50
@Talk name=「……」
塊斗
@Hitret id=51
@playSe file=SE109	
@Talk name=「あああああー、知ってたわー！」
心の声
@Hitret id=52
@stopSe fade=1000
@hide
@playSe file=SE093	
@cg file=BG13A02
@enter id=ノラハム１ file=AVATAR_KIT type=screen order=1000 y=-100 x=-400 right=200 free
@waitAction id=ノラハム１
@playSe file=SE093	
@enter id=ノラハム２ file=AVATAR_KIT type=screen order=1000 y=-100 x=400 right=200 free
@Talk name=たとえ６０億の人間がいようとも、存在しな
いのだ。/n心の声

どうせ、俺を好きな女の子なんて、１人も。
@Hitret id=53
@Talk name=塊斗
「くっ……知ってはいたが、Ｃ‐ＡＩに断言
@Hitret id=54
@Talk name=されると/n　……つらい」

@Hitret id=55
@hide
@playSe file=SE327	
@clearChar id=ノラハム１ time=400
@waitAction id=ノラハム１
@wait time=500
@playSe file=SE327	
@clearChar id=ノラハム２ time=400
@Talk name=塊斗
「ちょっと泣けてきた」
@Hitret id=56
@Talk name=ツクヨミ/Ｃ‐ＡＩ
「マスター、プロセスを……」/n塊斗/n
@Hitret id=57
@Talk name=「セキュリティが！？」

心の声
@Hitret id=58
@Talk name=見張りに立てておいた警戒プログラムが、/
nＣ‐ＡＩのセキュリティ動作を感知した警
@Hitret id=59
@hide
@enter id=ノラハム file=AVATAR_KIT type=screen order=1000 y=-100 right=200 free
@Talk name=告音だった。
心の声
こうも早く、侵入に感づかれるとは……
@Hitret id=60
@暗転 time=750
@cg file=ez01_05
@Talk name=塊斗
「まぁ、いい……脱出経路は用意してある」
塊斗
@Hitret id=61
@Talk name=「駆け回れ、増殖する偽物たち」/n心の声

@Hitret id=62
@cg file=ez01_06
@Talk name=セキュリティに、自己増殖する偽物を追わせ
る。/n喩えるなら、何匹もの囮を放って、
@Hitret id=63
@update transition=universal rule=WIP_RL time=500
@stopBGM
@cg file=BG01c01 pos=-300,-75 zoom=100		
@update transition=universal rule=WIP_BRUSHLR time=300
@playSe file=SE094	
@waitUpdate
@カメラ揺らし大
@Talk name=
相手を混乱させる/n作戦だった。
@Hitret id=64
@Talk name=心の声/nプログラム空間を大量のハムスタ
ーが駆け回
@Hitret id=65
@Talk name=るイメージだ。
心の声/n俺は自分のハンドルネームから、
@Hitret id=66
@Talk name=ノラハムと
呼んでいる。
心の声
@Hitret id=67
@Talk name=ところが、放ったノラハムたちが次々と消さ
れていく。
@Hitret id=68
@Talk name=心の声
Ｃ‐ＡＩの処理速度は、こちらの想定を上回
@Hitret id=69
@playBgm file=BGM09		
@cg file=BG01c01 zoom=0
@update transition=crossfade time=750
@waitUpdate
@Talk name=る速さだった。
心の声
@Hitret id=70
@Talk name=こちらは正体を隠すために、様々な基地局を
迂回している。/nそのうえ、戦場は月面だ

@Hitret id=71
@Talk name=った。
心の声/nどうしても、操作と実行にタイム
@Hitret id=72
@Talk name=ラグがある
。
心の声
@Hitret id=73
@Talk name=ノラハムの数が半分以下にされてしまった。
/nそのぶん、自分が発見される可能性も高
@Hitret id=74
@Talk name=
まる。
@Hitret id=75
@Talk name=塊斗
「さすがだな……しかし、もう俺の痕跡は/
n　全て削除した……」/n心の声
@Hitret id=76
@Talk name=
逃げ切れる！
@Hitret id=77
@Talk name=塊斗
「てえい！」
@Hitret id=78
@stopBGM
@暗転
@playSe file=SE290	
@cg file=BG13A01 zoom=50 time=750
@focus all depth=6
@Talk name=心の声/n思い切り、足元にあるスイッチを voice=TKY000011_E04
蹴飛ばす。
@Hitret id=79
@Talk name=心の声 voice=TKY000012_E04
物理的にネットワーク回線を切断した。
@Hitret id=80
@Talk name=塊斗 voice=TKY000013_E04
「ふぅ……」
@Hitret id=81
@Talk name=心の声 voice=TKY000014_E04
これで、Ｃ‐ＡＩからは追いかけようがない
/nだろう。/n痕跡も消去したし。
@Hitret id=82
@Talk name= voice=TKY000015_E04
塊斗
@Hitret id=83
@hide
@stopSe fade=1000
@stopEnvSe fade=3000
@stopBgm fade=3000
@blackout time=3000 hitCancel
@playMovie file=kamikimi
@change target=00_02
