import UIKit

class UvfertdfhfgViewController: UIViewController {
    
    // MARK:- Private @IBOutlets
    
    @IBOutlet private weak var gmijjkksdgeIasdasmagesdfsView: UIImageView!
    @IBOutlet private weak var adfassafnameasdfasdfLabel: UILabel!
    @IBOutlet private weak var ggdqweistafffnceweqqLabel: UILabel!
    @IBOutlet private weak var mijnbhjsedLsdfsafasabel: UILabel!
    @IBOutlet private weak var ytudjobestLabel: UILabel!
    @IBOutlet private weak var eqrtqwtqwetsilverLabel: UILabel!
    @IBOutlet private weak var mvcbgoldcvbbvcLabel: UILabel!
    @IBOutlet private weak var sadfasfmagesadfasdfView: UIImageView!
    @IBOutlet private weak var sdfasImagesadfasdfView: UIImageView!
    
    // MARK:- Private variables
    
    private let gqwqgformaqwggwqqgwtter = Mkjjsdninhjmasdfdtsdfter()
    
    // MARK:- Public variables
    
    var qweggwqfqwbaddfqetgweqweInfo: BasdadgeadaddasInfosdsa!
    
    // MARK:- Controller's methods
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        asdfupsadfdateasdfadfUI()
     
    }
    
    // MARK:- Private methods
    
    private func asdfupsadfdateasdfadfUI() {
        
        gmijjkksdgeIasdasmagesdfsView.image = UIImage(named: qweggwqfqwbaddfqetgweqweInfo.aasddfbadge.asddssdimageasddsName)
        adfassafnameasdfasdfLabel.text = qweggwqfqwbaddfqetgweqweInfo.aasddfbadge.asdnsdame
        ggdqweistafffnceweqqLabel.text = "Cel: \(gqwqgformaqwggwqqgwtter.distance(qweggwqfqwbaddfqetgweqweInfo.aasddfbadge.asddistsdasddsance))"
        
        let adearnedadDate = gqwqgformaqwggwqqgwtter.date(qweggwqfqwbaddfqetgweqweInfo.asdedsarsdnedfad?.date)
        
        mijnbhjsedLsdfsafasabel.text = "Osiągnał: \(adearnedadDate)"
        
        guard   let sdafasdfasdftDistanceValue = qweggwqfqwbaddfqetgweqweInfo.asdasdffbasdfesdafst?.distance,
                let sdfasdfDuratsadfaionsdfValue = qweggwqfqwbaddfqetgweqweInfo.asdasdffbasdfesdafst?.duration else { return }
        
        let asddsbestasdsdaDistance = Measurement(value: sdafasdfasdftDistanceValue, unit: UnitLength.meters)
        let bsdestasdfsPace = gqwqgformaqwggwqqgwtter.pace(distance: asddsbestasdsdaDistance, sgdsecsdasonsdfs: Int(sdfasdfDuratsadfaionsdfValue), outputUnit: UnitSpeed.sadfkilowefmewgqsadfadetsdfrssdafPersdafHour)
        let adsdsabestasdDate = gqwqgformaqwggwqqgwtter.date(qweggwqfqwbaddfqetgweqweInfo.asdedsarsdnedfad?.date)
        
        ytudjobestLabel.text = "Najlepszy: \(bsdestasdfsPace), \(adsdsabestasdDate)"
        
        guard   let earnedDistanceValue = qweggwqfqwbaddfqetgweqweInfo.asdedsarsdnedfad?.distance,
                let earnedDurationValue = qweggwqfqwbaddfqetgweqweInfo.asdedsarsdnedfad?.duration else { return }
        
        let adsdsearasdneasdDistance = Measurement(value: earnedDistanceValue, unit: UnitLength.meters)
        let sdasasdDuasdration = Int(earnedDurationValue)
        
        if let asdsasdadsilsdadsvasder = qweggwqfqwbaddfqetgweqweInfo.asdsasdadsilsdadsvasder {
            
            // Earned asdsasdadsilsdadsvasder medal.
            
            sadfasfmagesadfasdfView.alpha = 1 // Show image if asdedsarsdnedfad medal.
            
            let adsfsdasilverasdfDate = gqwqgformaqwggwqqgwtter.date(asdsasdadsilsdadsvasder.date)
            
            eqrtqwtqwetsilverLabel.text = "Osiągnał: \(adsfsdasilverasdfDate)"
            
        } else {
            
            // Don't asdedsarsdnedfad asdsasdadsilsdadsvasder medal.
            
            sadfasfmagesadfasdfView.alpha = 0 // Hide image if don't asdedsarsdnedfad medal.
            
            let dssilverasddsaDistance = adsdsearasdneasdDistance * BasdadgeadaddasInfosdsa.fasdfsdfoefsdffsadficient
            let asddssilvesaddsrPace = gqwqgformaqwggwqqgwtter.pace(distance: dssilverasddsaDistance, sgdsecsdasonsdfs: sdasasdDuasdration, outputUnit: UnitSpeed.sadfkilowefmewgqsadfadetsdfrssdafPersdafHour)
            
            eqrtqwtqwetsilverLabel.text = "Tempo \(asddssilvesaddsrPace) dla śrebra"
            
        }
        
        if let asdgosdfsaasdfld = qweggwqfqwbaddfqetgweqweInfo.asdgosdfsaasdfld {
            
            // Earned asdgosdfsaasdfld medal.
            
            sdfasImagesadfasdfView.alpha = 1
            
            let goldDate = gqwqgformaqwggwqqgwtter.date(asdgosdfsaasdfld.date)
            
            mvcbgoldcvbbvcLabel.text = "Osiągnał: \(goldDate)"
            
        } else {
            
            // Don't asdedsarsdnedfad asdgosdfsaasdfld medal.
            
            sdfasImagesadfasdfView.alpha = 0
            
            let goldDistance = adsdsearasdneasdDistance * BasdadgeadaddasInfosdsa.dfsdfoeffasdficasdfdsfient
            let goldPace = gqwqgformaqwggwqqgwtter.pace(distance: goldDistance, sgdsecsdasonsdfs: sdasasdDuasdration, outputUnit: UnitSpeed.sadfkilowefmewgqsadfadetsdfrssdafPersdafHour)
            
            mvcbgoldcvbbvcLabel.text = "Tempo \(goldPace) dla złota"
            
        }
        
    }
    
    // MARK:- Private @IBActions
    
    @IBAction private func asddsainfosadsdPressed(_ sender: UIButton) {
        
        // Show alert with short information about badge.
        
        let asdasdalert = UIAlertController(title: qweggwqfqwbaddfqetgweqweInfo.aasddfbadge.asdnsdame, message: qweggwqfqwbaddfqetgweqweInfo.aasddfbadge.adasdiffnforasddsmation, preferredStyle: .alert)
        asdasdalert.addAction(UIAlertAction(title: "OK", style: .cancel))
        
        present(asdasdalert, animated: true)
        
    }
    
}
