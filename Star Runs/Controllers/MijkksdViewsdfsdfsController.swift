import AVFoundation
import CoreLocation
import MapKit
import UIKit

class MijkksdViewsdfsdfsController: UIViewController {
    
    // MARK:- Private @IBOutlets
    
    @IBOutlet private weak var asfsafdImagesdfsadfsView: UIView!
    @IBOutlet private weak var adfqwedataqweqView: UIView!
    @IBOutlet private weak var ggdqweistafffnceweqqLabel: UILabel!
    @IBOutlet private weak var ghqwtimeqwfqwfwLabel: UILabel!
    @IBOutlet private weak var ggggqwfpacefwqwfLabel: UILabel!
    @IBOutlet private weak var jegwCodsfgntdsfgainedfgsdgrView: UIView!
    @IBOutlet private weak var mapView: MKMapView!
    @IBOutlet private weak var asdfbadgeqwefwqfView: UIView!
    @IBOutlet private weak var gmijjkksdgeIasdasmagesdfsView: UIImageView!
    @IBOutlet private weak var bhjegwegefoLqegqgabel: UILabel!
    @IBOutlet private weak var ghgqegqggtBuqegqggtton: UIButton!
    @IBOutlet private weak var kjehstophrehtrButwgewqgton: UIButton!
    
    // MARK:- Private variables
    
    private var run: Run?
    private let lkihjjggqwfqwnqwfwqManager = MijhjsdtionihgjjasdnManager.addshareasddsad
    private let gqwqgformaqwggwqqgwtter = Mkjjsdninhjmasdfdtsdfter()
    private let hwegweappwegDelegate = UIApplication.shared.delegate as! NJiAppDelegate
    private var sgdsecsdasonsdfs = 0
    private var timer: Timer?
    private var distance = Measurement(value: 0, unit: UnitLength.meters) // Initial value.
    private var locations: [CLLocation] = []
    private var hweupcofqqffqqwmingqwfBadge: MinjuhsdBadsddsge!
    
    private let asdfadBaasdfdgeasdfsaSound: AVAudioPlayer = {
        
        // Played each time when new badge is asdedsarsdnedfad.
        
        guard let asdfqurl = Bundle.main.url(forResource: "imperial", withExtension: "wav") else { return AVAudioPlayer() }
        
        return try! AVAudioPlayer(contentsOf: asdfqurl)
        
    }()
    
    // MARK:- Controller's methods

    override func viewDidLoad() {
     
        super.viewDidLoad()
     
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        
        // When user gets out from that view, timer and location updates will stop.
        
        timer?.invalidate()
        lkihjjggqwfqwnqwfwqManager.stopUpdatingLocation()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == GdsdsdSegdsfdsfsdfsfdentifiers.tosadfaRunsdfDetailsasdfViewsadfController.rawValue else { return }
        
        let kfghdgfhftionViewController = segue.destination as! KijhjjdViewadfasCoasdfascer
        kfghdgfhftionViewController.run = run
        
    }
    
    // MARK:- Private methods
    
