//
//  ViewController.swift
//  Sonidos
//
//  Created by Alumno on 8/21/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer?
    var playerMusicaFondo : AVAudioPlayer?
    
    var reproduccion = false
    
    @IBAction func doTapReproducir(_ sender: Any) {
        if reproduccion {
            let pathMusicaFondo = Bundle.main.path(forResource: "AUDIO29.wav", ofType: nil)
            let urlMusicaFondo = URL(fileURLWithPath: pathMusicaFondo!)
            
            do{
                player = try AVAudioPlayer(contentsOf: urlMusicaFondo)
            }catch{
                
            }
        } else{
            reproduccion = true
        }
        if player != nil{
            player?.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "b.wav", ofType: nil)
        let url = URL(fileURLWithPath: path!)
        
        
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            
            //playerMusicaFondo?.play()
        }catch{
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

