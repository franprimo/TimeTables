//
//  ViewController.swift
//  TimeTables
//
//  Created by Fran Primo Ruiz on 22/6/15.
//  Copyright (c) 2015 Fran Primo Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    //Esto nos da el valor de la posicion en la que se encuentra el slider.
    @IBOutlet weak var valueSlider: UISlider!
    
    //Esto es una instancia de la tabla.
    @IBOutlet weak var table: UITableView!
    
    //Instancia mediante la cual sé si el usuario ha movido el slider.
    @IBAction func timeSlider(sender: AnyObject) {
        table.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Este metodo nos devuelve el numero de celdas de la tabla.
        return 20
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Con este metodo rellenamos las celdas de la tabla.
        
        //Creo una celda a la que le paso el mismo identificador que le he puesto en el diseñador.
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable = Int(valueSlider.value * 20)
        
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

