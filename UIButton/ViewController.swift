//
//  ViewController.swift
//  UIButton
//
//  Created by Всеволод Михайлов on 06.12.2022.
//

import UIKit

class ViewController: UIViewController {

    // 1ая красная кнопка
    var firstRedButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createFirstRedButton()
        customArrayButton()
        createSecondGreenButton()
    }
    
    // массив из 3х кнопок
    //  1 массив желтая - тег 1
    //  2 массив оранжевая - тег 2
    //  3 массив фиолетовая -  тег 3
    @IBOutlet var arrayButton: [UIButton]!
    
    // 2ая зеленая кнопка
    var secondGreenButton = UIButton()
    
    
    // MARK: - Методы создания кнопки
    
    // 1ая красная кнопка
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
    
    
    
    // Массив из 3х кнопок
    // прочитать массив кнопок циклом for
    // задать кастоиные параметры для каждой кнопки
    func customArrayButton() {
        for button in arrayButton {
            button.setTitleColor(UIColor.black, for: .normal)
    }

    }
    
    // Отслеживать кнопку и применять действие из массива кнопок
    @IBAction func arrayButtonAction(_ sender: Any) {
        let button = sender as! UIButton
        
        if button.tag == 1 {
            print("Button number is 1")
        } else if button.tag == 2 {
            print("Button number is 2")
        } else if button.tag == 3 {
            print("Button number is 3")
        }
        
        if button.titleLabel?.text == "1 массив" {
            print("Ты нажал на кнопку номер 1")
        }
        
    }
    
    // 2ая зеленая кнопка
    func createSecondGreenButton() {
        // нарисовать зону, где будет отображаться UIButton
        secondGreenButton.frame = CGRect(x: view.bounds.size.width / 4 + 30,
                              y: view.center.y + 100,
                              width: 150, height: 50)
        // название и состояние кнопки
        // взята из UIProgressView - "Загрузка..."
        secondGreenButton.setTitle("2ая", for: .normal)
        // цвет названия кнопки и состояние
        secondGreenButton.setTitleColor(.black, for: .normal)
        // цвет кнопки
        secondGreenButton.backgroundColor = UIColor.green
        // прозрачность кнопки
        secondGreenButton.alpha = 0.5
        view.addSubview(secondGreenButton)
    }


}

