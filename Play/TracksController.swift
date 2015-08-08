import Foundation
import UIKit

class TracksController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addAction")
    }

    func addAction() {
        DBChooser.defaultChooser().openChooserForLinkType(DBChooserLinkTypeDirect, fromViewController: self) { (results: [AnyObject]!) -> Void in
            if (results.count > 0) {
                print(results.description)
            }
        }
    }
}

/*
@interface DBChooserResult : NSObject

// URL to access the file, which varies depending on the link type specified when the
// Chooser was triggered
@property NSURL *link;

// Name of the file
@property NSString *name;

// Size of the file in bytes
@property long long size;

// URL to a 64x64px icon for the file based on the file's extension.
@property NSURL *iconURL;

// Set of thumbnail URLs generated when the user selects images and videos. It returns
// three sizes with the keys: 64x64px, 200x200px, and 640x480px. If the user didn't
// select an image or video, no thumbnails will be included.
@property NSDictionary *thumbnails;

@end
*/
