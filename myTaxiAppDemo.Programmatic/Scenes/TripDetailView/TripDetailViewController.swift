//
//  TripDetailViewController.swift
//  myTaxiAppDemo.Programmatic
//
//  Created by Shakhzod Bektemirov on 2021/12/26.
//

import UIKit
import GoogleMaps
import SnapKit

class TripDetailViewController: UIViewController{
    
    
     var mapTripView: GMSMapView!

     
     var vehicles: [Vehicle] = []
     
     

    let mainView: UIStackView = {
         let view = UIStackView()
           view.spacing = 0
           view.axis = .vertical
           view.backgroundColor = .white
           return view
     }()
     
     let mainTableView: UITableView = {
       let tblview = UITableView()
       tblview.backgroundColor = UIColor(hexString:"#FFFFFF")
       tblview.showsVerticalScrollIndicator = false
       return tblview
   }()
    
    let button: UIButton = {
      let btn = UIButton()
        btn.setImage(UIImage(named:"button"), for:.normal)
        btn.addTarget(self, action: #selector(backButtonTapped), for:.touchUpInside)
        btn.layer.cornerRadius = 18
        return btn
  }()
     
    
    @objc func backButtonTapped() {
        self.dismiss(animated:true)
    }
    
    
    
    
    
    //41.305245006318465, 69.24652399574018
    
    
    //41.30795852365377, 69.25210854940929
   // let origin = "\(41.305245006318465),\(69.24652399574018)"
    
   
   

     override func viewDidLoad() {
         super.viewDidLoad()
         mapViewInit()
//         let sourcelat = 41.305245006318465
//         let sourcelang = 69.24652399574018
//         
//         let destiantionlat = 41.30795852365377
//         let destionationlang = 69.25210854940929
//         
//         let sourceLocation = "\(sourcelat)  ,  \(sourcelang)"
//         let destinationLocation  = "\(destiantionlat) , \(destionationlang)"
//         
//         let urlString = "https://maps.googleapis.com/maps/api/directions/json?origin=\(sourceLocation)&destination=\(destinationLocation)&mode=driving&key=AIzaSyDClFmdoNGGi0QIev0PAREOxyT40ofQWaQ"
//
//         let url = URL(string: urlString)
//            URLSession.shared.dataTask(with: url!, completionHandler: {
//                (data, response, error) in
//                if(error != nil){
//                    print("error")
//                }else{
//                    do{
//                        let json = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as! [String : AnyObject]
//                        let routes = json["routes"] as! NSArray
//                        self.mapTripView.clear()
//
//                        OperationQueue.main.addOperation({
//                            for route in routes
//                            {
//                                let routeOverviewPolyline:NSDictionary = (route as! NSDictionary).value(forKey: "overview_polyline") as! NSDictionary
//                                let points = routeOverviewPolyline.object(forKey: "points")
//                                let path = GMSPath.init(fromEncodedPath: points! as! String)
//                                let polyline = GMSPolyline.init(path: path)
//                                polyline.strokeWidth = 3
//
//                                let bounds = GMSCoordinateBounds(path: path!)
//                                self.map!.animate(with: GMSCameraUpdate.fit(bounds, withPadding: 30.0))
//
//                                polyline.map = self.mapTripView
//
//                            }
//                        })
//                    }catch let error as NSError{
//                        print("error:\(error)")
//                    }
//                }
//            }).resume()
//         
     }
     
     
     func mapViewInit() {
         
        
         GMSServices.provideAPIKey("AIzaSyDClFmdoNGGi0QIev0PAREOxyT40ofQWaQ")
         let camera = GMSCameraPosition.camera(withLatitude:41.264155568400135, longitude:69.18802958745613, zoom:15)
         let mapView = GMSMapView.map(withFrame:CGRect.zero, camera:camera)
        // view =  mapView


         let currentLocation = CLLocationCoordinate2D(latitude:41.264155568400135, longitude:69.18802958745613)
           let marker = GMSMarker(position:currentLocation)
           marker.title = "IlonOta Masjid"
           marker.map = mapView
         
         
         view.addSubview(mainView)
         mainView.snp.makeConstraints { (make) in
             make.left.equalTo(view).inset(0)
             make.top.equalTo(view).inset(0)
             make.right.equalTo(view).inset(0)
             make.bottom.equalTo(view).inset(0)
         }
         
         
         view.addSubview(button)
         button.snp.makeConstraints { (make) in
             make.left.equalTo(view).inset(16)
             make.top.equalTo(view).inset(50)
             make.height.width.equalTo(44)
         }
         
        
         
        
         mainView.addArrangedSubview(mapView)
         mapView.snp.makeConstraints { (make) in
             make.height.equalTo(320)
             make.left.equalTo(mainView).inset(0)
             make.top.equalTo(mainView).inset(0)
             make.right.equalTo(mainView).inset(0)
        
         }

         mainView.addArrangedSubview(mainTableView)
         mainTableView.snp.makeConstraints { (make) in
             make.left.equalTo(mainView).inset(0)
             make.bottom.equalTo(mainView).inset(0)
             make.right.equalTo(mainView).inset(0)
            
         }
      
         
         
         mainTableView.delegate = self
         mainTableView.dataSource = self
         
        
         mainTableView.registerCell(firstTripDetailCell.self)
         mainTableView.registerCell(secondTripDetailCell.self)
         mainTableView.registerCell(thridTripDetailCell.self)
         mainTableView.registerCell(fourthTripDetailCell.self)
         mainTableView.registerCell(fifthTripDetailCell.self)
         mainTableView.registerCell(sixthTripDetailCell.self)
         
         vehicles = [
             Vehicle(labelValue:"Чёрный Chevrolet Malibu", type:.firstView, secondValue:"", imageValue:"carNumber" , detailone:"" , detailtwo: "" , detailthree: "" , imageCar: "malibu"),
             Vehicle(labelValue:"5a улица Асадуллы Ходжаева", type:.secondView, secondValue:"улица Sharof Rashidov, Ташкент", imageValue:"bluePin" , detailone:"" , detailtwo: "" , detailthree: "" , imageCar: "redPin"),
             Vehicle(labelValue:"Umid Abdurakhimov", type:.thirdView, secondValue:"Рейтинг:", imageValue:"person" , detailone:"5" , detailtwo: "Поездки:" , detailthree: "1885" , imageCar: "stars"),
             Vehicle(labelValue:"Тариф", type:.fourthView, secondValue:"Способ оплаты", imageValue:"Заказ №" , detailone:"Дата и время поездки" , detailtwo: "Бизнес" , detailthree: "Наличными" , imageCar: "3917866"),
             Vehicle(labelValue:"Минимальная сумма", type:.fifthView, secondValue:"Сумма поездки", imageValue:"Цена ожидании" , detailone:"10,000 UZS" , detailtwo: "31,645 UZS" , detailthree: "0 UZS" , imageCar: ""),
             Vehicle(labelValue:"Итого", type:.sixthView, secondValue:"39,600 UZS", imageValue:"" , detailone:"" , detailtwo: "" , detailthree: "" , imageCar: "")
         ]
         mainTableView.reloadData()
         
     }
         
     
 }



