
import UIKit
import Foundation
import Charts


class ChartsViewController: UIViewController {
    
    //@IBOutlet var barChartView: BarChartView!
    
    @IBOutlet weak var barChartView: BarChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let xArray = Array(1..<10)
        let ys1 = xArray.map { x in return sin(Double(x) / 2.0 / 3.141 * 1.5) }
        let ys2 = xArray.map { x in return cos(Double(x) / 2.0 / 3.141) }
        
        let yse1 = ys1.enumerated().map { x, y in return BarChartDataEntry(x: Double(x), y: y) }
        let yse2 = ys2.enumerated().map { x, y in return BarChartDataEntry(x: Double(x), y: y) }
        
        let data = BarChartData()
        let ds1 = BarChartDataSet(entries: yse1, label: "Hello")
        ds1.colors = [NSUIColor.red]
        data.addDataSet(ds1)
        
        let ds2 = BarChartDataSet(entries: yse2, label: "World")
        ds2.colors = [NSUIColor.blue]
        data.addDataSet(ds2)
        
        let barWidth = 0.4
        let barSpace = 0.05
        let groupSpace = 0.1
        
        data.barWidth = barWidth
        self.barChartView.xAxis.axisMinimum = Double(xArray[0])
        self.barChartView.xAxis.axisMaximum = Double(xArray[0]) + data.groupWidth(groupSpace: groupSpace, barSpace: barSpace) * Double(xArray.count)
        // (0.4 + 0.05) * 2 (data set count) + 0.1 = 1
        data.groupBars(fromX: Double(xArray[0]), groupSpace: groupSpace, barSpace: barSpace)
        
        self.barChartView.data = data
        
        self.barChartView.gridBackgroundColor = NSUIColor.white
        
        self.barChartView.chartDescription?.text = "Barchart Demo"
         */
        
        
        print("목표시간 : ",dataCenter.daily_time)
        print("공부시간 : ",dataCenter.daily_study_time)
        
        let week_day = ["일", "월", "화", "수", "목", "금", "토"]
        let dateNum = Calendar.current.component(.day, from: Date())
        let weekNum = Calendar.current.component(.weekday, from: Date())
        
        let dates = [String(dateNum-6) + "일" + "(" + week_day[weekNum%7] + ")",
                     String(dateNum-5) + "일" + "(" + week_day[(weekNum+1)%7] + ")",
                     String(dateNum-4) + "일" + "(" + week_day[(weekNum+2)%7] + ")",
                     String(dateNum-3) + "일" + "(" + week_day[(weekNum+3)%7] + ")",
                     String(dateNum-2) + "일" + "(" + week_day[(weekNum+4)%7] + ")",
                     String(dateNum-1) + "일" + "(" + week_day[(weekNum+5)%7] + ")",
                     String(dateNum) + "일" + "(" + week_day[weekNum-1] + ")"
                    ]
        
        var rate = Array(repeating:Double(0),count:31)
        var xArray : [Int] = []
        //var ys1 : [Double] = []
        
        self.barChartView.xAxis.valueFormatter = IndexAxisValueFormatter(values: dates)
        for i in Calendar.current.component(.day, from: Date()) - 6 ... Calendar.current.component(.day, from: Date()){
            xArray.append(i)
            //ys1.append(Double(dataCenter.daily_study_time[i]) / Double(dataCenter.daily_time[i]))
            if(dataCenter.daily_time[i] != 0) {
                rate[i] = (Double(dataCenter.daily_study_time[i]) / Double(dataCenter.daily_time[i]))*Double(100)
            }
        }
        ///나중에 지울것(test용)///
        rate[dateNum - 6] = 83.6
        rate[dateNum - 5] = 65.8
        rate[dateNum - 4] = 100.0
        rate[dateNum - 3] = 92.1
        rate[dateNum - 2] = 52.9
        rate[dateNum - 1] = 88.8
        ///////////////////////
        setChart(dates, values: rate)
        
        
        
    }
    
    func setChart(_ dataPoints: [String], values: [Double]){
        
        var dataEntries: [ChartDataEntry]=[]
        
        for i in 0..<dataPoints.count{
            dataEntries.append(BarChartDataEntry(x : Double(i), y : values[i+Calendar.current.component(.day, from: Date()) - 6]))
        }
        
        let data = BarChartData()
        let ds1 = BarChartDataSet(entries: dataEntries, label: "달성률")
        ds1.colors = [NSUIColor.green]
        data.addDataSet(ds1)
        
        self.barChartView.xAxis.labelPosition = XAxis.LabelPosition.bottom
        
        //self.barChartView.tintColor = NSUIColor.yellow
        
        self.barChartView.data = data
        
        self.barChartView.gridBackgroundColor = NSUIColor.white
        
        self.barChartView.chartDescription?.text = "날짜(요일) - 달성률(%)"
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewWillAppear(_ animated: Bool)
    {
        self.barChartView.animate(xAxisDuration: 1.0, yAxisDuration: 1.0)
    }
    
    
    
}

