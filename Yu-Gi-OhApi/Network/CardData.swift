//
//  CardData.swift
//  Yu-Gi-OhApi
//
//  Created by Admin on 20/06/2022.
//

import Foundation

struct CardData: Decodable {
    let cardData: [Data]
}

struct Data: Decodable {
    let id: Int
    let name: String
    let type: TypeEnum
    let desc: String
    let race: Race
    let cardImages: [CardImage]
    let atk, def, level: Int?
    let attribute: Attribute?
    let scale, linkval: Int?
    let linkmarkers: [Linkmarker]?

        enum CodingKeys: String, CodingKey {
            case id, name, type, desc, race
            case cardImages = "card_images"
            case atk, def, level, attribute
            case scale, linkval, linkmarkers
        }
}

enum TypeEnum: String, Decodable {
    case effectMonster = "Effect Monster"
    case flipEffectMonster = "Flip Effect Monster"
    case fusionMonster = "Fusion Monster"
    case geminiMonster = "Gemini Monster"
    case linkMonster = "Link Monster"
    case normalMonster = "Normal Monster"
    case normalTunerMonster = "Normal Tuner Monster"
    case pendulumEffectFusionMonster = "Pendulum Effect Fusion Monster"
    case pendulumEffectMonster = "Pendulum Effect Monster"
    case pendulumEffectRitualMonster = "Pendulum Effect Ritual Monster"
    case pendulumFlipEffectMonster = "Pendulum Flip Effect Monster"
    case pendulumNormalMonster = "Pendulum Normal Monster"
    case pendulumTunerEffectMonster = "Pendulum Tuner Effect Monster"
    case ritualEffectMonster = "Ritual Effect Monster"
    case ritualMonster = "Ritual Monster"
    case skillCard = "Skill Card"
    case spellCard = "Spell Card"
    case spiritMonster = "Spirit Monster"
    case synchroMonster = "Synchro Monster"
    case synchroPendulumEffectMonster = "Synchro Pendulum Effect Monster"
    case synchroTunerMonster = "Synchro Tuner Monster"
    case token = "Token"
    case toonMonster = "Toon Monster"
    case trapCard = "Trap Card"
    case tunerMonster = "Tuner Monster"
    case unionEffectMonster = "Union Effect Monster"
    case xyzMonster = "XYZ Monster"
    case xyzPendulumEffectMonster = "XYZ Pendulum Effect Monster"
}


enum Race: String, Decodable {
    case alexisRhodes = "Alexis Rhodes"
    case andrew = "Andrew"
    case aqua = "Aqua"
    case arkana = "Arkana"
    case asterPhoenix = "Aster Phoenix"
    case axelBrodie = "Axel Brodie"
    case bastionMisaw = "Bastion Misaw"
    case beast = "Beast"
    case beastWarrior = "Beast-Warrior"
    case bonz = "Bonz"
    case chazzPrincet = "Chazz Princet"
    case christine = "Christine"
    case continuous = "Continuous"
    case counter = "Counter"
    case creatorGod = "Creator-God"
    case cyberse = "Cyberse"
    case david = "David"
    case dinosaur = "Dinosaur"
    case divineBeast = "Divine-Beast"
    case drVellianC = "Dr. Vellian C"
    case dragon = "Dragon"
    case emma = "Emma"
    case equip = "Equip"
    case espaRoba = "Espa Roba"
    case fairy = "Fairy"
    case field = "Field"
    case fiend = "Fiend"
    case fish = "Fish"
    case insect = "Insect"
    case ishizu = "Ishizu"
    case ishizuIshtar = "Ishizu Ishtar"
    case jadenYuki = "Jaden Yuki"
    case jesseAnderso = "Jesse Anderso"
    case joey = "Joey"
    case joeyWheeler = "Joey Wheeler"
    case kaiba = "Kaiba"
    case keith = "Keith"
    case lumisUmbra = "Lumis Umbra"
    case machine = "Machine"
    case mai = "Mai"
    case maiValentine = "Mai Valentine"
    case mako = "Mako"
    case normal = "Normal"
    case odion = "Odion"
    case pegasus = "Pegasus"
    case plant = "Plant"
    case psychic = "Psychic"
    case pyro = "Pyro"
    case quickPlay = "Quick-Play"
    case reptile = "Reptile"
    case rex = "Rex"
    case ritual = "Ritual"
    case rock = "Rock"
    case seaSerpent = "Sea Serpent"
    case setoKaiba = "Seto Kaiba"
    case spellcaster = "Spellcaster"
    case syrusTruesda = "Syrus Truesda"
    case teaGardner = "Tea Gardner"
    case thunder = "Thunder"
    case tyrannoHassl = "Tyranno Hassl"
    case warrior = "Warrior"
    case weevil = "Weevil"
    case wingedBeast = "Winged Beast"
    case wyrm = "Wyrm"
    case yamiBakura = "Yami Bakura"
    case yamiMarik = "Yami Marik"
    case yamiYugi = "Yami Yugi"
    case yubel = "Yubel"
    case yugi = "Yugi"
    case zaneTruesdal = "Zane Truesdal"
    case zombie = "Zombie"
}

enum Attribute: String, Decodable {
    case dark = "DARK"
    case divine = "DIVINE"
    case earth = "EARTH"
    case fire = "FIRE"
    case light = "LIGHT"
    case water = "WATER"
    case wind = "WIND"
}

struct CardImage: Decodable {
    let id: Int
    let imageURL, imageURLSmall: String

    enum CodingKeys: String, CodingKey {
        case id
        case imageURL = "image_url"
        case imageURLSmall = "image_url_small"
    }
}

enum Linkmarker: String, Codable {
    case bottom = "Bottom"
    case bottomLeft = "Bottom-Left"
    case bottomRight = "Bottom-Right"
    case linkmarkerLeft = "Left"
    case linkmarkerRight = "Right"
    case top = "Top"
    case topLeft = "Top-Left"
    case topRight = "Top-Right"
}
