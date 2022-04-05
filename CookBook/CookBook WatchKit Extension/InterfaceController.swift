//
//  InterfaceController.swift
//  CookBook WatchKit Extension
//
//  Created by Алексеев on 04.04.2022.
//

import WatchKit
import Foundation

//structure
struct Model{
    var name: String
    var emoji: String
    var recipe: String
    var image: String



 static func getData() -> [Model] {
     
    return[
    Model(name: "Борщ", emoji: "🫕", recipe: "Говядина на косточке - 500г., Капуста- 400г, 3-4 картофелины, 1 морковь, 1 больша луковица, 3-4 зуба чеснока, 2 вкусных сладких свеклы. Можно предварительно попробовать. Безвкусная свекла будет просто бесполезна, 2-3 ст.л. томатной пасты. Можно использовать и нормальные, свежие помидоры или помидоры в собственном соку. Я пользуюсь обычно именно ими, 2.ч.л соли.", image: "borsch"),
    Model(name: "Блинчики", emoji: "🥞", recipe: "Яйцо – 1 шт., Мука – 150 г., Молоко –150 мл., Подсолнечное масло – 15 мл., Соль (по вкусу) – 20 г., Сахар (по вкусу) – 20 г.", image: "blinchik"),
    Model(name: "Мол. коктейль", emoji: "🥛", recipe: "Банан 2, Молоко или кокосовое молоко 350 мл., Какао 2 ст. ложки, Мед 1 ст. ложка, Кокосовая стружка для присыпки", image: "milkshake"),
    Model(name: "Спагетти", emoji: "🍝", recipe: "Спагетти (или другие макаронные изделия) - 250 г, Куриные бедра - 2 шт., Помидоры измельченные или томатный сок - 200 мл, Чеснок - 1 зубчик, Лук репчатый - 1 шт., Сыр твёрдый - 30 г, Масло растительное - 2-3 ст. ложки, Сахар (по желанию) - 1 ч. ложка, Соль - по вкусу, Перец свежемолотый - по вкусу, Базилик сушеный - по вкусу, Специи (на выбор) - по вкусу, Зелень свежая (для подачи) - 1 веточка", image: "spagetti"),
    Model(name: "cesar", emoji: "🥗", recipe: "Грудка куриная - 1 шт. (400 г), Капуста пекинская - 1 шт., Помидоры черри - 150-200 г, Сыр твердый (желательно пармезан) - 50-70 г, Хлеб белый - 3-4 ломтика, Соль - по вкусу, Масло оливковое - 6 ст.л. (для жарки), Перец черный молотый - 1 ч.л., Чеснок - 4 зубчика, Майонез - 3-4 ст.л.", image: "spagetti")]
}
}

class InterfaceController: WKInterfaceController {
    @IBOutlet weak var table: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        table.setNumberOfRows(Model.getData().count, withRowType: "tableid")
    }
}

