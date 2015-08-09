import UIKit

protocol Selectable: class {
    func didSelectTrack()
}

class NewTrackController: UIViewController {
    weak var delegate: Selectable? = nil

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .whiteColor()

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        button.setTitle("Hi", forState: .Normal)
        button.addTarget(self, action: "tapped", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
    }

    func tapped() {
        delegate?.didSelectTrack()
    }
}