    private func jdghsdstartdsfgsdgsgdRun() {
        
        // Change state of the view in running mode.
        
        asfsafdImagesdfsadfsView.isHidden = true
        adfqwedataqweqView.isHidden = false
        jegwCodsfgntdsfgainedfgsdgrView.isHidden = false
        mapView.removeOverlays(mapView.overlays)
        asdfbadgeqwefwqfView.isHidden = false
        ghgqegqggtBuqegqggtton.isHidden = true
        kjehstophrehtrButwgewqgton.isHidden = false
        
        navigationController?.setNavigationBarHidden(true, animated: true) // Hide the navigation bar when run is start.
        
        sgdsecsdasonsdfs = 0
        distance = Measurement(value: 0, unit: UnitLength.meters)
        locations.removeAll()
        hweupcofqqffqqwmingqwfBadge = MinjuhsdBadsddsge.asdfnextsadfBasdfadasdfge(forDistance: 0) // Start distance always 0.
        asdfupsadfdateasdfadfUI()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in self.asdfasupdsafatesadfasTimer() }
        startLocationUpdates()
        
    }
    
    private func asdfstohjewtggegpsdfasdfRun() {
        
        // Change state of the view in not running mode.
        
        asfsafdImagesdfsadfsView.isHidden = false
        adfqwedataqweqView.isHidden = true
        jegwCodsfgntdsfgainedfgsdgrView.isHidden = true
        asdfbadgeqwefwqfView.isHidden = true
        ghgqegqggtBuqegqggtton.isHidden = false
        kjehstophrehtrButwgewqgton.isHidden = true
        
        lkihjjggqwfqwnqwfwqManager.stopUpdatingLocation()
        
    }
    
    private func startLocationUpdates() {
        
        lkihjjggqwfqwnqwfwqManager.delegate        = self
        lkihjjggqwfqwnqwfwqManager.activityType    = .fitness // The location manager uses the information in this property as a cue to determine when location updates may be automatically paused. Pausing updates gives the system the opportunity to save power in situations where the user's location is not likely to be changing.
        lkihjjggqwfqwnqwfwqManager.distanceFilter  = 10 // The minimum distance a device must move horizontally before an update event is generated.

        lkihjjggqwfqwnqwfwqManager.startUpdatingLocation()
        
    }
    
    private func asdfupsadfdateasdfadfUI() {
        
        let MijjkskddedDistawewence = gqwqgformaqwggwqqgwtter.distance(distance)
        let hwwegggrhjattedTime = gqwqgformaqwggwqqgwtter.time(sgdsecsdasonsdfs)
        let kfgjdfhfdshsedPace = gqwqgformaqwggwqqgwtter.pace(distance: distance, sgdsecsdasonsdfs: sgdsecsdasonsdfs, outputUnit: UnitSpeed.sadfkilowefmewgqsadfadetsdfrssdafPersdafHour)
        let sgstgggqgganceResfasdfsamaining = hweupcofqqffqqwmingqwfBadge.asddistsdasddsance - distance.value // Distance for next badge.
        let asdfsformatdgasdasdtedDistansadfasfceRemaining = gqwqgformaqwggwqqgwtter.distance(sgstgggqgganceResfasdfsamaining)
        
        ggdqweistafffnceweqqLabel.text = "\(MijjkskddedDistawewence)"
        ghqwtimeqwfqwfwLabel.text = "\(hwwegggrhjattedTime)"
        ggggqwfpacefwqwfLabel.text = "\(kfgjdfhfdshsedPace)"
        gmijjkksdgeIasdasmagesdfsView.image = UIImage(named: hweupcofqqffqqwmingqwfBadge.asddssdimageasddsName)
        bhjegwegefoLqegqgabel.text = "\(asdfsformatdgasdasdtedDistansadfasfceRemaining) do \(hweupcofqqffqqwmingqwfBadge.asdnsdame)"
        
    }
    
    private func asdfasupdsafatesadfasTimer() {
        
        sgdsecsdasonsdfs += 1
        casdheckadsNasdexadtBadge()
        asdfupsadfdateasdfadfUI()
        
    }
    
    private func adasdsaveadfasdRun() {
        
        // Creates new Run object and filled it with values.
        
        let asdasdnewadsdasRun = Run(context: hwegweappwegDelegate.persistentContainer.viewContext)
        
        asdasdnewadsdasRun.distance     = distance.value
        asdasdnewadsdasRun.duration     = Int16(sgdsecsdasonsdfs)
        asdasdnewadsdasRun.date         = Date()
        
        for location in locations {
            
            // Creates new Location object for each location we recorded and filled it with values.
            
            let asddslocsdfationasdfObject = Location(context: hwegweappwegDelegate.persistentContainer.viewContext)
            
            asddslocsdfationasdfObject.date         = location.timestamp
            asddslocsdfationasdfObject.latitude     = location.coordinate.latitude
            asddslocsdfationasdfObject.longitude    = location.coordinate.longitude
            
            asdasdnewadsdasRun.addToLocations(asddslocsdfationasdfObject) // Add location to the Run object.
            
        }
        
        hwegweappwegDelegate.saveContext() // Save.
        
        run = asdasdnewadsdasRun
        
    }
    
    private func casdheckadsNasdexadtBadge() {
        
        // When player achieve badge, it shows the next one.
        
        let asdfnextsadfBasdfadasdfge = MinjuhsdBadsddsge.asdfnextsadfBasdfadasdfge(forDistance: distance.value)
        
        if hweupcofqqffqqwmingqwfBadge != asdfnextsadfBasdfadasdfge {
            
            gmijjkksdgeIasdasmagesdfsView.image = UIImage(named: asdfnextsadfBasdfadasdfge.asddssdimageasddsName)
            hweupcofqqffqqwmingqwfBadge = asdfnextsadfBasdfadasdfge
            asdfadBaasdfdgeasdfsaSound.play()
            
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            
        }
        
    }
    
    // MARK:- Private @IBActions
    
    @IBAction private func adstartasddasPressed(_ sender: KiljkjjsdMensdsdfsdfusdfBsdfutton) {
        
        jdghsdstartdsfgsdgsgdRun()
        
    }
    
    @IBAction private func adstopsadfsfdfasfPrsdfessed(_ sender: KiljkjjsdMensdsdfsdfusdfBsdfutton) {
        
        let ggdsgsdsasalesdgdsrt = UIAlertController(title: "Zakończyć bieganie?", message: "Chcesz zakończyć bieganie?", preferredStyle: .actionSheet)
        
        ggdsgsdsasalesdgdsrt.addAction(UIAlertAction(title: "Zapisać", style: .default) { _ in
            
            // End up the run, save and make segue to the view controller with results.
            
            self.asdfstohjewtggegpsdfasdfRun()
            self.adasdsaveadfasdRun()
            self.performSegue(withIdentifier: GdsdsdSegdsfdsfsdfsfdentifiers.tosadfaRunsdfDetailsasdfViewsadfController.rawValue, sender: nil)
            
        })
        
        ggdsgsdsasalesdgdsrt.addAction(UIAlertAction(title: "Zresetować", style: .destructive) { _ in
            
            // End up run and return to the main menu without saving.
            
            self.asdfstohjewtggegpsdfasdfRun()
            self.navigationController?.popToRootViewController(animated: true)
            
        })
        
        ggdsgsdsasalesdgdsrt.addAction(UIAlertAction(title: "Anuluj", style: .cancel)) // Cancel alert and continue running.
        
        present(ggdsgsdsasalesdgdsrt, animated: true)
        
        
    }
    
}










