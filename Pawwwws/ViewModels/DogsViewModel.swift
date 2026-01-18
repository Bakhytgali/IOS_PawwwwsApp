//
//  DogsViewModel.swift
//  Pawwwws
//
//  Created by Rakhat Bakhytgali on 11.01.2026.
//

import Foundation
import Combine

@MainActor
class DogsViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    @Published var dawgsOfTheWeek: [DawgModel] = []
    
    var dogBreeds: [BreedModel]? = []
    
    private let apiManager = DogsAPIManager()

    func getAllDogs() async {
        isLoading = true
        do {
            dogBreeds = try await apiManager.getAllBreeds()
            isLoading = false
        } catch {
            isLoading = false
            print(error)
        }
    }
    
    func getTheDawgsOfTheWeek() {
        if dogBreeds != nil {
            createDawgsOfTheWeek()
        } else {
            print("I'm kinda tired lmfao")
        }
    }
    
    private func createDawgsOfTheWeek() {
        if dogBreeds != nil {
            for i in 0..<3 {
                let dogWithName = DogModel(name: getARandomName(), breed: dogBreeds![i])
                let dawg = DawgModel(fact: getARandomFact(), dog: dogWithName)
                dawgsOfTheWeek.append(dawg)
            }
        }
    }
    
    private func getARandomName() -> String {
        let listOfNames = [
            "Randy", "Thanos", "Fluffy", "Sunny", "Sir Barksalot", "Dogbert",
            "Bark Obama", "Chewbarka", "Pawtrick", "Fur-dinand", "Subwoofer",
            "Bork", "Snack Destroyer", "Zoomie", "Loaf", "Chairman Meow",
            "Professor Wiggles", "Toothless", "Tax Evasion", "Sir Licks-a-Lot",
            "Chicken Nugget", "Beef", "Gravy", "Lint", "WiFi", "Chair",
            "Shampoo", "Microwave", "Toast", "Kevin", "GigaChad", "Bonk",
            "Snoop Dogg", "El Chompo", "Mr. Steal Your Girl", "Napoleon Barkaparte",
            "Pablo Escobark", "Bark Zuckerberg", "Cheese", "Meatball",
            "Air Fryer", "Soup", "Tuna", "Potato", "Beans", "Bread"
        ]
        
        return listOfNames[Int.random(in: 0..<listOfNames.count)]
    }
    
    private func getARandomFact() -> String {
        let randomFacts = [
            "Helped liberate France in WW2 (emotionally)",
            "Ate 21 sausages in 3 seconds (allegedly)",
            "Served as a general in three different wars (all imaginary)",
            "Once stared down a bear (it was a trash can)",
            "Saved a family from a fire (by barking at the smoke alarm)",
            "Took a bullet for its human (it was a snowball)",
            "Survived a blizzard (the heater was on)",
            "Escorted the president (walked past a TV showing the news)",
            "Hunted wild boar (chased a very scared leaf)",
            "Carried supplies across enemy lines (dragged a sock across the house)",
            "Fought bravely in battle (with a vacuum cleaner)",
            "Once went 3 days without food (missed one meal)",
            "Detected explosives (farted near a suspicious backpack)",
            "Protected the village all night (barked at the moon)",
            "Saved a drowning man (stared at him from the shore)",
            "Once ran 50 miles (in its dream)",
            "Stole food from a guarded facility (the kitchen counter)",
            "Held the line under pressure (sat firmly and refused to move)",
            "Defeated a wolf (a very aggressive pillow)",
            "Survived combat injuries (stepped on a Lego)",
            "Worked as an undercover agent (nobody suspected the dog)",
            "Escaped captivity (slipped out of the yard once)",
            "Led a rescue mission (everyone followed it to the wrong place)",
            "Once ate metal (it was aluminum foil)",
            "Defended its territory from invaders (mailmen)",
            "Crossed dangerous terrain (wet bathroom floor)",
            "Pulled its human to safety (toward the fridge)",
            "Tracked an enemy for days (would not stop sniffing one spot)",
            "Completed elite training (sat sometimes)",
            "Survived a high-speed chase (ran from the bath)",
            "Served as emotional support during war (the war was Monday)",
            "Defused a bomb (knocked over a lamp)",
            "Went undercover behind enemy lines (hid under the table)",
            "Once ignored pain entirely (pretended not to feel it)",
            "Fought alongside legends (other dogs at the park)",
            "Saved countless lives (demanded walks)",
            "Survived interrogation (refused eye contact)",
            "Disarmed an enemy (stole a shoe)",
            "Trained relentlessly (for treats)",
            "Endured harsh conditions (rain for 3 seconds)",
            "Led a rebellion (against bath time)",
            "Was awarded medals (participation trophies)",
            "Took command when chaos struck (sat in the doorway)",
            "Once ran into battle without fear (slipped on the floor)",
            "Maintained discipline (occasionally)",
            "Became a legend (self-proclaimed)",
            "Is banned from several locations (for undisclosed reasons)"
        ]
        
        return randomFacts[Int.random(in: 0..<randomFacts.count)]
    }
}
