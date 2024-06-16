//
//  TarotCardData.swift
//  TarotScanner
//
//  Created by Ian Denysenko on 16.06.2024.
//

import Foundation

struct TarotCard {
    let name: String
    let description: String
}

class TarotCardData {
    static let shared = TarotCardData()
    
        let cards: [TarotCard] = [
        // Старші Аркани
        TarotCard(name: "Дурень", description: "Дурень символізує нові починання, віру в майбутнє, недосвідченість, невідомість, везіння початківця, імпровізацію та віру у всесвіт."),
        TarotCard(name: "Маг", description: "Маг символізує втілення цілей, винахідливість, силу, натхненні дії та наявність інструментів для успіху."),
        TarotCard(name: "Верховна Жриця", description: "Інтуїція, вищі сили, таємниця, підсвідомість."),
        TarotCard(name: "Імператриця", description: "Родючість, жіночність, краса, природа, достаток."),
        TarotCard(name: "Імператор", description: "Авторитет, батьківська фігура, структура, міцний фундамент."),
        TarotCard(name: "Ієрофант", description: "Релігія, групова ідентифікація, конформізм, традиції, вірування."),
        TarotCard(name: "Закохані", description: "Любов, єднання, стосунки, узгодження цінностей, вибір."),
        TarotCard(name: "Колісниця", description: "Контроль, сила волі, перемога, рішучість."),
        TarotCard(name: "Сила", description: "Сила, мужність, терпіння, контроль, співчуття."),
        TarotCard(name: "Відлюдник", description: "Самопізнання, інтроспекція, самотність, внутрішнє керівництво."),
        TarotCard(name: "Колесо Фортуни", description: "Удача, карма, життєві цикли, доля, переломний момент."),
        TarotCard(name: "Справедливість", description: "Справедливість, чесність, правда, причинно-наслідковий зв'язок, закон."),
        TarotCard(name: "Повішений", description: "Призупинення, обмеження, відпускання, жертва."),
        TarotCard(name: "Смерть", description: "Закінчення, початок, зміна, трансформація, перехід."),
        TarotCard(name: "Помірність", description: "Баланс, помірність, терпіння, метаморфоза."),
        TarotCard(name: "Диявол", description: "Пристрасть, матеріалізм, спокуса, залежність."),
        TarotCard(name: "Вежа", description: "Руйнування, крах, несподівані зміни."),
        TarotCard(name: "Зірка", description: "Надія, духовність, натхнення, втілення бажань."),
        TarotCard(name: "Місяць", description: "Ілюзії, страхи, підсвідомість, інтуїція."),
        TarotCard(name: "Сонце", description: "Радість, успіх, святкування, позитивність."),
        TarotCard(name: "Суд", description: "Відродження, суд, внутрішній поклик."),
        TarotCard(name: "Світ", description: "Завершення, досягнення, інтеграція, подорожі."),

        // Жезли (Вогонь)
        TarotCard(name: "Туз Жезлів", description: "Початок нових справ, творчих ідей, ентузіазм."),
        TarotCard(name: "Двійка Жезлів", description: "Плани, вибір, передчуття змін."),
        TarotCard(name: "Трійка Жезлів", description: "Прогрес, розширення, співпраця."),
        TarotCard(name: "Четвірка Жезлів", description: "Успіх, святкування, гармонія."),
        TarotCard(name: "П'ятірка Жезлів", description: "Конкуренція, боротьба, конфлікт."),
        TarotCard(name: "Шістка Жезлів", description: "Перемога, визнання, тріумф."),
        TarotCard(name: "Сімка Жезлів", description: "Захист, протистояння, стійкість."),
        TarotCard(name: "Вісімка Жезлів", description: "Швидкість, рух, повідомлення."),
        TarotCard(name: "Дев'ятка Жезлів", description: "Стійкість, витривалість, обережність."),
        TarotCard(name: "Десятка Жезлів", description: "Перевантаження, відповідальність, труднощі."),
        TarotCard(name: "Паж Жезлів", description: "Енергія, ентузіазм, нові ідеї."),
        TarotCard(name: "Лицар Жезлів", description: "Пригоди, дія, імпульсивність."),
        TarotCard(name: "Королева Жезлів", description: "Самовпевненість, чарівність, творчість."),
        TarotCard(name: "Король Жезлів", description: "Лідерство, вольова сила, натхнення."),
        
        // Кубки (Вода)
        TarotCard(name: "Туз Кубків", description: "Нові емоції, почуття, любов."),
        TarotCard(name: "Двійка Кубків", description: "Партнерство, злиття, гармонія."),
        TarotCard(name: "Трійка Кубків", description: "Свято, дружба, підтримка."),
        TarotCard(name: "Четвірка Кубків", description: "Незадоволення, пошук сенсу, самоаналіз."),
        TarotCard(name: "П'ятірка Кубків", description: "Втрата, смуток, жаль."),
        TarotCard(name: "Шістка Кубків", description: "Спогади, ностальгія, дитинство."),
        TarotCard(name: "Сімка Кубків", description: "Фантазії, ілюзії, вибір."),
        TarotCard(name: "Вісімка Кубків", description: "Відхід, пошук, зміна напрямку."),
        TarotCard(name: "Дев'ятка Кубків", description: "Задоволення, здійснення бажань, комфорт."),
        TarotCard(name: "Десятка Кубків", description: "Щастя, гармонія, сімейне щастя."),
        TarotCard(name: "Паж Кубків", description: "Нові почуття, творчість, інтуїція."),
        TarotCard(name: "Лицар Кубків", description: "Романтика, пропозиції, подорожі."),
        TarotCard(name: "Королева Кубків", description: "Співчуття, інтуїція, підтримка."),
        TarotCard(name: "Король Кубків", description: "Зрілість, баланс емоцій, дипломатія."),
        
        // Мечі (Повітря)
        TarotCard(name: "Туз Мечів", description: "Істина, ясність, нові ідеї."),
        TarotCard(name: "Двійка Мечів", description: "Роздуми, баланс, вибір."),
        TarotCard(name: "Трійка Мечів", description: "Серцевий біль, розчарування, смуток."),
        TarotCard(name: "Четвірка Мечів", description: "Відпочинок, роздуми, відновлення."),
        TarotCard(name: "П'ятірка Мечів", description: "Конфлікт, суперечки, втрати."),
        TarotCard(name: "Шістка Мечів", description: "Перехід, подорож, відновлення."),
        TarotCard(name: "Сімка Мечів", description: "Обман, хитрість, стратегії."),
        TarotCard(name: "Вісімка Мечів", description: "Обмеження, страхи, безвихідь."),
        TarotCard(name: "Дев'ятка Мечів", description: "Тривога, безсоння, негативні думки."),
        TarotCard(name: "Десятка Мечів", description: "Кінець, завершення, біль."),
        TarotCard(name: "Паж Мечів", description: "Спостереження, допитливість, новини."),
        TarotCard(name: "Лицар Мечів", description: "Дія, рішучість, прямота."),
        TarotCard(name: "Королева Мечів", description: "Логіка, незалежність, об'єктивність."),
        TarotCard(name: "Король Мечів", description: "Розум, авторитет, ясність."),
        
        // Пентаклі (Земля)
        TarotCard(name: "Туз Пентаклів", description: "Матеріальні початки, можливості, процвітання."),
        TarotCard(name: "Двійка Пентаклів", description: "Баланс, гнучкість, адаптація."),
        TarotCard(name: "Трійка Пентаклів", description: "Співпраця, майстерність, робота в команді."),
        TarotCard(name: "Четвірка Пентаклів", description: "Збереження, стабільність, власність."),
        TarotCard(name: "П'ятірка Пентаклів", description: "Втрата, труднощі, фінансові проблеми."),
        TarotCard(name: "Шістка Пентаклів", description: "Щедрість, допомога, благодійність."),
        TarotCard(name: "Сімка Пентаклів", description: "Оцінка, очікування, інвестиції."),
        TarotCard(name: "Вісімка Пентаклів", description: "Праця, майстерність, удосконалення."),
        TarotCard(name: "Дев'ятка Пентаклів", description: "Незалежність, комфорт, успіх."),
        TarotCard(name: "Десятка Пентаклів", description: "Спадщина, сімейний добробут, традиції."),
        TarotCard(name: "Паж Пентаклів", description: "Нові починання, навчання, фінансові можливості."),
        TarotCard(name: "Лицар Пентаклів", description: "Практичність, надійність, завзятість."),
        TarotCard(name: "Королева Пентаклів", description: "Матеріальне благополуччя, турбота, процвітання."),
        TarotCard(name: "Король Пентаклів", description: "Успіх, стабільність, фінансовий добробут.")
    ]
    
    func getDescription(for cardName: String) -> String {
           return cards.first { $0.name == cardName }?.description ?? "Description not available"
       }
   }
