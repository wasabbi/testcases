
test2:     file format elf64-x86-64


Disassembly of section .text:

0000000012345678 <_start-0x8>:
    12345678:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1234567f:	00 

0000000012345680 <_start>:
    12345680:	31 ed                	xor    %ebp,%ebp
    12345682:	49 89 d1             	mov    %rdx,%r9
    12345685:	5e                   	pop    %rsi
    12345686:	48 89 e2             	mov    %rsp,%rdx
    12345689:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1234568d:	50                   	push   %rax
    1234568e:	54                   	push   %rsp
    1234568f:	49 c7 c0 50 5a 34 12 	mov    $0x12345a50,%r8
    12345696:	48 c7 c1 e0 59 34 12 	mov    $0x123459e0,%rcx
    1234569d:	48 c7 c7 92 58 34 12 	mov    $0x12345892,%rdi
    123456a4:	ff 15 46 09 20 00    	callq  *0x200946(%rip)        # 12545ff0 <__libc_start_main@GLIBC_2.2.5>
    123456aa:	f4                   	hlt    
    123456ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000123456b0 <_dl_relocate_static_pie>:
    123456b0:	f3 c3                	repz retq 
    123456b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123456b9:	00 00 00 
    123456bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000123456c0 <deregister_tm_clones>:
    123456c0:	b8 5f 60 54 12       	mov    $0x1254605f,%eax
    123456c5:	55                   	push   %rbp
    123456c6:	48 2d 58 60 54 12    	sub    $0x12546058,%rax
    123456cc:	48 83 f8 0e          	cmp    $0xe,%rax
    123456d0:	48 89 e5             	mov    %rsp,%rbp
    123456d3:	76 1b                	jbe    123456f0 <deregister_tm_clones+0x30>
    123456d5:	b8 00 00 00 00       	mov    $0x0,%eax
    123456da:	48 85 c0             	test   %rax,%rax
    123456dd:	74 11                	je     123456f0 <deregister_tm_clones+0x30>
    123456df:	5d                   	pop    %rbp
    123456e0:	bf 58 60 54 12       	mov    $0x12546058,%edi
    123456e5:	ff e0                	jmpq   *%rax
    123456e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    123456ee:	00 00 
    123456f0:	5d                   	pop    %rbp
    123456f1:	c3                   	retq   
    123456f2:	0f 1f 40 00          	nopl   0x0(%rax)
    123456f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123456fd:	00 00 00 

0000000012345700 <register_tm_clones>:
    12345700:	be 58 60 54 12       	mov    $0x12546058,%esi
    12345705:	55                   	push   %rbp
    12345706:	48 81 ee 58 60 54 12 	sub    $0x12546058,%rsi
    1234570d:	48 c1 fe 03          	sar    $0x3,%rsi
    12345711:	48 89 e5             	mov    %rsp,%rbp
    12345714:	48 89 f0             	mov    %rsi,%rax
    12345717:	48 c1 e8 3f          	shr    $0x3f,%rax
    1234571b:	48 01 c6             	add    %rax,%rsi
    1234571e:	48 d1 fe             	sar    %rsi
    12345721:	74 15                	je     12345738 <register_tm_clones+0x38>
    12345723:	b8 00 00 00 00       	mov    $0x0,%eax
    12345728:	48 85 c0             	test   %rax,%rax
    1234572b:	74 0b                	je     12345738 <register_tm_clones+0x38>
    1234572d:	5d                   	pop    %rbp
    1234572e:	bf 58 60 54 12       	mov    $0x12546058,%edi
    12345733:	ff e0                	jmpq   *%rax
    12345735:	0f 1f 00             	nopl   (%rax)
    12345738:	5d                   	pop    %rbp
    12345739:	c3                   	retq   
    1234573a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000012345740 <__do_global_dtors_aux>:
    12345740:	80 3d 21 09 20 00 00 	cmpb   $0x0,0x200921(%rip)        # 12546068 <completed.7667>
    12345747:	75 11                	jne    1234575a <__do_global_dtors_aux+0x1a>
    12345749:	55                   	push   %rbp
    1234574a:	48 89 e5             	mov    %rsp,%rbp
    1234574d:	e8 6e ff ff ff       	callq  123456c0 <deregister_tm_clones>
    12345752:	5d                   	pop    %rbp
    12345753:	c6 05 0e 09 20 00 01 	movb   $0x1,0x20090e(%rip)        # 12546068 <completed.7667>
    1234575a:	f3 c3                	repz retq 
    1234575c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000012345760 <frame_dummy>:
    12345760:	bf 08 5e 54 12       	mov    $0x12545e08,%edi
    12345765:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    12345769:	75 05                	jne    12345770 <frame_dummy+0x10>
    1234576b:	eb 93                	jmp    12345700 <register_tm_clones>
    1234576d:	0f 1f 00             	nopl   (%rax)
    12345770:	b8 00 00 00 00       	mov    $0x0,%eax
    12345775:	48 85 c0             	test   %rax,%rax
    12345778:	74 f1                	je     1234576b <frame_dummy+0xb>
    1234577a:	55                   	push   %rbp
    1234577b:	48 89 e5             	mov    %rsp,%rbp
    1234577e:	ff d0                	callq  *%rax
    12345780:	5d                   	pop    %rbp
    12345781:	e9 7a ff ff ff       	jmpq   12345700 <register_tm_clones>

