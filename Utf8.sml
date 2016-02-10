structure Utf8 :> UTF8 = struct

  type t = CharVector.vector

  fun toW w8 = Word.fromLargeWord (Word8.toLargeWord w8)

  fun foldl f a v =
      let val v = Byte.stringToBytes v
          val (c,a) =
              Word8Vector.foldl
                  (fn (w,(NONE,a)) =>
                      if w < 0wx80 then        (* 0xxxxxxx *) 
                        (NONE,f(toW w,a))
                      else if w < 0wxC0 then   (* 10xxxxxx *)
                        raise Chr
                      else if w < 0wxE0 then   (* 110xxxxx *)
                        let val w = Word8.andb(0wx1F,w)        (* 1f=00011111 *)
                        in (SOME(toW w), a)
                        end
                      else if w < 0wxF0 then   (* 1110xxxx *)
                        let val w = Word8.andb(0wx0F,w)        (* 0f=00001111 *)
                        in (SOME(toW w), a)
                        end
                      else raise Chr
                    | (w,(SOME c,a)) =>
                      if w < 0wx80 then        (* 0xxxxxxx *) 
                        (NONE,f(toW w,f(c,a)))
                      else if w < 0wxC0 then   (* 10xxxxxx *)
                        let val w = Word8.andb(0wx3F,w)        (* 3f=00111111 *)
                            val c = Word.<<(c,0w6) + toW w
                        in (SOME c, a)
                        end
                      else if w < 0wxE0 then   (* 110xxxxx *)
                        let val w = Word8.andb(0wx1F,w)
                        in (SOME(toW w), f(c,a))
                        end
                      else if w < 0wxF0 then   (* 1110xxxx *)
                        let val w = Word8.andb(0wx0F,w)
                        in (SOME(toW w), f(c,a))
                        end
                      else raise Chr) 
                  (NONE,a) v
      in case c of
           NONE => a
         | SOME _ => raise Chr
      end
                                 
  val concat     : t list -> t = String.concat
  val concatWith : t -> t list -> t = String.concatWith
  val explode    : t -> word list = fn u => rev (foldl (op ::) nil u)
  val size       : t -> int = foldl (fn (_,n) => n+1) 0
  val fromString : string -> t = fn x => x
end
