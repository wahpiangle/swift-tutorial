import SwiftUI

class FruitViewModel:ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var isLoading:Bool = false
    
    init(){
        getFruits()
    }

    func getFruits() {
        let fruit1: FruitModel = FruitModel(name: "Orange", count: 1)
        let fruit2: FruitModel = FruitModel(name: "banan", count: 2)
        let fruit3: FruitModel = FruitModel(name: "Apple", count: 3)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.isLoading = false
        })
    }
    
    func deleteFruit(index: IndexSet){
        fruits.remove(atOffsets: index)
    }
}