0000000012345786 <A>:
    12345786:	55                   	push   %rbp
    12345787:	48 89 e5             	mov    %rsp,%rbp
    1234578a:	48 83 ec 10          	sub    $0x10,%rsp
    1234578e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    12345795:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1234579c:	eb 04                	jmp    123457a2 <A+0x1c>
    1234579e:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    123457a2:	81 7d f8 ff ff ff 03 	cmpl   $0x3ffffff,-0x8(%rbp)
    123457a9:	7e f3                	jle    1234579e <A+0x18>
    123457ab:	c7 05 b7 08 20 00 01 	movl   $0x1,0x2008b7(%rip)        # 1254606c <x>
    123457b2:	00 00 00 
    123457b5:	8b 45 fc             	mov    -0x4(%rbp),%eax
    123457b8:	89 c6                	mov    %eax,%esi
    123457ba:	48 8d 3d a3 02 00 00 	lea    0x2a3(%rip),%rdi        # 12345a64 <_IO_stdin_used+0x4>
    123457c1:	b8 00 00 00 00       	mov    $0x0,%eax
    123457c6:	e8 55 ae 0b ee       	callq  400620 <printf@plt>
    123457cb:	8b 05 9b 08 20 00    	mov    0x20089b(%rip),%eax        # 1254606c <x>
    123457d1:	89 45 fc             	mov    %eax,-0x4(%rbp)
    123457d4:	8b 45 fc             	mov    -0x4(%rbp),%eax
    123457d7:	89 c6                	mov    %eax,%esi
    123457d9:	48 8d 3d 84 02 00 00 	lea    0x284(%rip),%rdi        # 12345a64 <_IO_stdin_used+0x4>
    123457e0:	b8 00 00 00 00       	mov    $0x0,%eax
    123457e5:	e8 36 ae 0b ee       	callq  400620 <printf@plt>
    123457ea:	c7 05 78 08 20 00 02 	movl   $0x2,0x200878(%rip)        # 1254606c <x>
    123457f1:	00 00 00 
    123457f4:	8b 45 fc             	mov    -0x4(%rbp),%eax
    123457f7:	89 c6                	mov    %eax,%esi
    123457f9:	48 8d 3d 64 02 00 00 	lea    0x264(%rip),%rdi        # 12345a64 <_IO_stdin_used+0x4>
    12345800:	b8 00 00 00 00       	mov    $0x0,%eax
    12345805:	e8 16 ae 0b ee       	callq  400620 <printf@plt>
    1234580a:	8b 05 5c 08 20 00    	mov    0x20085c(%rip),%eax        # 1254606c <x>
    12345810:	89 45 fc             	mov    %eax,-0x4(%rbp)
    12345813:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12345816:	89 c6                	mov    %eax,%esi
    12345818:	48 8d 3d 45 02 00 00 	lea    0x245(%rip),%rdi        # 12345a64 <_IO_stdin_used+0x4>
    1234581f:	b8 00 00 00 00       	mov    $0x0,%eax
    12345824:	e8 f7 ad 0b ee       	callq  400620 <printf@plt>
    12345829:	90                   	nop
    1234582a:	c9                   	leaveq 
    1234582b:	c3                   	retq   

