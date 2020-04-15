if exists("b:current_syntax")
    finish
endif

syn case match

" Types
syn match   llhdType /\(void\|time\)[\*$]\=/
syn match   llhdType /[inl]\d\+[\*$]\=/

" Literals
syn match llhdTimeLiteral /\d\+\(s\|ms\|us\|ns\|ps\|fs\)/
syn match llhdTimeLiteral /\d\+\(d\|e\)/
syn match llhdIntLiteral /\d\+\(\s\|\n\)/
syn match llhdLogicLiteral /"[UX01ZWLH-]\+"/

" Keywords
syn keyword llhdKeyword declare func proc entity

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
syn match llhdGlobal /[@][a-zA-Z0-9_\.\\]\+/
syn match llhdLocal  /[%][a-zA-Z0-9_\.\\]\+/
syn match llhdAnon   /[%][0-9]\+/

" " Operators
syn match llhdOperator "\(=\|->\)"

" Other
syn match llhdLabel /[a-zA-Z0-9_\.\\]\+[:]/
syn match llhdDelimiter "\(,\|{\|}\|(\|)\)"
syn match llhdComment ";.*"


hi def link llhdType         Type
hi def link llhdKeyword      Keyword
hi def link llhdInstruction  Statement
hi def link llhdGlobal       Identifier
hi def link llhdLocal        Identifier
hi def link llhdAnon         Identifier
hi def link llhdOperator     Operator
hi def link llhdDelimiter    Delimiter
hi def link llhdLabel        Repeat
hi def link llhdIntLiteral   Number
hi def link llhdTimeLiteral  Constant
hi def link llhdLogicLiteral String
hi def link llhdComment      Comment

let b:current_syntax = "llhd"
