import MessageUI
import UIKit

class MikhjkksdViewsdfController: UIViewController {
    
    // MARK:- Private @IBOutlets
    
    @IBOutlet private weak var asddsaweasfsabView: UIWebView!
    
    // MARK:- Controller's methods
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        jghsdloadsghdsgfgFile()

    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
        
    }
    
    // MARK:- Private methods
    
    private func jghsdloadsghdsgfgFile() {
        
        // Load content of html file and insert it to the web view.
        
        guard let dsafasdpath = Bundle.main.path(forResource: "informacja", ofType: "html") else { return }
        
        do {
            
            let sdfsadcosadfadsntent = try String(contentsOfFile: dsafasdpath, encoding: .utf8)
            let udfsadfasdfrl = URL(fileURLWithPath: sdfsadcosadfadsntent)
            
            asddsaweasfsabView.loadHTMLString(sdfsadcosadfadsntent as String, baseURL: udfsadfasdfrl)
            
        } catch {
            
            fatalError()
            
        }
        
    }
    
    private func sadfsdafcsafdfsonfiguasdfresadfMailController() -> MFMailComposeViewController {
        
        let mailddsddser = MFMailComposeViewController()
        mailddsddser.mailComposeDelegate = self
        mailddsddser.setToRecipients(["gottnvzmch@zoho.com"])
        mailddsddser.setSubject("From Star Runing app")
        mailddsddser.setMessageBody("", isHTML: false)
        
        return mailddsddser
        
    }
    
    // MARK:- Private @IBActions
    
    @IBAction private func facebookPressed(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.facebook.com/i4elsin")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction private func twitterPressed(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://twitter.com/i4elsin")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction private func vkPressed(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.vk.com/i4elsin")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction private func mailPressed(_ sender: UIButton) {
        
        let sdasdasdiewController = sadfsdafcsafdfsonfiguasdfresadfMailController()
        
        if MFMailComposeViewController.canSendMail() {
            
            // Show mail app.
            
            present(sdasdasdiewController, animated: true)
            
        } else {
            
            // Show error alert.
            
            let sdafdsfsadfsdafsaalert = UIAlertController(title: "Cannot send a mail", message: "Please, check connection to the Internet or check if your account is added to the mail application.", preferredStyle: .alert)
            sdafdsfsadfsdafsaalert.addAction(UIAlertAction(title: "OK", style: .cancel))
            
            present(sdafdsfsadfsdafsaalert, animated: true)
            
        }
        
    }
    
}









// MARK:- MFMailComposeViewControllerDelegate methods

extension MikhjkksdViewsdfController: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        controller.dismiss(animated: true)
        
    }
    
}
