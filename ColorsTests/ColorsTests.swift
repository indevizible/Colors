//
//  ColorsTests.swift
//  ColorsTests
//
//  Created by Paulo Tanaka on 12/12/15.
//  Copyright © 2015 Paulo Tanaka. All rights reserved.
//

import XCTest
@testable import Colors

class ColorsTests: XCTestCase {

    // MARK: Test normal colors
    func testBlack() {
        XCTAssertEqual(Colors.black("black"), "\u{1B}[30mblack\u{1B}[39m")
    }

    func testRed() {
        XCTAssertEqual(Colors.red("red"), "\u{1B}[31mred\u{1B}[39m")
    }

    func testGreen() {
        XCTAssertEqual(Colors.green("green"), "\u{1B}[32mgreen\u{1B}[39m")
    }

    func testYellow() {
        XCTAssertEqual(Colors.yellow("yellow"), "\u{1B}[33myellow\u{1B}[39m")
    }

    func testBlue() {
        XCTAssertEqual(Colors.blue("blue"), "\u{1B}[34mblue\u{1B}[39m")
    }

    func testMagenta() {
        XCTAssertEqual(Colors.magenta("magenta"), "\u{1B}[35mmagenta\u{1B}[39m")
    }

    func testCyan() {
        XCTAssertEqual(Colors.cyan("cyan"), "\u{1B}[36mcyan\u{1B}[39m")
    }

    func testWhite() {
        XCTAssertEqual(Colors.white("white"), "\u{1B}[37mwhite\u{1B}[39m")
    }

    // MARK: Test bright colors
    func testBrightBlack() {
        XCTAssertEqual(Colors.Black("Black"), "\u{1B}[90mBlack\u{1B}[39m")
    }

    func testBrightRed() {
        XCTAssertEqual(Colors.Red("Red"), "\u{1B}[91mRed\u{1B}[39m")
    }

    func testBrightGreen() {
        XCTAssertEqual(Colors.Green("Green"), "\u{1B}[92mGreen\u{1B}[39m")
    }

    func testBrightYellow() {
        XCTAssertEqual(Colors.Yellow("Yellow"), "\u{1B}[93mYellow\u{1B}[39m")
    }

    func testBrightBlue() {
        XCTAssertEqual(Colors.Blue("Blue"), "\u{1B}[94mBlue\u{1B}[39m")
    }

    func testBrightMagenta() {
        XCTAssertEqual(Colors.Magenta("Magenta"), "\u{1B}[95mMagenta\u{1B}[39m")
    }

    func testBrightCyan() {
        XCTAssertEqual(Colors.Cyan("Cyan"), "\u{1B}[96mCyan\u{1B}[39m")
    }

    func testBrightWhite() {
        XCTAssertEqual(Colors.White("White"), "\u{1B}[97mWhite\u{1B}[39m")
    }

    // MARK: Test normal background colors
    func testBgBlack() {
        XCTAssertEqual(Colors.bgBlack("bgBlack"), "\u{1B}[40mbgBlack\u{1B}[49m")
    }

    func testBgRed() {
        XCTAssertEqual(Colors.bgRed("bgRed"), "\u{1B}[41mbgRed\u{1B}[49m")
    }

    func testBgGreen() {
        XCTAssertEqual(Colors.bgGreen("bgGreen"), "\u{1B}[42mbgGreen\u{1B}[49m")
    }

    func testBgYellow() {
        XCTAssertEqual(Colors.bgYellow("bgYellow"), "\u{1B}[43mbgYellow\u{1B}[49m")
    }

    func testBgBlue() {
        XCTAssertEqual(Colors.bgBlue("bgBlue"), "\u{1B}[44mbgBlue\u{1B}[49m")
    }

    func testBgMagenta() {
        XCTAssertEqual(Colors.bgMagenta("bgMagenta"), "\u{1B}[45mbgMagenta\u{1B}[49m")
    }

    func testBgCyan() {
        XCTAssertEqual(Colors.bgCyan("bgCyan"), "\u{1B}[46mbgCyan\u{1B}[49m")
    }

    func testBgWhite() {
        XCTAssertEqual(Colors.bgWhite("bgWhite"), "\u{1B}[47mbgWhite\u{1B}[49m")
    }

    // MARK: Test normal background colors
    func testBrightBgBlack() {
        XCTAssertEqual(Colors.BgBlack("BgBlack"), "\u{1B}[100mBgBlack\u{1B}[49m")
    }

    func testBrightBgRed() {
        XCTAssertEqual(Colors.BgRed("BgRed"), "\u{1B}[101mBgRed\u{1B}[49m")
    }

    func testBrightBgGreen() {
        XCTAssertEqual(Colors.BgGreen("BgGreen"), "\u{1B}[102mBgGreen\u{1B}[49m")
    }

    func testBrightBgYellow() {
        XCTAssertEqual(Colors.BgYellow("BgYellow"), "\u{1B}[103mBgYellow\u{1B}[49m")
    }

    func testBrightBgBlue() {
        XCTAssertEqual(Colors.BgBlue("BgBlue"), "\u{1B}[104mBgBlue\u{1B}[49m")
    }

    func testBrightBgMagenta() {
        XCTAssertEqual(Colors.BgMagenta("BgMagenta"), "\u{1B}[105mBgMagenta\u{1B}[49m")
    }

    func testBrightBgCyan() {
        XCTAssertEqual(Colors.BgCyan("BgCyan"), "\u{1B}[106mBgCyan\u{1B}[49m")
    }

    func testBrightBgWhite() {
        XCTAssertEqual(Colors.BgWhite("BgWhite"), "\u{1B}[107mBgWhite\u{1B}[49m")
    }

    // MARK: Test modifiers
    func testBold() {
        XCTAssertEqual(Colors.bold("bold"), "\u{1B}[1mbold\u{1B}[22m")
    }

    func testDim() {
        XCTAssertEqual(Colors.dim("dim"), "\u{1B}[2mdim\u{1B}[22m")
    }

    func testItalic() {
        XCTAssertEqual(Colors.italic("italic"), "\u{1B}[2mitalic\u{1B}[23m")
    }

    func testUnderline() {
        XCTAssertEqual(Colors.underline("underline"), "\u{1B}[4munderline\u{1B}[24m")
    }

    func testInverse() {
        XCTAssertEqual(Colors.inverse("invese"), "\u{1B}[7minvese\u{1B}[27m")
    }

    func testHidden() {
        XCTAssertEqual(Colors.hidden("hidden"), "\u{1B}[8mhidden\u{1B}[28m")
    }

    func testStrikethrough() {
        XCTAssertEqual(Colors.strikethrough("strikethrough"), "\u{1B}[9mstrikethrough\u{1B}[29m")
    }
}
