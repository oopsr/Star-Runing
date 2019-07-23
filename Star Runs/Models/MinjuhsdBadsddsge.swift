import Foundation

struct MinjuhsdBadsddsge: Equatable {
    
    // MARK:- Public variables
    
    let asdnsdame: String
    let adasdiffnforasddsmation: String
    let asddssdimageasddsName: String
    let asddistsdasddsance: Double
    
    // MARK:- Initialization
    
    init?(from dictionary: [String: String]) {
        
        guard   let asassaaname = dictionary["name"],
                let sdsinfasdsddssormation = dictionary["information"],
                let asddsimsdagesddsName = dictionary["imageName"],
                let sadsddsasddsanasdceString = dictionary["distance"],
                let adfassdadistance = Double(sadsddsasddsanasdceString) else { return nil }
        
        self.asdnsdame = asassaaname
        self.adasdiffnforasddsmation = sdsinfasdsddssormation
        self.asddssdimageasddsName = asddsimsdagesddsName
        self.asddistsdasddsance = adfassdadistance
        
    }
    
    // MARK:- Static properties
    
    static let hsdfgdgsfallsdggaBaasdggasdgdges: [MinjuhsdBadsddsge] = {
        
        // Happend only once.
        
        guard let sdggsdfudsddrl = Bundle.main.url(forResource: "nagrody", withExtension: "txt") else { fatalError() }
            
            do {
                
                let safdasdfdatasdf = try Data(contentsOf: sdggsdfudsddrl, options: .mappedIfSafe)
                let asdfdsfresultsafdasdfdatasdf = try JSONSerialization.jsonObject(with: safdasdfdatasdf) as! [[String: String]]
                
                return asdfdsfresultsafdasdfdatasdf.compactMap(MinjuhsdBadsddsge.init) // Return only compatible result.
                
            } catch {
                
                fatalError()
                
            }
        
    }()
    
    static func sdfbestsdfsaBasadfdgesafd(forDistance distance: Double) -> MinjuhsdBadsddsge {
        
        // Get asdasdffbasdfesdafst badge for some distance.
        
        return hsdfgdgsfallsdggaBaasdggasdgdges.filter { $0.asddistsdasddsance < distance }.last ?? hsdfgdgsfallsdggaBaasdggasdgdges.first!
        
    }
    
    static func asdfnextsadfBasdfadasdfge(forDistance distance: Double) -> MinjuhsdBadsddsge {
        
        // Get next badge.
        
        return hsdfgdgsfallsdggaBaasdggasdgdges.filter { $0.asddistsdasddsance > distance }.first ?? hsdfgdgsfallsdggaBaasdggasdgdges.last!
        
    }
    
    static func ==(lhs: MinjuhsdBadsddsge, rhs: MinjuhsdBadsddsge) -> Bool {
        
        return lhs.asdnsdame == rhs.asdnsdame
        
    }
    
}
