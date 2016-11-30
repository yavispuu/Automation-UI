//  WeatherEyeiPhoneUITests.swift
//  WeatherEyeiPhoneUITests
//
//  Created by Sumi Manoharan and Yavis Yuan on 2016-07-07.
//  Copyright © 2016 Pelmorex Media. All rights reserved.
//

import XCTest

class WeatherEyeiPhoneUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test001_ObsDetailTest() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let collectionViewsQuery = XCUIApplication().collectionViews
        sleep(5)
        collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["WIND"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["WIND GUST"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["HUMIDITY"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["PRESSURE"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["VISIBILITY"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["CEILING"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["SUNRISE"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["SUNSET"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["YESTERDAY"].exists)
        
    }
    
    
    func test002_AirQuality() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        sleep(5)
        collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        collectionViewsQuery.collectionViews.buttons["AIR QUALITY"].tap()
        XCTAssert(app.staticTexts["CURRENT AIR QUALITY (AQHI)"].exists)
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 1).children(matching: .button).element.tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["WIND"].exists)
        
    }
    
    func test003_UV() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        sleep(5)
        collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        collectionViewsQuery.collectionViews.buttons["UV REPORT"].tap()
        XCTAssert(app.staticTexts["CURRENT UV REPORT"].exists)
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 1).children(matching: .button).element.tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["WIND"].exists)
        
    }
    
    
    
    func test004_Pollen() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        sleep(5)
        collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        collectionViewsQuery.collectionViews.buttons["POLLEN"].tap()
        XCTAssert(app.staticTexts["TODAY'S POLLEN REPORT"].exists)
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 1).children(matching: .button).element.tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["WIND"].exists)
    }
    
    
    func testA005_PollenForecast() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        sleep(5)
        collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        collectionViewsQuery.collectionViews.buttons["POLLEN"].tap()
        app.staticTexts["VIEW FULL POLLEN REPORT"].tap()
        app.buttons["btn x gray"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 1).children(matching: .button).element.tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["WIND"].exists)
    }
    
    
    func test006_News() {
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        let btnDashboardEButton = collectionViewsQuery.buttons["btn dashboard e"]
        sleep(5)
        btnDashboardEButton.tap()
        collectionViewsQuery.staticTexts["News"].tap()
        XCTAssert(collectionViewsQuery.staticTexts["News"].exists)
        btnDashboardEButton.tap()
        app.buttons["icon header forward"].tap()
        XCTAssert(collectionViewsQuery.staticTexts["News"].exists)
        btnDashboardEButton.tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
        XCTAssert(collectionViewsQuery.buttons["icon obsdetail e"].exists)
        btnDashboardEButton.tap()
        collectionViewsQuery.staticTexts["News"].tap()
        XCTAssert(collectionViewsQuery.staticTexts["News"].exists)
        XCUIApplication().collectionViews.buttons["logo twn tab"].tap()
        XCTAssert(collectionViewsQuery.buttons["icon obsdetail e"].exists)
        
        
        //let numberofArticles = app.collectionViews.elementBoundByIndex(0)
        //print(numberofArticles.cells.count)
        
        //collectionViewsQuery.collectionViews.staticTexts["Ottawa sisters back in business with lemonade stand "].tap()
        //let numberOFCells = collectionViewsQuery.collectionViews.count
        //print(numberOFCells)
        
    }
    
    
    func test007_numberOfNewsArticles() {
        
        let collectionViewsQuery = XCUIApplication().collectionViews
        sleep(5)
        collectionViewsQuery.buttons["btn dashboard e"].tap()
        
        let newsStaticText = collectionViewsQuery.staticTexts["News"]
        newsStaticText.tap()
        newsStaticText.tap()
        let noOfArticlesinView = collectionViewsQuery.cells.collectionViews.cells.count
        print(noOfArticlesinView)
        XCTAssert(noOfArticlesinView > 0)
        //collectionViewsQuery.cells.collectionViews.cells.elementBoundByIndex(1).swipeUp()
        
    }
    
    
    func test008_numberOfVideoArticles() {
        
        let collectionViewsQuery = XCUIApplication().collectionViews
        sleep(5)
        collectionViewsQuery.buttons["btn dashboard e"].tap()
        
        let videoStaticText = collectionViewsQuery.staticTexts["Video"]
        videoStaticText.tap()
        collectionViewsQuery.staticTexts["Videos"].tap()
        let numberOfVideoArticlesinView = collectionViewsQuery.cells.collectionViews.cells.count
        print(numberOfVideoArticlesinView )
        XCTAssert(numberOfVideoArticlesinView  > 0)
        
        
    }
    
    
    
    
    func test009_Videos() {
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        let btnDashboardEButton = collectionViewsQuery.buttons["btn dashboard e"]
        sleep(5)
        btnDashboardEButton.tap()
        collectionViewsQuery.staticTexts["Video"].tap()
        XCTAssert(collectionViewsQuery.staticTexts["Videos"].exists)
        btnDashboardEButton.tap()
        app.buttons["icon header forward"].tap()
        XCTAssert(collectionViewsQuery.staticTexts["Videos"].exists)
        btnDashboardEButton.tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
        XCTAssert(collectionViewsQuery.buttons["icon obsdetail e"].exists)
        btnDashboardEButton.tap()
        collectionViewsQuery.staticTexts["Video"].tap()
        XCTAssert(collectionViewsQuery.staticTexts["Videos"].exists)
        XCUIApplication().collectionViews.buttons["logo twn tab"].tap()
        XCTAssert(collectionViewsQuery.buttons["icon obsdetail e"].exists)
        
    }
    
    func test010_Maps() {
        
        // Navigate from dashboard to Weather radar
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        let btnDashboardEButton = collectionViewsQuery.buttons["btn dashboard e"]
        sleep(5)
        btnDashboardEButton.tap()
        collectionViewsQuery.staticTexts["Weather Radar"].tap()
        sleep(10)
        
        
        // Check Map play/pause button
        //        let exists = NSPredicate(format:"enabled == true")
        //        let btnMapPlayButton = app.buttons["btn map play"]
        //        expectationForPredicate(exists, evaluatedWithObject: btnMapPlayButton, handler: nil)
        //        waitForExpectationsWithTimeout(1000, handler: nil)
        //
        //        btnMapPlayButton.tap()
        //        btnMapPlayButton.tap()
        
        
        // Switch to Clouds & Radar layer
        let iconLayersGreyDButton = app.buttons["icon layers grey d"]
        iconLayersGreyDButton.tap()
        let cloudsRadarStaticText = collectionViewsQuery.staticTexts["CLOUDS & RADAR"]
        cloudsRadarStaticText.tap()
        app.buttons["icon map cloud d"].tap()
        
        // Switch to Weather Radar layer
        iconLayersGreyDButton.tap()
        collectionViewsQuery.staticTexts["WEATHER RADAR"].tap()
        app.buttons["icon map precip d"].tap()
        
        //Check NA Legends
        XCTAssert(app.images["img_maplegend_precip_ec"].exists)
        
        // Check GPS button
        let iconMapGpsDButton = app.buttons["icon map gps d"]
        iconMapGpsDButton.tap()
        app.buttons["logo twn tab"].tap()
        XCTAssert(collectionViewsQuery.buttons["icon obsdetail e"].exists)
        collectionViewsQuery.buttons["btn dashboard e"].tap()
        collectionViewsQuery.staticTexts["Weather Radar"].tap()
        app.buttons["btn dashboard e"].tap()
        app.buttons["icon header forward"].tap()
        app.buttons["logo twn tab"].tap()
        XCTAssert(collectionViewsQuery.buttons["icon obsdetail e"].exists)
        
        //        //Check UK Legends
        //
        //       //let app = XCUIApplication()
        //        app.otherElements.containingType(.Image, identifier:"bg_dynamicwx_rainnight").childrenMatchingType(.Other).elementBoundByIndex(1).childrenMatchingType(.CollectionView).element.childrenMatchingType(.Cell).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).elementBoundByIndex(0).childrenMatchingType(.Other).element.childrenMatchingType(.Button).elementBoundByIndex(0).tap()
        //        app.tables.staticTexts["City of London, UK"].tap()
        //
        //        //let collectionViewsQuery = app.collectionViews
        //        collectionViewsQuery.buttons["btn dashboard e"].tap()
        //        collectionViewsQuery.staticTexts["Weather Radar"].tap()
        //        sleep(10)
        //         XCTAssert(app.images["mg_maplegend_precip_foreca"].exists)
        //
        //       //let app = XCUIApplication()
        //        app.otherElements.containingType(.Image, identifier:"bg_dynamicwx_rainday").childrenMatchingType(.Other).elementBoundByIndex(1).childrenMatchingType(.Other).elementBoundByIndex(0).childrenMatchingType(.Button).elementBoundByIndex(0).tap()
        //        app.tables.staticTexts["Ontario"].tap()
        //         XCTAssert(collectionViewsQuery.buttons["icon obsdetail e"].exists)
        
    }
    //
    //
    ////    func testMapsAnimation() {
    ////
    ////       Need to automate the Map animation testing
    //
    //    let app = XCUIApplication()
    //    app.staticTexts["7:50"].tap()
    //    app.staticTexts["2:50"].tap()
    //    app.staticTexts["3:20"].tap()
    //
    //    let btnMapPlayButton = app.buttons["btn map play"]
    //    btnMapPlayButton.tap()
    //    btnMapPlayButton.tap()
    //
    //    let imgMaplegendPrecipEcImage = app.images["img_maplegend_precip_ec"]
    //    imgMaplegendPrecipEcImage.tap()
    //    imgMaplegendPrecipEcImage.tap()
    //    imgMaplegendPrecipEcImage.tap()
    //    imgMaplegendPrecipEcImage.tap()
    //    imgMaplegendPrecipEcImage.tap()
    //
    //
    //    //let app = XCUIApplication()
    //    app.images["img_maplegend_precip_foreca"].tap()
    //    app.buttons["btn map play"].tap()
    //    //
    ////    }
    
    
    func test011_Charts() {
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        sleep(5)
        collectionViewsQuery.buttons["btn dashboard e"].tap()
        collectionViewsQuery.staticTexts["Charts"].tap()
        
        let iconLayerWhiteButton = app.buttons["icon layer white"]
        iconLayerWhiteButton.tap()
        collectionViewsQuery.staticTexts["PRECIPITATION"].tap()
        XCTAssert(app.staticTexts["PRECIPITATION"].exists)
        iconLayerWhiteButton.tap()
        collectionViewsQuery.cells.otherElements.containing(.image, identifier:"icon_chart_wind").staticTexts["WIND"].tap()
        //collectionViewsQuery.staticTexts["WIND"].tap()
        XCTAssert(app.staticTexts["WIND"].exists)
        iconLayerWhiteButton.tap()
        collectionViewsQuery.staticTexts["TEMP & PRECIP"].tap()
        XCTAssert(app.staticTexts["TEMP & PRECIP"].exists)
        iconLayerWhiteButton.tap()
        collectionViewsQuery.staticTexts["TEMPERATURE"].tap()
        XCTAssert(app.staticTexts["TEMPERATURE"].exists)
        
    }
    
    
    func test012_SettingsC_Met(){
        
        // C and Metric to F and Im
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        sleep(5)
        collectionViewsQuery.buttons["btn dashboard e"].tap()
        app.buttons["icon dash settings"].tap()
        
        let app2 = app
        app2.buttons["°F"].tap()
        app2.buttons["Imperial"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .button).element(boundBy: 0).tap()
        app.buttons["icon header forward"].tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["°F"].exists)
        collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["mb"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["mi"].exists)
        
        
        ///
        
        //   let app = XCUIApplication()
        app.collectionViews.buttons["btn dashboard e"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
        let tablesQuery = app.tables
        XCTAssert(tablesQuery.cells.element(boundBy: 0).staticTexts["°F"].exists)
        XCTAssert(tablesQuery.cells.element(boundBy: 1).staticTexts["°C"].exists)
        tablesQuery.cells.element(boundBy: 0).staticTexts["°F"].tap()
        
        
        //F and Im to C and Metric
        collectionViewsQuery.buttons["btn dashboard e"].tap()
        app.buttons["icon dash settings"].tap()
        app2.buttons["°C"].tap()
        app2.buttons["Metric"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .button).element(boundBy: 0).tap()
        app.buttons["icon header forward"].tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["°C"].exists)
        //XCTAssert(collectionViewsQuery.collectionViews.staticTexts["°F"].exists)
        collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["kPa"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["km"].exists)
        
        //To C and Im
        collectionViewsQuery.buttons["btn dashboard e"].tap()
        app.buttons["icon dash settings"].tap()
        app2.buttons["Imperial"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .button).element(boundBy: 0).tap()
        app.buttons["icon header forward"].tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["°C"].exists)
        collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["mb"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["mi"].exists)
        
        //To F and Metric
        collectionViewsQuery.buttons["btn dashboard e"].tap()
        app.buttons["icon dash settings"].tap()
        app2.buttons["°F"].tap()
        app2.buttons["Metric"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .button).element(boundBy: 0).tap()
        app.buttons["icon header forward"].tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["°F"].exists)
        collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["kPa"].exists)
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["km"].exists)
        
        // To C and Metric for all locations
        
        
    }
    
    
    func test013_SettingsC_MToAllLocations(){
        
        
        let app = XCUIApplication()
        app.collectionViews.buttons["btn dashboard e"].tap()
        app.buttons["icon dash settings"].tap()
        let app2 = app
        app2.buttons["°C"].tap()
        app2.buttons["Imperial"].tap()
        let window = app.children(matching: .window).element(boundBy: 0)
        let element = window.children(matching: .other).element(boundBy: 2).children(matching: .other).element
        element.children(matching: .other).element(boundBy: 2).switches["0"].tap()
        element.children(matching: .button).element(boundBy: 0).tap()
        let element2 = window.children(matching: .other).element(boundBy: 1).children(matching: .other).element
        element2.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
        let tablesQuery = app.tables
        //print(tablesQuery.cells.count)
        XCTAssert(tablesQuery.cells.staticTexts["°C"].exists)
        
        
    }
    
    
    func test014_SettingsF_ImToAllLocations(){
        
        
        let app = XCUIApplication()
        sleep(5)
        app.collectionViews.buttons["btn dashboard e"].tap()
        app.buttons["icon dash settings"].tap()
        let app2 = app
        app2.buttons["°F"].tap()
        app2.buttons["Metric"].tap()
        let window = app.children(matching: .window).element(boundBy: 0)
        let element = window.children(matching: .other).element(boundBy: 2).children(matching: .other).element
        element.children(matching: .other).element(boundBy: 2).switches["0"].tap()
        element.children(matching: .button).element(boundBy: 0).tap()
        let element2 = window.children(matching: .other).element(boundBy: 1).children(matching: .other).element
        element2.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
        let tablesQuery = app.tables
        //print(tablesQuery.cells.count)
        XCTAssert(tablesQuery.cells.staticTexts["°F"].exists)
        
        
    }
    
    func test015_FAQ(){
        
        let app = XCUIApplication()
        sleep(5)
        app.collectionViews.buttons["btn dashboard e"].tap()
        app.buttons["icon dash faq"].tap()
        app.swipeUp()
        app.buttons["btn x gray"].tap()
        app.buttons["icon header forward"].tap()
        XCTAssert(XCUIApplication().collectionViews.collectionViews.buttons["icon obsdetail e"].exists)
        
    }
    
    
    func test016_TrendingNow(){
        
        let app = XCUIApplication()
        sleep(5)
        app.collectionViews.buttons["btn dashboard e"].tap()
        let collectionViewsQuery = app.collectionViews
        let featuredNewsStaticText = collectionViewsQuery.collectionViews.staticTexts["FEATURED NEWS"]
        featuredNewsStaticText.swipeLeft()
        featuredNewsStaticText.swipeLeft()
        featuredNewsStaticText.swipeLeft()
        XCTAssert(collectionViewsQuery.collectionViews.staticTexts["FEATURED VIDEO"].exists)
        
    }
    
    
    func test017_AddMaxLocations(){
        
        let app = XCUIApplication()
        let canadianCities = [
            "Calgary",
            "Vancouver",
            "Ottawa",
            "Victoria",
            "Winnipeg",
            "Regina",
            "Toronto",
            "Montreal",
            "Halifax",
            "Fredericton",
            "Charlottetown",
            "Edmonton",
            "Hamilton",
            "Kitchener",
            "London",
            "Windsor",
            "Saskatoon",
            "St. John's",
            "Abbotsford",
            "Moncton"
        ];
        //Check to see if there are any locations already in the locations list
        sleep(10)
        app.collectionViews.buttons["btn dashboard e"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
        let noOfLocationsToDelete = app.tables.cells.count
        app.buttons["btn x white"].tap()
        app.buttons["icon header forward"].tap()
    
        
        func ToAddLocations(){
            for index in canadianCities{
                sleep(5)
                app.collectionViews.buttons["btn dashboard e"].tap()
                
                let window = app.children(matching: .window).element(boundBy: 0)
                window.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
                
                window.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .button).element.tap()
                let textFields = app.searchFields["Enter postcode or city name"]
                textFields.tap()
                textFields.typeText(index)
                window.children(matching: .other).element(boundBy: 3).tables.children(matching: .cell).element(boundBy: 0).tap()
                
            }
            
            app.collectionViews.buttons["btn dashboard e"].tap()
            let window = app.children(matching: .window).element(boundBy: 0)
            window.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
            window.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .button).element.tap()
            
            XCTAssertEqual(app.searchFields["Enter postcode or city name"].exists, false)
        }
        
        
        if(noOfLocationsToDelete==0){
            ToAddLocations()
        }
        else{
            // Delete the existing locations
            self.test018_DeleteAllSavedLocations()
            app.buttons["btn x white"].tap()
            app.buttons["icon header forward"].tap()
            ToAddLocations()
        }
    }
    

    func test018_DeleteAllSavedLocations(){
        
        let app = XCUIApplication()
        sleep(10)
        app.collectionViews.buttons["btn dashboard e"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
        var noOfLocationsToDelete = app.tables.cells.count
        
        repeat{
            app.tables.cells.element(boundBy: 0).swipeLeft()
            XCUIApplication().tables.buttons["Delete"].tap()
            noOfLocationsToDelete = (noOfLocationsToDelete - 1)
            print(noOfLocationsToDelete)
        }while noOfLocationsToDelete>0
        
        XCTAssert(noOfLocationsToDelete==0)
    }
    
    func test019_TurnFollowMeOff(){
        
        let app = XCUIApplication()
        sleep(5)
        app.collectionViews.buttons["btn dashboard e"].tap()
        
        let window = app.children(matching: .window).element(boundBy: 0)
        window.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
        app.buttons["EDIT"].tap()
     
                if(app.switches["0"].exists){
                    print("FollowMe is OFF already")
                }
     
                else{
                    app.switches["1"].tap()
                    XCTAssert(app.switches["0"].exists)
                }
     
        let doneButton = app.buttons["DONE"]
        doneButton.tap()
        app.buttons["btn x white"].tap()
        app.buttons["icon header forward"].tap()
        app.buttons["logo twn tab"].tap()
     //collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
     //XCTAssert(collectionViewsQuery.collectionViews.staticTexts["WIND"].exists)
     
    }
    
    
    func test020_TurnFollowMeOn(){
        
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        let textFields = app.searchFields["Enter postcode or city name"]
       
        sleep(10)
        
        if(textFields.exists)
        {
            textFields.tap()
            textFields.typeText("Cooksville\r")
            XCUIApplication().tables.staticTexts["Ontario, CA"].tap()
            sleep(5)
            XCTAssert(app.collectionViews.buttons["btn dashboard e"].exists)
            collectionViewsQuery.buttons["btn dashboard e"].tap()
            let window = app.children(matching: .window).element(boundBy: 0)
            window.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
            app.buttons["EDIT"].tap()
            app.switches["0"].tap()
            print("Turned On Follow me with no location")
            XCTAssert(app.switches["1"].exists)
        }
        
        else{
        collectionViewsQuery.buttons["btn dashboard e"].tap()
        let window = app.children(matching: .window).element(boundBy: 0)
        window.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
        app.buttons["EDIT"].tap()
        
        if(app.switches["1"].exists){
           print("FollowMe is ON already")
        }
        else{
        app.switches["0"].tap()
            print("Turned On Follow me")
            XCTAssert(app.switches["1"].exists)
        }
        
        }
        app.buttons["btn x white"].tap()
        sleep(5)
        app.buttons["icon header forward"].tap()
        app.buttons["logo twn tab"].tap()
        //collectionViewsQuery.collectionViews.buttons["icon obsdetail e"].tap()
        //XCTAssert(collectionViewsQuery.collectionViews.staticTexts["WIND"].exists)
        
    }
    
    
    func test021_36HoursModule(){
        
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        sleep(3)
        app.swipeUp()
        sleep(3)
        //collectionViewsQuery.cells.collectionViews.childrenMatchingType(.Cell).elementBoundByIndex(5).tap()
        collectionViewsQuery.collectionViews.staticTexts["NEXT 18 HOURS"].tap()
        app.buttons["icon header back"].tap()
        let ShortTermModule = app.collectionViews.cells.collectionViews.children(matching: .cell).element(boundBy: 5).children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 1)
        XCTAssert(ShortTermModule.children(matching: .other).element(boundBy: 2).staticTexts["Afternoon"].exists)
        XCTAssert(ShortTermModule.children(matching: .other).element(boundBy: 3).staticTexts["Evening"].exists)
        XCTAssert(ShortTermModule.children(matching: .other).element(boundBy: 4).staticTexts["Overnight"].exists)
        
    }
    
    
    func test024_ErrorBarByAddingWrongLocation(){
        
        XCUIDevice.shared().orientation = .faceUp
        XCUIDevice.shared().orientation = .faceUp
        
        let app = XCUIApplication()
        sleep(10)
        app.collectionViews.buttons["btn dashboard e"].tap()
        
        let window = app.children(matching: .window).element(boundBy: 0)
        window.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .button).element(boundBy: 0).tap()
       
        let noOfLocations = app.tables.cells.count
        
        if(noOfLocations>=20){
            app.tables.cells.element(boundBy: 0).swipeLeft()
            XCUIApplication().tables.buttons["Delete"].tap()
        }
        
        window.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .button).element.tap()
        let textFields = app.searchFields["Enter postcode or city name"]
        textFields.tap()
        textFields.typeText("Gurret\r")
     
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 3)
        
        //Validate if error bar is displayed
        XCTAssert(element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .button).element.exists)
        
       textFields.buttons["Clear text"].tap()
        textFields.tap()
        textFields.typeText("Gary\r")
        element.tables.children(matching: .cell).element(boundBy: 0).tap()
        XCTAssert(app.collectionViews.buttons["btn dashboard e"].exists)
        
    }
    
}
