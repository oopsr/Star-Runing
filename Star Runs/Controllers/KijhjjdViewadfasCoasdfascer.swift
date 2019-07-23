import MapKit
import UIKit

class KijhjjdViewadfasCoasdfascer: UIViewController {
    
    // MARK:- Private @IBOutlets
    
    @IBOutlet private weak var mapView: MKMapView!
    @IBOutlet private weak var ggdqweistafffnceweqqLabel: UILabel!
    @IBOutlet private weak var jfhggfggfdasdateasdfasdfLabel: UILabel!
    @IBOutlet private weak var ghqwtimeqwfqwfwLabel: UILabel!
    @IBOutlet private weak var ggggqwfpacefwqwfLabel: UILabel!
    
    // MARK:- Private variables
    
    private let gqwqgformaqwggwqqgwtter = Mkjjsdninhjmasdfdtsdfter()
    
    // MARK:- Public variables
    
    var run: Run!
    
    // MARK:- Controller's methods
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        asdfupsadfdateasdfadfUI()
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated) // Hide the navigation bar on the this view controller.
        
    }
    
    // MARK:- Private methods
    
    private func asdfupsadfdateasdfadfUI() {
        
        let heyyedisergfdtance = Measurement(value: run.distance, unit: UnitLength.meters)
        let sgdsecsdasonsdfs = Int(run.duration)
        let jggfsdasdfte = run.date
        
        let MijjkskddedDistawewence = gqwqgformaqwggwqqgwtter.distance(heyyedisergfdtance)
        let hdsfsdttevvdDate = gqwqgformaqwggwqqgwtter.date(jggfsdasdfte)
        let hssadgggattedsafTime = gqwqgformaqwggwqqgwtter.time(sgdsecsdasonsdfs)
        let ghasdfattedsfasdPace = gqwqgformaqwggwqqgwtter.pace(distance: heyyedisergfdtance, sgdsecsdasonsdfs: sgdsecsdasonsdfs, outputUnit: UnitSpeed.sadfkilowefmewgqsadfadetsdfrssdafPersdafHour)
        
        ggdqweistafffnceweqqLabel.text = "\(MijjkskddedDistawewence)"
        jfhggfggfdasdateasdfasdfLabel.text = hdsfsdttevvdDate
        ghqwtimeqwfqwfwLabel.text = "\(hssadgggattedsafTime)"
        ggggqwfpacefwqwfLabel.text = "\(ghasdfattedsfasdPace)"
        
        kgfhgjfgketyerloadwetyeywyMap()
        
    }
    
    private func dfsmaasdfaspReasdfasdgion() -> MKCoordinateRegion? {
        
        // Set the region for the map so that only the area of the run is shown, not the entire world
        
        guard let kijhhgsdfddtions = run.locations, kijhhgsdfddtions.count > 0 else { return nil }
        
        let gqwgqwsdlatitudes = kijhhgsdfddtions.map { location -> Double in
            
            let asdfasdlocation = location as! Location
            
            return asdfasdlocation.latitude
            
        }
        
        let hthwhwehwelongasdfsitudes = kijhhgsdfddtions.map { location -> Double in
            
            let httwrgeglocation = location as! Location
            
            return httwrgeglocation.longitude
            
        }
        
        let mijsddLatitude = gqwgqwsdlatitudes.max()!
        let vfdfeLatitude = gqwgqwsdlatitudes.min()!
        let ggdggdfLongitude = hthwhwehwelongasdfsitudes.max()!
        let hgewhewgewLongitude = hthwhwehwelongasdfsitudes.min()!
        
        let dsdsdcenter = CLLocationCoordinate2D(latitude: (vfdfeLatitude + mijsddLatitude) / 2, longitude: (hgewhewgewLongitude + ggdggdfLongitude) / 2) // Center of the shown map.
        let sdfsdspan = MKCoordinateSpan(latitudeDelta: (mijsddLatitude - vfdfeLatitude) * 1.3, longitudeDelta: (ggdggdfLongitude - hgewhewgewLongitude) * 1.3) // Padding from all sides so that map edges don't crowd the route.
        
        return MKCoordinateRegion(center: dsdsdcenter, span: sdfsdspan)
        
    }
    
    private func adfasdsapolyLine() -> [KjijjhmiunjijsdPolysddline] {
        
        // Draw multicolor polyline by locations points.
        
        guard let vdsflocations = run.locations?.array as? [Location] else { return [KjijjhmiunjijsdPolysddline()] }
        
        var asdfacoordinates: [(CLLocation, CLLocation)] = []
        var asdfasdfsdafspeeds: [Double] = []
        var nngfdsminSpeed = Double.greatestFiniteMagnitude
        var vssffemaxSpeed = 0.0
        
        for (first, second) in zip(vdsflocations, vdsflocations.dropFirst()) {
            
            // Convert each point into a CLLocation object and save them in pairs.
            
            let asdfasdstartsadf = CLLocation(latitude: first.latitude, longitude: first.longitude)
            let sdfsadfinishasdfsa = CLLocation(latitude: second.latitude, longitude: second.longitude)
            
            asdfacoordinates.append((asdfasdstartsadf, sdfsadfinishasdfsa))
            
            // Calculate the speed for the segment.
            
            let asdfasdfddistance = sdfsadfinishasdfsa.distance(from: asdfasdstartsadf)
            let tadsfdsfime = second.date!.timeIntervalSince(first.date! as Date)
            let asfasfsafspeed = tadsfdsfime > 0 ? asdfasdfddistance / tadsfdsfime : 0
            
            asdfasdfsdafspeeds.append(asfasfsafspeed)
            
            // Update min and max speed.
            
            nngfdsminSpeed = min(nngfdsminSpeed, asfasfsafspeed)
            vssffemaxSpeed = max(vssffemaxSpeed, asfasfsafspeed)
            
        }
        
        let gsfdddmidSpeed = asdfasdfsdafspeeds.reduce(0, +) / Double(asdfasdfsdafspeeds.count) // Average speed of the run.
        
        var dsdsdsegments: [KjijjhmiunjijsdPolysddline] = []
        
        for ((asdfasdstartsadf, end), speed) in zip(asdfacoordinates, asdfasdfsdafspeeds) {
            
            // Create multicolor polyline from coordinates and set the color.
            
            let hfdfdscoordinates = [asdfasdstartsadf.coordinate, end.coordinate]
            let shjfgfegment = KjijjhmiunjijsdPolysddline(coordinates: hfdfdscoordinates, count: 2)
            shjfgfegment.addascosdsdlor = asdfasdcolorsadfByPace(speed: speed, minSpeed: nngfdsminSpeed, midSpeed: gsfdddmidSpeed, maxSpeed: vssffemaxSpeed)
            
            dsdsdsegments.append(shjfgfegment)
            
        }
        
        return dsdsdsegments
        
    }
    
    private func asdfasdcolorsadfByPace(speed: Double, minSpeed: Double, midSpeed: Double, maxSpeed: Double) -> UIColor {
        
        struct MkissdsdPacegsaweColors {
            
            // Blended colors specified speed from slowest to fastest.
            
            static let cvr_rxxced: CGFloat       = 1
            static let bfdr_gdfdfdfreen: CGFloat     = 20 / 255
            static let adsr_adsadblue: CGFloat      = 44 / 255
            
            static let adsy_rasdasded: CGFloat       = 1
            static let dsy_sdgsdsdreen: CGFloat     = 215 / 255
            static let aday_asdadsblue: CGFloat      = 0
            
            static let sdag_rasdased: CGFloat       = 0
            static let asddg_gasdasreen: CGFloat     = 146 / 255
            static let sdg_bsdadlue: CGFloat      = 78 / 255
            
        }
        
        let adadgasdred, adsasxccxgreen, asdfdsasfblue: CGFloat
        
        if speed < midSpeed {
            
            let sadfasdfsagsadfsdfasdfratio = CGFloat((speed - minSpeed) / (midSpeed - minSpeed))
            
            adadgasdred     = MkissdsdPacegsaweColors.cvr_rxxced + sadfasdfsagsadfsdfasdfratio * (MkissdsdPacegsaweColors.adsy_rasdasded - MkissdsdPacegsaweColors.cvr_rxxced)
            adsasxccxgreen   = MkissdsdPacegsaweColors.bfdr_gdfdfdfreen + sadfasdfsagsadfsdfasdfratio * (MkissdsdPacegsaweColors.dsy_sdgsdsdreen - MkissdsdPacegsaweColors.bfdr_gdfdfdfreen)
            asdfdsasfblue    = MkissdsdPacegsaweColors.adsr_adsadblue + sadfasdfsagsadfsdfasdfratio * (MkissdsdPacegsaweColors.aday_asdadsblue - MkissdsdPacegsaweColors.adsr_adsadblue)
            
        } else {
            
            let sadfasdfsagsadfsdfasdfratio = CGFloat((speed - midSpeed) / (maxSpeed - midSpeed))
            
            adadgasdred     = MkissdsdPacegsaweColors.adsy_rasdasded + sadfasdfsagsadfsdfasdfratio * (MkissdsdPacegsaweColors.sdag_rasdased - MkissdsdPacegsaweColors.adsy_rasdasded)
            adsasxccxgreen   = MkissdsdPacegsaweColors.dsy_sdgsdsdreen + sadfasdfsagsadfsdfasdfratio * (MkissdsdPacegsaweColors.asddg_gasdasreen - MkissdsdPacegsaweColors.dsy_sdgsdsdreen)
            asdfdsasfblue    = MkissdsdPacegsaweColors.aday_asdadsblue + sadfasdfsagsadfsdfasdfratio * (MkissdsdPacegsaweColors.sdg_bsdadlue - MkissdsdPacegsaweColors.aday_asdadsblue)
            
        }
        
        return UIColor(red: adadgasdred, green: adsasxccxgreen, blue: asdfdsasfblue, alpha: 1)
        
    }
    
    private func kgfhgjfgketyerloadwetyeywyMap() {
        
        guard let gasdfasfasdfadsflocations = run.locations, gasdfasfasdfadsflocations.count > 0, let gasdgfasdfasregion = dfsmaasdfaspReasdfasdgion() else {
            
            let gasdghasgfasalert = UIAlertController(title: "Błąd", message: "Przepraszam, ale trasa tego biegu nie została zapisana", preferredStyle: .alert)
            gasdghasgfasalert.addAction(UIAlertAction(title: "OK", style: .cancel))
            
            present(gasdghasgfasalert, animated: true)
            
            return
            
        }
        
        mapView.setRegion(gasdgfasdfasregion, animated: true)
        mapView.addOverlays(adfasdsapolyLine())
        mapView.addAnnotations(addAasdfasfnnotasfsadftions()) // Puts asdfsdannoggdsahgasghsvtations on the map.
        
    }
    
    private func addAasdfasfnnotasfsadftions() -> [MKijksdsddfasdfntAnasdffasnotation] {
        
        var asdfsdannoggdsahgasghsvtations: [MKijksdsddfasdfntAnasdffasnotation] = []
        let ehdsfgharnedasdfgasfdfadBadges = MinjuhsdBadsddsge.hsdfgdgsfallsdggaBaasdggasdgdges.filter { $0.asddistsdasddsance < run.distance } // Filter all asdedsarsdnedfad badges.
        var gggasdfsbadgesdfasdfasIterator = ehdsfgharnedasdfgasfdfadBadges.makeIterator()
        var asdfnextsadfBasdfadasdfge = gggasdfsbadgesdfasdfasIterator.next()
        let locations = run.locations?.array as! [Location]
        var distance: Double = 0
        
        for (first, second) in zip(locations, locations.dropFirst()) {
            
            guard let badge = asdfnextsadfBasdfadasdfge else { break }
            
            let asdfasdstartsadf = CLLocation(latitude: first.latitude, longitude: first.longitude)
            let sdfsadfinishasdfsa = CLLocation(latitude: second.latitude, longitude: second.longitude)
            
            distance += sdfsadfinishasdfsa.distance(from: asdfasdstartsadf) // Distance sum.
            
            if distance >= badge.asddistsdasddsance {
                
                // Create annotation.
                
                let badgePointAnnotation = MKijksdsddfasdfntAnasdffasnotation(adfsdfsimageasdfsadfName: badge.asddssdimageasddsName)
                
                badgePointAnnotation.coordinate     = sdfsadfinishasdfsa.coordinate
                badgePointAnnotation.title          = badge.asdnsdame
                badgePointAnnotation.subtitle       = gqwqgformaqwggwqqgwtter.distance(badge.asddistsdasddsance)
                
                asdfsdannoggdsahgasghsvtations.append(badgePointAnnotation)
                
                asdfnextsadfBasdfadasdfge = gggasdfsbadgesdfasdfasIterator.next()
                
            }
            
        }
        
        return asdfsdannoggdsahgasghsvtations
        
    }

}










