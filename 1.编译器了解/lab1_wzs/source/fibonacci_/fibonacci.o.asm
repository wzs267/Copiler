
fibonacci.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  13:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
  1a:	be 0a 00 00 00       	mov    $0xa,%esi
  1f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 26 <main+0x26>
  26:	48 89 c7             	mov    %rax,%rdi
  29:	b8 00 00 00 00       	mov    $0x0,%eax
  2e:	e8 00 00 00 00       	call   33 <main+0x33>
  33:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  3a:	eb 42                	jmp    7e <main+0x7e>
  3c:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  40:	7f 08                	jg     4a <main+0x4a>
  42:	8b 45 fc             	mov    -0x4(%rbp),%eax
  45:	89 45 f8             	mov    %eax,-0x8(%rbp)
  48:	eb 17                	jmp    61 <main+0x61>
  4a:	8b 55 f0             	mov    -0x10(%rbp),%edx
  4d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  50:	01 d0                	add    %edx,%eax
  52:	89 45 f8             	mov    %eax,-0x8(%rbp)
  55:	8b 45 f4             	mov    -0xc(%rbp),%eax
  58:	89 45 f0             	mov    %eax,-0x10(%rbp)
  5b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  5e:	89 45 f4             	mov    %eax,-0xc(%rbp)
  61:	8b 45 f8             	mov    -0x8(%rbp),%eax
  64:	89 c6                	mov    %eax,%esi
  66:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 6d <main+0x6d>
  6d:	48 89 c7             	mov    %rax,%rdi
  70:	b8 00 00 00 00       	mov    $0x0,%eax
  75:	e8 00 00 00 00       	call   7a <main+0x7a>
  7a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  7e:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  82:	7e b8                	jle    3c <main+0x3c>
  84:	bf 0a 00 00 00       	mov    $0xa,%edi
  89:	e8 00 00 00 00       	call   8e <main+0x8e>
  8e:	b8 00 00 00 00       	mov    $0x0,%eax
  93:	c9                   	leave
  94:	c3                   	ret
