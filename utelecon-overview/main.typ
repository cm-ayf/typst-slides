#import "@preview/polylux:0.4.0": *

#set page(paper: "presentation-16-9", margin: 1.5em)
#set text(size: 28pt, font: "Noto Sans CJK JP")
#set underline(offset: 5pt)

#slide[
  #v(1fr)

  #pad(x: -20pt, y: 20pt)[
    = utelecon/utelecon.github.io をざっと見る
  ]

  #block(height: 1fr)[
    utelecon サポーター・情報理工学系研究科修士1年 \
    岩田風多
  ]
]

#slide[
  == 自己紹介

  #toolbox.side-by-side(columns: (2fr, 1fr))[
    #align(horizon)[
      - 岩田風多
      - utelecon サポーター
      - 今の utelecon のサイト生成基盤を作った
      - #link("https://github.com/cm-ayf")[
          #underline[https://github.com/cm-ayf]
        ]
    ]
  ][
    #block(radius: 50%, clip: true)[
      #image(width: 100%, "./composite.png", fit: "cover")
    ]

    #set text(size: 20pt)
    GitHub のアイコン↑は\ 毎年変わります
  ]
]

#slide[
  == utelecon/utelecon.github.io の 全体像

  #toolbox.side-by-side(columns: (3fr, 1fr))[
    #set text(size: 20pt)
    #set align(horizon)

    - `.github/workflows`: 自動デプロイの設定
    - `src/components`: #text(orange)[いくつかのページで共有する部品置き場]
    - `src/data`: #text(orange)[お知らせなどのデータ置き場]
    - `src/emergencies`: 大規模な障害で「箱」を出すときに使う
    - `src/layouts`: 全ページで共通のレイアウト置き場
    - `src/lib`: 独自記法などの処理系置き場
    - `src/pages`: #text(orange)[この中に置いたファイルがページになる]
    - `src/styles`: 全ページで共通のスタイル置き場

  ][
    #box(height: 85%)[
      #image("./sidebar.png", fit: "cover")
    ]
  ]
]

#slide[
  == `src/pages`（ページ置き場）

  #toolbox.side-by-side(columns: (3fr, 1fr))[
    #set align(horizon)

    - ここに置いたファイルがページになる
    - パス名にもそれなりに考えがあるが割愛
    - ページを追加したい場合は\ #link("https://github.com/utelecon/utelecon.github.io/blob/master/README.md")[#underline[`README.md`]] を参照
  ][
    #box(height: 85%)[
      #image("./sidebar-pages.png", fit: "cover")
    ]
  ]
]

#slide[
  == `src/components`（共有部品置き場）

  #toolbox.side-by-side(columns: (3fr, 1fr))[
    #set align(horizon)

    - `@components` という別名があります
  - `src/components/ja/systems` や\ `src/components/en/systems` をよく触る
    - ここにあるものは #link("https://utelecon.adm.u-tokyo.ac.jp/oc/")[#underline[`/oc/`]] や\ #link("https://utelecon.adm.u-tokyo.ac.jp/faculty_members/")[#underline[`/faculty_members/`]]， また各システムのページで使われています
  - 詳しい説明 → #link("https://github.com/utelecon/utelecon.github.io/blob/master/src/components/README.md")[#underline[`src/components/README.md`]]
    - 古くなってるかも……
  ][
    #box(height: 85%)[
      #image("./sidebar-components.png", fit: "cover")
    ]
  ]
]

#slide[
  == `src/styles`（スタイル置き場）

  - 画面レイアウトに関する CSS があります
  - 様々なファイルで使える ユーティリティがあります
    - 例えば `.box` など↓
      #align(center, image("./box.png", width: 80%))

  - 詳しい説明 → #link("https://github.com/utelecon/utelecon.github.io/blob/master/src/styles/README.md")[#underline[`src/styles/README.md`]]
    - 古くなってるかも……
]

#slide[
  == まとめ

  - README を読んでください．
  - 更新してくださる人を歓迎します．
]
