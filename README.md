Colorize Logs
==========

概要
----------

[Apacheログに色を付けて快適tail生活 - y-kawazの日記](http://d.hatena.ne.jp/y-kawaz/20110713/1310532417) に触発されて作成した
自分用のログの色つけ sed スクリプトを Github アカウントを作成した勢いで公開してみます。

対象となるソフトウェアは今のところ Postfix で、色付け対象は Status です。
今後何か作ればまたアップする予定ですが、今のところ未定です。

特徴
----------

[Apacheログに色を付けて快適tail生活 - y-kawazの日記](http://d.hatena.ne.jp/y-kawaz/20110713/1310532417) の真似っこですが、以下が特徴になります。

- sed のみで動く
- 小難しいオプション無しにパイプで出力を渡せば動く
    - 例

	        $ tail -f /var/log/maillog | ./colorize-postfix-status.sed

運用してるとあちこちのサーバでログ監視する必要が生じてくるので、

- 大抵のサーバでライブラリ等のインストールなどの事前準備無しに動かせること
- 運用者が「えーとこのスクリプトどう動かすんだっけ？」無しに動かせること

は結構大事なのかなーと思ってます。

あ、それと完全に個人的趣味ですが **黒背景ターミナル** 前提のカラーリングですので、
色が気に入らないなーといった場合にはスクリプトを直に書き換えちゃって頂ければ幸いです。
（オプションで変えれるようにすることも考えましたが結局使わない気がしたので）。
色とコードの対応については以下のサイトが参考になるかと。

- [RubyでANSIカラーシーケンスを学ぼう！](http://melborne.github.com/2010/11/07/Ruby-ANSI/)
- [ANSI escape code - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/ANSI_escape_code)


使い方
----------

1. GitHub からソースを入手
    - 例:

            $ git clone git://github.com/mo-ya/colorize-logs.git
1. スクリプトに実行権限を付与
    - 例: 

            $ chmod 755 colorize-postfix-status.sed
1. パスが通ったところに設置
    - 例: 

            $ mkdir ~/bin
            $ mv colorize-postfix-status.sed ~/bin/
            $ export PATH=$PATH:~/bin/

1. あとはログの出力を標準入力で渡すだけ
    - 例1: tail -f で流してるログに色付け

	        $ tail -f /var/log/maillog | colorize-postfix-status.sed
    - 例2: less で結果を見る場合は本スクリプトで挿入したエスケープシーケンスを解釈できるよう -R 
	  オプションをつけると良い感じです

	        $ cat /var/log/maillog | colorize-postfix-status.sed | less -R

1. こんな感じでログがハイライトされますよと
    ![Screen Shot](https://raw.github.com/mo-ya/colorize-logs/master/screen-shot01.png)
