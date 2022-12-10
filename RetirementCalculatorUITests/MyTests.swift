//
//  MyTests.swift
//  RetirementCalculatorUITests
//
//  Created by Rahul Yadav on 08/12/22.
//

import XCTest

class MyTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        XCTContext.runActivity(named: "RetirementCalculation") { activity in
            
            let app = XCUIApplication()
            app.launch()
            
            //
            
            app.textFields["Current Age"].tap()
            
            let keyMore = app.keys["numbers"]
            keyMore.tap()

            let key3 = app.keys["3"]
            key3.tap()

            let key5 = app.keys["5"]
            key5.tap()
            
            //
                    
            app.textFields["Retirement Age"].tap()
            
            keyMore.tap()

            let key6 = app.keys["6"]
            key6.tap()

            let key0 = app.keys["0"]
            key0.tap()
            
            //
            
            app.textFields["Monthly investment"].tap()
            
            keyMore.tap()

            let key1 = app.keys["1"]
            key1.tap()
            
            key5.tap()
            
            key0.tap()
            key0.tap()
            key0.tap()
            
            //
            
            app.textFields["Current savings"].tap()
            
            keyMore.tap()
            
            key3.tap()
            key5.tap()
            key0.tap()
            key0.tap()
            key0.tap()
            key0.tap()

            //
            
            app.textFields["Interest rate"].tap()
            
            keyMore.tap()
            
            let key7 = app.keys["7"]
            key7.tap()
            
            //
            
            app.staticTexts["Button"].tap()

            //
            
            app.buttons["Return"].tap()
            
            //
            
            let resultLabel = app.staticTexts.element(matching: .any, identifier: "resultLabel")
            let result = "If you save Rs 15000 every month for 25 years and invest that money and your current savings of Rs 350000 at an annual interest rate of 7%, you will have Rs 92750000 amount at your retirement age"
            XCTAssertEqual(resultLabel.label, result)
        }
    }
    
 /*  func testGetSampleData() throws{
        
        
        let app = app2
        app.textFields["Current Age"].tap()
        
        let moreKey = app.keys["more"]
        moreKey.tap()
        moreKey.tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keyboards.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        key.tap()
        key.tap()
        
        let key2 = app/*@START_MENU_TOKEN@*/.keys["7"]/*[[".keyboards.keys[\"7\"]",".keys[\"7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        key2.tap()
        
        let retirementAgeTextField = app.textFields["Retirement Age"]
        retirementAgeTextField.tap()
        retirementAgeTextField.tap()
        moreKey.tap()
        moreKey.tap()
        
        let key3 = app/*@START_MENU_TOKEN@*/.keys["6"]/*[[".keyboards.keys[\"6\"]",".keys[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        key3.tap()
        
        let key4 = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key4.tap()
        key4.tap()
        app.textFields["Monthly investment"].tap()
        moreKey.tap()
        moreKey.tap()
        
        let key5 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key5.tap()
        key5.tap()
        key4.tap()
        key4.tap()
        
        let key6 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key6.tap()
        key6.tap()
        key6.tap()
        key6.tap()
        key6.tap()
        app.textFields["Current savings"].tap()
        moreKey.tap()
        moreKey.tap()
        key.tap()
        key.tap()
        key4.tap()
        key4.tap()
        key6.tap()
        key6.tap()
        key6.tap()
        key6.tap()
        key6.tap()
        app.textFields["Interest rate"].tap()
        moreKey.tap()
        moreKey.tap()
        key2.tap()
        key2.tap()
        
        let app2 = app
        app2/*@START_MENU_TOKEN@*/.staticTexts["Button"]/*[[".buttons[\"Button\"].staticTexts[\"Button\"]",".staticTexts[\"Button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app2/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["If you save Rs 15000 every month for 28 years and invest that money and your current savings of Rs 350000 at an annual interest rate of 7%, you will have Rs 103880000 amount at your retirement age"].tap()
        
    }*/

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
