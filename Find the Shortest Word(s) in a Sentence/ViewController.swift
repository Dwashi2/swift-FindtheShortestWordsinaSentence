//
//  ViewController.swift
//  Find the Shortest Word(s) in a Sentence
//
//  Created by Daniel Washington Ignacio on 23/06/21.
//

/*
 Create a function that accepts a string as an argument. Find its shortest word(s) and return them as an array sorted alphabetically (if there are multiple shortest words).

 Examples

 findShortestWords("I think the solution is fairly obvious.") ➞ ["i"]

 findShortestWords("Chase two rabbits, catch none.") ➞ ["two"]

 findShortestWords("We become what we think about.") ➞ ["we", "we"]

 findShortestWords("The quick brown fox jumped over the lazy dogs back.") ➞ ["fox", "the", "the"]
 Notes

 Periods, commas and other special characters don't count as part of a word's length.
 Remember to sort the array of words alphabetically before returning your result.
 Return words in lowercase only.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.findShortestWords("I think the solution is fairly obvious."))
        print(self.findShortestWords("Chase two rabbits, catch none."))
        print(self.findShortestWords("We become what we think about."))
        print(self.findShortestWords("The quick brown fox jumped over the lazy dogs back."))
    }

    
    func findShortestWords(_ str: String) -> [String] {
        var arr: [String] = []
        var count: Int = 10
        for n in str.components(separatedBy: " "){
            if n.count < count{
                count = n.count
            }
        }
        for n in str.components(separatedBy: " "){
            if n.count <= count{
                arr.append(n.lowercased())
            }
        }
        return arr.sorted()
    }

}

