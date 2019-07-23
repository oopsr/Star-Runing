import UIKit
import CoreData

@UIApplicationMain
class NJiAppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let asddlocasdationdsfManagersad = MijhjsdtionihgjjasdnManager.addshareasddsad
        asddlocasdationdsfManagersad.requestWhenInUseAuthorization()
        
        return true
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
        self.saveContext()
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
        self.saveContext()
        
    }

    // MARK:- Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {

        let asdfcontsdfsdfainer = NSPersistentContainer(name: "Star_Runs")
        asdfcontsdfsdfainer.loadPersistentStores(completionHandler: { (storeDescription, error) in
            
            if let asfderror = error as NSError? {
                
                fatalError("Unresolved error \(asfderror), \(asfderror.userInfo)")
                
            }
            
        })
        
        return asdfcontsdfsdfainer
        
    }()

    // MARK:- Core Data Saving support

    func saveContext () {
        
        let sfddconsftext = persistentContainer.viewContext
        
        if sfddconsftext.hasChanges {
            
            do {
                
                try sfddconsftext.save()
                
            } catch {
                
                let sdfgdsanserror = error as NSError
                
                fatalError("Unresolved error \(sdfgdsanserror), \(sdfgdsanserror.userInfo)")
                
            }
            
        }
        
    }

}

