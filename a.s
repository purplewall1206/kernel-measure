
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 5a 3f 00 00    	push   0x3f5a(%rip)        # 4f80 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 5b 3f 00 00 	bnd jmp *0x3f5b(%rip)        # 4f88 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop

Disassembly of section .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 2d 3f 00 00 	bnd jmp *0x3f2d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010d0 <free@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 b5 3e 00 00 	bnd jmp *0x3eb5(%rip)        # 4f90 <free@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <puts@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 ad 3e 00 00 	bnd jmp *0x3ead(%rip)        # 4f98 <puts@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <strlen@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 a5 3e 00 00 	bnd jmp *0x3ea5(%rip)        # 4fa0 <strlen@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <__stack_chk_fail@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 9d 3e 00 00 	bnd jmp *0x3e9d(%rip)        # 4fa8 <__stack_chk_fail@GLIBC_2.4>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <printf@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 95 3e 00 00 	bnd jmp *0x3e95(%rip)        # 4fb0 <printf@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <memset@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 8d 3e 00 00 	bnd jmp *0x3e8d(%rip)        # 4fb8 <memset@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <syscall@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 85 3e 00 00 	bnd jmp *0x3e85(%rip)        # 4fc0 <syscall@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <malloc@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 7d 3e 00 00 	bnd jmp *0x3e7d(%rip)        # 4fc8 <malloc@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <sleep@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 75 3e 00 00 	bnd jmp *0x3e75(%rip)        # 4fd0 <sleep@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001160 <_start>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	31 ed                	xor    %ebp,%ebp
    1166:	49 89 d1             	mov    %rdx,%r9
    1169:	5e                   	pop    %rsi
    116a:	48 89 e2             	mov    %rsp,%rdx
    116d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1171:	50                   	push   %rax
    1172:	54                   	push   %rsp
    1173:	45 31 c0             	xor    %r8d,%r8d
    1176:	31 c9                	xor    %ecx,%ecx
    1178:	48 8d 3d c3 19 00 00 	lea    0x19c3(%rip),%rdi        # 2b42 <main>
    117f:	ff 15 53 3e 00 00    	call   *0x3e53(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    1185:	f4                   	hlt    
    1186:	66 2e 0f 1f 84 00 00 00 00 00 	cs nopw 0x0(%rax,%rax,1)

0000000000001190 <deregister_tm_clones>:
    1190:	48 8d 3d 79 3e 00 00 	lea    0x3e79(%rip),%rdi        # 5010 <__TMC_END__>
    1197:	48 8d 05 72 3e 00 00 	lea    0x3e72(%rip),%rax        # 5010 <__TMC_END__>
    119e:	48 39 f8             	cmp    %rdi,%rax
    11a1:	74 15                	je     11b8 <deregister_tm_clones+0x28>
    11a3:	48 8b 05 36 3e 00 00 	mov    0x3e36(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    11aa:	48 85 c0             	test   %rax,%rax
    11ad:	74 09                	je     11b8 <deregister_tm_clones+0x28>
    11af:	ff e0                	jmp    *%rax
    11b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <register_tm_clones>:
    11c0:	48 8d 3d 49 3e 00 00 	lea    0x3e49(%rip),%rdi        # 5010 <__TMC_END__>
    11c7:	48 8d 35 42 3e 00 00 	lea    0x3e42(%rip),%rsi        # 5010 <__TMC_END__>
    11ce:	48 29 fe             	sub    %rdi,%rsi
    11d1:	48 89 f0             	mov    %rsi,%rax
    11d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11d8:	48 c1 f8 03          	sar    $0x3,%rax
    11dc:	48 01 c6             	add    %rax,%rsi
    11df:	48 d1 fe             	sar    %rsi
    11e2:	74 14                	je     11f8 <register_tm_clones+0x38>
    11e4:	48 8b 05 05 3e 00 00 	mov    0x3e05(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    11eb:	48 85 c0             	test   %rax,%rax
    11ee:	74 08                	je     11f8 <register_tm_clones+0x38>
    11f0:	ff e0                	jmp    *%rax
    11f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <__do_global_dtors_aux>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	80 3d 05 3e 00 00 00 	cmpb   $0x0,0x3e05(%rip)        # 5010 <__TMC_END__>
    120b:	75 2b                	jne    1238 <__do_global_dtors_aux+0x38>
    120d:	55                   	push   %rbp
    120e:	48 83 3d e2 3d 00 00 00 	cmpq   $0x0,0x3de2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1216:	48 89 e5             	mov    %rsp,%rbp
    1219:	74 0c                	je     1227 <__do_global_dtors_aux+0x27>
    121b:	48 8b 3d e6 3d 00 00 	mov    0x3de6(%rip),%rdi        # 5008 <__dso_handle>
    1222:	e8 99 fe ff ff       	call   10c0 <__cxa_finalize@plt>
    1227:	e8 64 ff ff ff       	call   1190 <deregister_tm_clones>
    122c:	c6 05 dd 3d 00 00 01 	movb   $0x1,0x3ddd(%rip)        # 5010 <__TMC_END__>
    1233:	5d                   	pop    %rbp
    1234:	c3                   	ret    
    1235:	0f 1f 00             	nopl   (%rax)
    1238:	c3                   	ret    
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <frame_dummy>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	e9 77 ff ff ff       	jmp    11c0 <register_tm_clones>

0000000000001249 <get_cycles_measure>:
    1249:	f3 0f 1e fa          	endbr64 
    124d:	55                   	push   %rbp
    124e:	48 89 e5             	mov    %rsp,%rbp
    1251:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1254:	89 75 e8             	mov    %esi,-0x18(%rbp)
    1257:	89 55 e4             	mov    %edx,-0x1c(%rbp)
    125a:	89 4d e0             	mov    %ecx,-0x20(%rbp)
    125d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1260:	48 c1 e0 20          	shl    $0x20,%rax
    1264:	48 89 c2             	mov    %rax,%rdx
    1267:	8b 45 e8             	mov    -0x18(%rbp),%eax
    126a:	48 09 d0             	or     %rdx,%rax
    126d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1271:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1274:	48 c1 e0 20          	shl    $0x20,%rax
    1278:	48 89 c2             	mov    %rax,%rdx
    127b:	8b 45 e0             	mov    -0x20(%rbp),%eax
    127e:	48 09 d0             	or     %rdx,%rax
    1281:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1285:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1289:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
    128d:	5d                   	pop    %rbp
    128e:	c3                   	ret    

000000000000128f <print>:
    128f:	f3 0f 1e fa          	endbr64 
    1293:	55                   	push   %rbp
    1294:	48 89 e5             	mov    %rsp,%rbp
    1297:	48 83 ec 20          	sub    $0x20,%rsp
    129b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    129f:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    12a2:	48 c7 45 f8 00 00 00 00 	movq   $0x0,-0x8(%rbp)
    12aa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    12b1:	eb 76                	jmp    1329 <print+0x9a>
    12b3:	8b 55 f4             	mov    -0xc(%rbp),%edx
    12b6:	48 63 c2             	movslq %edx,%rax
    12b9:	48 69 c0 ad 8b db 68 	imul   $0x68db8bad,%rax,%rax
    12c0:	48 c1 e8 20          	shr    $0x20,%rax
    12c4:	c1 f8 0d             	sar    $0xd,%eax
    12c7:	89 d1                	mov    %edx,%ecx
    12c9:	c1 f9 1f             	sar    $0x1f,%ecx
    12cc:	29 c8                	sub    %ecx,%eax
    12ce:	69 c8 20 4e 00 00    	imul   $0x4e20,%eax,%ecx
    12d4:	89 d0                	mov    %edx,%eax
    12d6:	29 c8                	sub    %ecx,%eax
    12d8:	85 c0                	test   %eax,%eax
    12da:	75 2e                	jne    130a <print+0x7b>
    12dc:	8b 45 f4             	mov    -0xc(%rbp),%eax
    12df:	48 98                	cltq   
    12e1:	48 8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%rdx
    12e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12ed:	48 01 d0             	add    %rdx,%rax
    12f0:	48 8b 00             	mov    (%rax),%rax
    12f3:	48 89 c6             	mov    %rax,%rsi
    12f6:	48 8d 05 0b 1d 00 00 	lea    0x1d0b(%rip),%rax        # 3008 <_IO_stdin_used+0x8>
    12fd:	48 89 c7             	mov    %rax,%rdi
    1300:	b8 00 00 00 00       	mov    $0x0,%eax
    1305:	e8 06 fe ff ff       	call   1110 <printf@plt>
    130a:	8b 45 f4             	mov    -0xc(%rbp),%eax
    130d:	48 98                	cltq   
    130f:	48 8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%rdx
    1317:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    131b:	48 01 d0             	add    %rdx,%rax
    131e:	48 8b 00             	mov    (%rax),%rax
    1321:	48 01 45 f8          	add    %rax,-0x8(%rbp)
    1325:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1329:	8b 45 f4             	mov    -0xc(%rbp),%eax
    132c:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    132f:	7c 82                	jl     12b3 <print+0x24>
    1331:	48 8d 05 d6 1c 00 00 	lea    0x1cd6(%rip),%rax        # 300e <_IO_stdin_used+0xe>
    1338:	48 89 c7             	mov    %rax,%rdi
    133b:	e8 a0 fd ff ff       	call   10e0 <puts@plt>
    1340:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1344:	48 ba db 34 b6 d7 82 de 1b 43 	movabs $0x431bde82d7b634db,%rdx
    134e:	48 f7 e2             	mul    %rdx
    1351:	48 c1 ea 12          	shr    $0x12,%rdx
    1355:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1359:	48 89 c6             	mov    %rax,%rsi
    135c:	48 8d 05 b5 1c 00 00 	lea    0x1cb5(%rip),%rax        # 3018 <_IO_stdin_used+0x18>
    1363:	48 89 c7             	mov    %rax,%rdi
    1366:	b8 00 00 00 00       	mov    $0x0,%eax
    136b:	e8 a0 fd ff ff       	call   1110 <printf@plt>
    1370:	90                   	nop
    1371:	c9                   	leave  
    1372:	c3                   	ret    

0000000000001373 <test0>:
    1373:	f3 0f 1e fa          	endbr64 
    1377:	55                   	push   %rbp
    1378:	48 89 e5             	mov    %rsp,%rbp
    137b:	53                   	push   %rbx
    137c:	48 83 ec 08          	sub    $0x8,%rsp
    1380:	0f a2                	cpuid  
    1382:	0f 31                	rdtsc  
    1384:	89 d7                	mov    %edx,%edi
    1386:	89 c6                	mov    %eax,%esi
    1388:	89 3d 86 3c 00 00    	mov    %edi,0x3c86(%rip)        # 5014 <start_hi>
    138e:	89 35 84 3c 00 00    	mov    %esi,0x3c84(%rip)        # 5018 <start_lo>
    1394:	bf 01 00 00 00       	mov    $0x1,%edi
    1399:	e8 b2 fd ff ff       	call   1150 <sleep@plt>
    139e:	0f 01 f9             	rdtscp 
    13a1:	89 d7                	mov    %edx,%edi
    13a3:	89 c6                	mov    %eax,%esi
    13a5:	0f a2                	cpuid  
    13a7:	89 3d 6f 3c 00 00    	mov    %edi,0x3c6f(%rip)        # 501c <end_hi>
    13ad:	89 35 6d 3c 00 00    	mov    %esi,0x3c6d(%rip)        # 5020 <end_lo>
    13b3:	8b 0d 67 3c 00 00    	mov    0x3c67(%rip),%ecx        # 5020 <end_lo>
    13b9:	8b 15 5d 3c 00 00    	mov    0x3c5d(%rip),%edx        # 501c <end_hi>
    13bf:	8b 35 53 3c 00 00    	mov    0x3c53(%rip),%esi        # 5018 <start_lo>
    13c5:	8b 05 49 3c 00 00    	mov    0x3c49(%rip),%eax        # 5014 <start_hi>
    13cb:	89 c7                	mov    %eax,%edi
    13cd:	e8 77 fe ff ff       	call   1249 <get_cycles_measure>
    13d2:	48 85 c0             	test   %rax,%rax
    13d5:	78 0b                	js     13e2 <test0+0x6f>
    13d7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    13db:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    13e0:	eb 19                	jmp    13fb <test0+0x88>
    13e2:	48 89 c2             	mov    %rax,%rdx
    13e5:	48 d1 ea             	shr    %rdx
    13e8:	83 e0 01             	and    $0x1,%eax
    13eb:	48 09 c2             	or     %rax,%rdx
    13ee:	66 0f ef c0          	pxor   %xmm0,%xmm0
    13f2:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    13f7:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    13fb:	f2 0f 10 0d a5 1d 00 00 	movsd  0x1da5(%rip),%xmm1        # 31a8 <_IO_stdin_used+0x1a8>
    1403:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1407:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    140c:	8b 0d 0e 3c 00 00    	mov    0x3c0e(%rip),%ecx        # 5020 <end_lo>
    1412:	8b 15 04 3c 00 00    	mov    0x3c04(%rip),%edx        # 501c <end_hi>
    1418:	8b 35 fa 3b 00 00    	mov    0x3bfa(%rip),%esi        # 5018 <start_lo>
    141e:	8b 05 f0 3b 00 00    	mov    0x3bf0(%rip),%eax        # 5014 <start_hi>
    1424:	89 c7                	mov    %eax,%edi
    1426:	e8 1e fe ff ff       	call   1249 <get_cycles_measure>
    142b:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1430:	48 89 c6             	mov    %rax,%rsi
    1433:	48 8d 05 01 1c 00 00 	lea    0x1c01(%rip),%rax        # 303b <_IO_stdin_used+0x3b>
    143a:	48 89 c7             	mov    %rax,%rdi
    143d:	b8 01 00 00 00       	mov    $0x1,%eax
    1442:	e8 c9 fc ff ff       	call   1110 <printf@plt>
    1447:	90                   	nop
    1448:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    144c:	c9                   	leave  
    144d:	c3                   	ret    

000000000000144e <test1>:
    144e:	f3 0f 1e fa          	endbr64 
    1452:	55                   	push   %rbp
    1453:	48 89 e5             	mov    %rsp,%rbp
    1456:	53                   	push   %rbx
    1457:	48 83 ec 18          	sub    $0x18,%rsp
    145b:	0f a2                	cpuid  
    145d:	0f 31                	rdtsc  
    145f:	89 d7                	mov    %edx,%edi
    1461:	89 c6                	mov    %eax,%esi
    1463:	89 3d ab 3b 00 00    	mov    %edi,0x3bab(%rip)        # 5014 <start_hi>
    1469:	89 35 a9 3b 00 00    	mov    %esi,0x3ba9(%rip)        # 5018 <start_lo>
    146f:	c7 45 ec 0a 00 00 00 	movl   $0xa,-0x14(%rbp)
    1476:	0f 01 f9             	rdtscp 
    1479:	89 d7                	mov    %edx,%edi
    147b:	89 c6                	mov    %eax,%esi
    147d:	0f a2                	cpuid  
    147f:	89 3d 97 3b 00 00    	mov    %edi,0x3b97(%rip)        # 501c <end_hi>
    1485:	89 35 95 3b 00 00    	mov    %esi,0x3b95(%rip)        # 5020 <end_lo>
    148b:	8b 0d 8f 3b 00 00    	mov    0x3b8f(%rip),%ecx        # 5020 <end_lo>
    1491:	8b 15 85 3b 00 00    	mov    0x3b85(%rip),%edx        # 501c <end_hi>
    1497:	8b 35 7b 3b 00 00    	mov    0x3b7b(%rip),%esi        # 5018 <start_lo>
    149d:	8b 05 71 3b 00 00    	mov    0x3b71(%rip),%eax        # 5014 <start_hi>
    14a3:	89 c7                	mov    %eax,%edi
    14a5:	e8 9f fd ff ff       	call   1249 <get_cycles_measure>
    14aa:	48 89 c1             	mov    %rax,%rcx
    14ad:	8b 45 ec             	mov    -0x14(%rbp),%eax
    14b0:	89 c2                	mov    %eax,%edx
    14b2:	48 89 ce             	mov    %rcx,%rsi
    14b5:	48 8d 05 91 1b 00 00 	lea    0x1b91(%rip),%rax        # 304d <_IO_stdin_used+0x4d>
    14bc:	48 89 c7             	mov    %rax,%rdi
    14bf:	b8 00 00 00 00       	mov    $0x0,%eax
    14c4:	e8 47 fc ff ff       	call   1110 <printf@plt>
    14c9:	90                   	nop
    14ca:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    14ce:	c9                   	leave  
    14cf:	c3                   	ret    

00000000000014d0 <test2>:
    14d0:	f3 0f 1e fa          	endbr64 
    14d4:	55                   	push   %rbp
    14d5:	48 89 e5             	mov    %rsp,%rbp
    14d8:	53                   	push   %rbx
    14d9:	48 83 ec 08          	sub    $0x8,%rsp
    14dd:	0f a2                	cpuid  
    14df:	0f 31                	rdtsc  
    14e1:	89 d7                	mov    %edx,%edi
    14e3:	89 c6                	mov    %eax,%esi
    14e5:	89 3d 29 3b 00 00    	mov    %edi,0x3b29(%rip)        # 5014 <start_hi>
    14eb:	89 35 27 3b 00 00    	mov    %esi,0x3b27(%rip)        # 5018 <start_lo>
    14f1:	49 89 c2             	mov    %rax,%r10
    14f4:	0f 01 f9             	rdtscp 
    14f7:	89 d7                	mov    %edx,%edi
    14f9:	89 c6                	mov    %eax,%esi
    14fb:	0f a2                	cpuid  
    14fd:	89 3d 19 3b 00 00    	mov    %edi,0x3b19(%rip)        # 501c <end_hi>
    1503:	89 35 17 3b 00 00    	mov    %esi,0x3b17(%rip)        # 5020 <end_lo>
    1509:	8b 0d 11 3b 00 00    	mov    0x3b11(%rip),%ecx        # 5020 <end_lo>
    150f:	8b 15 07 3b 00 00    	mov    0x3b07(%rip),%edx        # 501c <end_hi>
    1515:	8b 35 fd 3a 00 00    	mov    0x3afd(%rip),%esi        # 5018 <start_lo>
    151b:	8b 05 f3 3a 00 00    	mov    0x3af3(%rip),%eax        # 5014 <start_hi>
    1521:	89 c7                	mov    %eax,%edi
    1523:	e8 21 fd ff ff       	call   1249 <get_cycles_measure>
    1528:	48 85 c0             	test   %rax,%rax
    152b:	78 0b                	js     1538 <test2+0x68>
    152d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1531:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1536:	eb 19                	jmp    1551 <test2+0x81>
    1538:	48 89 c2             	mov    %rax,%rdx
    153b:	48 d1 ea             	shr    %rdx
    153e:	83 e0 01             	and    $0x1,%eax
    1541:	48 09 c2             	or     %rax,%rdx
    1544:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1548:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    154d:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    1551:	f2 0f 10 0d 4f 1c 00 00 	movsd  0x1c4f(%rip),%xmm1        # 31a8 <_IO_stdin_used+0x1a8>
    1559:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    155d:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    1562:	8b 0d b8 3a 00 00    	mov    0x3ab8(%rip),%ecx        # 5020 <end_lo>
    1568:	8b 15 ae 3a 00 00    	mov    0x3aae(%rip),%edx        # 501c <end_hi>
    156e:	8b 35 a4 3a 00 00    	mov    0x3aa4(%rip),%esi        # 5018 <start_lo>
    1574:	8b 05 9a 3a 00 00    	mov    0x3a9a(%rip),%eax        # 5014 <start_hi>
    157a:	89 c7                	mov    %eax,%edi
    157c:	e8 c8 fc ff ff       	call   1249 <get_cycles_measure>
    1581:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1586:	48 89 c6             	mov    %rax,%rsi
    1589:	48 8d 05 d8 1a 00 00 	lea    0x1ad8(%rip),%rax        # 3068 <_IO_stdin_used+0x68>
    1590:	48 89 c7             	mov    %rax,%rdi
    1593:	b8 01 00 00 00       	mov    $0x1,%eax
    1598:	e8 73 fb ff ff       	call   1110 <printf@plt>
    159d:	90                   	nop
    159e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    15a2:	c9                   	leave  
    15a3:	c3                   	ret    

00000000000015a4 <test3>:
    15a4:	f3 0f 1e fa          	endbr64 
    15a8:	55                   	push   %rbp
    15a9:	48 89 e5             	mov    %rsp,%rbp
    15ac:	53                   	push   %rbx
    15ad:	48 83 ec 08          	sub    $0x8,%rsp
    15b1:	0f a2                	cpuid  
    15b3:	0f 31                	rdtsc  
    15b5:	89 d7                	mov    %edx,%edi
    15b7:	89 c6                	mov    %eax,%esi
    15b9:	89 3d 55 3a 00 00    	mov    %edi,0x3a55(%rip)        # 5014 <start_hi>
    15bf:	89 35 53 3a 00 00    	mov    %esi,0x3a53(%rip)        # 5018 <start_lo>
    15c5:	cd 80                	int    $0x80
    15c7:	0f 01 f9             	rdtscp 
    15ca:	89 d7                	mov    %edx,%edi
    15cc:	89 c6                	mov    %eax,%esi
    15ce:	0f a2                	cpuid  
    15d0:	89 3d 46 3a 00 00    	mov    %edi,0x3a46(%rip)        # 501c <end_hi>
    15d6:	89 35 44 3a 00 00    	mov    %esi,0x3a44(%rip)        # 5020 <end_lo>
    15dc:	8b 0d 3e 3a 00 00    	mov    0x3a3e(%rip),%ecx        # 5020 <end_lo>
    15e2:	8b 15 34 3a 00 00    	mov    0x3a34(%rip),%edx        # 501c <end_hi>
    15e8:	8b 35 2a 3a 00 00    	mov    0x3a2a(%rip),%esi        # 5018 <start_lo>
    15ee:	8b 05 20 3a 00 00    	mov    0x3a20(%rip),%eax        # 5014 <start_hi>
    15f4:	89 c7                	mov    %eax,%edi
    15f6:	e8 4e fc ff ff       	call   1249 <get_cycles_measure>
    15fb:	48 89 c6             	mov    %rax,%rsi
    15fe:	48 8d 05 8a 1a 00 00 	lea    0x1a8a(%rip),%rax        # 308f <_IO_stdin_used+0x8f>
    1605:	48 89 c7             	mov    %rax,%rdi
    1608:	b8 00 00 00 00       	mov    $0x0,%eax
    160d:	e8 fe fa ff ff       	call   1110 <printf@plt>
    1612:	90                   	nop
    1613:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1617:	c9                   	leave  
    1618:	c3                   	ret    

0000000000001619 <test4>:
    1619:	f3 0f 1e fa          	endbr64 
    161d:	55                   	push   %rbp
    161e:	48 89 e5             	mov    %rsp,%rbp
    1621:	53                   	push   %rbx
    1622:	48 83 ec 28          	sub    $0x28,%rsp
    1626:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    162f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1633:	31 c0                	xor    %eax,%eax
    1635:	c7 45 e1 74 65 73 74 	movl   $0x74736574,-0x1f(%rbp)
    163c:	66 c7 45 e5 34 0a    	movw   $0xa34,-0x1b(%rbp)
    1642:	c6 45 e7 00          	movb   $0x0,-0x19(%rbp)
    1646:	0f a2                	cpuid  
    1648:	0f 31                	rdtsc  
    164a:	89 d7                	mov    %edx,%edi
    164c:	89 c6                	mov    %eax,%esi
    164e:	89 3d c0 39 00 00    	mov    %edi,0x39c0(%rip)        # 5014 <start_hi>
    1654:	89 35 be 39 00 00    	mov    %esi,0x39be(%rip)        # 5018 <start_lo>
    165a:	48 8d 45 e1          	lea    -0x1f(%rbp),%rax
    165e:	48 89 c7             	mov    %rax,%rdi
    1661:	e8 8a fa ff ff       	call   10f0 <strlen@plt>
    1666:	48 89 c2             	mov    %rax,%rdx
    1669:	b8 04 00 00 00       	mov    $0x4,%eax
    166e:	be 01 00 00 00       	mov    $0x1,%esi
    1673:	48 8d 4d e1          	lea    -0x1f(%rbp),%rcx
    1677:	89 f3                	mov    %esi,%ebx
    1679:	cd 80                	int    $0x80
    167b:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    167f:	0f 01 f9             	rdtscp 
    1682:	89 d7                	mov    %edx,%edi
    1684:	89 c6                	mov    %eax,%esi
    1686:	0f a2                	cpuid  
    1688:	89 3d 8e 39 00 00    	mov    %edi,0x398e(%rip)        # 501c <end_hi>
    168e:	89 35 8c 39 00 00    	mov    %esi,0x398c(%rip)        # 5020 <end_lo>
    1694:	8b 0d 86 39 00 00    	mov    0x3986(%rip),%ecx        # 5020 <end_lo>
    169a:	8b 15 7c 39 00 00    	mov    0x397c(%rip),%edx        # 501c <end_hi>
    16a0:	8b 35 72 39 00 00    	mov    0x3972(%rip),%esi        # 5018 <start_lo>
    16a6:	8b 05 68 39 00 00    	mov    0x3968(%rip),%eax        # 5014 <start_hi>
    16ac:	89 c7                	mov    %eax,%edi
    16ae:	e8 96 fb ff ff       	call   1249 <get_cycles_measure>
    16b3:	48 89 c6             	mov    %rax,%rsi
    16b6:	48 8d 05 e5 19 00 00 	lea    0x19e5(%rip),%rax        # 30a2 <_IO_stdin_used+0xa2>
    16bd:	48 89 c7             	mov    %rax,%rdi
    16c0:	b8 00 00 00 00       	mov    $0x0,%eax
    16c5:	e8 46 fa ff ff       	call   1110 <printf@plt>
    16ca:	90                   	nop
    16cb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16cf:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    16d8:	74 05                	je     16df <test4+0xc6>
    16da:	e8 21 fa ff ff       	call   1100 <__stack_chk_fail@plt>
    16df:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    16e3:	c9                   	leave  
    16e4:	c3                   	ret    

00000000000016e5 <test5>:
    16e5:	f3 0f 1e fa          	endbr64 
    16e9:	55                   	push   %rbp
    16ea:	48 89 e5             	mov    %rsp,%rbp
    16ed:	53                   	push   %rbx
    16ee:	48 83 ec 28          	sub    $0x28,%rsp
    16f2:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    16fb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    16ff:	31 c0                	xor    %eax,%eax
    1701:	c7 45 e1 74 65 73 74 	movl   $0x74736574,-0x1f(%rbp)
    1708:	66 c7 45 e5 35 0a    	movw   $0xa35,-0x1b(%rbp)
    170e:	c6 45 e7 00          	movb   $0x0,-0x19(%rbp)
    1712:	0f a2                	cpuid  
    1714:	0f 31                	rdtsc  
    1716:	89 d7                	mov    %edx,%edi
    1718:	89 c6                	mov    %eax,%esi
    171a:	89 3d f4 38 00 00    	mov    %edi,0x38f4(%rip)        # 5014 <start_hi>
    1720:	89 35 f2 38 00 00    	mov    %esi,0x38f2(%rip)        # 5018 <start_lo>
    1726:	48 8d 45 e1          	lea    -0x1f(%rbp),%rax
    172a:	48 89 c7             	mov    %rax,%rdi
    172d:	e8 be f9 ff ff       	call   10f0 <strlen@plt>
    1732:	48 89 c2             	mov    %rax,%rdx
    1735:	b8 01 00 00 00       	mov    $0x1,%eax
    173a:	bf 01 00 00 00       	mov    $0x1,%edi
    173f:	48 8d 75 e1          	lea    -0x1f(%rbp),%rsi
    1743:	0f 05                	syscall 
    1745:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1749:	0f 01 f9             	rdtscp 
    174c:	89 d7                	mov    %edx,%edi
    174e:	89 c6                	mov    %eax,%esi
    1750:	0f a2                	cpuid  
    1752:	89 3d c4 38 00 00    	mov    %edi,0x38c4(%rip)        # 501c <end_hi>
    1758:	89 35 c2 38 00 00    	mov    %esi,0x38c2(%rip)        # 5020 <end_lo>
    175e:	8b 0d bc 38 00 00    	mov    0x38bc(%rip),%ecx        # 5020 <end_lo>
    1764:	8b 15 b2 38 00 00    	mov    0x38b2(%rip),%edx        # 501c <end_hi>
    176a:	8b 35 a8 38 00 00    	mov    0x38a8(%rip),%esi        # 5018 <start_lo>
    1770:	8b 05 9e 38 00 00    	mov    0x389e(%rip),%eax        # 5014 <start_hi>
    1776:	89 c7                	mov    %eax,%edi
    1778:	e8 cc fa ff ff       	call   1249 <get_cycles_measure>
    177d:	48 89 c6             	mov    %rax,%rsi
    1780:	48 8d 05 2e 19 00 00 	lea    0x192e(%rip),%rax        # 30b5 <_IO_stdin_used+0xb5>
    1787:	48 89 c7             	mov    %rax,%rdi
    178a:	b8 00 00 00 00       	mov    $0x0,%eax
    178f:	e8 7c f9 ff ff       	call   1110 <printf@plt>
    1794:	90                   	nop
    1795:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1799:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    17a2:	74 05                	je     17a9 <test5+0xc4>
    17a4:	e8 57 f9 ff ff       	call   1100 <__stack_chk_fail@plt>
    17a9:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    17ad:	c9                   	leave  
    17ae:	c3                   	ret    

00000000000017af <test6>:
    17af:	f3 0f 1e fa          	endbr64 
    17b3:	55                   	push   %rbp
    17b4:	48 89 e5             	mov    %rsp,%rbp
    17b7:	53                   	push   %rbx
    17b8:	48 81 ec 78 03 00 00 	sub    $0x378,%rsp
    17bf:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    17c8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    17cc:	31 c0                	xor    %eax,%eax
    17ce:	bf 00 40 06 00       	mov    $0x64000,%edi
    17d3:	e8 68 f9 ff ff       	call   1140 <malloc@plt>
    17d8:	48 89 85 b0 fc ff ff 	mov    %rax,-0x350(%rbp)
    17df:	c7 85 8c fc ff ff 00 00 00 00 	movl   $0x0,-0x374(%rbp)
    17e9:	48 c7 85 b8 fc ff ff 00 00 00 00 	movq   $0x0,-0x348(%rbp)
    17f4:	c7 85 90 fc ff ff 00 00 00 00 	movl   $0x0,-0x370(%rbp)
    17fe:	e9 89 00 00 00       	jmp    188c <test6+0xdd>
    1803:	0f a2                	cpuid  
    1805:	0f 31                	rdtsc  
    1807:	89 d7                	mov    %edx,%edi
    1809:	89 c6                	mov    %eax,%esi
    180b:	89 3d 03 38 00 00    	mov    %edi,0x3803(%rip)        # 5014 <start_hi>
    1811:	89 35 01 38 00 00    	mov    %esi,0x3801(%rip)        # 5018 <start_lo>
    1817:	8b 85 90 fc ff ff    	mov    -0x370(%rbp),%eax
    181d:	c1 e0 03             	shl    $0x3,%eax
    1820:	48 63 d0             	movslq %eax,%rdx
    1823:	48 8b 85 b0 fc ff ff 	mov    -0x350(%rbp),%rax
    182a:	48 01 d0             	add    %rdx,%rax
    182d:	48 8b 00             	mov    (%rax),%rax
    1830:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
    1837:	0f 01 f9             	rdtscp 
    183a:	89 d7                	mov    %edx,%edi
    183c:	89 c6                	mov    %eax,%esi
    183e:	0f a2                	cpuid  
    1840:	89 3d d6 37 00 00    	mov    %edi,0x37d6(%rip)        # 501c <end_hi>
    1846:	89 35 d4 37 00 00    	mov    %esi,0x37d4(%rip)        # 5020 <end_lo>
    184c:	8b 0d ce 37 00 00    	mov    0x37ce(%rip),%ecx        # 5020 <end_lo>
    1852:	8b 15 c4 37 00 00    	mov    0x37c4(%rip),%edx        # 501c <end_hi>
    1858:	8b 35 ba 37 00 00    	mov    0x37ba(%rip),%esi        # 5018 <start_lo>
    185e:	8b 05 b0 37 00 00    	mov    0x37b0(%rip),%eax        # 5014 <start_hi>
    1864:	8b 9d 8c fc ff ff    	mov    -0x374(%rbp),%ebx
    186a:	8d 7b 01             	lea    0x1(%rbx),%edi
    186d:	89 bd 8c fc ff ff    	mov    %edi,-0x374(%rbp)
    1873:	89 c7                	mov    %eax,%edi
    1875:	e8 cf f9 ff ff       	call   1249 <get_cycles_measure>
    187a:	48 63 d3             	movslq %ebx,%rdx
    187d:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    1885:	83 85 90 fc ff ff 01 	addl   $0x1,-0x370(%rbp)
    188c:	83 bd 90 fc ff ff 09 	cmpl   $0x9,-0x370(%rbp)
    1893:	0f 8e 6a ff ff ff    	jle    1803 <test6+0x54>
    1899:	c7 85 94 fc ff ff 00 00 00 00 	movl   $0x0,-0x36c(%rbp)
    18a3:	e9 8f 00 00 00       	jmp    1937 <test6+0x188>
    18a8:	0f a2                	cpuid  
    18aa:	0f 31                	rdtsc  
    18ac:	89 d7                	mov    %edx,%edi
    18ae:	89 c6                	mov    %eax,%esi
    18b0:	89 3d 5e 37 00 00    	mov    %edi,0x375e(%rip)        # 5014 <start_hi>
    18b6:	89 35 5c 37 00 00    	mov    %esi,0x375c(%rip)        # 5018 <start_lo>
    18bc:	8b 85 94 fc ff ff    	mov    -0x36c(%rbp),%eax
    18c2:	c1 e0 03             	shl    $0x3,%eax
    18c5:	48 98                	cltq   
    18c7:	48 8d 90 00 40 01 00 	lea    0x14000(%rax),%rdx
    18ce:	48 8b 85 b0 fc ff ff 	mov    -0x350(%rbp),%rax
    18d5:	48 01 d0             	add    %rdx,%rax
    18d8:	48 8b 00             	mov    (%rax),%rax
    18db:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
    18e2:	0f 01 f9             	rdtscp 
    18e5:	89 d7                	mov    %edx,%edi
    18e7:	89 c6                	mov    %eax,%esi
    18e9:	0f a2                	cpuid  
    18eb:	89 3d 2b 37 00 00    	mov    %edi,0x372b(%rip)        # 501c <end_hi>
    18f1:	89 35 29 37 00 00    	mov    %esi,0x3729(%rip)        # 5020 <end_lo>
    18f7:	8b 0d 23 37 00 00    	mov    0x3723(%rip),%ecx        # 5020 <end_lo>
    18fd:	8b 15 19 37 00 00    	mov    0x3719(%rip),%edx        # 501c <end_hi>
    1903:	8b 35 0f 37 00 00    	mov    0x370f(%rip),%esi        # 5018 <start_lo>
    1909:	8b 05 05 37 00 00    	mov    0x3705(%rip),%eax        # 5014 <start_hi>
    190f:	8b 9d 8c fc ff ff    	mov    -0x374(%rbp),%ebx
    1915:	8d 7b 01             	lea    0x1(%rbx),%edi
    1918:	89 bd 8c fc ff ff    	mov    %edi,-0x374(%rbp)
    191e:	89 c7                	mov    %eax,%edi
    1920:	e8 24 f9 ff ff       	call   1249 <get_cycles_measure>
    1925:	48 63 d3             	movslq %ebx,%rdx
    1928:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    1930:	83 85 94 fc ff ff 01 	addl   $0x1,-0x36c(%rbp)
    1937:	83 bd 94 fc ff ff 09 	cmpl   $0x9,-0x36c(%rbp)
    193e:	0f 8e 64 ff ff ff    	jle    18a8 <test6+0xf9>
    1944:	c7 85 98 fc ff ff 00 00 00 00 	movl   $0x0,-0x368(%rbp)
    194e:	e9 8f 00 00 00       	jmp    19e2 <test6+0x233>
    1953:	0f a2                	cpuid  
    1955:	0f 31                	rdtsc  
    1957:	89 d7                	mov    %edx,%edi
    1959:	89 c6                	mov    %eax,%esi
    195b:	89 3d b3 36 00 00    	mov    %edi,0x36b3(%rip)        # 5014 <start_hi>
    1961:	89 35 b1 36 00 00    	mov    %esi,0x36b1(%rip)        # 5018 <start_lo>
    1967:	8b 85 98 fc ff ff    	mov    -0x368(%rbp),%eax
    196d:	c1 e0 03             	shl    $0x3,%eax
    1970:	48 98                	cltq   
    1972:	48 8d 90 00 20 03 00 	lea    0x32000(%rax),%rdx
    1979:	48 8b 85 b0 fc ff ff 	mov    -0x350(%rbp),%rax
    1980:	48 01 d0             	add    %rdx,%rax
    1983:	48 8b 00             	mov    (%rax),%rax
    1986:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
    198d:	0f 01 f9             	rdtscp 
    1990:	89 d7                	mov    %edx,%edi
    1992:	89 c6                	mov    %eax,%esi
    1994:	0f a2                	cpuid  
    1996:	89 3d 80 36 00 00    	mov    %edi,0x3680(%rip)        # 501c <end_hi>
    199c:	89 35 7e 36 00 00    	mov    %esi,0x367e(%rip)        # 5020 <end_lo>
    19a2:	8b 0d 78 36 00 00    	mov    0x3678(%rip),%ecx        # 5020 <end_lo>
    19a8:	8b 15 6e 36 00 00    	mov    0x366e(%rip),%edx        # 501c <end_hi>
    19ae:	8b 35 64 36 00 00    	mov    0x3664(%rip),%esi        # 5018 <start_lo>
    19b4:	8b 05 5a 36 00 00    	mov    0x365a(%rip),%eax        # 5014 <start_hi>
    19ba:	8b 9d 8c fc ff ff    	mov    -0x374(%rbp),%ebx
    19c0:	8d 7b 01             	lea    0x1(%rbx),%edi
    19c3:	89 bd 8c fc ff ff    	mov    %edi,-0x374(%rbp)
    19c9:	89 c7                	mov    %eax,%edi
    19cb:	e8 79 f8 ff ff       	call   1249 <get_cycles_measure>
    19d0:	48 63 d3             	movslq %ebx,%rdx
    19d3:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    19db:	83 85 98 fc ff ff 01 	addl   $0x1,-0x368(%rbp)
    19e2:	83 bd 98 fc ff ff 09 	cmpl   $0x9,-0x368(%rbp)
    19e9:	0f 8e 64 ff ff ff    	jle    1953 <test6+0x1a4>
    19ef:	c7 85 9c fc ff ff 00 00 00 00 	movl   $0x0,-0x364(%rbp)
    19f9:	e9 8f 00 00 00       	jmp    1a8d <test6+0x2de>
    19fe:	0f a2                	cpuid  
    1a00:	0f 31                	rdtsc  
    1a02:	89 d7                	mov    %edx,%edi
    1a04:	89 c6                	mov    %eax,%esi
    1a06:	89 3d 08 36 00 00    	mov    %edi,0x3608(%rip)        # 5014 <start_hi>
    1a0c:	89 35 06 36 00 00    	mov    %esi,0x3606(%rip)        # 5018 <start_lo>
    1a12:	8b 85 9c fc ff ff    	mov    -0x364(%rbp),%eax
    1a18:	c1 e0 03             	shl    $0x3,%eax
    1a1b:	48 98                	cltq   
    1a1d:	48 8d 90 00 20 03 00 	lea    0x32000(%rax),%rdx
    1a24:	48 8b 85 b0 fc ff ff 	mov    -0x350(%rbp),%rax
    1a2b:	48 01 d0             	add    %rdx,%rax
    1a2e:	48 8b 00             	mov    (%rax),%rax
    1a31:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
    1a38:	0f 01 f9             	rdtscp 
    1a3b:	89 d7                	mov    %edx,%edi
    1a3d:	89 c6                	mov    %eax,%esi
    1a3f:	0f a2                	cpuid  
    1a41:	89 3d d5 35 00 00    	mov    %edi,0x35d5(%rip)        # 501c <end_hi>
    1a47:	89 35 d3 35 00 00    	mov    %esi,0x35d3(%rip)        # 5020 <end_lo>
    1a4d:	8b 0d cd 35 00 00    	mov    0x35cd(%rip),%ecx        # 5020 <end_lo>
    1a53:	8b 15 c3 35 00 00    	mov    0x35c3(%rip),%edx        # 501c <end_hi>
    1a59:	8b 35 b9 35 00 00    	mov    0x35b9(%rip),%esi        # 5018 <start_lo>
    1a5f:	8b 05 af 35 00 00    	mov    0x35af(%rip),%eax        # 5014 <start_hi>
    1a65:	8b 9d 8c fc ff ff    	mov    -0x374(%rbp),%ebx
    1a6b:	8d 7b 01             	lea    0x1(%rbx),%edi
    1a6e:	89 bd 8c fc ff ff    	mov    %edi,-0x374(%rbp)
    1a74:	89 c7                	mov    %eax,%edi
    1a76:	e8 ce f7 ff ff       	call   1249 <get_cycles_measure>
    1a7b:	48 63 d3             	movslq %ebx,%rdx
    1a7e:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    1a86:	83 85 9c fc ff ff 01 	addl   $0x1,-0x364(%rbp)
    1a8d:	83 bd 9c fc ff ff 09 	cmpl   $0x9,-0x364(%rbp)
    1a94:	0f 8e 64 ff ff ff    	jle    19fe <test6+0x24f>
    1a9a:	c7 85 a0 fc ff ff 00 00 00 00 	movl   $0x0,-0x360(%rbp)
    1aa4:	e9 8c 00 00 00       	jmp    1b35 <test6+0x386>
    1aa9:	0f a2                	cpuid  
    1aab:	0f 31                	rdtsc  
    1aad:	89 d7                	mov    %edx,%edi
    1aaf:	89 c6                	mov    %eax,%esi
    1ab1:	89 3d 5d 35 00 00    	mov    %edi,0x355d(%rip)        # 5014 <start_hi>
    1ab7:	89 35 5b 35 00 00    	mov    %esi,0x355b(%rip)        # 5018 <start_lo>
    1abd:	8b 85 a0 fc ff ff    	mov    -0x360(%rbp),%eax
    1ac3:	48 98                	cltq   
    1ac5:	48 8d 90 00 40 01 00 	lea    0x14000(%rax),%rdx
    1acc:	48 8b 85 b0 fc ff ff 	mov    -0x350(%rbp),%rax
    1ad3:	48 01 d0             	add    %rdx,%rax
    1ad6:	48 8b 00             	mov    (%rax),%rax
    1ad9:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
    1ae0:	0f 01 f9             	rdtscp 
    1ae3:	89 d7                	mov    %edx,%edi
    1ae5:	89 c6                	mov    %eax,%esi
    1ae7:	0f a2                	cpuid  
    1ae9:	89 3d 2d 35 00 00    	mov    %edi,0x352d(%rip)        # 501c <end_hi>
    1aef:	89 35 2b 35 00 00    	mov    %esi,0x352b(%rip)        # 5020 <end_lo>
    1af5:	8b 0d 25 35 00 00    	mov    0x3525(%rip),%ecx        # 5020 <end_lo>
    1afb:	8b 15 1b 35 00 00    	mov    0x351b(%rip),%edx        # 501c <end_hi>
    1b01:	8b 35 11 35 00 00    	mov    0x3511(%rip),%esi        # 5018 <start_lo>
    1b07:	8b 05 07 35 00 00    	mov    0x3507(%rip),%eax        # 5014 <start_hi>
    1b0d:	8b 9d 8c fc ff ff    	mov    -0x374(%rbp),%ebx
    1b13:	8d 7b 01             	lea    0x1(%rbx),%edi
    1b16:	89 bd 8c fc ff ff    	mov    %edi,-0x374(%rbp)
    1b1c:	89 c7                	mov    %eax,%edi
    1b1e:	e8 26 f7 ff ff       	call   1249 <get_cycles_measure>
    1b23:	48 63 d3             	movslq %ebx,%rdx
    1b26:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    1b2e:	83 85 a0 fc ff ff 01 	addl   $0x1,-0x360(%rbp)
    1b35:	83 bd a0 fc ff ff 09 	cmpl   $0x9,-0x360(%rbp)
    1b3c:	0f 8e 67 ff ff ff    	jle    1aa9 <test6+0x2fa>
    1b42:	c7 85 a4 fc ff ff 00 00 00 00 	movl   $0x0,-0x35c(%rbp)
    1b4c:	e9 86 00 00 00       	jmp    1bd7 <test6+0x428>
    1b51:	0f a2                	cpuid  
    1b53:	0f 31                	rdtsc  
    1b55:	89 d7                	mov    %edx,%edi
    1b57:	89 c6                	mov    %eax,%esi
    1b59:	89 3d b5 34 00 00    	mov    %edi,0x34b5(%rip)        # 5014 <start_hi>
    1b5f:	89 35 b3 34 00 00    	mov    %esi,0x34b3(%rip)        # 5018 <start_lo>
    1b65:	8b 85 a4 fc ff ff    	mov    -0x35c(%rbp),%eax
    1b6b:	c1 e0 03             	shl    $0x3,%eax
    1b6e:	48 63 d0             	movslq %eax,%rdx
    1b71:	48 8b 85 b0 fc ff ff 	mov    -0x350(%rbp),%rax
    1b78:	48 01 d0             	add    %rdx,%rax
    1b7b:	48 c7 00 01 00 00 00 	movq   $0x1,(%rax)
    1b82:	0f 01 f9             	rdtscp 
    1b85:	89 d7                	mov    %edx,%edi
    1b87:	89 c6                	mov    %eax,%esi
    1b89:	0f a2                	cpuid  
    1b8b:	89 3d 8b 34 00 00    	mov    %edi,0x348b(%rip)        # 501c <end_hi>
    1b91:	89 35 89 34 00 00    	mov    %esi,0x3489(%rip)        # 5020 <end_lo>
    1b97:	8b 0d 83 34 00 00    	mov    0x3483(%rip),%ecx        # 5020 <end_lo>
    1b9d:	8b 15 79 34 00 00    	mov    0x3479(%rip),%edx        # 501c <end_hi>
    1ba3:	8b 35 6f 34 00 00    	mov    0x346f(%rip),%esi        # 5018 <start_lo>
    1ba9:	8b 05 65 34 00 00    	mov    0x3465(%rip),%eax        # 5014 <start_hi>
    1baf:	8b 9d 8c fc ff ff    	mov    -0x374(%rbp),%ebx
    1bb5:	8d 7b 01             	lea    0x1(%rbx),%edi
    1bb8:	89 bd 8c fc ff ff    	mov    %edi,-0x374(%rbp)
    1bbe:	89 c7                	mov    %eax,%edi
    1bc0:	e8 84 f6 ff ff       	call   1249 <get_cycles_measure>
    1bc5:	48 63 d3             	movslq %ebx,%rdx
    1bc8:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    1bd0:	83 85 a4 fc ff ff 01 	addl   $0x1,-0x35c(%rbp)
    1bd7:	83 bd a4 fc ff ff 09 	cmpl   $0x9,-0x35c(%rbp)
    1bde:	0f 8e 6d ff ff ff    	jle    1b51 <test6+0x3a2>
    1be4:	c7 85 a8 fc ff ff 00 00 00 00 	movl   $0x0,-0x358(%rbp)
    1bee:	e9 8c 00 00 00       	jmp    1c7f <test6+0x4d0>
    1bf3:	0f a2                	cpuid  
    1bf5:	0f 31                	rdtsc  
    1bf7:	89 d7                	mov    %edx,%edi
    1bf9:	89 c6                	mov    %eax,%esi
    1bfb:	89 3d 13 34 00 00    	mov    %edi,0x3413(%rip)        # 5014 <start_hi>
    1c01:	89 35 11 34 00 00    	mov    %esi,0x3411(%rip)        # 5018 <start_lo>
    1c07:	8b 85 a8 fc ff ff    	mov    -0x358(%rbp),%eax
    1c0d:	c1 e0 03             	shl    $0x3,%eax
    1c10:	48 98                	cltq   
    1c12:	48 8d 90 00 20 03 00 	lea    0x32000(%rax),%rdx
    1c19:	48 8b 85 b0 fc ff ff 	mov    -0x350(%rbp),%rax
    1c20:	48 01 d0             	add    %rdx,%rax
    1c23:	48 c7 00 01 00 00 00 	movq   $0x1,(%rax)
    1c2a:	0f 01 f9             	rdtscp 
    1c2d:	89 d7                	mov    %edx,%edi
    1c2f:	89 c6                	mov    %eax,%esi
    1c31:	0f a2                	cpuid  
    1c33:	89 3d e3 33 00 00    	mov    %edi,0x33e3(%rip)        # 501c <end_hi>
    1c39:	89 35 e1 33 00 00    	mov    %esi,0x33e1(%rip)        # 5020 <end_lo>
    1c3f:	8b 0d db 33 00 00    	mov    0x33db(%rip),%ecx        # 5020 <end_lo>
    1c45:	8b 15 d1 33 00 00    	mov    0x33d1(%rip),%edx        # 501c <end_hi>
    1c4b:	8b 35 c7 33 00 00    	mov    0x33c7(%rip),%esi        # 5018 <start_lo>
    1c51:	8b 05 bd 33 00 00    	mov    0x33bd(%rip),%eax        # 5014 <start_hi>
    1c57:	8b 9d 8c fc ff ff    	mov    -0x374(%rbp),%ebx
    1c5d:	8d 7b 01             	lea    0x1(%rbx),%edi
    1c60:	89 bd 8c fc ff ff    	mov    %edi,-0x374(%rbp)
    1c66:	89 c7                	mov    %eax,%edi
    1c68:	e8 dc f5 ff ff       	call   1249 <get_cycles_measure>
    1c6d:	48 63 d3             	movslq %ebx,%rdx
    1c70:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    1c78:	83 85 a8 fc ff ff 01 	addl   $0x1,-0x358(%rbp)
    1c7f:	83 bd a8 fc ff ff 09 	cmpl   $0x9,-0x358(%rbp)
    1c86:	0f 8e 67 ff ff ff    	jle    1bf3 <test6+0x444>
    1c8c:	c7 85 ac fc ff ff 00 00 00 00 	movl   $0x0,-0x354(%rbp)
    1c96:	eb 6e                	jmp    1d06 <test6+0x557>
    1c98:	8b 8d ac fc ff ff    	mov    -0x354(%rbp),%ecx
    1c9e:	48 63 c1             	movslq %ecx,%rax
    1ca1:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    1ca8:	48 c1 e8 20          	shr    $0x20,%rax
    1cac:	c1 f8 02             	sar    $0x2,%eax
    1caf:	89 ce                	mov    %ecx,%esi
    1cb1:	c1 fe 1f             	sar    $0x1f,%esi
    1cb4:	29 f0                	sub    %esi,%eax
    1cb6:	89 c2                	mov    %eax,%edx
    1cb8:	89 d0                	mov    %edx,%eax
    1cba:	c1 e0 02             	shl    $0x2,%eax
    1cbd:	01 d0                	add    %edx,%eax
    1cbf:	01 c0                	add    %eax,%eax
    1cc1:	29 c1                	sub    %eax,%ecx
    1cc3:	89 ca                	mov    %ecx,%edx
    1cc5:	85 d2                	test   %edx,%edx
    1cc7:	75 0f                	jne    1cd8 <test6+0x529>
    1cc9:	48 8d 05 f8 13 00 00 	lea    0x13f8(%rip),%rax        # 30c8 <_IO_stdin_used+0xc8>
    1cd0:	48 89 c7             	mov    %rax,%rdi
    1cd3:	e8 08 f4 ff ff       	call   10e0 <puts@plt>
    1cd8:	8b 85 ac fc ff ff    	mov    -0x354(%rbp),%eax
    1cde:	48 98                	cltq   
    1ce0:	48 8b 84 c5 c0 fc ff ff 	mov    -0x340(%rbp,%rax,8),%rax
    1ce8:	48 89 c6             	mov    %rax,%rsi
    1ceb:	48 8d 05 16 13 00 00 	lea    0x1316(%rip),%rax        # 3008 <_IO_stdin_used+0x8>
    1cf2:	48 89 c7             	mov    %rax,%rdi
    1cf5:	b8 00 00 00 00       	mov    $0x0,%eax
    1cfa:	e8 11 f4 ff ff       	call   1110 <printf@plt>
    1cff:	83 85 ac fc ff ff 01 	addl   $0x1,-0x354(%rbp)
    1d06:	83 bd ac fc ff ff 45 	cmpl   $0x45,-0x354(%rbp)
    1d0d:	7e 89                	jle    1c98 <test6+0x4e9>
    1d0f:	48 8d 05 f8 12 00 00 	lea    0x12f8(%rip),%rax        # 300e <_IO_stdin_used+0xe>
    1d16:	48 89 c7             	mov    %rax,%rdi
    1d19:	e8 c2 f3 ff ff       	call   10e0 <puts@plt>
    1d1e:	48 8b 85 b0 fc ff ff 	mov    -0x350(%rbp),%rax
    1d25:	48 89 c7             	mov    %rax,%rdi
    1d28:	e8 a3 f3 ff ff       	call   10d0 <free@plt>
    1d2d:	90                   	nop
    1d2e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d32:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    1d3b:	74 05                	je     1d42 <test6+0x593>
    1d3d:	e8 be f3 ff ff       	call   1100 <__stack_chk_fail@plt>
    1d42:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1d46:	c9                   	leave  
    1d47:	c3                   	ret    

0000000000001d48 <null>:
    1d48:	f3 0f 1e fa          	endbr64 
    1d4c:	55                   	push   %rbp
    1d4d:	48 89 e5             	mov    %rsp,%rbp
    1d50:	90                   	nop
    1d51:	5d                   	pop    %rbp
    1d52:	c3                   	ret    

0000000000001d53 <null0>:
    1d53:	f3 0f 1e fa          	endbr64 
    1d57:	55                   	push   %rbp
    1d58:	48 89 e5             	mov    %rsp,%rbp
    1d5b:	b8 00 00 00 00       	mov    $0x0,%eax
    1d60:	5d                   	pop    %rbp
    1d61:	c3                   	ret    

0000000000001d62 <null5>:
    1d62:	f3 0f 1e fa          	endbr64 
    1d66:	55                   	push   %rbp
    1d67:	48 89 e5             	mov    %rsp,%rbp
    1d6a:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1d6d:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1d70:	89 55 f4             	mov    %edx,-0xc(%rbp)
    1d73:	89 4d f0             	mov    %ecx,-0x10(%rbp)
    1d76:	44 89 45 ec          	mov    %r8d,-0x14(%rbp)
    1d7a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1d7d:	5d                   	pop    %rbp
    1d7e:	c3                   	ret    

0000000000001d7f <test7>:
    1d7f:	f3 0f 1e fa          	endbr64 
    1d83:	55                   	push   %rbp
    1d84:	48 89 e5             	mov    %rsp,%rbp
    1d87:	53                   	push   %rbx
    1d88:	48 81 ec 58 03 00 00 	sub    $0x358,%rsp
    1d8f:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    1d98:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1d9c:	31 c0                	xor    %eax,%eax
    1d9e:	c7 85 ac fc ff ff 00 00 00 00 	movl   $0x0,-0x354(%rbp)
    1da8:	c7 85 b0 fc ff ff 00 00 00 00 	movl   $0x0,-0x350(%rbp)
    1db2:	eb 73                	jmp    1e27 <test7+0xa8>
    1db4:	0f a2                	cpuid  
    1db6:	0f 31                	rdtsc  
    1db8:	89 d7                	mov    %edx,%edi
    1dba:	89 c6                	mov    %eax,%esi
    1dbc:	89 3d 52 32 00 00    	mov    %edi,0x3252(%rip)        # 5014 <start_hi>
    1dc2:	89 35 50 32 00 00    	mov    %esi,0x3250(%rip)        # 5018 <start_lo>
    1dc8:	b8 00 00 00 00       	mov    $0x0,%eax
    1dcd:	e8 76 ff ff ff       	call   1d48 <null>
    1dd2:	0f 01 f9             	rdtscp 
    1dd5:	89 d7                	mov    %edx,%edi
    1dd7:	89 c6                	mov    %eax,%esi
    1dd9:	0f a2                	cpuid  
    1ddb:	89 3d 3b 32 00 00    	mov    %edi,0x323b(%rip)        # 501c <end_hi>
    1de1:	89 35 39 32 00 00    	mov    %esi,0x3239(%rip)        # 5020 <end_lo>
    1de7:	8b 0d 33 32 00 00    	mov    0x3233(%rip),%ecx        # 5020 <end_lo>
    1ded:	8b 15 29 32 00 00    	mov    0x3229(%rip),%edx        # 501c <end_hi>
    1df3:	8b 35 1f 32 00 00    	mov    0x321f(%rip),%esi        # 5018 <start_lo>
    1df9:	8b 05 15 32 00 00    	mov    0x3215(%rip),%eax        # 5014 <start_hi>
    1dff:	8b 9d ac fc ff ff    	mov    -0x354(%rbp),%ebx
    1e05:	8d 7b 01             	lea    0x1(%rbx),%edi
    1e08:	89 bd ac fc ff ff    	mov    %edi,-0x354(%rbp)
    1e0e:	89 c7                	mov    %eax,%edi
    1e10:	e8 34 f4 ff ff       	call   1249 <get_cycles_measure>
    1e15:	48 63 d3             	movslq %ebx,%rdx
    1e18:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    1e20:	83 85 b0 fc ff ff 01 	addl   $0x1,-0x350(%rbp)
    1e27:	83 bd b0 fc ff ff 09 	cmpl   $0x9,-0x350(%rbp)
    1e2e:	7e 84                	jle    1db4 <test7+0x35>
    1e30:	c7 85 b4 fc ff ff 00 00 00 00 	movl   $0x0,-0x34c(%rbp)
    1e3a:	eb 73                	jmp    1eaf <test7+0x130>
    1e3c:	0f a2                	cpuid  
    1e3e:	0f 31                	rdtsc  
    1e40:	89 d7                	mov    %edx,%edi
    1e42:	89 c6                	mov    %eax,%esi
    1e44:	89 3d ca 31 00 00    	mov    %edi,0x31ca(%rip)        # 5014 <start_hi>
    1e4a:	89 35 c8 31 00 00    	mov    %esi,0x31c8(%rip)        # 5018 <start_lo>
    1e50:	b8 00 00 00 00       	mov    $0x0,%eax
    1e55:	e8 f9 fe ff ff       	call   1d53 <null0>
    1e5a:	0f 01 f9             	rdtscp 
    1e5d:	89 d7                	mov    %edx,%edi
    1e5f:	89 c6                	mov    %eax,%esi
    1e61:	0f a2                	cpuid  
    1e63:	89 3d b3 31 00 00    	mov    %edi,0x31b3(%rip)        # 501c <end_hi>
    1e69:	89 35 b1 31 00 00    	mov    %esi,0x31b1(%rip)        # 5020 <end_lo>
    1e6f:	8b 0d ab 31 00 00    	mov    0x31ab(%rip),%ecx        # 5020 <end_lo>
    1e75:	8b 15 a1 31 00 00    	mov    0x31a1(%rip),%edx        # 501c <end_hi>
    1e7b:	8b 35 97 31 00 00    	mov    0x3197(%rip),%esi        # 5018 <start_lo>
    1e81:	8b 05 8d 31 00 00    	mov    0x318d(%rip),%eax        # 5014 <start_hi>
    1e87:	8b 9d ac fc ff ff    	mov    -0x354(%rbp),%ebx
    1e8d:	8d 7b 01             	lea    0x1(%rbx),%edi
    1e90:	89 bd ac fc ff ff    	mov    %edi,-0x354(%rbp)
    1e96:	89 c7                	mov    %eax,%edi
    1e98:	e8 ac f3 ff ff       	call   1249 <get_cycles_measure>
    1e9d:	48 63 d3             	movslq %ebx,%rdx
    1ea0:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    1ea8:	83 85 b4 fc ff ff 01 	addl   $0x1,-0x34c(%rbp)
    1eaf:	83 bd b4 fc ff ff 09 	cmpl   $0x9,-0x34c(%rbp)
    1eb6:	7e 84                	jle    1e3c <test7+0xbd>
    1eb8:	c7 85 b8 fc ff ff 00 00 00 00 	movl   $0x0,-0x348(%rbp)
    1ec2:	e9 88 00 00 00       	jmp    1f4f <test7+0x1d0>
    1ec7:	0f a2                	cpuid  
    1ec9:	0f 31                	rdtsc  
    1ecb:	89 d7                	mov    %edx,%edi
    1ecd:	89 c6                	mov    %eax,%esi
    1ecf:	89 3d 3f 31 00 00    	mov    %edi,0x313f(%rip)        # 5014 <start_hi>
    1ed5:	89 35 3d 31 00 00    	mov    %esi,0x313d(%rip)        # 5018 <start_lo>
    1edb:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    1ee1:	b9 04 00 00 00       	mov    $0x4,%ecx
    1ee6:	ba 03 00 00 00       	mov    $0x3,%edx
    1eeb:	be 02 00 00 00       	mov    $0x2,%esi
    1ef0:	bf 01 00 00 00       	mov    $0x1,%edi
    1ef5:	e8 68 fe ff ff       	call   1d62 <null5>
    1efa:	0f 01 f9             	rdtscp 
    1efd:	89 d7                	mov    %edx,%edi
    1eff:	89 c6                	mov    %eax,%esi
    1f01:	0f a2                	cpuid  
    1f03:	89 3d 13 31 00 00    	mov    %edi,0x3113(%rip)        # 501c <end_hi>
    1f09:	89 35 11 31 00 00    	mov    %esi,0x3111(%rip)        # 5020 <end_lo>
    1f0f:	8b 0d 0b 31 00 00    	mov    0x310b(%rip),%ecx        # 5020 <end_lo>
    1f15:	8b 15 01 31 00 00    	mov    0x3101(%rip),%edx        # 501c <end_hi>
    1f1b:	8b 35 f7 30 00 00    	mov    0x30f7(%rip),%esi        # 5018 <start_lo>
    1f21:	8b 05 ed 30 00 00    	mov    0x30ed(%rip),%eax        # 5014 <start_hi>
    1f27:	8b 9d ac fc ff ff    	mov    -0x354(%rbp),%ebx
    1f2d:	8d 7b 01             	lea    0x1(%rbx),%edi
    1f30:	89 bd ac fc ff ff    	mov    %edi,-0x354(%rbp)
    1f36:	89 c7                	mov    %eax,%edi
    1f38:	e8 0c f3 ff ff       	call   1249 <get_cycles_measure>
    1f3d:	48 63 d3             	movslq %ebx,%rdx
    1f40:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    1f48:	83 85 b8 fc ff ff 01 	addl   $0x1,-0x348(%rbp)
    1f4f:	83 bd b8 fc ff ff 09 	cmpl   $0x9,-0x348(%rbp)
    1f56:	0f 8e 6b ff ff ff    	jle    1ec7 <test7+0x148>
    1f5c:	c7 85 bc fc ff ff 00 00 00 00 	movl   $0x0,-0x344(%rbp)
    1f66:	eb 6e                	jmp    1fd6 <test7+0x257>
    1f68:	8b 8d bc fc ff ff    	mov    -0x344(%rbp),%ecx
    1f6e:	48 63 c1             	movslq %ecx,%rax
    1f71:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    1f78:	48 c1 e8 20          	shr    $0x20,%rax
    1f7c:	c1 f8 02             	sar    $0x2,%eax
    1f7f:	89 ce                	mov    %ecx,%esi
    1f81:	c1 fe 1f             	sar    $0x1f,%esi
    1f84:	29 f0                	sub    %esi,%eax
    1f86:	89 c2                	mov    %eax,%edx
    1f88:	89 d0                	mov    %edx,%eax
    1f8a:	c1 e0 02             	shl    $0x2,%eax
    1f8d:	01 d0                	add    %edx,%eax
    1f8f:	01 c0                	add    %eax,%eax
    1f91:	29 c1                	sub    %eax,%ecx
    1f93:	89 ca                	mov    %ecx,%edx
    1f95:	85 d2                	test   %edx,%edx
    1f97:	75 0f                	jne    1fa8 <test7+0x229>
    1f99:	48 8d 05 28 11 00 00 	lea    0x1128(%rip),%rax        # 30c8 <_IO_stdin_used+0xc8>
    1fa0:	48 89 c7             	mov    %rax,%rdi
    1fa3:	e8 38 f1 ff ff       	call   10e0 <puts@plt>
    1fa8:	8b 85 bc fc ff ff    	mov    -0x344(%rbp),%eax
    1fae:	48 98                	cltq   
    1fb0:	48 8b 84 c5 c0 fc ff ff 	mov    -0x340(%rbp,%rax,8),%rax
    1fb8:	48 89 c6             	mov    %rax,%rsi
    1fbb:	48 8d 05 46 10 00 00 	lea    0x1046(%rip),%rax        # 3008 <_IO_stdin_used+0x8>
    1fc2:	48 89 c7             	mov    %rax,%rdi
    1fc5:	b8 00 00 00 00       	mov    $0x0,%eax
    1fca:	e8 41 f1 ff ff       	call   1110 <printf@plt>
    1fcf:	83 85 bc fc ff ff 01 	addl   $0x1,-0x344(%rbp)
    1fd6:	83 bd bc fc ff ff 27 	cmpl   $0x27,-0x344(%rbp)
    1fdd:	7e 89                	jle    1f68 <test7+0x1e9>
    1fdf:	48 8d 05 28 10 00 00 	lea    0x1028(%rip),%rax        # 300e <_IO_stdin_used+0xe>
    1fe6:	48 89 c7             	mov    %rax,%rdi
    1fe9:	e8 f2 f0 ff ff       	call   10e0 <puts@plt>
    1fee:	90                   	nop
    1fef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ff3:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    1ffc:	74 05                	je     2003 <test7+0x284>
    1ffe:	e8 fd f0 ff ff       	call   1100 <__stack_chk_fail@plt>
    2003:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2007:	c9                   	leave  
    2008:	c3                   	ret    

0000000000002009 <test8>:
    2009:	f3 0f 1e fa          	endbr64 
    200d:	55                   	push   %rbp
    200e:	48 89 e5             	mov    %rsp,%rbp
    2011:	53                   	push   %rbx
    2012:	48 81 ec 58 03 00 00 	sub    $0x358,%rsp
    2019:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    2022:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2026:	31 c0                	xor    %eax,%eax
    2028:	c7 85 a0 fc ff ff 00 00 00 00 	movl   $0x0,-0x360(%rbp)
    2032:	bf 00 10 00 00       	mov    $0x1000,%edi
    2037:	e8 04 f1 ff ff       	call   1140 <malloc@plt>
    203c:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
    2043:	48 8d 05 86 10 00 00 	lea    0x1086(%rip),%rax        # 30d0 <_IO_stdin_used+0xd0>
    204a:	48 89 c7             	mov    %rax,%rdi
    204d:	e8 8e f0 ff ff       	call   10e0 <puts@plt>
    2052:	c7 85 a4 fc ff ff 00 00 00 00 	movl   $0x0,-0x35c(%rbp)
    205c:	e9 82 00 00 00       	jmp    20e3 <test8+0xda>
    2061:	0f a2                	cpuid  
    2063:	0f 31                	rdtsc  
    2065:	89 d7                	mov    %edx,%edi
    2067:	89 c6                	mov    %eax,%esi
    2069:	89 3d a5 2f 00 00    	mov    %edi,0x2fa5(%rip)        # 5014 <start_hi>
    206f:	89 35 a3 2f 00 00    	mov    %esi,0x2fa3(%rip)        # 5018 <start_lo>
    2075:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    207c:	ba 01 00 00 00       	mov    $0x1,%edx
    2081:	be 63 00 00 00       	mov    $0x63,%esi
    2086:	48 89 c7             	mov    %rax,%rdi
    2089:	e8 92 f0 ff ff       	call   1120 <memset@plt>
    208e:	0f 01 f9             	rdtscp 
    2091:	89 d7                	mov    %edx,%edi
    2093:	89 c6                	mov    %eax,%esi
    2095:	0f a2                	cpuid  
    2097:	89 3d 7f 2f 00 00    	mov    %edi,0x2f7f(%rip)        # 501c <end_hi>
    209d:	89 35 7d 2f 00 00    	mov    %esi,0x2f7d(%rip)        # 5020 <end_lo>
    20a3:	8b 0d 77 2f 00 00    	mov    0x2f77(%rip),%ecx        # 5020 <end_lo>
    20a9:	8b 15 6d 2f 00 00    	mov    0x2f6d(%rip),%edx        # 501c <end_hi>
    20af:	8b 35 63 2f 00 00    	mov    0x2f63(%rip),%esi        # 5018 <start_lo>
    20b5:	8b 05 59 2f 00 00    	mov    0x2f59(%rip),%eax        # 5014 <start_hi>
    20bb:	8b 9d a0 fc ff ff    	mov    -0x360(%rbp),%ebx
    20c1:	8d 7b 01             	lea    0x1(%rbx),%edi
    20c4:	89 bd a0 fc ff ff    	mov    %edi,-0x360(%rbp)
    20ca:	89 c7                	mov    %eax,%edi
    20cc:	e8 78 f1 ff ff       	call   1249 <get_cycles_measure>
    20d1:	48 63 d3             	movslq %ebx,%rdx
    20d4:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    20dc:	83 85 a4 fc ff ff 01 	addl   $0x1,-0x35c(%rbp)
    20e3:	83 bd a4 fc ff ff 09 	cmpl   $0x9,-0x35c(%rbp)
    20ea:	0f 8e 71 ff ff ff    	jle    2061 <test8+0x58>
    20f0:	c7 85 a8 fc ff ff 00 00 00 00 	movl   $0x0,-0x358(%rbp)
    20fa:	e9 82 00 00 00       	jmp    2181 <test8+0x178>
    20ff:	0f a2                	cpuid  
    2101:	0f 31                	rdtsc  
    2103:	89 d7                	mov    %edx,%edi
    2105:	89 c6                	mov    %eax,%esi
    2107:	89 3d 07 2f 00 00    	mov    %edi,0x2f07(%rip)        # 5014 <start_hi>
    210d:	89 35 05 2f 00 00    	mov    %esi,0x2f05(%rip)        # 5018 <start_lo>
    2113:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    211a:	ba 64 00 00 00       	mov    $0x64,%edx
    211f:	be 63 00 00 00       	mov    $0x63,%esi
    2124:	48 89 c7             	mov    %rax,%rdi
    2127:	e8 f4 ef ff ff       	call   1120 <memset@plt>
    212c:	0f 01 f9             	rdtscp 
    212f:	89 d7                	mov    %edx,%edi
    2131:	89 c6                	mov    %eax,%esi
    2133:	0f a2                	cpuid  
    2135:	89 3d e1 2e 00 00    	mov    %edi,0x2ee1(%rip)        # 501c <end_hi>
    213b:	89 35 df 2e 00 00    	mov    %esi,0x2edf(%rip)        # 5020 <end_lo>
    2141:	8b 0d d9 2e 00 00    	mov    0x2ed9(%rip),%ecx        # 5020 <end_lo>
    2147:	8b 15 cf 2e 00 00    	mov    0x2ecf(%rip),%edx        # 501c <end_hi>
    214d:	8b 35 c5 2e 00 00    	mov    0x2ec5(%rip),%esi        # 5018 <start_lo>
    2153:	8b 05 bb 2e 00 00    	mov    0x2ebb(%rip),%eax        # 5014 <start_hi>
    2159:	8b 9d a0 fc ff ff    	mov    -0x360(%rbp),%ebx
    215f:	8d 7b 01             	lea    0x1(%rbx),%edi
    2162:	89 bd a0 fc ff ff    	mov    %edi,-0x360(%rbp)
    2168:	89 c7                	mov    %eax,%edi
    216a:	e8 da f0 ff ff       	call   1249 <get_cycles_measure>
    216f:	48 63 d3             	movslq %ebx,%rdx
    2172:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    217a:	83 85 a8 fc ff ff 01 	addl   $0x1,-0x358(%rbp)
    2181:	83 bd a8 fc ff ff 09 	cmpl   $0x9,-0x358(%rbp)
    2188:	0f 8e 71 ff ff ff    	jle    20ff <test8+0xf6>
    218e:	c7 85 ac fc ff ff 00 00 00 00 	movl   $0x0,-0x354(%rbp)
    2198:	e9 82 00 00 00       	jmp    221f <test8+0x216>
    219d:	0f a2                	cpuid  
    219f:	0f 31                	rdtsc  
    21a1:	89 d7                	mov    %edx,%edi
    21a3:	89 c6                	mov    %eax,%esi
    21a5:	89 3d 69 2e 00 00    	mov    %edi,0x2e69(%rip)        # 5014 <start_hi>
    21ab:	89 35 67 2e 00 00    	mov    %esi,0x2e67(%rip)        # 5018 <start_lo>
    21b1:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    21b8:	ba d0 07 00 00       	mov    $0x7d0,%edx
    21bd:	be 63 00 00 00       	mov    $0x63,%esi
    21c2:	48 89 c7             	mov    %rax,%rdi
    21c5:	e8 56 ef ff ff       	call   1120 <memset@plt>
    21ca:	0f 01 f9             	rdtscp 
    21cd:	89 d7                	mov    %edx,%edi
    21cf:	89 c6                	mov    %eax,%esi
    21d1:	0f a2                	cpuid  
    21d3:	89 3d 43 2e 00 00    	mov    %edi,0x2e43(%rip)        # 501c <end_hi>
    21d9:	89 35 41 2e 00 00    	mov    %esi,0x2e41(%rip)        # 5020 <end_lo>
    21df:	8b 0d 3b 2e 00 00    	mov    0x2e3b(%rip),%ecx        # 5020 <end_lo>
    21e5:	8b 15 31 2e 00 00    	mov    0x2e31(%rip),%edx        # 501c <end_hi>
    21eb:	8b 35 27 2e 00 00    	mov    0x2e27(%rip),%esi        # 5018 <start_lo>
    21f1:	8b 05 1d 2e 00 00    	mov    0x2e1d(%rip),%eax        # 5014 <start_hi>
    21f7:	8b 9d a0 fc ff ff    	mov    -0x360(%rbp),%ebx
    21fd:	8d 7b 01             	lea    0x1(%rbx),%edi
    2200:	89 bd a0 fc ff ff    	mov    %edi,-0x360(%rbp)
    2206:	89 c7                	mov    %eax,%edi
    2208:	e8 3c f0 ff ff       	call   1249 <get_cycles_measure>
    220d:	48 63 d3             	movslq %ebx,%rdx
    2210:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    2218:	83 85 ac fc ff ff 01 	addl   $0x1,-0x354(%rbp)
    221f:	83 bd ac fc ff ff 09 	cmpl   $0x9,-0x354(%rbp)
    2226:	0f 8e 71 ff ff ff    	jle    219d <test8+0x194>
    222c:	c7 85 b0 fc ff ff 00 00 00 00 	movl   $0x0,-0x350(%rbp)
    2236:	e9 82 00 00 00       	jmp    22bd <test8+0x2b4>
    223b:	0f a2                	cpuid  
    223d:	0f 31                	rdtsc  
    223f:	89 d7                	mov    %edx,%edi
    2241:	89 c6                	mov    %eax,%esi
    2243:	89 3d cb 2d 00 00    	mov    %edi,0x2dcb(%rip)        # 5014 <start_hi>
    2249:	89 35 c9 2d 00 00    	mov    %esi,0x2dc9(%rip)        # 5018 <start_lo>
    224f:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    2256:	ba 00 10 00 00       	mov    $0x1000,%edx
    225b:	be 63 00 00 00       	mov    $0x63,%esi
    2260:	48 89 c7             	mov    %rax,%rdi
    2263:	e8 b8 ee ff ff       	call   1120 <memset@plt>
    2268:	0f 01 f9             	rdtscp 
    226b:	89 d7                	mov    %edx,%edi
    226d:	89 c6                	mov    %eax,%esi
    226f:	0f a2                	cpuid  
    2271:	89 3d a5 2d 00 00    	mov    %edi,0x2da5(%rip)        # 501c <end_hi>
    2277:	89 35 a3 2d 00 00    	mov    %esi,0x2da3(%rip)        # 5020 <end_lo>
    227d:	8b 0d 9d 2d 00 00    	mov    0x2d9d(%rip),%ecx        # 5020 <end_lo>
    2283:	8b 15 93 2d 00 00    	mov    0x2d93(%rip),%edx        # 501c <end_hi>
    2289:	8b 35 89 2d 00 00    	mov    0x2d89(%rip),%esi        # 5018 <start_lo>
    228f:	8b 05 7f 2d 00 00    	mov    0x2d7f(%rip),%eax        # 5014 <start_hi>
    2295:	8b 9d a0 fc ff ff    	mov    -0x360(%rbp),%ebx
    229b:	8d 7b 01             	lea    0x1(%rbx),%edi
    229e:	89 bd a0 fc ff ff    	mov    %edi,-0x360(%rbp)
    22a4:	89 c7                	mov    %eax,%edi
    22a6:	e8 9e ef ff ff       	call   1249 <get_cycles_measure>
    22ab:	48 63 d3             	movslq %ebx,%rdx
    22ae:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    22b6:	83 85 b0 fc ff ff 01 	addl   $0x1,-0x350(%rbp)
    22bd:	83 bd b0 fc ff ff 09 	cmpl   $0x9,-0x350(%rbp)
    22c4:	0f 8e 71 ff ff ff    	jle    223b <test8+0x232>
    22ca:	c7 85 b4 fc ff ff 00 00 00 00 	movl   $0x0,-0x34c(%rbp)
    22d4:	eb 6e                	jmp    2344 <test8+0x33b>
    22d6:	8b 8d b4 fc ff ff    	mov    -0x34c(%rbp),%ecx
    22dc:	48 63 c1             	movslq %ecx,%rax
    22df:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    22e6:	48 c1 e8 20          	shr    $0x20,%rax
    22ea:	c1 f8 02             	sar    $0x2,%eax
    22ed:	89 ce                	mov    %ecx,%esi
    22ef:	c1 fe 1f             	sar    $0x1f,%esi
    22f2:	29 f0                	sub    %esi,%eax
    22f4:	89 c2                	mov    %eax,%edx
    22f6:	89 d0                	mov    %edx,%eax
    22f8:	c1 e0 02             	shl    $0x2,%eax
    22fb:	01 d0                	add    %edx,%eax
    22fd:	01 c0                	add    %eax,%eax
    22ff:	29 c1                	sub    %eax,%ecx
    2301:	89 ca                	mov    %ecx,%edx
    2303:	85 d2                	test   %edx,%edx
    2305:	75 0f                	jne    2316 <test8+0x30d>
    2307:	48 8d 05 ba 0d 00 00 	lea    0xdba(%rip),%rax        # 30c8 <_IO_stdin_used+0xc8>
    230e:	48 89 c7             	mov    %rax,%rdi
    2311:	e8 ca ed ff ff       	call   10e0 <puts@plt>
    2316:	8b 85 b4 fc ff ff    	mov    -0x34c(%rbp),%eax
    231c:	48 98                	cltq   
    231e:	48 8b 84 c5 c0 fc ff ff 	mov    -0x340(%rbp,%rax,8),%rax
    2326:	48 89 c6             	mov    %rax,%rsi
    2329:	48 8d 05 d8 0c 00 00 	lea    0xcd8(%rip),%rax        # 3008 <_IO_stdin_used+0x8>
    2330:	48 89 c7             	mov    %rax,%rdi
    2333:	b8 00 00 00 00       	mov    $0x0,%eax
    2338:	e8 d3 ed ff ff       	call   1110 <printf@plt>
    233d:	83 85 b4 fc ff ff 01 	addl   $0x1,-0x34c(%rbp)
    2344:	83 bd b4 fc ff ff 27 	cmpl   $0x27,-0x34c(%rbp)
    234b:	7e 89                	jle    22d6 <test8+0x2cd>
    234d:	0f 31                	rdtsc  
    234f:	48 8d 05 b8 0c 00 00 	lea    0xcb8(%rip),%rax        # 300e <_IO_stdin_used+0xe>
    2356:	48 89 c7             	mov    %rax,%rdi
    2359:	e8 82 ed ff ff       	call   10e0 <puts@plt>
    235e:	90                   	nop
    235f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2363:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    236c:	74 05                	je     2373 <test8+0x36a>
    236e:	e8 8d ed ff ff       	call   1100 <__stack_chk_fail@plt>
    2373:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2377:	c9                   	leave  
    2378:	c3                   	ret    

0000000000002379 <test9>:
    2379:	f3 0f 1e fa          	endbr64 
    237d:	55                   	push   %rbp
    237e:	48 89 e5             	mov    %rsp,%rbp
    2381:	53                   	push   %rbx
    2382:	4c 8d 9c 24 00 f0 85 ff 	lea    -0x7a1000(%rsp),%r11
    238a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2391:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2396:	4c 39 dc             	cmp    %r11,%rsp
    2399:	75 ef                	jne    238a <test9+0x11>
    239b:	48 81 ec 28 02 00 00 	sub    $0x228,%rsp
    23a2:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    23ab:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    23af:	31 c0                	xor    %eax,%eax
    23b1:	c7 85 d0 ed 85 ff 00 00 00 00 	movl   $0x0,-0x7a1230(%rbp)
    23bb:	48 c7 85 d8 ed 85 ff 00 00 00 00 	movq   $0x0,-0x7a1228(%rbp)
    23c6:	c7 85 d4 ed 85 ff 00 00 00 00 	movl   $0x0,-0x7a122c(%rbp)
    23d0:	eb 6b                	jmp    243d <test9+0xc4>
    23d2:	0f a2                	cpuid  
    23d4:	0f 31                	rdtsc  
    23d6:	89 d7                	mov    %edx,%edi
    23d8:	89 c6                	mov    %eax,%esi
    23da:	89 3d 34 2c 00 00    	mov    %edi,0x2c34(%rip)        # 5014 <start_hi>
    23e0:	89 35 32 2c 00 00    	mov    %esi,0x2c32(%rip)        # 5018 <start_lo>
    23e6:	0f 31                	rdtsc  
    23e8:	0f 01 f9             	rdtscp 
    23eb:	89 d7                	mov    %edx,%edi
    23ed:	89 c6                	mov    %eax,%esi
    23ef:	0f a2                	cpuid  
    23f1:	89 3d 25 2c 00 00    	mov    %edi,0x2c25(%rip)        # 501c <end_hi>
    23f7:	89 35 23 2c 00 00    	mov    %esi,0x2c23(%rip)        # 5020 <end_lo>
    23fd:	8b 0d 1d 2c 00 00    	mov    0x2c1d(%rip),%ecx        # 5020 <end_lo>
    2403:	8b 15 13 2c 00 00    	mov    0x2c13(%rip),%edx        # 501c <end_hi>
    2409:	8b 35 09 2c 00 00    	mov    0x2c09(%rip),%esi        # 5018 <start_lo>
    240f:	8b 05 ff 2b 00 00    	mov    0x2bff(%rip),%eax        # 5014 <start_hi>
    2415:	8b 9d d0 ed 85 ff    	mov    -0x7a1230(%rbp),%ebx
    241b:	8d 7b 01             	lea    0x1(%rbx),%edi
    241e:	89 bd d0 ed 85 ff    	mov    %edi,-0x7a1230(%rbp)
    2424:	89 c7                	mov    %eax,%edi
    2426:	e8 1e ee ff ff       	call   1249 <get_cycles_measure>
    242b:	48 63 d3             	movslq %ebx,%rdx
    242e:	48 89 84 d5 e0 ed 85 ff 	mov    %rax,-0x7a1220(%rbp,%rdx,8)
    2436:	83 85 d4 ed 85 ff 01 	addl   $0x1,-0x7a122c(%rbp)
    243d:	81 bd d4 ed 85 ff 3f 42 0f 00 	cmpl   $0xf423f,-0x7a122c(%rbp)
    2447:	7e 89                	jle    23d2 <test9+0x59>
    2449:	48 8d 85 e0 ed 85 ff 	lea    -0x7a1220(%rbp),%rax
    2450:	be 40 42 0f 00       	mov    $0xf4240,%esi
    2455:	48 89 c7             	mov    %rax,%rdi
    2458:	e8 32 ee ff ff       	call   128f <print>
    245d:	90                   	nop
    245e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2462:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    246b:	74 05                	je     2472 <test9+0xf9>
    246d:	e8 8e ec ff ff       	call   1100 <__stack_chk_fail@plt>
    2472:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2476:	c9                   	leave  
    2477:	c3                   	ret    

0000000000002478 <test10>:
    2478:	f3 0f 1e fa          	endbr64 
    247c:	55                   	push   %rbp
    247d:	48 89 e5             	mov    %rsp,%rbp
    2480:	53                   	push   %rbx
    2481:	4c 8d 9c 24 00 f0 85 ff 	lea    -0x7a1000(%rsp),%r11
    2489:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2490:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2495:	4c 39 dc             	cmp    %r11,%rsp
    2498:	75 ef                	jne    2489 <test10+0x11>
    249a:	48 81 ec 88 02 00 00 	sub    $0x288,%rsp
    24a1:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    24aa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    24ae:	31 c0                	xor    %eax,%eax
    24b0:	c7 85 74 ed 85 ff 00 00 00 00 	movl   $0x0,-0x7a128c(%rbp)
    24ba:	48 c7 85 80 ed 85 ff 00 00 00 00 	movq   $0x0,-0x7a1280(%rbp)
    24c5:	48 c7 85 90 ed 85 ff 01 00 00 00 	movq   $0x1,-0x7a1270(%rbp)
    24d0:	48 8d 05 21 0c 00 00 	lea    0xc21(%rip),%rax        # 30f8 <_IO_stdin_used+0xf8>
    24d7:	48 89 c7             	mov    %rax,%rdi
    24da:	e8 01 ec ff ff       	call   10e0 <puts@plt>
    24df:	48 8d 85 90 ed 85 ff 	lea    -0x7a1270(%rbp),%rax
    24e6:	48 89 85 88 ed 85 ff 	mov    %rax,-0x7a1278(%rbp)
    24ed:	48 8b 85 88 ed 85 ff 	mov    -0x7a1278(%rbp),%rax
    24f4:	0f ae 38             	clflush (%rax)
    24f7:	90                   	nop
    24f8:	c7 85 78 ed 85 ff 00 00 00 00 	movl   $0x0,-0x7a1288(%rbp)
    2502:	eb 74                	jmp    2578 <test10+0x100>
    2504:	0f a2                	cpuid  
    2506:	0f 31                	rdtsc  
    2508:	89 d7                	mov    %edx,%edi
    250a:	89 c6                	mov    %eax,%esi
    250c:	89 3d 02 2b 00 00    	mov    %edi,0x2b02(%rip)        # 5014 <start_hi>
    2512:	89 35 00 2b 00 00    	mov    %esi,0x2b00(%rip)        # 5018 <start_lo>
    2518:	48 c7 85 90 ed 85 ff 01 00 00 00 	movq   $0x1,-0x7a1270(%rbp)
    2523:	0f 01 f9             	rdtscp 
    2526:	89 d7                	mov    %edx,%edi
    2528:	89 c6                	mov    %eax,%esi
    252a:	0f a2                	cpuid  
    252c:	89 3d ea 2a 00 00    	mov    %edi,0x2aea(%rip)        # 501c <end_hi>
    2532:	89 35 e8 2a 00 00    	mov    %esi,0x2ae8(%rip)        # 5020 <end_lo>
    2538:	8b 0d e2 2a 00 00    	mov    0x2ae2(%rip),%ecx        # 5020 <end_lo>
    253e:	8b 15 d8 2a 00 00    	mov    0x2ad8(%rip),%edx        # 501c <end_hi>
    2544:	8b 35 ce 2a 00 00    	mov    0x2ace(%rip),%esi        # 5018 <start_lo>
    254a:	8b 05 c4 2a 00 00    	mov    0x2ac4(%rip),%eax        # 5014 <start_hi>
    2550:	8b 9d 74 ed 85 ff    	mov    -0x7a128c(%rbp),%ebx
    2556:	8d 7b 01             	lea    0x1(%rbx),%edi
    2559:	89 bd 74 ed 85 ff    	mov    %edi,-0x7a128c(%rbp)
    255f:	89 c7                	mov    %eax,%edi
    2561:	e8 e3 ec ff ff       	call   1249 <get_cycles_measure>
    2566:	48 63 d3             	movslq %ebx,%rdx
    2569:	48 89 84 d5 e0 ed 85 ff 	mov    %rax,-0x7a1220(%rbp,%rdx,8)
    2571:	83 85 78 ed 85 ff 01 	addl   $0x1,-0x7a1288(%rbp)
    2578:	83 bd 78 ed 85 ff 09 	cmpl   $0x9,-0x7a1288(%rbp)
    257f:	7e 83                	jle    2504 <test10+0x8c>
    2581:	c7 85 7c ed 85 ff 00 00 00 00 	movl   $0x0,-0x7a1284(%rbp)
    258b:	eb 2e                	jmp    25bb <test10+0x143>
    258d:	8b 85 7c ed 85 ff    	mov    -0x7a1284(%rbp),%eax
    2593:	48 98                	cltq   
    2595:	48 8b 84 c5 e0 ed 85 ff 	mov    -0x7a1220(%rbp,%rax,8),%rax
    259d:	48 89 c6             	mov    %rax,%rsi
    25a0:	48 8d 05 61 0a 00 00 	lea    0xa61(%rip),%rax        # 3008 <_IO_stdin_used+0x8>
    25a7:	48 89 c7             	mov    %rax,%rdi
    25aa:	b8 00 00 00 00       	mov    $0x0,%eax
    25af:	e8 5c eb ff ff       	call   1110 <printf@plt>
    25b4:	83 85 7c ed 85 ff 01 	addl   $0x1,-0x7a1284(%rbp)
    25bb:	83 bd 7c ed 85 ff 09 	cmpl   $0x9,-0x7a1284(%rbp)
    25c2:	7e c9                	jle    258d <test10+0x115>
    25c4:	48 8d 05 43 0a 00 00 	lea    0xa43(%rip),%rax        # 300e <_IO_stdin_used+0xe>
    25cb:	48 89 c7             	mov    %rax,%rdi
    25ce:	e8 0d eb ff ff       	call   10e0 <puts@plt>
    25d3:	90                   	nop
    25d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    25d8:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    25e1:	74 05                	je     25e8 <test10+0x170>
    25e3:	e8 18 eb ff ff       	call   1100 <__stack_chk_fail@plt>
    25e8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    25ec:	c9                   	leave  
    25ed:	c3                   	ret    

00000000000025ee <test11>:
    25ee:	f3 0f 1e fa          	endbr64 
    25f2:	55                   	push   %rbp
    25f3:	48 89 e5             	mov    %rsp,%rbp
    25f6:	53                   	push   %rbx
    25f7:	48 81 ec 58 03 00 00 	sub    $0x358,%rsp
    25fe:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    2607:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    260b:	31 c0                	xor    %eax,%eax
    260d:	c7 85 ac fc ff ff 00 00 00 00 	movl   $0x0,-0x354(%rbp)
    2617:	48 8d 05 02 0b 00 00 	lea    0xb02(%rip),%rax        # 3120 <_IO_stdin_used+0x120>
    261e:	48 89 c7             	mov    %rax,%rdi
    2621:	e8 ba ea ff ff       	call   10e0 <puts@plt>
    2626:	c7 85 b0 fc ff ff 00 00 00 00 	movl   $0x0,-0x350(%rbp)
    2630:	eb 7f                	jmp    26b1 <test11+0xc3>
    2632:	0f a2                	cpuid  
    2634:	0f 31                	rdtsc  
    2636:	89 d7                	mov    %edx,%edi
    2638:	89 c6                	mov    %eax,%esi
    263a:	89 3d d4 29 00 00    	mov    %edi,0x29d4(%rip)        # 5014 <start_hi>
    2640:	89 35 d2 29 00 00    	mov    %esi,0x29d2(%rip)        # 5018 <start_lo>
    2646:	bf 4f 01 00 00       	mov    $0x14f,%edi
    264b:	b8 00 00 00 00       	mov    $0x0,%eax
    2650:	e8 db ea ff ff       	call   1130 <syscall@plt>
    2655:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
    265c:	0f 01 f9             	rdtscp 
    265f:	89 d7                	mov    %edx,%edi
    2661:	89 c6                	mov    %eax,%esi
    2663:	0f a2                	cpuid  
    2665:	89 3d b1 29 00 00    	mov    %edi,0x29b1(%rip)        # 501c <end_hi>
    266b:	89 35 af 29 00 00    	mov    %esi,0x29af(%rip)        # 5020 <end_lo>
    2671:	8b 0d a9 29 00 00    	mov    0x29a9(%rip),%ecx        # 5020 <end_lo>
    2677:	8b 15 9f 29 00 00    	mov    0x299f(%rip),%edx        # 501c <end_hi>
    267d:	8b 35 95 29 00 00    	mov    0x2995(%rip),%esi        # 5018 <start_lo>
    2683:	8b 05 8b 29 00 00    	mov    0x298b(%rip),%eax        # 5014 <start_hi>
    2689:	8b 9d ac fc ff ff    	mov    -0x354(%rbp),%ebx
    268f:	8d 7b 01             	lea    0x1(%rbx),%edi
    2692:	89 bd ac fc ff ff    	mov    %edi,-0x354(%rbp)
    2698:	89 c7                	mov    %eax,%edi
    269a:	e8 aa eb ff ff       	call   1249 <get_cycles_measure>
    269f:	48 63 d3             	movslq %ebx,%rdx
    26a2:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    26aa:	83 85 b0 fc ff ff 01 	addl   $0x1,-0x350(%rbp)
    26b1:	83 bd b0 fc ff ff 09 	cmpl   $0x9,-0x350(%rbp)
    26b8:	0f 8e 74 ff ff ff    	jle    2632 <test11+0x44>
    26be:	c7 85 b4 fc ff ff 00 00 00 00 	movl   $0x0,-0x34c(%rbp)
    26c8:	eb 2e                	jmp    26f8 <test11+0x10a>
    26ca:	8b 85 b4 fc ff ff    	mov    -0x34c(%rbp),%eax
    26d0:	48 98                	cltq   
    26d2:	48 8b 84 c5 c0 fc ff ff 	mov    -0x340(%rbp,%rax,8),%rax
    26da:	48 89 c6             	mov    %rax,%rsi
    26dd:	48 8d 05 24 09 00 00 	lea    0x924(%rip),%rax        # 3008 <_IO_stdin_used+0x8>
    26e4:	48 89 c7             	mov    %rax,%rdi
    26e7:	b8 00 00 00 00       	mov    $0x0,%eax
    26ec:	e8 1f ea ff ff       	call   1110 <printf@plt>
    26f1:	83 85 b4 fc ff ff 01 	addl   $0x1,-0x34c(%rbp)
    26f8:	83 bd b4 fc ff ff 09 	cmpl   $0x9,-0x34c(%rbp)
    26ff:	7e c9                	jle    26ca <test11+0xdc>
    2701:	48 8d 05 06 09 00 00 	lea    0x906(%rip),%rax        # 300e <_IO_stdin_used+0xe>
    2708:	48 89 c7             	mov    %rax,%rdi
    270b:	e8 d0 e9 ff ff       	call   10e0 <puts@plt>
    2710:	90                   	nop
    2711:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2715:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    271e:	74 05                	je     2725 <test11+0x137>
    2720:	e8 db e9 ff ff       	call   1100 <__stack_chk_fail@plt>
    2725:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2729:	c9                   	leave  
    272a:	c3                   	ret    

000000000000272b <test12>:
    272b:	f3 0f 1e fa          	endbr64 
    272f:	55                   	push   %rbp
    2730:	48 89 e5             	mov    %rsp,%rbp
    2733:	53                   	push   %rbx
    2734:	48 81 ec 68 03 00 00 	sub    $0x368,%rsp
    273b:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    2744:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2748:	31 c0                	xor    %eax,%eax
    274a:	c7 85 94 fc ff ff 00 00 00 00 	movl   $0x0,-0x36c(%rbp)
    2754:	bf 00 10 00 00       	mov    $0x1000,%edi
    2759:	e8 e2 e9 ff ff       	call   1140 <malloc@plt>
    275e:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
    2765:	48 8d 05 e4 09 00 00 	lea    0x9e4(%rip),%rax        # 3150 <_IO_stdin_used+0x150>
    276c:	48 89 c7             	mov    %rax,%rdi
    276f:	e8 6c e9 ff ff       	call   10e0 <puts@plt>
    2774:	c7 85 98 fc ff ff 00 00 00 00 	movl   $0x0,-0x368(%rbp)
    277e:	eb 73                	jmp    27f3 <test12+0xc8>
    2780:	0f a2                	cpuid  
    2782:	0f 31                	rdtsc  
    2784:	89 d7                	mov    %edx,%edi
    2786:	89 c6                	mov    %eax,%esi
    2788:	89 3d 86 28 00 00    	mov    %edi,0x2886(%rip)        # 5014 <start_hi>
    278e:	89 35 84 28 00 00    	mov    %esi,0x2884(%rip)        # 5018 <start_lo>
    2794:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    279b:	c6 00 63             	movb   $0x63,(%rax)
    279e:	0f 01 f9             	rdtscp 
    27a1:	89 d7                	mov    %edx,%edi
    27a3:	89 c6                	mov    %eax,%esi
    27a5:	0f a2                	cpuid  
    27a7:	89 3d 6f 28 00 00    	mov    %edi,0x286f(%rip)        # 501c <end_hi>
    27ad:	89 35 6d 28 00 00    	mov    %esi,0x286d(%rip)        # 5020 <end_lo>
    27b3:	8b 0d 67 28 00 00    	mov    0x2867(%rip),%ecx        # 5020 <end_lo>
    27b9:	8b 15 5d 28 00 00    	mov    0x285d(%rip),%edx        # 501c <end_hi>
    27bf:	8b 35 53 28 00 00    	mov    0x2853(%rip),%esi        # 5018 <start_lo>
    27c5:	8b 05 49 28 00 00    	mov    0x2849(%rip),%eax        # 5014 <start_hi>
    27cb:	8b 9d 94 fc ff ff    	mov    -0x36c(%rbp),%ebx
    27d1:	8d 7b 01             	lea    0x1(%rbx),%edi
    27d4:	89 bd 94 fc ff ff    	mov    %edi,-0x36c(%rbp)
    27da:	89 c7                	mov    %eax,%edi
    27dc:	e8 68 ea ff ff       	call   1249 <get_cycles_measure>
    27e1:	48 63 d3             	movslq %ebx,%rdx
    27e4:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    27ec:	83 85 98 fc ff ff 01 	addl   $0x1,-0x368(%rbp)
    27f3:	83 bd 98 fc ff ff 09 	cmpl   $0x9,-0x368(%rbp)
    27fa:	7e 84                	jle    2780 <test12+0x55>
    27fc:	c7 85 9c fc ff ff 00 00 00 00 	movl   $0x0,-0x364(%rbp)
    2806:	e9 9b 00 00 00       	jmp    28a6 <test12+0x17b>
    280b:	0f a2                	cpuid  
    280d:	0f 31                	rdtsc  
    280f:	89 d7                	mov    %edx,%edi
    2811:	89 c6                	mov    %eax,%esi
    2813:	89 3d fb 27 00 00    	mov    %edi,0x27fb(%rip)        # 5014 <start_hi>
    2819:	89 35 f9 27 00 00    	mov    %esi,0x27f9(%rip)        # 5018 <start_lo>
    281f:	c7 85 a0 fc ff ff 00 00 00 00 	movl   $0x0,-0x360(%rbp)
    2829:	eb 1d                	jmp    2848 <test12+0x11d>
    282b:	8b 85 a0 fc ff ff    	mov    -0x360(%rbp),%eax
    2831:	48 63 d0             	movslq %eax,%rdx
    2834:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    283b:	48 01 d0             	add    %rdx,%rax
    283e:	c6 00 63             	movb   $0x63,(%rax)
    2841:	83 85 a0 fc ff ff 01 	addl   $0x1,-0x360(%rbp)
    2848:	83 bd a0 fc ff ff 63 	cmpl   $0x63,-0x360(%rbp)
    284f:	7e da                	jle    282b <test12+0x100>
    2851:	0f 01 f9             	rdtscp 
    2854:	89 d7                	mov    %edx,%edi
    2856:	89 c6                	mov    %eax,%esi
    2858:	0f a2                	cpuid  
    285a:	89 3d bc 27 00 00    	mov    %edi,0x27bc(%rip)        # 501c <end_hi>
    2860:	89 35 ba 27 00 00    	mov    %esi,0x27ba(%rip)        # 5020 <end_lo>
    2866:	8b 0d b4 27 00 00    	mov    0x27b4(%rip),%ecx        # 5020 <end_lo>
    286c:	8b 15 aa 27 00 00    	mov    0x27aa(%rip),%edx        # 501c <end_hi>
    2872:	8b 35 a0 27 00 00    	mov    0x27a0(%rip),%esi        # 5018 <start_lo>
    2878:	8b 05 96 27 00 00    	mov    0x2796(%rip),%eax        # 5014 <start_hi>
    287e:	8b 9d 94 fc ff ff    	mov    -0x36c(%rbp),%ebx
    2884:	8d 7b 01             	lea    0x1(%rbx),%edi
    2887:	89 bd 94 fc ff ff    	mov    %edi,-0x36c(%rbp)
    288d:	89 c7                	mov    %eax,%edi
    288f:	e8 b5 e9 ff ff       	call   1249 <get_cycles_measure>
    2894:	48 63 d3             	movslq %ebx,%rdx
    2897:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    289f:	83 85 9c fc ff ff 01 	addl   $0x1,-0x364(%rbp)
    28a6:	83 bd 9c fc ff ff 09 	cmpl   $0x9,-0x364(%rbp)
    28ad:	0f 8e 58 ff ff ff    	jle    280b <test12+0xe0>
    28b3:	c7 85 a4 fc ff ff 00 00 00 00 	movl   $0x0,-0x35c(%rbp)
    28bd:	e9 9e 00 00 00       	jmp    2960 <test12+0x235>
    28c2:	0f a2                	cpuid  
    28c4:	0f 31                	rdtsc  
    28c6:	89 d7                	mov    %edx,%edi
    28c8:	89 c6                	mov    %eax,%esi
    28ca:	89 3d 44 27 00 00    	mov    %edi,0x2744(%rip)        # 5014 <start_hi>
    28d0:	89 35 42 27 00 00    	mov    %esi,0x2742(%rip)        # 5018 <start_lo>
    28d6:	c7 85 a8 fc ff ff 00 00 00 00 	movl   $0x0,-0x358(%rbp)
    28e0:	eb 1d                	jmp    28ff <test12+0x1d4>
    28e2:	8b 85 a8 fc ff ff    	mov    -0x358(%rbp),%eax
    28e8:	48 63 d0             	movslq %eax,%rdx
    28eb:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    28f2:	48 01 d0             	add    %rdx,%rax
    28f5:	c6 00 63             	movb   $0x63,(%rax)
    28f8:	83 85 a8 fc ff ff 01 	addl   $0x1,-0x358(%rbp)
    28ff:	81 bd a8 fc ff ff cf 07 00 00 	cmpl   $0x7cf,-0x358(%rbp)
    2909:	7e d7                	jle    28e2 <test12+0x1b7>
    290b:	0f 01 f9             	rdtscp 
    290e:	89 d7                	mov    %edx,%edi
    2910:	89 c6                	mov    %eax,%esi
    2912:	0f a2                	cpuid  
    2914:	89 3d 02 27 00 00    	mov    %edi,0x2702(%rip)        # 501c <end_hi>
    291a:	89 35 00 27 00 00    	mov    %esi,0x2700(%rip)        # 5020 <end_lo>
    2920:	8b 0d fa 26 00 00    	mov    0x26fa(%rip),%ecx        # 5020 <end_lo>
    2926:	8b 15 f0 26 00 00    	mov    0x26f0(%rip),%edx        # 501c <end_hi>
    292c:	8b 35 e6 26 00 00    	mov    0x26e6(%rip),%esi        # 5018 <start_lo>
    2932:	8b 05 dc 26 00 00    	mov    0x26dc(%rip),%eax        # 5014 <start_hi>
    2938:	8b 9d 94 fc ff ff    	mov    -0x36c(%rbp),%ebx
    293e:	8d 7b 01             	lea    0x1(%rbx),%edi
    2941:	89 bd 94 fc ff ff    	mov    %edi,-0x36c(%rbp)
    2947:	89 c7                	mov    %eax,%edi
    2949:	e8 fb e8 ff ff       	call   1249 <get_cycles_measure>
    294e:	48 63 d3             	movslq %ebx,%rdx
    2951:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    2959:	83 85 a4 fc ff ff 01 	addl   $0x1,-0x35c(%rbp)
    2960:	83 bd a4 fc ff ff 09 	cmpl   $0x9,-0x35c(%rbp)
    2967:	0f 8e 55 ff ff ff    	jle    28c2 <test12+0x197>
    296d:	c7 85 ac fc ff ff 00 00 00 00 	movl   $0x0,-0x354(%rbp)
    2977:	e9 9e 00 00 00       	jmp    2a1a <test12+0x2ef>
    297c:	0f a2                	cpuid  
    297e:	0f 31                	rdtsc  
    2980:	89 d7                	mov    %edx,%edi
    2982:	89 c6                	mov    %eax,%esi
    2984:	89 3d 8a 26 00 00    	mov    %edi,0x268a(%rip)        # 5014 <start_hi>
    298a:	89 35 88 26 00 00    	mov    %esi,0x2688(%rip)        # 5018 <start_lo>
    2990:	c7 85 b0 fc ff ff 00 00 00 00 	movl   $0x0,-0x350(%rbp)
    299a:	eb 1d                	jmp    29b9 <test12+0x28e>
    299c:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    29a2:	48 63 d0             	movslq %eax,%rdx
    29a5:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    29ac:	48 01 d0             	add    %rdx,%rax
    29af:	c6 00 63             	movb   $0x63,(%rax)
    29b2:	83 85 b0 fc ff ff 01 	addl   $0x1,-0x350(%rbp)
    29b9:	81 bd b0 fc ff ff ff 0f 00 00 	cmpl   $0xfff,-0x350(%rbp)
    29c3:	7e d7                	jle    299c <test12+0x271>
    29c5:	0f 01 f9             	rdtscp 
    29c8:	89 d7                	mov    %edx,%edi
    29ca:	89 c6                	mov    %eax,%esi
    29cc:	0f a2                	cpuid  
    29ce:	89 3d 48 26 00 00    	mov    %edi,0x2648(%rip)        # 501c <end_hi>
    29d4:	89 35 46 26 00 00    	mov    %esi,0x2646(%rip)        # 5020 <end_lo>
    29da:	8b 0d 40 26 00 00    	mov    0x2640(%rip),%ecx        # 5020 <end_lo>
    29e0:	8b 15 36 26 00 00    	mov    0x2636(%rip),%edx        # 501c <end_hi>
    29e6:	8b 35 2c 26 00 00    	mov    0x262c(%rip),%esi        # 5018 <start_lo>
    29ec:	8b 05 22 26 00 00    	mov    0x2622(%rip),%eax        # 5014 <start_hi>
    29f2:	8b 9d 94 fc ff ff    	mov    -0x36c(%rbp),%ebx
    29f8:	8d 7b 01             	lea    0x1(%rbx),%edi
    29fb:	89 bd 94 fc ff ff    	mov    %edi,-0x36c(%rbp)
    2a01:	89 c7                	mov    %eax,%edi
    2a03:	e8 41 e8 ff ff       	call   1249 <get_cycles_measure>
    2a08:	48 63 d3             	movslq %ebx,%rdx
    2a0b:	48 89 84 d5 c0 fc ff ff 	mov    %rax,-0x340(%rbp,%rdx,8)
    2a13:	83 85 ac fc ff ff 01 	addl   $0x1,-0x354(%rbp)
    2a1a:	83 bd ac fc ff ff 09 	cmpl   $0x9,-0x354(%rbp)
    2a21:	0f 8e 55 ff ff ff    	jle    297c <test12+0x251>
    2a27:	c7 85 b4 fc ff ff 00 00 00 00 	movl   $0x0,-0x34c(%rbp)
    2a31:	eb 6e                	jmp    2aa1 <test12+0x376>
    2a33:	8b 8d b4 fc ff ff    	mov    -0x34c(%rbp),%ecx
    2a39:	48 63 c1             	movslq %ecx,%rax
    2a3c:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    2a43:	48 c1 e8 20          	shr    $0x20,%rax
    2a47:	c1 f8 02             	sar    $0x2,%eax
    2a4a:	89 ce                	mov    %ecx,%esi
    2a4c:	c1 fe 1f             	sar    $0x1f,%esi
    2a4f:	29 f0                	sub    %esi,%eax
    2a51:	89 c2                	mov    %eax,%edx
    2a53:	89 d0                	mov    %edx,%eax
    2a55:	c1 e0 02             	shl    $0x2,%eax
    2a58:	01 d0                	add    %edx,%eax
    2a5a:	01 c0                	add    %eax,%eax
    2a5c:	29 c1                	sub    %eax,%ecx
    2a5e:	89 ca                	mov    %ecx,%edx
    2a60:	85 d2                	test   %edx,%edx
    2a62:	75 0f                	jne    2a73 <test12+0x348>
    2a64:	48 8d 05 5d 06 00 00 	lea    0x65d(%rip),%rax        # 30c8 <_IO_stdin_used+0xc8>
    2a6b:	48 89 c7             	mov    %rax,%rdi
    2a6e:	e8 6d e6 ff ff       	call   10e0 <puts@plt>
    2a73:	8b 85 b4 fc ff ff    	mov    -0x34c(%rbp),%eax
    2a79:	48 98                	cltq   
    2a7b:	48 8b 84 c5 c0 fc ff ff 	mov    -0x340(%rbp,%rax,8),%rax
    2a83:	48 89 c6             	mov    %rax,%rsi
    2a86:	48 8d 05 7b 05 00 00 	lea    0x57b(%rip),%rax        # 3008 <_IO_stdin_used+0x8>
    2a8d:	48 89 c7             	mov    %rax,%rdi
    2a90:	b8 00 00 00 00       	mov    $0x0,%eax
    2a95:	e8 76 e6 ff ff       	call   1110 <printf@plt>
    2a9a:	83 85 b4 fc ff ff 01 	addl   $0x1,-0x34c(%rbp)
    2aa1:	83 bd b4 fc ff ff 27 	cmpl   $0x27,-0x34c(%rbp)
    2aa8:	7e 89                	jle    2a33 <test12+0x308>
    2aaa:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    2ab1:	48 89 c7             	mov    %rax,%rdi
    2ab4:	e8 17 e6 ff ff       	call   10d0 <free@plt>
    2ab9:	48 8d 05 4e 05 00 00 	lea    0x54e(%rip),%rax        # 300e <_IO_stdin_used+0xe>
    2ac0:	48 89 c7             	mov    %rax,%rdi
    2ac3:	e8 18 e6 ff ff       	call   10e0 <puts@plt>
    2ac8:	90                   	nop
    2ac9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2acd:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    2ad6:	74 05                	je     2add <test12+0x3b2>
    2ad8:	e8 23 e6 ff ff       	call   1100 <__stack_chk_fail@plt>
    2add:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2ae1:	c9                   	leave  
    2ae2:	c3                   	ret    

0000000000002ae3 <test13>:
    2ae3:	f3 0f 1e fa          	endbr64 
    2ae7:	55                   	push   %rbp
    2ae8:	48 89 e5             	mov    %rsp,%rbp
    2aeb:	48 81 ec 40 03 00 00 	sub    $0x340,%rsp
    2af2:	64 48 8b 04 25 28 00 00 00 	mov    %fs:0x28,%rax
    2afb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2aff:	31 c0                	xor    %eax,%eax
    2b01:	c7 85 cc fc ff ff 00 00 00 00 	movl   $0x0,-0x334(%rbp)
    2b0b:	48 8d 05 6e 06 00 00 	lea    0x66e(%rip),%rax        # 3180 <_IO_stdin_used+0x180>
    2b12:	48 89 c7             	mov    %rax,%rdi
    2b15:	e8 c6 e5 ff ff       	call   10e0 <puts@plt>
    2b1a:	cd 0f                	int    $0xf
    2b1c:	48 8d 05 eb 04 00 00 	lea    0x4eb(%rip),%rax        # 300e <_IO_stdin_used+0xe>
    2b23:	48 89 c7             	mov    %rax,%rdi
    2b26:	e8 b5 e5 ff ff       	call   10e0 <puts@plt>
    2b2b:	90                   	nop
    2b2c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2b30:	64 48 2b 04 25 28 00 00 00 	sub    %fs:0x28,%rax
    2b39:	74 05                	je     2b40 <test13+0x5d>
    2b3b:	e8 c0 e5 ff ff       	call   1100 <__stack_chk_fail@plt>
    2b40:	c9                   	leave  
    2b41:	c3                   	ret    

0000000000002b42 <main>:
    2b42:	f3 0f 1e fa          	endbr64 
    2b46:	55                   	push   %rbp
    2b47:	48 89 e5             	mov    %rsp,%rbp
    2b4a:	b8 00 00 00 00       	mov    $0x0,%eax
    2b4f:	e8 8f ff ff ff       	call   2ae3 <test13>
    2b54:	b8 00 00 00 00       	mov    $0x0,%eax
    2b59:	5d                   	pop    %rbp
    2b5a:	c3                   	ret    

Disassembly of section .fini:

0000000000002b5c <_fini>:
    2b5c:	f3 0f 1e fa          	endbr64 
    2b60:	48 83 ec 08          	sub    $0x8,%rsp
    2b64:	48 83 c4 08          	add    $0x8,%rsp
    2b68:	c3                   	ret    
