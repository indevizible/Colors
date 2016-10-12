//
//  Colors.swift
//  Colors
//
//  Created by Paulo Tanaka on 12/12/15.
//  Copyright © 2015 Paulo Tanaka. All rights reserved.
//

func apply<T>(_ style: [T]) -> ((String) -> String) {
    return { str in return "\u{001B}[\(style[0])m\(str)\u{001B}[\(style[1])m" }
}

func getColor(_ color: [Int], mod: Int) -> [Int] {
    let terminator = mod == 30 || mod == 90 ? 30 : 40
    return [ color[0] + mod, color[1] + terminator ]
}

open class Colors {
    static let normalText = 30
    static let bg = 40
    static let brightText = 90
    static let brightBg = 100

    // MARK: 8-bit color functions
    open static func getTextColorer(_ color: Int) -> ((String) -> String) {
        return apply(["38;5;\(color)", String(normalText + 9)])
    }

    open static func colorText(_ text: String, color: Int) -> String {
        return Colors.getTextColorer(color)(text)
    }

    open static func getBgColorer(_ color: Int) -> ((String) -> String) {
        return apply(["48;5;\(color)", String(bg + 9)])
    }

    open static func colorBg(_ text: String, color: Int) -> String {
        return Colors.getBgColorer(color)(text)
    }

    // MARK: Normal text colors
    open static var black = apply(getColor(ANSIColorCode.black, mod: normalText))
    open static var red = apply(getColor(ANSIColorCode.red, mod: normalText))
    open static var green = apply(getColor(ANSIColorCode.green, mod: normalText))
    open static var yellow = apply(getColor(ANSIColorCode.yellow, mod: normalText))
    open static var blue = apply(getColor(ANSIColorCode.blue, mod: normalText))
    open static var magenta = apply(getColor(ANSIColorCode.magenta, mod: normalText))
    open static var cyan = apply(getColor(ANSIColorCode.cyan, mod: normalText))
    open static var white = apply(getColor(ANSIColorCode.white, mod: normalText))

    // MARK: Bright text colors
    open static var Black = apply(getColor(ANSIColorCode.black, mod: brightText))
    open static var Red = apply(getColor(ANSIColorCode.red, mod: brightText))
    open static var Green = apply(getColor(ANSIColorCode.green, mod: brightText))
    open static var Yellow = apply(getColor(ANSIColorCode.yellow, mod: brightText))
    open static var Blue = apply(getColor(ANSIColorCode.blue, mod: brightText))
    open static var Magenta = apply(getColor(ANSIColorCode.magenta, mod: brightText))
    open static var Cyan = apply(getColor(ANSIColorCode.cyan, mod: brightText))
    open static var White = apply(getColor(ANSIColorCode.white, mod: brightText))

    // MARK: Normal background colors
    open static var bgBlack = apply(getColor(ANSIColorCode.black, mod: bg))
    open static var bgRed = apply(getColor(ANSIColorCode.red, mod: bg))
    open static var bgGreen = apply(getColor(ANSIColorCode.green, mod: bg))
    open static var bgYellow = apply(getColor(ANSIColorCode.yellow, mod: bg))
    open static var bgBlue = apply(getColor(ANSIColorCode.blue, mod: bg))
    open static var bgMagenta = apply(getColor(ANSIColorCode.magenta, mod: bg))
    open static var bgCyan = apply(getColor(ANSIColorCode.cyan, mod: bg))
    open static var bgWhite = apply(getColor(ANSIColorCode.white, mod: bg))

    // MARK: Bright background colors
    open static var BgBlack = apply(getColor(ANSIColorCode.black, mod: brightBg))
    open static var BgRed = apply(getColor(ANSIColorCode.red, mod: brightBg))
    open static var BgGreen = apply(getColor(ANSIColorCode.green, mod: brightBg))
    open static var BgYellow = apply(getColor(ANSIColorCode.yellow, mod: brightBg))
    open static var BgBlue = apply(getColor(ANSIColorCode.blue, mod: brightBg))
    open static var BgMagenta = apply(getColor(ANSIColorCode.magenta, mod: brightBg))
    open static var BgCyan = apply(getColor(ANSIColorCode.cyan, mod: brightBg))
    open static var BgWhite = apply(getColor(ANSIColorCode.white, mod: brightBg))

    // MARK: Text modifiers
    open static var bold = apply(ANSIModifiers.bold)
    open static var blink = apply(ANSIModifiers.blink)
    open static var dim = apply(ANSIModifiers.dim)
    open static var italic = apply(ANSIModifiers.italic)
    open static var underline = apply(ANSIModifiers.underline)
    open static var inverse = apply(ANSIModifiers.inverse)
    open static var hidden = apply(ANSIModifiers.hidden)
    open static var strikethrough = apply(ANSIModifiers.strikethrough)
}
