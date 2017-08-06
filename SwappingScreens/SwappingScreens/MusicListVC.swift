//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Tom on 06/08/2017.
//  Copyright © 2017 Tom. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        
    }
    
    @IBAction func backBTNPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        
        let songTitle = "Quit Playing Games with my hearts"
        
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PlaySongVC {
            
             // ^^^ only execute this block if there is a VC called PlaySongVC
            
            if let song = sender as? String {
                
                // ^^^ only execute this block if a song title has been selected.
                
                destination.selectedSong = song
                
                // ^^^ set the private variable selectedSong on PlaySongVC to the value of song.
                
            }
            
        }
    }
    
}
