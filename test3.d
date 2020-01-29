
test3:     file format elf64-x86-64


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
    1234568f:	49 c7 c0 20 5a 34 12 	mov    $0x12345a20,%r8
    12345696:	48 c7 c1 b0 59 34 12 	mov    $0x123459b0,%rcx
    1234569d:	48 c7 c7 60 58 34 12 	mov    $0x12345860,%rdi
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
    1234578e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    12345795:	eb 04                	jmp    1234579b <A+0x15>
    12345797:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1234579b:	81 7d fc ff ff ff 03 	cmpl   $0x3ffffff,-0x4(%rbp)
    123457a2:	7e f3                	jle    12345797 <A+0x11>
    123457a4:	8b 05 c2 08 20 00    	mov    0x2008c2(%rip),%eax        # 1254606c <x>
    123457aa:	89 c6                	mov    %eax,%esi
    123457ac:	48 8d 3d 81 02 00 00 	lea    0x281(%rip),%rdi        # 12345a34 <_IO_stdin_used+0x4>
    123457b3:	b8 00 00 00 00       	mov    $0x0,%eax
    123457b8:	e8 63 ae 0b ee       	callq  400620 <printf@plt>
    123457bd:	c7 05 a5 08 20 00 01 	movl   $0x1,0x2008a5(%rip)        # 1254606c <x>
    123457c4:	00 00 00 
    123457c7:	8b 05 9f 08 20 00    	mov    0x20089f(%rip),%eax        # 1254606c <x>
    123457cd:	89 c6                	mov    %eax,%esi
    123457cf:	48 8d 3d 5e 02 00 00 	lea    0x25e(%rip),%rdi        # 12345a34 <_IO_stdin_used+0x4>
    123457d6:	b8 00 00 00 00       	mov    $0x0,%eax
    123457db:	e8 40 ae 0b ee       	callq  400620 <printf@plt>
    123457e0:	c7 05 82 08 20 00 02 	movl   $0x2,0x200882(%rip)        # 1254606c <x>
    123457e7:	00 00 00 
    123457ea:	8b 05 7c 08 20 00    	mov    0x20087c(%rip),%eax        # 1254606c <x>
    123457f0:	89 c6                	mov    %eax,%esi
    123457f2:	48 8d 3d 3b 02 00 00 	lea    0x23b(%rip),%rdi        # 12345a34 <_IO_stdin_used+0x4>
    123457f9:	b8 00 00 00 00       	mov    $0x0,%eax
    123457fe:	e8 1d ae 0b ee       	callq  400620 <printf@plt>
    12345803:	90                   	nop
    12345804:	c9                   	leaveq 
    12345805:	c3                   	retq   

0000000012345806 <B>:
    12345806:	55                   	push   %rbp
    12345807:	48 89 e5             	mov    %rsp,%rbp
    1234580a:	48 83 ec 10          	sub    $0x10,%rsp
    1234580e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    12345815:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1234581c:	eb 39                	jmp    12345857 <B+0x51>
    1234581e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12345821:	89 c6                	mov    %eax,%esi
    12345823:	48 8d 3d 16 02 00 00 	lea    0x216(%rip),%rdi        # 12345a40 <_IO_stdin_used+0x10>
    1234582a:	b8 00 00 00 00       	mov    $0x0,%eax
    1234582f:	e8 ec ad 0b ee       	callq  400620 <printf@plt>
    12345834:	8b 05 32 08 20 00    	mov    0x200832(%rip),%eax        # 1254606c <x>
    1234583a:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1234583d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12345840:	89 c6                	mov    %eax,%esi
    12345842:	48 8d 3d f7 01 00 00 	lea    0x1f7(%rip),%rdi        # 12345a40 <_IO_stdin_used+0x10>
    12345849:	b8 00 00 00 00       	mov    $0x0,%eax
    1234584e:	e8 cd ad 0b ee       	callq  400620 <printf@plt>
    12345853:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    12345857:	83 7d f8 02          	cmpl   $0x2,-0x8(%rbp)
    1234585b:	7e c1                	jle    1234581e <B+0x18>
    1234585d:	90                   	nop
    1234585e:	c9                   	leaveq 
    1234585f:	c3                   	retq   