000000001234582c <B>:
    1234582c:	55                   	push   %rbp
    1234582d:	48 89 e5             	mov    %rsp,%rbp
    12345830:	8b 05 36 08 20 00    	mov    0x200836(%rip),%eax        # 1254606c <x>
    12345836:	89 c6                	mov    %eax,%esi
    12345838:	48 8d 3d 31 02 00 00 	lea    0x231(%rip),%rdi        # 12345a70 <_IO_stdin_used+0x10>
    1234583f:	b8 00 00 00 00       	mov    $0x0,%eax
    12345844:	e8 d7 ad 0b ee       	callq  400620 <printf@plt>
    12345849:	c7 05 19 08 20 00 0a 	movl   $0xa,0x200819(%rip)        # 1254606c <x>
    12345850:	00 00 00 
    12345853:	8b 05 13 08 20 00    	mov    0x200813(%rip),%eax        # 1254606c <x>
    12345859:	89 c6                	mov    %eax,%esi
    1234585b:	48 8d 3d 0e 02 00 00 	lea    0x20e(%rip),%rdi        # 12345a70 <_IO_stdin_used+0x10>
    12345862:	b8 00 00 00 00       	mov    $0x0,%eax
    12345867:	e8 b4 ad 0b ee       	callq  400620 <printf@plt>
    1234586c:	c7 05 f6 07 20 00 14 	movl   $0x14,0x2007f6(%rip)        # 1254606c <x>
    12345873:	00 00 00 
    12345876:	8b 05 f0 07 20 00    	mov    0x2007f0(%rip),%eax        # 1254606c <x>
    1234587c:	89 c6                	mov    %eax,%esi
    1234587e:	48 8d 3d eb 01 00 00 	lea    0x1eb(%rip),%rdi        # 12345a70 <_IO_stdin_used+0x10>
    12345885:	b8 00 00 00 00       	mov    $0x0,%eax
    1234588a:	e8 91 ad 0b ee       	callq  400620 <printf@plt>
    1234588f:	90                   	nop
    12345890:	5d                   	pop    %rbp
    12345891:	c3                   	retq   

