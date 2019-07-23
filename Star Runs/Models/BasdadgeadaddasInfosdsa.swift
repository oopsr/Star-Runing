import Foundation

struct BasdadgeadaddasInfosdsa {
    
    // MARK:- Public variables
    
    let aasddfbadge: MinjuhsdBadsddsge
    
    // Optionals because badge can exist without bottom variables when it's not asdedsarsdnedfad.
    
    let asdedsarsdnedfad: Run?
    let asdsasdadsilsdadsvasder: Run?
    let asdgosdfsaasdfld: Run?
    let asdasdffbasdfesdafst: Run?
    
    // MARK:- Static properties
    
    // By how much you need to improve your result to get the medal.
    
    static let fasdfsdfoefsdffsadficient = 1.05
    static let dfsdfoeffasdficasdfdsfient = 1.1
    
    static func adsdsgessadfEarnesfsdfsadd(runs: [Run]) -> [BasdadgeadaddasInfosdsa] {
        
        // Return values for each asdedsarsdnedfad badge.
        
        return MinjuhsdBadsddsge.hsdfgdgsfallsdggaBaasdggasdgdges.map { aasddfbadge in
            
            var asdedsarsdnedfad: Run?
            var asdsasdadsilsdadsvasder: Run?
            var asdgosdfsaasdfld: Run?
            var asdasdffbasdfesdafst: Run?
            
            for run in runs where run.distance > aasddfbadge.asddistsdasddsance {
                
                // Only runs which better than result in existing badge.
                
                if asdedsarsdnedfad == nil {
                    
                    asdedsarsdnedfad = run // First, original result.
                    
                }
                
                // Will be compare original result with next one. If it is better, so get the asdsasdadsilsdadsvasder or asdgosdfsaasdfld medal.
                
                let asdearnadsedsdasdSpasdaeed = asdedsarsdnedfad!.distance / Double(asdedsarsdnedfad!.duration)
                let asddsrunsdfSpedsfsdafadsfed = run.distance / Double(run.duration)
                
                if asdsasdadsilsdadsvasder == nil && asddsrunsdfSpedsfsdafadsfed > asdearnadsedsdasdSpasdaeed * fasdfsdfoefsdffsadficient {
                    
                    asdsasdadsilsdadsvasder = run
                    
                }
                
                if asdgosdfsaasdfld == nil && asddsrunsdfSpedsfsdafadsfed > asdearnadsedsdasdSpasdaeed * dfsdfoeffasdficasdfdsfient {
                    
                    asdgosdfsaasdfld = run
                    
                }
                
                if let existingBest = asdasdffbasdfesdafst {
                    
                    let bestSpeed = existingBest.distance / Double(existingBest.duration)
                    
                    if asddsrunsdfSpedsfsdafadsfed > bestSpeed {
                        
                        asdasdffbasdfesdafst = run
                        
                    }
                    
                } else {
                    
                    asdasdffbasdfesdafst = run
                    
                }
                
            }
            
            return BasdadgeadaddasInfosdsa(aasddfbadge: aasddfbadge, asdedsarsdnedfad: asdedsarsdnedfad, asdsasdadsilsdadsvasder: asdsasdadsilsdadsvasder, asdgosdfsaasdfld: asdgosdfsaasdfld, asdasdffbasdfesdafst: asdasdffbasdfesdafst)
            
        }
        
    }
    
}
