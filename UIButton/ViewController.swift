//
//  ViewController.swift
//  UIButton
//
//  Created by Всеволод Михайлов on 06.12.2022.
//

import UIKit

class ViewController: UIViewController {

    // первая красная кнопка
    var firstRedButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createFirstRedButton()
    }
    
    
    // MARK: - Методы создания кнопки
    
    // первая красная кнопка
    func createFirstRedButton() {
        // инициализатор и тип кнопки
        self.firstRedButton = UIButton(type: .roundedRect)
        // задать координаты для рисования кнопки - frame
        self.firstRedButton.frame = CGRect(x: 30, y: 100, width: 150, height: 70)
        // задать надпись для кнопки
        self.firstRedButton.setTitle("1ая", for: .normal)
        // задать цвет кнопки
        self.firstRedButton.backgroundColor = .red
        // задать цвет текста
        self.firstRedButton.setTitleColor(.white, for: .normal)
        // добавить кнопку на view
        self.view.addSubview(self.firstRedButton)
    }


}

