//
//  ViewController.swift
//  Chart1
//
//  Created by 今村京平 on 2021/07/01.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var pieChartView: PieChartView!

    let Fruit = ["りんご", "みかん", "バナナ", "パイナップル", "ブドウ"]
    let percent = [20, 15, 10, 8, 5]
    override func viewDidLoad() {
        super.viewDidLoad()
        settingPieChart()
    }

    private func settingPieChart() {
        var chartDataEntry = [ChartDataEntry]()
        for i in 0..<Fruit.count {
            chartDataEntry.append(PieChartDataEntry(value: Double(percent[i]), label: Fruit[i], data: nil))
        }
        let pieChartDataSet = PieChartDataSet(entries: chartDataEntry)
        pieChartView.data = PieChartData(dataSet: pieChartDataSet)

        let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.purple]
        pieChartDataSet.colors = colors
        pieChartView.legend.enabled = false
    }

}

