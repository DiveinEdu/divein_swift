//
//  ViewController.swift
//  BlueCentralApp
//
//  Created by WuQiong on 6/25/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController, CBCentralManagerDelegate, CBPeripheralDelegate {
    var manager: CBCentralManager!
    var data: NSMutableData!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.manager = CBCentralManager(delegate: self, queue: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func centralManagerDidUpdateState(central: CBCentralManager!) {
        println("did update state...")
//        CBUUID.UUIDWithString(kServiceUUID)
        
        switch central.state {
            case .PoweredOn:
                self.manager.scanForPeripheralsWithServices(nil, options: [CBCentralManagerScanOptionAllowDuplicatesKey: true])
                println("power on...")
            case .PoweredOff:
                println("power off....")
            case .Unauthorized:
                println("unauthorized...")
            case .Unsupported:
                println("unsupported...")
            case .Resetting:
                println("resetting...")
            case .Unknown:
                println("unknown...")
            default:
                println("Central manager did change state: \(central.state.toRaw())")
        }
    }
    
    func centralManager(central: CBCentralManager!, didDiscoverPeripheral peripheral: CBPeripheral!, advertisementData: NSDictionary!, RSSI: NSNumber!) {
        println("data: \(advertisementData) -> RSSI: \(RSSI)")
        
//        self.manager.stopScan()
//        if self.peripheral != peripheral {
//            self.peripheral = peripheral
//            self.manager.connectPeripheral(peripheral, options: nil)
//        }
    }
    
    
}

