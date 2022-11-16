//
//  StopWatchExtension.swift
//  StopWatch.2.0.
//
//  Created by Daniil Akmatov on 15/11/22.
//

import UIKit

extension StopWatchViewController: UIPickerViewDelegate, UIPickerViewDataSource {

     func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 3
     }

     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         switch component {
         case 0:
             return 25
         case 1, 2:
             return 60
         default:
             return 0
         }
     }

     func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
         return pickerView.frame.size.width/3
     }

     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         switch component {
         case 0:
             return "\(row) h"
         case 1:
             return "\(row) m"
         case 2:
             return "\(row) s"
         default:
             return ""
         }
     }
    
     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         switch component {
         case 0:
             hours = row
         case 1:
             minutes = row
         case 2:
             seconds = row
         default:
             break;
         }
     }
 }
