
test_scheduling:     file format elf64-x86-64


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
    1234568f:	49 c7 c0 e0 59 34 12 	mov    $0x123459e0,%r8
    12345696:	48 c7 c1 70 59 34 12 	mov    $0x12345970,%rcx
    1234569d:	48 c7 c7 1a 58 34 12 	mov    $0x1234581a,%rdi
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
    123457b5:	8b 05 b1 08 20 00    	mov    0x2008b1(%rip),%eax        # 1254606c <x>
    123457bb:	89 45 fc             	mov    %eax,-0x4(%rbp)
    123457be:	8b 45 fc             	mov    -0x4(%rbp),%eax
    123457c1:	89 c6                	mov    %eax,%esi
    123457c3:	48 8d 3d 2a 02 00 00 	lea    0x22a(%rip),%rdi        # 123459f4 <_IO_stdin_used+0x4>
    123457ca:	b8 00 00 00 00       	mov    $0x0,%eax
    123457cf:	e8 4c ae 0b ee       	callq  400620 <printf@plt>
    123457d4:	90                   	nop
    123457d5:	c9                   	leaveq 
    123457d6:	c3                   	retq   

00000000123457d7 <B>:
    123457d7:	55                   	push   %rbp
    123457d8:	48 89 e5             	mov    %rsp,%rbp
    123457db:	8b 05 8b 08 20 00    	mov    0x20088b(%rip),%eax        # 1254606c <x>
    123457e1:	89 c6                	mov    %eax,%esi
    123457e3:	48 8d 3d 16 02 00 00 	lea    0x216(%rip),%rdi        # 12345a00 <_IO_stdin_used+0x10>
    123457ea:	b8 00 00 00 00       	mov    $0x0,%eax
    123457ef:	e8 2c ae 0b ee       	callq  400620 <printf@plt>
    123457f4:	c7 05 6e 08 20 00 14 	movl   $0x14,0x20086e(%rip)        # 1254606c <x>
    123457fb:	00 00 00 
    123457fe:	8b 05 68 08 20 00    	mov    0x200868(%rip),%eax        # 1254606c <x>
    12345804:	89 c6                	mov    %eax,%esi
    12345806:	48 8d 3d f3 01 00 00 	lea    0x1f3(%rip),%rdi        # 12345a00 <_IO_stdin_used+0x10>
    1234580d:	b8 00 00 00 00       	mov    $0x0,%eax
    12345812:	e8 09 ae 0b ee       	callq  400620 <printf@plt>
    12345817:	90                   	nop
    12345818:	5d                   	pop    %rbp
    12345819:	c3                   	retq   

