(*val a = "⍺⍵+-×÷!?⌷⍴⍳,⍪⎕⍞∈⍷∼" *)
val a = "sdfsdfsdfsdfsdfsdf"
val t = "                  "
val s = size a

val () = print (Int.toString s ^ "; expecting " ^ Int.toString (size t) ^ "\n")

fun rFile f =
    let val is = TextIO.openIn f
        val s = TextIO.inputAll is
    in TextIO.closeIn is;
       s
    end

val c = rFile "unicode_data.txt"

val () = print ("Here is the file:\n" ^ String.toString c ^ "\n")

val u = Utf8.fromString c
val sz = Utf8.size u
val sz0 = size c

val () = print ("First three exploded codepoints: " ^
                (let val e = Utf8.explode u
                 in
                     String.concatWith ","
                                       [Word.toString (hd e),
                                        Word.toString (hd (tl e)),
                                        Word.toString (hd (tl (tl e)))]
                 end) ^ "\n")
            
fun pr s n = print(s ^ ": " ^ Int.toString n ^ "\n")

val () = pr "Utf8 chars" sz
val () = pr "Bytes" sz0

fun count w u =
    Utf8.foldl (fn (w',a) => if w' = w then a + 1 else a) 0 u

fun prc s c =
    let val n = count c u
    in pr s n
    end

val () = prc "Alphas" UnicodeChars.alpha
val () = prc "Omegas" UnicodeChars.omega
val () = prc "Times" UnicodeChars.times
val () = prc "Squishquads" UnicodeChars.squishquad 
val () = prc "Is" (Word.fromInt (ord (#"i")))


