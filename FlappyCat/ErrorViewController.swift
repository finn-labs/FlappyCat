import UIKit

class ErrorViewController: UIViewController {
    lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "error")
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showNext))
        view.addGestureRecognizer(tapGesture)
    }

    @objc func showNext() {
        let gameViewController = GameViewController()
        present(gameViewController, animated: true, completion: nil)
    }
}
