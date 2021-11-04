//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by limyunhwi on 2021/10/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbQuote: UILabel!
    @IBOutlet weak var lbName: UILabel!
    
    let quotes: [Quote] = [
        Quote(contents:"꿈을 이루고자 하는 용기만 있다면 모든 꿈을 이룰 수 있다.", name: "월트 디즈니"),
        Quote(contents: "비록 해가 진다고 해도, 나에게는 전기불이 있다", name: "로커 커트 코베인"),
        Quote(contents: "웃음이 없는 하루는 버린 하루다.", name: "찰리 채플린"),
        Quote(contents: "조금도 도전하지 않으려고 하는 것이 인생에서 가장 위험한 일이다", name: "오프라 윈프리"),
        Quote(contents: "안 하는 것보다 낫다.", name: "yh"),
        Quote(contents: "남들이 할 수 있거나 하려는 일을 하지 말고 남들이 할 수 없거나 하지 않으려는 일을 하라", name: "최초로 대서양을 횡단한 비행사 아멜리아 에어하트"),
        Quote(contents: "새로운 일에 도전하다 보면 가끔 실수를 저지를 수 있다. 자신의 실수를 빨리 인정하고 다른 시도에 집중하는 것이 최선이다.", name: "스티브 잡스")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.lbQuote.text = quotes[0].contents
        self.lbName.text = quotes[0].name
    }

    @IBAction func btnQuoteGenerator(_ sender: UIButton) {
        let random: Int = Int(arc4random_uniform(7)) //0~7미만, 즉 0~6 사이의 난수 반환, 배열의 인덱스로 사용하기 위해 Int로 형변환
        let quote: Quote = quotes[random]
        
        self.lbQuote.text = quote.contents
        self.lbName.text = quote.name
    }
    
}

