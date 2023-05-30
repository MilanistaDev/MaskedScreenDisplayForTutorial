//
//  ContentItem.swift
//  MaskedScreenDisplayForTutorial
//
//  Created by Takuya Aso on 2023/05/30.
//

import Foundation

struct ContentItem {
    var image: String
    var title: String
    var description: String
}

let sampleContents: [ContentItem] = [
    ContentItem(
        image: "img_news_01",
        title: "2000系爆誕",
        description: "02系に変わり新車両の2000系が登場します。さらに安心安全性が増した車両には電源スペースも。"
    ),
    ContentItem(
        image: "img_news_02",
        title: "サインカーブ！",
        description: "2000系も伝統のサインカーブの存在が光ります。ホームドアがあっても見えるのがいいですね。"
    ),
    ContentItem(
        image: "img_news_03",
        title: "サードレール",
        description: "丸ノ内線は銀座線と同じくサードレール方式(第三軌条方式)。トンネルが小さくてすみました。"
    ),
    ContentItem(
        image: "img_news_00",
        title: "茗荷谷，なんで？",
        description: "各駅は発車メロディに変わってきました。茗荷谷はまだ営団ブザーなのです。住宅街が近いから？"
    ),
]

let dummyContent = ContentItem(image: "img_news_00", title: "Title", description: "body text")
