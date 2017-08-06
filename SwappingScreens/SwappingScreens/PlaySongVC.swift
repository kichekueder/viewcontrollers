//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Tom on 06/08/2017.
//  Copyright © 2017 Tom. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {
    
    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong: String! // declare private variable
    
    var selectedSong: String {
        get { // getter collects selectedSong
            return _selectedSong
        } set { // setter assigns new value to the selectedSong private variable
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songTitleLbl.text = _selectedSong // changes the label text to the private variable
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
