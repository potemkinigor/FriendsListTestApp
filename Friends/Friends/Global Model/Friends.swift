//
//  User.swift
//  Friends
//
//  Created by User on 18.03.2021.
//

import Foundation
import UIKit

class Friend {
    
    //MARK: - person properties
    
    var name: String
    var surname: String
    var fathersName: String
    var avatar: UIImage
    var phoneNumber: String
    var isFavorite: Bool
    
    //MARK: - init

    init(name: String, surname: String, fathersName: String, avatar: UIImage, phoneNumber: String, isFavorite: Bool) {
        self.name = name
        self.surname = surname
        self.fathersName = fathersName
        self.avatar = avatar
        self.phoneNumber = phoneNumber
        self.isFavorite = isFavorite
    }
    
}

class Friends {
    
    static let shared = Friends()
    
    var listOfFriends: [Friend] = []
    
    private init() {
        self.listOfFriends.append(Friend(name: "Ярослав", surname: "Воробьёв", fathersName: "Петрович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89930405257", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Еремей ", surname: "Кулаков", fathersName: "Фёдорович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89544555161", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йозеф ", surname: "Павлов", fathersName: "Фёдорович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89771155737", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Харитон ", surname: "Соболев", fathersName: "Иванович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89342763323", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Зуфар ", surname: "Михайлов", fathersName: "Александрович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89784101028", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Ждан ", surname: "Самсонов", fathersName: "Гордеевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89050248633", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Харитон ", surname: "Тарасюк", fathersName: "Евгеньевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89639007858", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Устин ", surname: "Петренко", fathersName: "Кириллович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89976992871", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Рафаил ", surname: "Шумейко", fathersName: "Михайлович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89075780635", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йомер ", surname: "Кобзар", fathersName: "Даниилович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89551941924", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Платон ", surname: "Карпенко-Карый", fathersName: "Миронович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89655339527", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йозеф ", surname: "Федосеев", fathersName: "Алексеевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89864755892", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Шамиль ", surname: "Королёв", fathersName: "Глебович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89415238103", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Феликс ", surname: "Иващенко", fathersName: "Тимурович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89206663788", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Харитон ", surname: "Соколов", fathersName: "Михайлович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89336657109", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Яромир ", surname: "Бердник", fathersName: "Егорович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89825958422", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Шарль ", surname: "Лазарев", fathersName: "Никитич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89485480880", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Лев ", surname: "Бобров", fathersName: "Максимович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89780811663", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Иван ", surname: "Спивак", fathersName: "Сергеевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89398414878", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Устин ", surname: "Фёдоров", fathersName: "Артёмович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89960391090", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Тимофей ", surname: "Павленко", fathersName: "Александрович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89807793351", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Богдан ", surname: "Милославский", fathersName: "Артёмович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89140424400", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Тарас ", surname: "Зыков", fathersName: "Савельевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89908897048", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Цефас ", surname: "Дементьев", fathersName: "Николаевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89949732385", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Еремей ", surname: "Харитонов", fathersName: "Даниилович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89350552735", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Ждан ", surname: "Маслов", fathersName: "Константинович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89191914828", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Остин ", surname: "Притула", fathersName: "Андреевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89747785728", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Юлиан ", surname: "Коровяк", fathersName: "Константинович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89662600427", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Влад ", surname: "Ситников", fathersName: "Игоревич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89185211708", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Устин ", surname: "Ерёменко", fathersName: "Даниилович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89648920172", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Чеслав ", surname: "Овчинников", fathersName: "Максимович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89683977747", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Роберт ", surname: "Казаков", fathersName: "Владиславович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89840403424", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Яромир ", surname: "Лапин", fathersName: "Олегович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89895441499", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Павел ", surname: "Повалий", fathersName: "Михайлович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89254541518", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Константин ", surname: "Белов", fathersName: "Максимович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89561292859", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Карен ", surname: "Фадеев", fathersName: "Иванович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89653404646", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Зуфар ", surname: "Устинов", fathersName: "Филиппович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89316920416", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Орландо ", surname: "Макаров", fathersName: "Михайлович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89041330968", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Харитон ", surname: "Некрасов", fathersName: "Дмитриевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89228755633", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Филипп ", surname: "Андреев", fathersName: "Тимофеевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89334273845", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Ждан ", surname: "Темченко", fathersName: "Андреевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89549653178", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Егор ", surname: "Лыткин", fathersName: "Даниилович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89797778915", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Феликс ", surname: "Моисеенко", fathersName: "Даниилович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89242213844", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Михаил ", surname: "Петухов", fathersName: "Львович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89896050718", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Остап ", surname: "Власов", fathersName: "Александрович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89469004873", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Стефан ", surname: "Зварыч", fathersName: "Глебович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89903243395", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Роберт ", surname: "Смирнов", fathersName: "Родионович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89970176699", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Еремей ", surname: "Киселёв", fathersName: "Степанович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89250547940", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Мирослав ", surname: "Одинцов", fathersName: "Кириллович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89943550110", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Платон ", surname: "Майборода", fathersName: "Романович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89595147916", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йозеф ", surname: "Сусаренко", fathersName: "Ярославович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89676301785", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Чеслав ", surname: "Грабчак", fathersName: "Семёнович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89702027090", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йозеф ", surname: "Одинцов", fathersName: "Артёмович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89998701407", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Марат ", surname: "Кириллов", fathersName: "Савельевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89534727680", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Яков ", surname: "Ковальчук", fathersName: "Григорьевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89295525944", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Адам ", surname: "Дьячков", fathersName: "Маркович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89635467071", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Леопольд ", surname: "Линник", fathersName: "Алексеевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89559122900", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Чеслав ", surname: "Гончар", fathersName: "Николаевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89093113988", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Роман ", surname: "Предыбайло", fathersName: "Иванович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89353804069", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Бронислав ", surname: "Доронин", fathersName: "Александрович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89836598169", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Зиновий ", surname: "Сазонов", fathersName: "Константинович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89047309163", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Гавриил ", surname: "Зиновьев", fathersName: "Данилович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89304639509", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Аким ", surname: "Стрелков", fathersName: "Глебович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89765781509", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Бронислав ", surname: "Хохлов", fathersName: "Владимирович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89926806394", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Герман ", surname: "Ерёменко", fathersName: "Александрович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89682570958", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Остап ", surname: "Уваров", fathersName: "Ильич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89103233101", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Кир ", surname: "Панфилов", fathersName: "Миронович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89437169546", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йозеф ", surname: "Сирко", fathersName: "Максимович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89225962056", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Денис ", surname: "Кириленко", fathersName: "Даниэльевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89517203869", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Жерар ", surname: "Комаров", fathersName: "Иванович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89727601855", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Болеслав ", surname: "Калинин", fathersName: "Георгиевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89465958018", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Чеслав ", surname: "Дзюба", fathersName: "Леонидович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89944311026", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Устин ", surname: "Алексеев", fathersName: "Кириллович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89368469660", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Леопольд ", surname: "Дидовец", fathersName: "Данилович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89710371758", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Игорь ", surname: "Острожский", fathersName: "Кириллович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89022117860", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Артур ", surname: "Гриневская", fathersName: "Робертович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89542897062", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Цезарь ", surname: "Негода", fathersName: "Сергеевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89043483155", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Пётр ", surname: "Лазарев", fathersName: "Иванович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89396627392", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Бронислав ", surname: "Цветков", fathersName: "Платонович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89982731217", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Эрик ", surname: "Волков", fathersName: "Ильич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89440825474", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Шарль ", surname: "Корнилов", fathersName: "Матвеевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89281786875", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йозеф ", surname: "Многогрешный", fathersName: "Владимирович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89189963483", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Устин ", surname: "Беляков", fathersName: "Вадимович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89408331190", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Тимур ", surname: "Бобров", fathersName: "Артёмович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89647462562", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Нестор ", surname: "Гаврилов", fathersName: "Глебович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89928166305", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Артур ", surname: "Киселёв", fathersName: "Максимович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89203898016", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Эрик ", surname: "Крюков", fathersName: "Гордеевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89859223409", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Давид ", surname: "Тарасюк", fathersName: "Маркович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89774392383", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Емельян ", surname: "Назаров", fathersName: "Маркович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89057835604", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Никодим ", surname: "Сысоев", fathersName: "Вячеславович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89036423030", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йосеф ", surname: "Горобчук", fathersName: "Миронович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89309061584", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Дмитрий ", surname: "Павленко", fathersName: "Никитич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89905541575", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Георгий ", surname: "Таранец", fathersName: "Олегович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89352660011", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Жигер ", surname: "Лаврентьев", fathersName: "Маркович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89610631069", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Бронислав ", surname: "Пасичник", fathersName: "Платонович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89452974547", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йозеф ", surname: "Захаров", fathersName: "Арсентьевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89531432942", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Спартак ", surname: "Кличко", fathersName: "Дмитриевич", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89156076060", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йошка ", surname: "Медведев", fathersName: "Иванович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89029315605", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Герасим ", surname: "Алексеев", fathersName: "Леонидович", avatar: UIImage(named: "maleAvatar")!, phoneNumber: "89499257076", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Флорентина ", surname: "Жукова", fathersName: "Алексеевич", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89309215235", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Искра ", surname: "Рыбакова", fathersName: "Ивановна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89877094972", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Таисия ", surname: "Федункив", fathersName: "Дмитриевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89076233398", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Тамара ", surname: "Тимошенко", fathersName: "Глебовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89659479724", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Клавдия ", surname: "Владимирова", fathersName: "Станиславовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89506086064", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Дарья ", surname: "Исаева", fathersName: "Григорьевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89962750383", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Лариса ", surname: "Куликова", fathersName: "Егоровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89979626490", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Флорентина ", surname: "Хохлова", fathersName: "Матвеевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89887349531", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Валерия ", surname: "Червона", fathersName: "Егоровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89460581745", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Чилита ", surname: "Абрамова", fathersName: "Тихоновна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89008719272", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Мальвина ", surname: "Абрамова", fathersName: "Витальевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89938037838", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Дина ", surname: "Михеева", fathersName: "Семёновна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89532429387", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Полина ", surname: "Трофимова", fathersName: "Артёмовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89517892991", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Шанетта ", surname: "Турова", fathersName: "Максимовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89602383960", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Дарья ", surname: "Суворова", fathersName: "Арсентьевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89568762578", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Маргарита ", surname: "Цветкова", fathersName: "Артемьевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89451597960", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Федосья ", surname: "Ковальчук", fathersName: "Георгиевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89034848898", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Лидия ", surname: "Майборода", fathersName: "Игоревна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89776786092", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Гелена ", surname: "Красильникова", fathersName: "Демидовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89416456880", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Лада ", surname: "Острожска", fathersName: "Арсентьевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89130613061", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йосифа ", surname: "Яковенко", fathersName: "Ивановна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89246377156", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Анфиса ", surname: "Колесник", fathersName: "Тимофеевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89373747620", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Кристина ", surname: "Романенко", fathersName: "Тимофеевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89697571914", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Татьяна ", surname: "Ермакова", fathersName: "Арсентьевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89496195111", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Клара ", surname: "Павленко", fathersName: "Матвеевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89979724845", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Береслава ", surname: "Гордеева", fathersName: "Мироновна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89892227257", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Анастасия ", surname: "Полищук", fathersName: "Ильинична", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89507554804", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Лариса ", surname: "Мельникова", fathersName: "Адамовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89529463663", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Раиса ", surname: "Зварыч", fathersName: "Александровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89196619205", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Диана ", surname: "Андрусейко", fathersName: "Евгеньевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89335548668", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Ульяна ", surname: "Батейко", fathersName: "Максимовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89352681077", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Эсмеральда ", surname: "Сыпченко", fathersName: "Фёдоровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89449204643", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Федосья ", surname: "Фомина", fathersName: "Тимофеевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89291359312", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Фаина ", surname: "Баранова", fathersName: "Денисовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89227762659", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йоханна ", surname: "Савельева", fathersName: "Константиновна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89788527137", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Таисия ", surname: "Скоропадска", fathersName: "Артемьевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89264173225", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Люся ", surname: "Маркова", fathersName: "Александровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89308494095", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Жанна ", surname: "Пахомова", fathersName: "Матвеевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89650060855", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Софья ", surname: "Молчанова", fathersName: "Ярославовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89435665978", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Кристина ", surname: "Негода", fathersName: "Тимуровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89047989708", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Алиса ", surname: "Рогова", fathersName: "Константиновна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89350284148", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Оксана ", surname: "Андрусейко", fathersName: "Максимовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89965907467", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Нина ", surname: "Никифорова", fathersName: "Егоровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89638752172", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Инесса ", surname: "Соболева", fathersName: "Львовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89314787890", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йана ", surname: "Михайлова", fathersName: "Кирилловна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89650823575", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Инна ", surname: "Бородай", fathersName: "Викторовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89881497959", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Чара ", surname: "Зиновьева", fathersName: "Максимовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89980076674", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Фаина ", surname: "Стрелкова", fathersName: "Георгиевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89638629513", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Берта ", surname: "Котовска", fathersName: "Антоновна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89797524147", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Рената ", surname: "Лебедева", fathersName: "Матвеевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89294737426", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Маргарита ", surname: "Дорофеева", fathersName: "Андреевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89978856766", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Олеся ", surname: "Пономаренко", fathersName: "Михайловна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89087177127", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Яна ", surname: "Коновалова", fathersName: "Захаровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89873899600", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Изабелла ", surname: "Мухина", fathersName: "Максимовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89675937544", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Люся ", surname: "Сыпченко", fathersName: "Егоровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89856058842", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Юзефа ", surname: "Тарасюк", fathersName: "Дмитриевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89128750149", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Зоя ", surname: "Маслова", fathersName: "Максимовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89303016054", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йосифа ", surname: "Воронова", fathersName: "Артёмовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89171130347", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Цветелина ", surname: "Навальна", fathersName: "Михайловна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89058747094", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Устинья ", surname: "Никифорова", fathersName: "Давидовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89413116095", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Устинья ", surname: "Линник", fathersName: "Данииловна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89267517442", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Кристина ", surname: "Недбайло", fathersName: "Викторовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89103087236", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Ядвига ", surname: "Маслова", fathersName: "Робертовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89738872257", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Регина ", surname: "Иващенко", fathersName: "Андреевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89299891305", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Чилита ", surname: "Борисова", fathersName: "Евгеньевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89735171839", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Эмма ", surname: "Гайчук", fathersName: "Марковна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89911536623", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Лариса ", surname: "Филатова", fathersName: "Кирилловна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89741861749", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Доминика ", surname: "Гончар", fathersName: "Дмитриевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89812398667", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Изабелла ", surname: "Дидовец", fathersName: "Тимуровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89487555209", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Шарлота ", surname: "Егорова", fathersName: "Дмитриевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89886715761", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Рената ", surname: "Смирнова", fathersName: "Дмитриевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89525149873", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Эльза ", surname: "Посидайло", fathersName: "Ивановна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89942931037", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Чеслава ", surname: "Блинова", fathersName: "Святославовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89683538889", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Тамара ", surname: "Архипова", fathersName: "Артёмовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89454236740", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Флорентина ", surname: "Сафонова", fathersName: "Марковна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89903081271", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Клавдия ", surname: "Батейко", fathersName: "Данииловна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89567951624", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Лидия ", surname: "Иванив", fathersName: "Давидовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89095912980", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Шанетта ", surname: "Зайцева", fathersName: "Антоновна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89167842585", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Алина ", surname: "Князева", fathersName: "Владимировна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89998182645", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Валерия ", surname: "Потапова", fathersName: "Львовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89960792452", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Диана ", surname: "Новикова", fathersName: "Романовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89716973904", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Глория ", surname: "Панфилова", fathersName: "Дмитриевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89297217497", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Бронислава ", surname: "Белозёрова", fathersName: "Артемьевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89449388608", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Федосья ", surname: "Королёва", fathersName: "Мироновна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89697290165", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Цвета ", surname: "Рыбакова", fathersName: "Робертовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89907658818", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Жаклин ", surname: "Громова", fathersName: "Гордеевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89871465022", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Ульяна ", surname: "Фролова", fathersName: "Андреевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89873350068", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Харита ", surname: "Забужко", fathersName: "Львовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89110225226", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Йоони ", surname: "Доронина", fathersName: "Павловна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89607625628", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Юзефа ", surname: "Бердник", fathersName: "Марковна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89750868306", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Раиса ", surname: "Дзюба", fathersName: "Михайловна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89356991044", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Федосья ", surname: "Новикова", fathersName: "Макаровна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89809148817", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Зоя ", surname: "Александрова", fathersName: "Денисовна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89614923106", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Зоя ", surname: "Воронова", fathersName: "Михайловна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89005634162", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Клементина ", surname: "Хитрук", fathersName: "Никитична", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89271003558", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Клавдия ", surname: "Ларионова", fathersName: "Ивановна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89597495032", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Октябрина ", surname: "Степанова", fathersName: "Марковна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89389414221", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Лидия ", surname: "Шамрыло", fathersName: "Мироновна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89449698224", isFavorite: false))
        self.listOfFriends.append(Friend(name: "Лидия", surname: "Кузнецова", fathersName: "Дмитриевна", avatar: UIImage(named: "femaleAvatar")!, phoneNumber: "89458406791", isFavorite: false))
    }
    
    
    func getFullListOfFriends() -> ([[Friend]], [String]) {
                
        let sortedFriends = sortFriends(friendList: self.listOfFriends)
        var sectionsFriendArray: [Friend] = []
        var sectionsName: [String] = []
        var friendsToShow: [[Friend]] = []
        
        
        (0..<alphabetArray.count).forEach { charIndex in
            (0..<sortedFriends.count).forEach { friendIndex in
                if sortedFriends[friendIndex].surname.first == alphabetArray[charIndex] {
                    sectionsFriendArray.append(sortedFriends[friendIndex])
                }
            }
            
            if sectionsFriendArray.count != 0 {
                sectionsName.append(String(alphabetArray[charIndex]))
                friendsToShow.append(sectionsFriendArray)
                sectionsFriendArray.removeAll()
            }
        }
        
        return (friendsToShow, sectionsName)
        
    }
    
