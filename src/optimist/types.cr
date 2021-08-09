module Optimist

  alias Ident = String ## option-identifier
  
  alias DefaultType = ( String | Nil | Float64 | Bool | Int32 | Array(String) | Array(Int32) | Array(Float64) | IO::FileDescriptor)
  alias PermittedType = ( Array(String|Int32) | Regex | Range(Int32,Int32) | Nil )
  alias AlternatesType = ( Array(String) | String | Nil )

end
