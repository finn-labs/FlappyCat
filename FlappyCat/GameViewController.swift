import UIKit
import SpriteKit

class GameViewController: UIViewController {
    lazy var skView: SKView = {
        let view = SKView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(skView)
        NSLayoutConstraint.activate([
            skView.topAnchor.constraint(equalTo: view.topAnchor),
            skView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            skView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            skView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
            ])

        let scene = GameScene(size: UIScreen.main.bounds.size)
        skView.ignoresSiblingOrder = true
        skView.presentScene(scene)
    }
}