0000000012345860 <main>:
    12345860:	55                   	push   %rbp
    12345861:	48 89 e5             	mov    %rsp,%rbp
    12345864:	48 83 ec 20          	sub    $0x20,%rsp
    12345868:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1234586f:	00 00 
    12345871:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12345875:	31 c0                	xor    %eax,%eax
    12345877:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    1234587b:	b9 00 00 00 00       	mov    $0x0,%ecx
    12345880:	48 8d 15 ff fe ff ff 	lea    -0x101(%rip),%rdx        # 12345786 <A>
    12345887:	be 00 00 00 00       	mov    $0x0,%esi
    1234588c:	48 89 c7             	mov    %rax,%rdi
    1234588f:	e8 5c ad 0b ee       	callq  4005f0 <pthread_create@plt>
    12345894:	85 c0                	test   %eax,%eax
    12345896:	74 2a                	je     123458c2 <main+0x62>
    12345898:	48 8b 05 c1 07 20 00 	mov    0x2007c1(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    1234589f:	48 89 c1             	mov    %rax,%rcx
    123458a2:	ba 16 00 00 00       	mov    $0x16,%edx
    123458a7:	be 01 00 00 00       	mov    $0x1,%esi
    123458ac:	48 8d 3d 99 01 00 00 	lea    0x199(%rip),%rdi        # 12345a4c <_IO_stdin_used+0x1c>
    123458b3:	e8 88 ad 0b ee       	callq  400640 <fwrite@plt>
    123458b8:	b8 01 00 00 00       	mov    $0x1,%eax
    123458bd:	e9 d4 00 00 00       	jmpq   12345996 <main+0x136>
    123458c2:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    123458c6:	b9 00 00 00 00       	mov    $0x0,%ecx
    123458cb:	48 8d 15 34 ff ff ff 	lea    -0xcc(%rip),%rdx        # 12345806 <B>
    123458d2:	be 00 00 00 00       	mov    $0x0,%esi
    123458d7:	48 89 c7             	mov    %rax,%rdi
    123458da:	e8 11 ad 0b ee       	callq  4005f0 <pthread_create@plt>
    123458df:	85 c0                	test   %eax,%eax
    123458e1:	74 2a                	je     1234590d <main+0xad>
    123458e3:	48 8b 05 76 07 20 00 	mov    0x200776(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123458ea:	48 89 c1             	mov    %rax,%rcx
    123458ed:	ba 16 00 00 00       	mov    $0x16,%edx
    123458f2:	be 01 00 00 00       	mov    $0x1,%esi
    123458f7:	48 8d 3d 4e 01 00 00 	lea    0x14e(%rip),%rdi        # 12345a4c <_IO_stdin_used+0x1c>
    123458fe:	e8 3d ad 0b ee       	callq  400640 <fwrite@plt>
    12345903:	b8 01 00 00 00       	mov    $0x1,%eax
    12345908:	e9 89 00 00 00       	jmpq   12345996 <main+0x136>
    1234590d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12345911:	be 00 00 00 00       	mov    $0x0,%esi
    12345916:	48 89 c7             	mov    %rax,%rdi
    12345919:	e8 12 ad 0b ee       	callq  400630 <pthread_join@plt>
    1234591e:	85 c0                	test   %eax,%eax
    12345920:	74 27                	je     12345949 <main+0xe9>
    12345922:	48 8b 05 37 07 20 00 	mov    0x200737(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345929:	48 89 c1             	mov    %rax,%rcx
    1234592c:	ba 15 00 00 00       	mov    $0x15,%edx
    12345931:	be 01 00 00 00       	mov    $0x1,%esi
    12345936:	48 8d 3d 26 01 00 00 	lea    0x126(%rip),%rdi        # 12345a63 <_IO_stdin_used+0x33>
    1234593d:	e8 fe ac 0b ee       	callq  400640 <fwrite@plt>
    12345942:	b8 02 00 00 00       	mov    $0x2,%eax
    12345947:	eb 4d                	jmp    12345996 <main+0x136>
    12345949:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1234594d:	be 00 00 00 00       	mov    $0x0,%esi
    12345952:	48 89 c7             	mov    %rax,%rdi
    12345955:	e8 d6 ac 0b ee       	callq  400630 <pthread_join@plt>
    1234595a:	85 c0                	test   %eax,%eax
    1234595c:	74 27                	je     12345985 <main+0x125>
    1234595e:	48 8b 05 fb 06 20 00 	mov    0x2006fb(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345965:	48 89 c1             	mov    %rax,%rcx
    12345968:	ba 15 00 00 00       	mov    $0x15,%edx
    1234596d:	be 01 00 00 00       	mov    $0x1,%esi
    12345972:	48 8d 3d ea 00 00 00 	lea    0xea(%rip),%rdi        # 12345a63 <_IO_stdin_used+0x33>
    12345979:	e8 c2 ac 0b ee       	callq  400640 <fwrite@plt>
    1234597e:	b8 02 00 00 00       	mov    $0x2,%eax
    12345983:	eb 11                	jmp    12345996 <main+0x136>
    12345985:	48 8d 3d ed 00 00 00 	lea    0xed(%rip),%rdi        # 12345a79 <_IO_stdin_used+0x49>
    1234598c:	e8 6f ac 0b ee       	callq  400600 <puts@plt>
    12345991:	b8 00 00 00 00       	mov    $0x0,%eax
    12345996:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1234599a:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    123459a1:	00 00 
    123459a3:	74 05                	je     123459aa <main+0x14a>
    123459a5:	e8 66 ac 0b ee       	callq  400610 <__stack_chk_fail@plt>
    123459aa:	c9                   	leaveq 
    123459ab:	c3                   	retq   
    123459ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000123459b0 <__libc_csu_init>:
    123459b0:	41 57                	push   %r15
    123459b2:	41 56                	push   %r14
    123459b4:	49 89 d7             	mov    %rdx,%r15
    123459b7:	41 55                	push   %r13
    123459b9:	41 54                	push   %r12
    123459bb:	4c 8d 25 36 04 20 00 	lea    0x200436(%rip),%r12        # 12545df8 <__frame_dummy_init_array_entry>
    123459c2:	55                   	push   %rbp
    123459c3:	48 8d 2d 36 04 20 00 	lea    0x200436(%rip),%rbp        # 12545e00 <__init_array_end>
    123459ca:	53                   	push   %rbx
    123459cb:	41 89 fd             	mov    %edi,%r13d
    123459ce:	49 89 f6             	mov    %rsi,%r14
    123459d1:	4c 29 e5             	sub    %r12,%rbp
    123459d4:	48 83 ec 08          	sub    $0x8,%rsp
    123459d8:	48 c1 fd 03          	sar    $0x3,%rbp
    123459dc:	e8 df ab 0b ee       	callq  4005c0 <_init>
    123459e1:	48 85 ed             	test   %rbp,%rbp
    123459e4:	74 20                	je     12345a06 <__libc_csu_init+0x56>
    123459e6:	31 db                	xor    %ebx,%ebx
    123459e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    123459ef:	00 
    123459f0:	4c 89 fa             	mov    %r15,%rdx
    123459f3:	4c 89 f6             	mov    %r14,%rsi
    123459f6:	44 89 ef             	mov    %r13d,%edi
    123459f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    123459fd:	48 83 c3 01          	add    $0x1,%rbx
    12345a01:	48 39 dd             	cmp    %rbx,%rbp
    12345a04:	75 ea                	jne    123459f0 <__libc_csu_init+0x40>
    12345a06:	48 83 c4 08          	add    $0x8,%rsp
    12345a0a:	5b                   	pop    %rbx
    12345a0b:	5d                   	pop    %rbp
    12345a0c:	41 5c                	pop    %r12
    12345a0e:	41 5d                	pop    %r13
    12345a10:	41 5e                	pop    %r14
    12345a12:	41 5f                	pop    %r15
    12345a14:	c3                   	retq   
    12345a15:	90                   	nop
    12345a16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12345a1d:	00 00 00 

0000000012345a20 <__libc_csu_fini>:
    12345a20:	f3 c3                	repz retq 

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

0000000012345a24 <_fini>:
    12345a24:	48 83 ec 08          	sub    $0x8,%rsp
    12345a28:	48 83 c4 08          	add    $0x8,%rsp
    12345a2c:	c3                   	retq   