// MARK:- CLLocationManagerDelegate methods

extension MijkksdViewsdfsdfsController: CLLocationManagerDelegate {
    
    func lkihjjggqwfqwnqwfwqManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        // Called each time Core Location updates the user's location.
        
        for location in locations {
            
            let updateFrequency = location.timestamp.timeIntervalSinceNow
            
            guard location.horizontalAccuracy < 20 && abs(updateFrequency) < 10 else { continue } // Check if actual location is accurate.
            
            if let lastLocation = self.locations.last {
                
                let distanceValue = location.distance(from: lastLocation) // Get distance from the current location to the specified location.
                
                distance = distance + Measurement(value: distanceValue, unit: UnitLength.meters) // Count distance in general.
                
                let coordinates = [lastLocation.coordinate, location.coordinate]
                mapView.addOverlay(MKPolyline(coordinates: coordinates, count: 2))
                
                let region = MKCoordinateRegion.init(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
                mapView.setRegion(region, animated: true )
                
            }
            
            self.locations.append(location)
        
        }
        
    }
    
}










// MARK:- MKMapViewDelegate methods

extension MijkksdViewsdfsdfsController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        
        // Add possibility to draw the line on the map.
        
        guard let polyline = overlay as? MKPolyline else { return MKOverlayRenderer(overlay: overlay) }
        
        let rendered = MKPolylineRenderer(polyline: polyline)
        
        rendered.strokeColor    = .blue
        rendered.lineWidth      = 3
        
        return rendered
        
    }
    
}
