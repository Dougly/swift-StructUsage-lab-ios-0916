//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var nowFriendsLabel: UILabel!
    @IBOutlet weak var firstFriend: UIImageView!
    @IBOutlet weak var secondFriend: UIImageView!
    
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    var currentPerson: Character!
    var becomeFriendsWithTapped = false
    
    @IBAction func becomeFriendsWithButtonTapped(_ sender: UIButton) {
        
        becomeFriendsWithTapped = true

    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if !becomeFriendsWithTapped {
        switch sender.titleLabel!.text! {
        case "Finn":
            updateViews(with: finn)
            break
        case "Jake":
            updateViews(with: jake)
            break
        case "Bubblegum":
            updateViews(with: bubblegum)
            break
            case "BMO":
            updateViews(with: bmo)
            break
        case "Lemongrab":
            updateViews(with: lemongrab)
            break
            case "LSP":
            updateViews(with: lsp)
            break
        default:
            break
            
        }
        } else {
            switch sender.titleLabel!.text! {
            case "Finn":
                becomeFriends(friend: finn)
                break
            case "Jake":
                becomeFriends(friend: jake)
                break
            case "Bubblegum":
                becomeFriends(friend: bubblegum)
                break
            case "BMO":
                becomeFriends(friend: bmo)
                break
            case "Lemongrab":
                becomeFriends(friend: lemongrab)
                break
            case "LSP":
                becomeFriends(friend: lsp)
                break
            default:
                break
            }
        }
        
    }
    
    func createAllCharacters () {
        finn = Character(name: "Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        jake = Character(name: "Jake The Dog", species: "Dog", occupation: "Hero", powerLevel: 60.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "Gum", occupation: "Princess", powerLevel: 20.0)
        lemongrab = Character(name: "Lemongrab", species: "Lemon", occupation: "Jerk", powerLevel: 20.0)
        bmo = Character(name: "BMO", species: "Computer", occupation: "Toy", powerLevel: 10.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Cloud", occupation: "Brat", powerLevel: 20.0)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createAllCharacters()
        nowFriendsLabel.isHidden = true
        
    }

    func updateViews(with character: Character) {
        nameLabel.text = character.name
        occupationLabel.text = character.occupation
        speciesLabel.text = character.species
        characterImageView.image = character.displayImage()
        currentPerson = character
        
        
    }
    
    func becomeFriends(friend character: Character) {
        currentPerson.becomeBestFriends(with: character.name)
        firstFriend.image = currentPerson.displayImage()
        secondFriend.image = character.displayImage()
        characterImageView.isHidden = true
        nowFriendsLabel.isHidden = false
    }
   

}

