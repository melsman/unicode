structure UnicodeChars : UNICODE_CHARS = struct
  val alpha = 0wx237A       (* APL Functional Symbol Alpha *) (* ⍺ *)
  val omega = 0wx2375       (* APL Functional Symbol Omega *) (* ⍵ *)
  val macron = 0wxAF        (* Macron *) (* ¯ *)
  val zilde = 0wx236C       (* APL Functional Symbol Zilde *)
  val currency = 0wxA4      (* Currency Sign *)
  val yen = 0wxA5           (* Yen Sign *)
  val dollar = 0wx24        (* Dollar Sign *) (* $ *)
  val pound = 0wxA3         (* Pound Sign *)
  val cent = 0wxA2          (* Cent Sign *)
  val increment = 0wx2206   (* Increment *)
  val yacute = 0wxFD        (* Latin Small Letter Y With Acute *)
  val deltaunderbar = 0wx2359 (* APL Functional Symbol Delta Underbar *)
  val Ecircumflex = 0wxCA   (* Latin Capital Letter E With Circumflex *)
  val Ediaresis = 0wxCB     (* Latin Capital Letter E With Diaeresis *)
  val Ograve = 0wxD2        (* Latin Capital Letter O With Grave *)
  val Oacute = 0wxD3        (* Latin Capital Letter O With Acute *)
  val Ocircumflex = 0wxD4 (* Latin Capital Letter O With Circumflex *)
  val Otile = 0wxD5 (* Latin Capital Letter O With Tilde *)
  val thorn = 0wxFE (* Latin Small Letter Thorn *)
  val eth = 0wxF0 (* Latin Small Letter Eth *)
  val euro = 0wx20AC (* Euro Sign *)
  val lefttack = 0wx22A3 (* Left Tack *)
  val squishquad = 0wx2337 (* APL Functional Symbol Squish Quad *)
  val diaresis = 0wxA8 (* Diaeresis *)
  val tildediaresis = 0wx2368 (* APL Functional Symbol Tilde Diaeresis *)
  val slashbar = 0wx233F (* APL Functional Symbol Slash Bar *)
  val backslashbar = 0wx2340 (* APL Functional Symbol Backslash Bar *)
  val lteq = 0wx2264 (* Less-than Or Equal To *)
  val gteq = 0wx2265 (* Greater-than Or Equal To *)
  val noteq = 0wx2260 (* Not Equal To *)
  val logicalor = 0wx2228 (* Logical Or *)
  val logicaland = 0wx2227 (* Logical And *)
  val division = 0wxF7 (* Division Sign *)
  val times = 0wxD7 (* Multiplication Sign *)
  val elementof = 0wx220A (* Small Element Of *)
  val rho = 0wx2374 (* APL Functional Symbol Rho *)
  val tilde = 0wx7E (* Tilde *)
  val uarrow = 0wx2191 (* Upwards Arrow *)
  val darrow = 0wx2193 (* Downwards Arrow *)
  val iota = 0wx2373 (* APL Functional Symbol Iota *)
  val circle = 0wx25CB (* White Circle *)
  val leftceiling = 0wx2308 (* Left Ceiling *)
  val leftfloor = 0wx230A (* Left Floor *)
  val nabla = 0wx2207 (* Nabla *)
  val ring = 0wx2218 (* Ring Operator *)
  val subset = 0wx2282 (* Subset Of *)
  val superset = 0wx2283 (* Superset Of *)
  val intersect = 0wx2229 (* Intersection *)
  val union = 0wx222A (* Union *)
  val utack = 0wx22A5 (* Up Tack *)
  val dtack = 0wx22A4 (* Down Tack *)
  val vline = 0wx7C (* Vertical Line *)
  val dcarettilde = 0wx2371 (* APL Functional Symbol Down Caret Tilde *)
  val ucarettilde = 0wx2372 (* APL Functional Symbol Up Caret Tilde *)
  val delstile = 0wx2352 (* APL Functional Symbol Del Stile *) (* ⍒ *)
  val deltastile = 0wx234B (* APL Functional Symbol Delta Stile *) (* ⍋ *)
  val circlebackslash = 0wx2349 (* APL Functional Symbol Circle Backslash *) (* ⍉ *)
  val circlestile = 0wx233D (* APL Functional Symbol Circle Stile *) (* ⌽ *)
  val circleminus = 0wx2296 (* Circled Minus *) (* ⊖ *)
  val circlestar = 0wx235F (* APL Functional Symbol Circle Star *) (* ⍟ *)
  val quaddivide = 0wx2339 (* APL Functional Symbol Quad Divide *) (* ⌹ *)
  val utackjot = 0wx2355 (* APL Functional Symbol Up Tack Jot *) (* ⍕ *)
  val dtackjot = 0wx234E (* APL Functional Symbol Down Tack Jot *) (* ⍎ *)
  val deltilde = 0wx236B (* APL Functional Symbol Del Tilde *) (* ⍫ *)
  val commabar = 0wx236A (* APL Functional Symbol Comma Bar *) (* ⍪ *)
  val identicalto = 0wx2261 (* Identical To *) (* ≡ *)
  val notidenticalto = 0wx2262 (* Not Identical To *) (* ≢ *)
  val rsinglequote = 0wx2019 (* Right Single Quotation Mark *) (* ’ *)
  val boxdrawvertical = 0wx2502 (* Box Drawings Light Vertical *) (* │ *)
  val lsinglequote = 0wx2018 (* Left Single Quotation Mark *) (* ‘ *)
  val divides = 0wx2223 (* Divides *) (* ∣ *)
  val epsilonunderbar = 0wx2377 (* APL Functional Symbol Epsilon Underbar *) (* ⍷ *)
  val diamond = 0wx22C4 (* Diamond Operator *) (* ⋄ *)
  val larrow = 0wx2190 (* Leftwards Arrow *) (* ← *)
  val rarrow = 0wx2192 (* Rightwards Arrow *) (* → *)
  val upshoejot = 0wx235D (* APL Functional Symbol Up Shoe Jot *) (* ⍝ *)
  val section = 0wxA7 (* Section Sign *) (* § *)
  val quad = 0wx2395 (* APL Functional Symbol Quad *) (* ⎕ *)
  val quotequad = 0wx235E (* APL Functional Symbol Quote Quad *) (* ⍞ *)
  val stardiaeresis = 0wx2363 (* APL Functional Symbol Star Diaeresis *) (* ⍣ *)
  val boxuarrow = 0wx2350 (* Box With Up Arrow *) (* ⍐ *)
  val boxdarrow = 0wx2357 (* Box With Down Arrow *) (* ⍗ *)
  val boxlarrow = 0wx2347 (* Box With Left Arrow *) (* ⍇ *)
  val boxrarrow = 0wx2348 (* Box With Right Arrow *) (* ⍈ *)

  fun help w =
      case w of
        0wx237A => SOME "APL Functional Symbol Alpha"
      | 0wx2375 => SOME "APL Functional Symbol Omega"
      | 0wxAF => SOME "Macron"
      | 0wx236C => SOME "APL Functional Symbol Zilde"
      | 0wxA4 => SOME "Currency Sign"
      | 0wxA5 => SOME "Yen Sign"
      | 0wx24 => SOME "Dollar Sign"
      | 0wxA3 => SOME "Pound Sign"
      | 0wxA2 => SOME "Cent Sign"
      | 0wx2206 => SOME "Increment"
      | 0wxFD => SOME "Latin Small Letter Y With Acute"
      | 0wx2359 => SOME "APL Functional Symbol Delta Underbar"
      | 0wxCA => SOME "Latin Capital Letter E With Circumflex"
      | 0wxCB => SOME "Latin Capital Letter E With Diaeresis"
      | 0wxD2 => SOME "Latin Capital Letter O With Grave"
      | 0wxD3 => SOME "Latin Capital Letter O With Acute"
      | 0wxD4 => SOME "Latin Capital Letter O With Circumflex"
      | 0wxD5 => SOME "Latin Capital Letter O With Tilde"
      | 0wxFE => SOME "Latin Small Letter Thorn"
      | 0wxF0 => SOME "Latin Small Letter Eth"
      | 0wx20AC => SOME "Euro Sign"
      | 0wx22A3 => SOME "Left Tack"
      | 0wx2337 => SOME "APL Functional Symbol Squish Quad"
      | 0wxA8 => SOME "Diaeresis"
      | 0wx2368 => SOME "APL Functional Symbol Tilde Diaeresis"
      | 0wx233F => SOME "APL Functional Symbol Slash Bar"
      | 0wx2340 => SOME "APL Functional Symbol Backslash Bar"
      | 0wx2264 => SOME "Less-than Or Equal To"
      | 0wx2265 => SOME "Greater-than Or Equal To"
      | 0wx2260 => SOME "Not Equal To"
      | 0wx2228 => SOME "Logical Or"
      | 0wx2227 => SOME "Logical And"
      | 0wxF7 => SOME "Division Sign"
      | 0wxD7 => SOME "Multiplication Sign"
      | 0wx220A => SOME "Small Element Of"
      | 0wx2374 => SOME "APL Functional Symbol Rho"
      | 0wx7E => SOME "Tilde"
      | 0wx2191 => SOME "Upwards Arrow"
      | 0wx2193 => SOME "Downwards Arrow"
      | 0wx2373 => SOME "APL Functional Symbol Iota"
      | 0wx25CB => SOME "White Circle"
      | 0wx2308 => SOME "Left Ceiling"
      | 0wx230A => SOME "Left Floor"
      | 0wx2207 => SOME "Nabla"
      | 0wx2218 => SOME "Ring Operator"
      | 0wx2282 => SOME "Subset Of"
      | 0wx2283 => SOME "Superset Of"
      | 0wx2229 => SOME "Intersection"
      | 0wx222A => SOME "Union"
      | 0wx22A5 => SOME "Up Tack"
      | 0wx22A4 => SOME "Down Tack"
      | 0wx7C => SOME "Vertical Line"
      | 0wx2371 => SOME "APL Functional Symbol Down Caret Tilde"
      | 0wx2372 => SOME "APL Functional Symbol Up Caret Tilde"
      | 0wx2352 => SOME "APL Functional Symbol Del Stile"
      | 0wx234B => SOME "APL Functional Symbol Delta Stile"
      | 0wx2349 => SOME "APL Functional Symbol Circle Backslash"
      | 0wx233D => SOME "APL Functional Symbol Circle Stile"
      | 0wx2296 => SOME "Circled Minus"
      | 0wx235F => SOME "APL Functional Symbol Circle Star"
      | 0wx2339 => SOME "APL Functional Symbol Quad Divide"
      | 0wx2355 => SOME "APL Functional Symbol Up Tack Jot"
      | 0wx234E => SOME "APL Functional Symbol Down Tack Jot"
      | 0wx236B => SOME "APL Functional Symbol Del Tilde"
      | 0wx236A => SOME "APL Functional Symbol Comma Bar"
      | 0wx2261 => SOME "Identical To"
      | 0wx2262 => SOME "Not Identical To"
      | 0wx2019 => SOME "Right Single Quotation Mark"
      | 0wx2502 => SOME "Box Drawings Light Vertical"
      | 0wx2018 => SOME "Left Single Quotation Mark"
      | 0wx2223 => SOME "Divides"
      | 0wx2377 => SOME "APL Functional Symbol Epsilon Underbar"
      | 0wx22C4 => SOME "Diamond Operator"
      | 0wx2190 => SOME "Leftwards Arrow"
      | 0wx2192 => SOME "Rightwards Arrow"
      | 0wx235D => SOME "APL Functional Symbol Up Shoe Jot"
      | 0wxA7 => SOME "Section Sign"
      | 0wx2395 => SOME "APL Functional Symbol Quad"
      | 0wx235E => SOME "APL Functional Symbol Quote Quad"
      | 0wx2363 => SOME "APL Functional Symbol Star Diaeresis"
      | 0wx2350 => SOME "Box With Up Arrow"
      | 0wx2357 => SOME "Box With Down Arrow"
      | 0wx2347 => SOME "Box With Left Arrow"
      | 0wx2348 => SOME "Box With Right Arrow"
      | _ => NONE                
end