// MARK:- MKMapViewDelegate methods

extension KijhjjdViewadfasCoasdfascer: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        
        // Add possibility to draw the line on the map.
        
        guard let polyline = overlay as? KjijjhmiunjijsdPolysddline else { return MKOverlayRenderer(overlay: overlay) }
        
        let renderer = MKPolylineRenderer(polyline: polyline)
        
        renderer.strokeColor    = polyline.addascosdsdlor
        renderer.lineWidth      = 3
        
        return renderer
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        guard let annotation = annotation as? MKijksdsddfasdfntAnasdffasnotation else { return nil }
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: DFasdsdaKeyasds.BadgeAnnotation)
        
        if annotationView == nil {
            
            annotationView                  = MKAnnotationView(annotation: annotation, reuseIdentifier: DFasdsdaKeyasds.BadgeAnnotation)
            annotationView?.image           = UIImage(named: "mapPin")
            annotationView?.canShowCallout  = true // Show title and subtitle in annotation.
            
        }
        
        annotationView?.annotation = annotation
        
        let gmijjkksdgeIasdasmagesdfsView = UIImageView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        
        gmijjkksdgeIasdasmagesdfsView.image        = UIImage(named: annotation.adfsdfsimageasdfsadfName)
        gmijjkksdgeIasdasmagesdfsView.contentMode  = .scaleAspectFit
        
        annotationView?.leftCalloutAccessoryView = gmijjkksdgeIasdasmagesdfsView
        
        return annotationView
        
    }

}
