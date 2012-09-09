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

* sed のみで動く
* 小難しいオプション無しにパイプで出力を渡せば動く
    例: $ tail -f /var/log/maillog | ./colorize-postfix-status.sed

運用してるとあちこちのサーバでログ監視する必要が生じてくるので、

* 大抵のサーバでライブラリ等のインストールなどの事前準備無しに動かせること
* 運用者が「えーとこのスクリプトどう動かすんだっけ？」無しに動かせること

は結構大事なのかなーと思ってます。

あ、それと完全に個人的趣味ですが *黒背景ターミナル* 前提のカラーリングですので、
色が気に入らないなーな場合には


使い方
----------


