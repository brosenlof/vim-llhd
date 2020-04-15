if exists("b:current_syntax")
    finish
endif

syn case match

" Other
syn match llhdLabel /[a-zA-Z0-9_\.\\]\+[:]/
syn match llhdDelimiter "\(,\|{\|}\|(\|)\|\[\|\]\)"
syn match llhdComment ";.*"

" Types
syn keyword llhdType void time
syn match   llhdType /[inl]\d\+/

" Literals
syn match llhdIntLiteral /[0-9]\+/
syn match llhdIntLiteral /0x[0-9a-fA-F]\+/
syn match llhdIntLiteral /0o[0-7]\+/
syn match llhdIntLiteral /0b[0-1]\+/

syn match llhdTimeLiteral /\d\+\(s\|ms\|us\|ns\|ps\|fs\|as\)/
syn match llhdTimeLiteral /\d\+\(d\|e\)/

syn match llhdLogicLiteral /"[UX01ZWLH-]\+"/

" Keywords
syn keyword llhdKeyword declare func proc entity
syn keyword llhdKeyword for low high rise fall both if

" Instructions
syn keyword llhdInstruction const alias insf inss extf exts mux
syn keyword llhdInstruction not and or xor shl shr
syn keyword llhdInstruction neg add sub smul sdiv smod srem umul udiv umod urem
syn keyword llhdInstruction eq neq slt sgt sle sge ult ugt ule uge
syn keyword llhdInstruction Flow phi br call ret wait halt
syn keyword llhdInstruction var ld st
syn keyword llhdInstruction sig prb drv
syn keyword llhdInstruction reg del con inst

" Names
syn match llhdName /[@%][a-zA-Z0-9_\.\\]\+/

" Operators
syn match llhdOperator "\(=\|x\|->\)"
syn match llhdOperator "\(\*\|\$\)"


hi def link llhdType         Type
hi def link llhdArrayType    Type
hi def link llhdStructType   Type
hi def link llhdKeyword      Keyword
hi def link llhdInstruction  Statement
hi def link llhdName         Identifier
hi def link llhdOperator     Operator
hi def link llhdDelimiter    Delimiter
hi def link llhdLabel        Repeat
hi def link llhdIntLiteral   Number
hi def link llhdTimeLiteral  Constant
hi def link llhdLogicLiteral String
hi def link llhdComment      Comment

let b:current_syntax = "llhd"