000000001234581a <main>:
    1234581a:	55                   	push   %rbp
    1234581b:	48 89 e5             	mov    %rsp,%rbp
    1234581e:	48 83 ec 20          	sub    $0x20,%rsp
    12345822:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12345829:	00 00 
    1234582b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1234582f:	31 c0                	xor    %eax,%eax
    12345831:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    12345835:	b9 00 00 00 00       	mov    $0x0,%ecx
    1234583a:	48 8d 15 45 ff ff ff 	lea    -0xbb(%rip),%rdx        # 12345786 <A>
    12345841:	be 00 00 00 00       	mov    $0x0,%esi
    12345846:	48 89 c7             	mov    %rax,%rdi
    12345849:	e8 a2 ad 0b ee       	callq  4005f0 <pthread_create@plt>
    1234584e:	85 c0                	test   %eax,%eax
    12345850:	74 2a                	je     1234587c <main+0x62>
    12345852:	48 8b 05 07 08 20 00 	mov    0x200807(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345859:	48 89 c1             	mov    %rax,%rcx
    1234585c:	ba 16 00 00 00       	mov    $0x16,%edx
    12345861:	be 01 00 00 00       	mov    $0x1,%esi
    12345866:	48 8d 3d 9f 01 00 00 	lea    0x19f(%rip),%rdi        # 12345a0c <_IO_stdin_used+0x1c>
    1234586d:	e8 ce ad 0b ee       	callq  400640 <fwrite@plt>
    12345872:	b8 01 00 00 00       	mov    $0x1,%eax
    12345877:	e9 d4 00 00 00       	jmpq   12345950 <main+0x136>
    1234587c:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    12345880:	b9 00 00 00 00       	mov    $0x0,%ecx
    12345885:	48 8d 15 4b ff ff ff 	lea    -0xb5(%rip),%rdx        # 123457d7 <B>
    1234588c:	be 00 00 00 00       	mov    $0x0,%esi
    12345891:	48 89 c7             	mov    %rax,%rdi
    12345894:	e8 57 ad 0b ee       	callq  4005f0 <pthread_create@plt>
    12345899:	85 c0                	test   %eax,%eax
    1234589b:	74 2a                	je     123458c7 <main+0xad>
    1234589d:	48 8b 05 bc 07 20 00 	mov    0x2007bc(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123458a4:	48 89 c1             	mov    %rax,%rcx
    123458a7:	ba 16 00 00 00       	mov    $0x16,%edx
    123458ac:	be 01 00 00 00       	mov    $0x1,%esi
    123458b1:	48 8d 3d 54 01 00 00 	lea    0x154(%rip),%rdi        # 12345a0c <_IO_stdin_used+0x1c>
    123458b8:	e8 83 ad 0b ee       	callq  400640 <fwrite@plt>
    123458bd:	b8 01 00 00 00       	mov    $0x1,%eax
    123458c2:	e9 89 00 00 00       	jmpq   12345950 <main+0x136>
    123458c7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    123458cb:	be 00 00 00 00       	mov    $0x0,%esi
    123458d0:	48 89 c7             	mov    %rax,%rdi
    123458d3:	e8 58 ad 0b ee       	callq  400630 <pthread_join@plt>
    123458d8:	85 c0                	test   %eax,%eax
    123458da:	74 27                	je     12345903 <main+0xe9>
    123458dc:	48 8b 05 7d 07 20 00 	mov    0x20077d(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123458e3:	48 89 c1             	mov    %rax,%rcx
    123458e6:	ba 15 00 00 00       	mov    $0x15,%edx
    123458eb:	be 01 00 00 00       	mov    $0x1,%esi
    123458f0:	48 8d 3d 2c 01 00 00 	lea    0x12c(%rip),%rdi        # 12345a23 <_IO_stdin_used+0x33>
    123458f7:	e8 44 ad 0b ee       	callq  400640 <fwrite@plt>
    123458fc:	b8 02 00 00 00       	mov    $0x2,%eax
    12345901:	eb 4d                	jmp    12345950 <main+0x136>
    12345903:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    12345907:	be 00 00 00 00       	mov    $0x0,%esi
    1234590c:	48 89 c7             	mov    %rax,%rdi
    1234590f:	e8 1c ad 0b ee       	callq  400630 <pthread_join@plt>
    12345914:	85 c0                	test   %eax,%eax
    12345916:	74 27                	je     1234593f <main+0x125>
    12345918:	48 8b 05 41 07 20 00 	mov    0x200741(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    1234591f:	48 89 c1             	mov    %rax,%rcx
    12345922:	ba 15 00 00 00       	mov    $0x15,%edx
    12345927:	be 01 00 00 00       	mov    $0x1,%esi
    1234592c:	48 8d 3d f0 00 00 00 	lea    0xf0(%rip),%rdi        # 12345a23 <_IO_stdin_used+0x33>
    12345933:	e8 08 ad 0b ee       	callq  400640 <fwrite@plt>
    12345938:	b8 02 00 00 00       	mov    $0x2,%eax
    1234593d:	eb 11                	jmp    12345950 <main+0x136>
    1234593f:	48 8d 3d f3 00 00 00 	lea    0xf3(%rip),%rdi        # 12345a39 <_IO_stdin_used+0x49>
    12345946:	e8 b5 ac 0b ee       	callq  400600 <puts@plt>
    1234594b:	b8 00 00 00 00       	mov    $0x0,%eax
    12345950:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12345954:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    1234595b:	00 00 
    1234595d:	74 05                	je     12345964 <main+0x14a>
    1234595f:	e8 ac ac 0b ee       	callq  400610 <__stack_chk_fail@plt>
    12345964:	c9                   	leaveq 
    12345965:	c3                   	retq   
    12345966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1234596d:	00 00 00 

0000000012345970 <__libc_csu_init>:
    12345970:	41 57                	push   %r15
    12345972:	41 56                	push   %r14
    12345974:	49 89 d7             	mov    %rdx,%r15
    12345977:	41 55                	push   %r13
    12345979:	41 54                	push   %r12
    1234597b:	4c 8d 25 76 04 20 00 	lea    0x200476(%rip),%r12        # 12545df8 <__frame_dummy_init_array_entry>
    12345982:	55                   	push   %rbp
    12345983:	48 8d 2d 76 04 20 00 	lea    0x200476(%rip),%rbp        # 12545e00 <__init_array_end>
    1234598a:	53                   	push   %rbx
    1234598b:	41 89 fd             	mov    %edi,%r13d
    1234598e:	49 89 f6             	mov    %rsi,%r14
    12345991:	4c 29 e5             	sub    %r12,%rbp
    12345994:	48 83 ec 08          	sub    $0x8,%rsp
    12345998:	48 c1 fd 03          	sar    $0x3,%rbp
    1234599c:	e8 1f ac 0b ee       	callq  4005c0 <_init>
    123459a1:	48 85 ed             	test   %rbp,%rbp
    123459a4:	74 20                	je     123459c6 <__libc_csu_init+0x56>
    123459a6:	31 db                	xor    %ebx,%ebx
    123459a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    123459af:	00 
    123459b0:	4c 89 fa             	mov    %r15,%rdx
    123459b3:	4c 89 f6             	mov    %r14,%rsi
    123459b6:	44 89 ef             	mov    %r13d,%edi
    123459b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    123459bd:	48 83 c3 01          	add    $0x1,%rbx
    123459c1:	48 39 dd             	cmp    %rbx,%rbp
    123459c4:	75 ea                	jne    123459b0 <__libc_csu_init+0x40>
    123459c6:	48 83 c4 08          	add    $0x8,%rsp
    123459ca:	5b                   	pop    %rbx
    123459cb:	5d                   	pop    %rbp
    123459cc:	41 5c                	pop    %r12
    123459ce:	41 5d                	pop    %r13
    123459d0:	41 5e                	pop    %r14
    123459d2:	41 5f                	pop    %r15
    123459d4:	c3                   	retq   
    123459d5:	90                   	nop
    123459d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123459dd:	00 00 00 

00000000123459e0 <__libc_csu_fini>:
    123459e0:	f3 c3                	repz retq 

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

00000000123459e4 <_fini>:
    123459e4:	48 83 ec 08          	sub    $0x8,%rsp
    123459e8:	48 83 c4 08          	add    $0x8,%rsp
    123459ec:	c3                   	retq   