0000000012345892 <main>:
    12345892:	55                   	push   %rbp
    12345893:	48 89 e5             	mov    %rsp,%rbp
    12345896:	48 83 ec 20          	sub    $0x20,%rsp
    1234589a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    123458a1:	00 00 
    123458a3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    123458a7:	31 c0                	xor    %eax,%eax
    123458a9:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    123458ad:	b9 00 00 00 00       	mov    $0x0,%ecx
    123458b2:	48 8d 15 cd fe ff ff 	lea    -0x133(%rip),%rdx        # 12345786 <A>
    123458b9:	be 00 00 00 00       	mov    $0x0,%esi
    123458be:	48 89 c7             	mov    %rax,%rdi
    123458c1:	e8 2a ad 0b ee       	callq  4005f0 <pthread_create@plt>
    123458c6:	85 c0                	test   %eax,%eax
    123458c8:	74 2a                	je     123458f4 <main+0x62>
    123458ca:	48 8b 05 8f 07 20 00 	mov    0x20078f(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123458d1:	48 89 c1             	mov    %rax,%rcx
    123458d4:	ba 16 00 00 00       	mov    $0x16,%edx
    123458d9:	be 01 00 00 00       	mov    $0x1,%esi
    123458de:	48 8d 3d 97 01 00 00 	lea    0x197(%rip),%rdi        # 12345a7c <_IO_stdin_used+0x1c>
    123458e5:	e8 56 ad 0b ee       	callq  400640 <fwrite@plt>
    123458ea:	b8 01 00 00 00       	mov    $0x1,%eax
    123458ef:	e9 d4 00 00 00       	jmpq   123459c8 <main+0x136>
    123458f4:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    123458f8:	b9 00 00 00 00       	mov    $0x0,%ecx
    123458fd:	48 8d 15 28 ff ff ff 	lea    -0xd8(%rip),%rdx        # 1234582c <B>
    12345904:	be 00 00 00 00       	mov    $0x0,%esi
    12345909:	48 89 c7             	mov    %rax,%rdi
    1234590c:	e8 df ac 0b ee       	callq  4005f0 <pthread_create@plt>
    12345911:	85 c0                	test   %eax,%eax
    12345913:	74 2a                	je     1234593f <main+0xad>
    12345915:	48 8b 05 44 07 20 00 	mov    0x200744(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    1234591c:	48 89 c1             	mov    %rax,%rcx
    1234591f:	ba 16 00 00 00       	mov    $0x16,%edx
    12345924:	be 01 00 00 00       	mov    $0x1,%esi
    12345929:	48 8d 3d 4c 01 00 00 	lea    0x14c(%rip),%rdi        # 12345a7c <_IO_stdin_used+0x1c>
    12345930:	e8 0b ad 0b ee       	callq  400640 <fwrite@plt>
    12345935:	b8 01 00 00 00       	mov    $0x1,%eax
    1234593a:	e9 89 00 00 00       	jmpq   123459c8 <main+0x136>
    1234593f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12345943:	be 00 00 00 00       	mov    $0x0,%esi
    12345948:	48 89 c7             	mov    %rax,%rdi
    1234594b:	e8 e0 ac 0b ee       	callq  400630 <pthread_join@plt>
    12345950:	85 c0                	test   %eax,%eax
    12345952:	74 27                	je     1234597b <main+0xe9>
    12345954:	48 8b 05 05 07 20 00 	mov    0x200705(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    1234595b:	48 89 c1             	mov    %rax,%rcx
    1234595e:	ba 15 00 00 00       	mov    $0x15,%edx
    12345963:	be 01 00 00 00       	mov    $0x1,%esi
    12345968:	48 8d 3d 24 01 00 00 	lea    0x124(%rip),%rdi        # 12345a93 <_IO_stdin_used+0x33>
    1234596f:	e8 cc ac 0b ee       	callq  400640 <fwrite@plt>
    12345974:	b8 02 00 00 00       	mov    $0x2,%eax
    12345979:	eb 4d                	jmp    123459c8 <main+0x136>
    1234597b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1234597f:	be 00 00 00 00       	mov    $0x0,%esi
    12345984:	48 89 c7             	mov    %rax,%rdi
    12345987:	e8 a4 ac 0b ee       	callq  400630 <pthread_join@plt>
    1234598c:	85 c0                	test   %eax,%eax
    1234598e:	74 27                	je     123459b7 <main+0x125>
    12345990:	48 8b 05 c9 06 20 00 	mov    0x2006c9(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345997:	48 89 c1             	mov    %rax,%rcx
    1234599a:	ba 15 00 00 00       	mov    $0x15,%edx
    1234599f:	be 01 00 00 00       	mov    $0x1,%esi
    123459a4:	48 8d 3d e8 00 00 00 	lea    0xe8(%rip),%rdi        # 12345a93 <_IO_stdin_used+0x33>
    123459ab:	e8 90 ac 0b ee       	callq  400640 <fwrite@plt>
    123459b0:	b8 02 00 00 00       	mov    $0x2,%eax
    123459b5:	eb 11                	jmp    123459c8 <main+0x136>
    123459b7:	48 8d 3d eb 00 00 00 	lea    0xeb(%rip),%rdi        # 12345aa9 <_IO_stdin_used+0x49>
    123459be:	e8 3d ac 0b ee       	callq  400600 <puts@plt>
    123459c3:	b8 00 00 00 00       	mov    $0x0,%eax
    123459c8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    123459cc:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    123459d3:	00 00 
    123459d5:	74 05                	je     123459dc <main+0x14a>
    123459d7:	e8 34 ac 0b ee       	callq  400610 <__stack_chk_fail@plt>
    123459dc:	c9                   	leaveq 
    123459dd:	c3                   	retq   
    123459de:	66 90                	xchg   %ax,%ax

00000000123459e0 <__libc_csu_init>:
    123459e0:	41 57                	push   %r15
    123459e2:	41 56                	push   %r14
    123459e4:	49 89 d7             	mov    %rdx,%r15
    123459e7:	41 55                	push   %r13
    123459e9:	41 54                	push   %r12
    123459eb:	4c 8d 25 06 04 20 00 	lea    0x200406(%rip),%r12        # 12545df8 <__frame_dummy_init_array_entry>
    123459f2:	55                   	push   %rbp
    123459f3:	48 8d 2d 06 04 20 00 	lea    0x200406(%rip),%rbp        # 12545e00 <__init_array_end>
    123459fa:	53                   	push   %rbx
    123459fb:	41 89 fd             	mov    %edi,%r13d
    123459fe:	49 89 f6             	mov    %rsi,%r14
    12345a01:	4c 29 e5             	sub    %r12,%rbp
    12345a04:	48 83 ec 08          	sub    $0x8,%rsp
    12345a08:	48 c1 fd 03          	sar    $0x3,%rbp
    12345a0c:	e8 af ab 0b ee       	callq  4005c0 <_init>
    12345a11:	48 85 ed             	test   %rbp,%rbp
    12345a14:	74 20                	je     12345a36 <__libc_csu_init+0x56>
    12345a16:	31 db                	xor    %ebx,%ebx
    12345a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12345a1f:	00 
    12345a20:	4c 89 fa             	mov    %r15,%rdx
    12345a23:	4c 89 f6             	mov    %r14,%rsi
    12345a26:	44 89 ef             	mov    %r13d,%edi
    12345a29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    12345a2d:	48 83 c3 01          	add    $0x1,%rbx
    12345a31:	48 39 dd             	cmp    %rbx,%rbp
    12345a34:	75 ea                	jne    12345a20 <__libc_csu_init+0x40>
    12345a36:	48 83 c4 08          	add    $0x8,%rsp
    12345a3a:	5b                   	pop    %rbx
    12345a3b:	5d                   	pop    %rbp
    12345a3c:	41 5c                	pop    %r12
    12345a3e:	41 5d                	pop    %r13
    12345a40:	41 5e                	pop    %r14
    12345a42:	41 5f                	pop    %r15
    12345a44:	c3                   	retq   
    12345a45:	90                   	nop
    12345a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12345a4d:	00 00 00 

0000000012345a50 <__libc_csu_fini>:
    12345a50:	f3 c3                	repz retq 

Disassembly of section .init:

00000000004005c0 <_init>:
  4005c0:	48 83 ec 08          	sub    $0x8,%rsp
  4005c4:	48 8b 05 2d 5a 14 12 	mov    0x12145a2d(%rip),%rax        # 12545ff8 <__gmon_start__>
  4005cb:	48 85 c0             	test   %rax,%rax
  4005ce:	74 02                	je     4005d2 <_init+0x12>
  4005d0:	ff d0                	callq  *%rax
  4005d2:	48 83 c4 08          	add    $0x8,%rsp
  4005d6:	c3                   	retq   

Disassembly of section .plt:

00000000004005e0 <.plt>:
  4005e0:	ff 35 22 5a 14 12    	pushq  0x12145a22(%rip)        # 12546008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005e6:	ff 25 24 5a 14 12    	jmpq   *0x12145a24(%rip)        # 12546010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005f0 <pthread_create@plt>:
  4005f0:	ff 25 22 5a 14 12    	jmpq   *0x12145a22(%rip)        # 12546018 <pthread_create@GLIBC_2.2.5>
  4005f6:	68 00 00 00 00       	pushq  $0x0
  4005fb:	e9 e0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400600 <puts@plt>:
  400600:	ff 25 1a 5a 14 12    	jmpq   *0x12145a1a(%rip)        # 12546020 <puts@GLIBC_2.2.5>
  400606:	68 01 00 00 00       	pushq  $0x1
  40060b:	e9 d0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400610 <__stack_chk_fail@plt>:
  400610:	ff 25 12 5a 14 12    	jmpq   *0x12145a12(%rip)        # 12546028 <__stack_chk_fail@GLIBC_2.4>
  400616:	68 02 00 00 00       	pushq  $0x2
  40061b:	e9 c0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400620 <printf@plt>:
  400620:	ff 25 0a 5a 14 12    	jmpq   *0x12145a0a(%rip)        # 12546030 <printf@GLIBC_2.2.5>
  400626:	68 03 00 00 00       	pushq  $0x3
  40062b:	e9 b0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400630 <pthread_join@plt>:
  400630:	ff 25 02 5a 14 12    	jmpq   *0x12145a02(%rip)        # 12546038 <pthread_join@GLIBC_2.2.5>
  400636:	68 04 00 00 00       	pushq  $0x4
  40063b:	e9 a0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400640 <fwrite@plt>:
  400640:	ff 25 fa 59 14 12    	jmpq   *0x121459fa(%rip)        # 12546040 <fwrite@GLIBC_2.2.5>
  400646:	68 05 00 00 00       	pushq  $0x5
  40064b:	e9 90 ff ff ff       	jmpq   4005e0 <.plt>

Disassembly of section .fini:

0000000012345a54 <_fini>:
    12345a54:	48 83 ec 08          	sub    $0x8,%rsp
    12345a58:	48 83 c4 08          	add    $0x8,%rsp
    12345a5c:	c3                   	retq   
