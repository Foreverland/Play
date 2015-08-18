import UIKit

protocol Selectable: class {
    func didAddTrack(title: String)
}

class NewTrackController: UIViewController {
    weak var delegate: Selectable?

    lazy var titleTextField: UITextField = {
        let titleTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        titleTextField.borderStyle = .RoundedRect

        return titleTextField
    }()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .whiteColor()
        self.view.addSubview(titleTextField)

        let addButton = UIButton(frame: CGRect(x: 0, y: 50, width: 100, height: 30))
        addButton.setTitle("Add Track", forState: .Normal)
        addButton.setTitleColor(.redColor(), forState: .Normal)
        addButton.addTarget(self, action: "addTrackAction", forControlEvents: .TouchUpInside)
        self.view.addSubview(addButton)
    }

    func addTrackAction() {
        if let title = titleTextField.text {
            delegate?.didAddTrack(title)
        }
    }
}
