	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 1
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.file	1 "/Users/suchibratapatra/Desktop/DSA/Structure & Union" "2.Array_of_structure.c"
	.loc	1 4 0                           ## 2.Array_of_structure.c:4:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$4640, %eax                     ## imm = 0x1220
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -4612(%rbp)
Ltmp0:
	.loc	1 5 5 prologue_end              ## 2.Array_of_structure.c:5:5
	leaq	L_.str(%rip), %rdi
	callq	_system
	.loc	1 13 9                          ## 2.Array_of_structure.c:13:9
	movl	$2, -4616(%rbp)
Ltmp1:
	.loc	1 14 13                         ## 2.Array_of_structure.c:14:13
	movl	$0, -4620(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
Ltmp2:
	.loc	1 14 17 is_stmt 0               ## 2.Array_of_structure.c:14:17
	movl	-4620(%rbp), %eax
	.loc	1 14 18                         ## 2.Array_of_structure.c:14:18
	cmpl	-4616(%rbp), %eax
Ltmp3:
	.loc	1 14 5                          ## 2.Array_of_structure.c:14:5
	jg	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
Ltmp4:
	.loc	1 15 9 is_stmt 1                ## 2.Array_of_structure.c:15:9
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 16 21                         ## 2.Array_of_structure.c:16:21
	movslq	-4620(%rbp), %rax
	leaq	-4608(%rbp), %rsi
	imulq	$92, %rax, %rax
	addq	%rax, %rsi
	.loc	1 16 9 is_stmt 0                ## 2.Array_of_structure.c:16:9
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_scanf
	.loc	1 18 9 is_stmt 1                ## 2.Array_of_structure.c:18:9
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 19 14                         ## 2.Array_of_structure.c:19:14
	movslq	-4620(%rbp), %rax
	leaq	-4608(%rbp), %rdi
	imulq	$92, %rax, %rax
	addq	%rax, %rdi
	.loc	1 19 25 is_stmt 0               ## 2.Array_of_structure.c:19:25
	addq	$4, %rdi
	.loc	1 19 9                          ## 2.Array_of_structure.c:19:9
	callq	_gets
	.loc	1 22 9 is_stmt 1                ## 2.Array_of_structure.c:22:9
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 23 21                         ## 2.Array_of_structure.c:23:21
	movslq	-4620(%rbp), %rax
	leaq	-4608(%rbp), %rsi
	imulq	$92, %rax, %rax
	addq	%rax, %rsi
	.loc	1 23 32 is_stmt 0               ## 2.Array_of_structure.c:23:32
	addq	$84, %rsi
	.loc	1 23 9                          ## 2.Array_of_structure.c:23:9
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_scanf
	.loc	1 25 9 is_stmt 1                ## 2.Array_of_structure.c:25:9
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 26 14                         ## 2.Array_of_structure.c:26:14
	movslq	-4620(%rbp), %rcx
	leaq	-4608(%rbp), %rax
	imulq	$92, %rcx, %rcx
	addq	%rcx, %rax
	movsbq	88(%rax), %rdi
	.loc	1 26 9 is_stmt 0                ## 2.Array_of_structure.c:26:9
	callq	_gets
Ltmp5:
	.loc	1 28 17 is_stmt 1               ## 2.Array_of_structure.c:28:17
	movl	$0, -4624(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
Ltmp6:
	.loc	1 28 25 is_stmt 0               ## 2.Array_of_structure.c:28:25
	movl	-4624(%rbp), %eax
	.loc	1 28 26                         ## 2.Array_of_structure.c:28:26
	cmpl	-4616(%rbp), %eax
Ltmp7:
	.loc	1 28 9                          ## 2.Array_of_structure.c:28:9
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
Ltmp8:
	.loc	1 29 60 is_stmt 1               ## 2.Array_of_structure.c:29:60
	movl	-4620(%rbp), %esi
	.loc	1 29 61 is_stmt 0               ## 2.Array_of_structure.c:29:61
	addl	$1, %esi
	.loc	1 29 13                         ## 2.Array_of_structure.c:29:13
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 30 34 is_stmt 1               ## 2.Array_of_structure.c:30:34
	movslq	-4620(%rbp), %rcx
	leaq	-4608(%rbp), %rax
	imulq	$92, %rcx, %rcx
	addq	%rcx, %rax
	.loc	1 30 45 is_stmt 0               ## 2.Array_of_structure.c:30:45
	movl	(%rax), %esi
	.loc	1 30 13                         ## 2.Array_of_structure.c:30:13
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 31 32 is_stmt 1               ## 2.Array_of_structure.c:31:32
	movslq	-4620(%rbp), %rax
	leaq	-4608(%rbp), %rsi
	imulq	$92, %rax, %rax
	addq	%rax, %rsi
	.loc	1 31 43 is_stmt 0               ## 2.Array_of_structure.c:31:43
	addq	$4, %rsi
	.loc	1 31 13                         ## 2.Array_of_structure.c:31:13
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 32 13 is_stmt 1               ## 2.Array_of_structure.c:32:13
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 33 18                         ## 2.Array_of_structure.c:33:18
	movslq	-4620(%rbp), %rcx
	leaq	-4608(%rbp), %rax
	imulq	$92, %rcx, %rcx
	addq	%rcx, %rax
	movslq	84(%rax), %rdi
	.loc	1 33 13 is_stmt 0               ## 2.Array_of_structure.c:33:13
	callq	_puts
	.loc	1 34 13 is_stmt 1               ## 2.Array_of_structure.c:34:13
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 35 18                         ## 2.Array_of_structure.c:35:18
	movslq	-4620(%rbp), %rcx
	leaq	-4608(%rbp), %rax
	imulq	$92, %rcx, %rcx
	addq	%rcx, %rax
	movsbq	88(%rax), %rdi
	.loc	1 35 13 is_stmt 0               ## 2.Array_of_structure.c:35:13
	callq	_puts
Ltmp9:
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	.loc	1 28 43 is_stmt 1               ## 2.Array_of_structure.c:28:43
	movl	-4624(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4624(%rbp)
	.loc	1 28 9 is_stmt 0                ## 2.Array_of_structure.c:28:9
	jmp	LBB0_3
Ltmp10:
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	.loc	1 39 5 is_stmt 1                ## 2.Array_of_structure.c:39:5
	jmp	LBB0_7
Ltmp11:
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	.loc	1 14 36                         ## 2.Array_of_structure.c:14:36
	movl	-4620(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4620(%rbp)
	.loc	1 14 5 is_stmt 0                ## 2.Array_of_structure.c:14:5
	jmp	LBB0_1
Ltmp12:
LBB0_8:
	.loc	1 41 1 is_stmt 1                ## 2.Array_of_structure.c:41:1
	movl	-4612(%rbp), %eax
	movl	%eax, -4628(%rbp)               ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_10
## %bb.9:
	.loc	1 0 1 is_stmt 0                 ## 2.Array_of_structure.c:0:1
	movl	-4628(%rbp), %eax               ## 4-byte Reload
	.loc	1 41 1                          ## 2.Array_of_structure.c:41:1
	addq	$4640, %rsp                     ## imm = 0x1220
	popq	%rbp
	retq
LBB0_10:
	.loc	1 0 0                           ## 2.Array_of_structure.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp13:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"clear"

L_.str.1:                               ## @.str.1
	.asciz	"Enter Rollno:"

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"Enter the name :"

L_.str.4:                               ## @.str.4
	.asciz	"Enter the fees :"

L_.str.5:                               ## @.str.5
	.asciz	"Enter the DOB"

L_.str.6:                               ## @.str.6
	.asciz	"****** Details of Studnet %d ******* "

L_.str.7:                               ## @.str.7
	.asciz	"Roll No :%d"

L_.str.8:                               ## @.str.8
	.asciz	"Name : %s"

L_.str.9:                               ## @.str.9
	.asciz	"Fees :"

L_.str.10:                              ## @.str.10
	.asciz	"DOB :"

	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ## Abbreviation Code
	.byte	17                              ## DW_TAG_compile_unit
	.byte	1                               ## DW_CHILDREN_yes
	.byte	37                              ## DW_AT_producer
	.byte	14                              ## DW_FORM_strp
	.byte	19                              ## DW_AT_language
	.byte	5                               ## DW_FORM_data2
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.ascii	"\202|"                         ## DW_AT_LLVM_sysroot
	.byte	14                              ## DW_FORM_strp
	.ascii	"\357\177"                      ## DW_AT_APPLE_sdk
	.byte	14                              ## DW_FORM_strp
	.byte	16                              ## DW_AT_stmt_list
	.byte	23                              ## DW_FORM_sec_offset
	.byte	27                              ## DW_AT_comp_dir
	.byte	14                              ## DW_FORM_strp
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	2                               ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	3                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	4                               ## Abbreviation Code
	.byte	11                              ## DW_TAG_lexical_block
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	5                               ## Abbreviation Code
	.byte	19                              ## DW_TAG_structure_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	6                               ## Abbreviation Code
	.byte	13                              ## DW_TAG_member
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	56                              ## DW_AT_data_member_location
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	7                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	8                               ## Abbreviation Code
	.byte	1                               ## DW_TAG_array_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	9                               ## Abbreviation Code
	.byte	33                              ## DW_TAG_subrange_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	55                              ## DW_AT_count
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	10                              ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	0                               ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ## DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ## Address Size (in bytes)
	.byte	1                               ## Abbrev [1] 0xb:0x100 DW_TAG_compile_unit
	.long	0                               ## DW_AT_producer
	.short	12                              ## DW_AT_language
	.long	49                              ## DW_AT_name
	.long	72                              ## DW_AT_LLVM_sysroot
	.long	124                             ## DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset2
	.long	135                             ## DW_AT_comp_dir
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset3, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset3
	.byte	2                               ## Abbrev [2] 0x32:0xab DW_TAG_subprogram
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset4
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	188                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	4                               ## DW_AT_decl_line
	.long	221                             ## DW_AT_type
                                        ## DW_AT_external
	.byte	3                               ## Abbrev [3] 0x4b:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\200\\"
	.long	197                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	12                              ## DW_AT_decl_line
	.long	228                             ## DW_AT_type
	.byte	3                               ## Abbrev [3] 0x5a:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\370["
	.long	252                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	13                              ## DW_AT_decl_line
	.long	221                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x69:0x3a DW_TAG_lexical_block
	.quad	Ltmp1                           ## DW_AT_low_pc
.set Lset5, Ltmp12-Ltmp1                ## DW_AT_high_pc
	.long	Lset5
	.byte	3                               ## Abbrev [3] 0x76:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\364["
	.long	267                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	14                              ## DW_AT_decl_line
	.long	221                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x85:0x1d DW_TAG_lexical_block
	.quad	Ltmp5                           ## DW_AT_low_pc
.set Lset6, Ltmp10-Ltmp5                ## DW_AT_high_pc
	.long	Lset6
	.byte	3                               ## Abbrev [3] 0x92:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\360["
	.long	269                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	28                              ## DW_AT_decl_line
	.long	221                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0xa3:0x39 DW_TAG_structure_type
	.long	197                             ## DW_AT_name
	.byte	92                              ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	6                               ## DW_AT_decl_line
	.byte	6                               ## Abbrev [6] 0xab:0xc DW_TAG_member
	.long	205                             ## DW_AT_name
	.long	221                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	8                               ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	6                               ## Abbrev [6] 0xb7:0xc DW_TAG_member
	.long	213                             ## DW_AT_name
	.long	240                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	9                               ## DW_AT_decl_line
	.byte	4                               ## DW_AT_data_member_location
	.byte	6                               ## Abbrev [6] 0xc3:0xc DW_TAG_member
	.long	243                             ## DW_AT_name
	.long	221                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	10                              ## DW_AT_decl_line
	.byte	84                              ## DW_AT_data_member_location
	.byte	6                               ## Abbrev [6] 0xcf:0xc DW_TAG_member
	.long	248                             ## DW_AT_name
	.long	252                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	11                              ## DW_AT_decl_line
	.byte	88                              ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	7                               ## Abbrev [7] 0xdd:0x7 DW_TAG_base_type
	.long	193                             ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	8                               ## Abbrev [8] 0xe4:0xc DW_TAG_array_type
	.long	163                             ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0xe9:0x6 DW_TAG_subrange_type
	.long	259                             ## DW_AT_type
	.byte	50                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	8                               ## Abbrev [8] 0xf0:0xc DW_TAG_array_type
	.long	252                             ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0xf5:0x6 DW_TAG_subrange_type
	.long	259                             ## DW_AT_type
	.byte	80                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	7                               ## Abbrev [7] 0xfc:0x7 DW_TAG_base_type
	.long	218                             ## DW_AT_name
	.byte	6                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	10                              ## Abbrev [10] 0x103:0x7 DW_TAG_base_type
	.long	223                             ## DW_AT_name
	.byte	8                               ## DW_AT_byte_size
	.byte	7                               ## DW_AT_encoding
	.byte	0                               ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 14.0.0 (clang-1400.0.29.202)" ## string offset=0
	.asciz	"2.Array_of_structure.c"        ## string offset=49
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ## string offset=72
	.asciz	"MacOSX.sdk"                    ## string offset=124
	.asciz	"/Users/suchibratapatra/Desktop/DSA/Structure & Union" ## string offset=135
	.asciz	"main"                          ## string offset=188
	.asciz	"int"                           ## string offset=193
	.asciz	"student"                       ## string offset=197
	.asciz	"roll_no"                       ## string offset=205
	.asciz	"name"                          ## string offset=213
	.asciz	"char"                          ## string offset=218
	.asciz	"__ARRAY_SIZE_TYPE__"           ## string offset=223
	.asciz	"fees"                          ## string offset=243
	.asciz	"dob"                           ## string offset=248
	.asciz	"no_of_students"                ## string offset=252
	.asciz	"i"                             ## string offset=267
	.asciz	"j"                             ## string offset=269
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	1                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	0                               ## Bucket 0
	.long	2090499946                      ## Hash in Bucket 0
.set Lset7, LNames0-Lnames_begin        ## Offset in Bucket 0
	.long	Lset7
LNames0:
	.long	188                             ## main
	.long	1                               ## Num DIEs
	.long	50
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	4                               ## Header Bucket Count
	.long	4                               ## Header Hash Count
	.long	20                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	3                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.short	3                               ## DW_ATOM_die_tag
	.short	5                               ## DW_FORM_data2
	.short	4                               ## DW_ATOM_type_flags
	.short	11                              ## DW_FORM_data1
	.long	0                               ## Bucket 0
	.long	-1                              ## Bucket 1
	.long	-1                              ## Bucket 2
	.long	2                               ## Bucket 3
	.long	193495088                       ## Hash in Bucket 0
	.long	-1354951124                     ## Hash in Bucket 0
	.long	2090147939                      ## Hash in Bucket 3
	.long	-594775205                      ## Hash in Bucket 3
.set Lset8, Ltypes2-Ltypes_begin        ## Offset in Bucket 0
	.long	Lset8
.set Lset9, Ltypes1-Ltypes_begin        ## Offset in Bucket 0
	.long	Lset9
.set Lset10, Ltypes3-Ltypes_begin       ## Offset in Bucket 3
	.long	Lset10
.set Lset11, Ltypes0-Ltypes_begin       ## Offset in Bucket 3
	.long	Lset11
Ltypes2:
	.long	193                             ## int
	.long	1                               ## Num DIEs
	.long	221
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	197                             ## student
	.long	1                               ## Num DIEs
	.long	163
	.short	19
	.byte	0
	.long	0
Ltypes3:
	.long	218                             ## char
	.long	1                               ## Num DIEs
	.long	252
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	223                             ## __ARRAY_SIZE_TYPE__
	.long	1                               ## Num DIEs
	.long	259
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