 extension TripDetailViewController:UITableViewDelegate,UITableViewDataSource {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return vehicles.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         let vehicle = vehicles[indexPath.row]
         switch vehicle.type {
         case .firstView:
             let cell: firstTripDetailCell = tableView.dequeueCell(for:indexPath)
             cell.set(vehicle: vehicle)
             return cell
         
         case .secondView:
             let cell: secondTripDetailCell = tableView.dequeueCell(for:indexPath)
             cell.set(vehicle: vehicle)
             return cell

         case .thirdView:
             let cell: thridTripDetailCell = tableView.dequeueCell(for:indexPath)
             cell.set(vehicle: vehicle)
             return cell

         case .fourthView:
              let cell: fourthTripDetailCell = tableView.dequeueCell(for:indexPath)
              cell.set(vehicle: vehicle)
              return cell

         case .fifthView:
               let cell: fifthTripDetailCell = tableView.dequeueCell(for:indexPath)
               cell.set(vehicle: vehicle)
               return cell

         case .sixthView:
               let cell: sixthTripDetailCell = tableView.dequeueCell(for:indexPath)
         cell.set(vehicle: vehicle)
               return cell
             
           }
         }
     
     
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         let vehicle = vehicles[indexPath.row]
         
         
         switch vehicle.type {
         case .firstView:
             return 80
         case .secondView:
             return 208
         case .thirdView:
             return 124
         case .fourthView:
             return 209
         case .fifthView:
             return 103
         case .sixthView:
             return 64
         }
     }
 }
     