    func getFilteredListOfFriends(searchText: String) -> ([[Friend]]?, [String]?) {
        
        if searchText != "" {
            let sortedFriends = sortFriends(friendList: self.listOfFriends)
            var nameContainsSearchText: Bool = false
            var surnameContainsSearchText: Bool = false
            var fathersNameContainsSearchText: Bool = false
            var telephoneContainsSearchText: Bool = false
            
            var sectionsFriendArray: [Friend] = []
            var sectionsName: [String] = []
            var friendsToShow: [[Friend]] = []
            
            
            (0..<alphabetArray.count).forEach { charIndex in
                (0..<sortedFriends.count).forEach { friendIndex in
                    
                    nameContainsSearchText = sortedFriends[friendIndex].name.contains(searchText)
                    surnameContainsSearchText = sortedFriends[friendIndex].surname.contains(searchText)
                    fathersNameContainsSearchText = sortedFriends[friendIndex].fathersName.contains(searchText)
                    telephoneContainsSearchText = sortedFriends[friendIndex].phoneNumber.contains(searchText)
                    
                    if sortedFriends[friendIndex].surname.first == alphabetArray[charIndex] && (nameContainsSearchText || surnameContainsSearchText || fathersNameContainsSearchText || telephoneContainsSearchText) {
                        sectionsFriendArray.append(sortedFriends[friendIndex])
                    }
                }
                
                if sectionsFriendArray.count != 0 {
                    sectionsName.append(String(alphabetArray[charIndex]))
                    friendsToShow.append(sectionsFriendArray)
                    sectionsFriendArray.removeAll()
                }
            }
            return (friendsToShow, sectionsName)
        }
        
        return (nil, nil)

    }
    
    func sortFriends(friendList: [Friend]) -> [Friend] {
        let newArray = friendList.sorted(by: {$0.surname < $1.surname})

        return newArray
        
    }
    
    func getFavoriteFriends () -> [Friend] {
        var favoriteFriends: [Friend] = []
        
        self.listOfFriends.forEach { (friend) in
            if friend.isFavorite {
                favoriteFriends.append(friend)
            }
        }
        return favoriteFriends
        
    }
    
    
}
