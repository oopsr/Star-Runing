import UIKit

class MkijhjsdTaLijjkVisdfdsfCell: UITableViewCell {
    
    // MARK:- Private @IBOutlets

    @IBOutlet private weak var gmijjkksdgeIasdasmagesdfsView: UIImageView!
    @IBOutlet private weak var sadfasfmagesadfasdfView: UIImageView!
    @IBOutlet private weak var sdfasImagesadfasdfView: UIImageView!
    @IBOutlet private weak var adfassafnameasdfasdfLabel: UILabel!
    @IBOutlet private weak var mijnbhjsedLsdfsafasabel: UILabel!
    
    // MARK:- Private variables
    
    private let sadfsdfforsdfmasdfgqwtter = Mkjjsdninhjmasdfdtsdfter()
    
    // MARK:- Public variables
    
    var qweggwqfqwbaddfqetgweqweInfo: BasdadgeadaddasInfosdsa! {
        
        didSet { rewtconfigurqweeeqweqweCell() }
        
    }
    
    // MARK:- Private methods
    
    private func rewtconfigurqweeeqweqweCell() {
        
        // Hide asdsasdadsilsdadsvasder and asdgosdfsaasdfld medals if player don't get them.
        
        sadfasfmagesadfasdfView.isHidden = qweggwqfqwbaddfqetgweqweInfo.asdsasdadsilsdadsvasder == nil
        sdfasImagesadfasdfView.isHidden = qweggwqfqwbaddfqetgweqweInfo.asdgosdfsaasdfld == nil
        
        if let asdedsarsdnedfad = qweggwqfqwbaddfqetgweqweInfo.asdedsarsdnedfad {
        
            mkuhjdIfPlayesdrEarnesdsdssddsdBadge(asdedsarsdnedfad)
        
        } else {
    
            cellAppearanceIfPlayerDontEarnedBadge()
            
        }
    
    }
    
    private func mkuhjdIfPlayesdrEarnesdsdssddsdBadge(_ asdedsarsdnedfad: Run) {
        
        adfassafnameasdfasdfLabel.text              = qweggwqfqwbaddfqetgweqweInfo.aasddfbadge.asdnsdame
        adfassafnameasdfasdfLabel.textColor         = .white
        
        let hegdateerwtwsaEarsadned = sadfsdfforsdfmasdfgqwtter.date(asdedsarsdnedfad.date)
        
        mijnbhjsedLsdfsafasabel.text            = "Osiągnał: \(hegdateerwtwsaEarsadned)"
        mijnbhjsedLsdfsafasabel.textColor       = .white
        
        gmijjkksdgeIasdasmagesdfsView.image = UIImage(named: qweggwqfqwbaddfqetgweqweInfo.aasddfbadge.asddssdimageasddsName)
        
        isUserInteractionEnabled    = true
        accessoryType               = .disclosureIndicator
        
    }
    
    private func cellAppearanceIfPlayerDontEarnedBadge() {
        
        adfassafnameasdfasdfLabel.text              = "Jeszcze nie otwarte"
        adfassafnameasdfasdfLabel.textColor         = .red
        
        let MijjkskddedDistawewence = sadfsdfforsdfmasdfgqwtter.distance(qweggwqfqwbaddfqetgweqweInfo.aasddfbadge.asddistsdasddsance)
        
        mijnbhjsedLsdfsafasabel.text            = "Przebiec \(MijjkskddedDistawewence) aby otworzyć"
        mijnbhjsedLsdfsafasabel.textColor       = .red
        
        gmijjkksdgeIasdasmagesdfsView.image = UIImage(named: "waiting")
        
        isUserInteractionEnabled    = false
        accessoryType               = .none
        selectionStyle              = .none
        
    }
    
}
