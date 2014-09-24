(** Utf-8 String Encoding. 

*)

signature UTF8 = sig
  type t
  val foldl      : (word * 'a -> 'a) -> 'a -> t -> 'a
  val concat     : t list -> t
  val concatWith : t -> t list -> t
  val explode    : t -> word list
  val size       : t -> int
  val fromString : string -> t
end

(**
[foldl f a t] returns the accumulated value resulting from folding
over t, using f with base a. May raise exception Chr if t does not
represent a valid utf-8 encoding.

[size t] returns the number of characters in t. May raise exception
Chr if t does not represent a valid utf-8 encoding.

[fromString s] returns the utf-8 representation of s.
*)

 
