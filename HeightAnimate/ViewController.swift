//
//  ViewController.swift
//  MapKitDemoBase
//
//  Created by 本間 on 2021/08/05.
//

import UIKit
import MapKit

final class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var mapBottomContraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()

        let center = CLLocationCoordinate2D(latitude: 35.6809591, longitude: 139.7673068) //東京駅
        mapView.region = .init(center: center, latitudinalMeters: 400, longitudinalMeters: 400)
    }

    @IBAction func OnTapMapMode(_ sender: UIButton) {
        set(bottom: 50)
    }

    @IBAction func OnTapListMode(_ sender: UIButton) {
        set(bottom: 300)
    }
    
    private func set(bottom: CGFloat) {
        self.mapBottomContraint.constant = bottom
        UIView.animate(withDuration: 0.5) { self.view.layoutIfNeeded() }
    }
}
