import UIKit

class TracksController: UITableViewController, Selectable {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addAction")
    }

    func addAction() {
        let newTrackController = NewTrackController()
        self.navigationController?.presentViewController(newTrackController, animated: true, completion: nil)

        /*DBChooser.defaultChooser().openChooserForLinkType(DBChooserLinkTypeDirect, fromViewController: self) { (results: [AnyObject]!) -> Void in
            if let items = results as? [DBChooserResult] {
                for item in items {
                    // Save file to Core Data
                    print("")
                    print("link: \(item.link)")
                    print("name: \(item.name)")

                    let localURL = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first as NSURL?
                    let destinationURL = localURL?.URLByAppendingPathComponent(item.link.lastPathComponent!)

                    if NSFileManager().fileExistsAtPath((destinationURL?.path)!) {
                        print("The file already exists at path")
                        // Mark file as saved
                    } else if let audioData = NSData(contentsOfURL: item.link) {
                        if (audioData).writeToURL(destinationURL!, atomically: true) {
                            print("file saved")
                            // Mark file as saved
                        } else {
                            print("error saving file")
                        }
                    }
                }
            }
        }*/
    }

    func didSelectTrack() {
        print("selected track")
    }
}
