//
//  ViewController.swift
//  QuickGenerator
//
//  Created by Terry on 2021/12/23.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var quoteLb: UILabel!
    @IBOutlet weak var nameLb: UILabel!
    
    let quotes = [
        Quate(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다", name: "벤다이크"),
        Quate(contents: "나는 나 자신을 빼 놓고는 모두 안다.", name: "비용"),
        Quate(contents: "편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
        Quate(contents: "분노는 바보들의 가슴속에서만 산다.", name: "아인슈타인"),
        Quate(contents: "몇 번이라도 좋다! 이 끔찍한 생이여... 다시!", name: "니체")
    ]
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Action
    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5)) // 0 ~ 4 사이의 난수 생성
        let quote = quotes[random]
        quoteLb.text = quote.contents
        nameLb.text = quote.name
    }
    

}

