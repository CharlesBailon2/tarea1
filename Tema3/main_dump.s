
main.o:     file format pe-i386


Disassembly of section .text:

00000000 <_printf>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	8d 45 0c             	lea    0xc(%ebp),%eax
   a:	89 45 f4             	mov    %eax,-0xc(%ebp)
   d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10:	89 44 24 04          	mov    %eax,0x4(%esp)
  14:	8b 45 08             	mov    0x8(%ebp),%eax
  17:	89 04 24             	mov    %eax,(%esp)
  1a:	e8 00 00 00 00       	call   1f <_printf+0x1f>
  1f:	89 c3                	mov    %eax,%ebx
  21:	89 d8                	mov    %ebx,%eax
  23:	83 c4 24             	add    $0x24,%esp
  26:	5b                   	pop    %ebx
  27:	5d                   	pop    %ebp
  28:	c3                   	ret    

00000029 <_obtener_fecha_actual>:
  29:	55                   	push   %ebp
  2a:	89 e5                	mov    %esp,%ebp
  2c:	83 ec 28             	sub    $0x28,%esp
  2f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  36:	e8 00 00 00 00       	call   3b <_obtener_fecha_actual+0x12>
  3b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  3e:	8d 45 f0             	lea    -0x10(%ebp),%eax
  41:	89 04 24             	mov    %eax,(%esp)
  44:	e8 00 00 00 00       	call   49 <_obtener_fecha_actual+0x20>
  49:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4f:	89 44 24 0c          	mov    %eax,0xc(%esp)
  53:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  5a:	00 
  5b:	c7 44 24 04 0b 00 00 	movl   $0xb,0x4(%esp)
  62:	00 
  63:	8b 45 08             	mov    0x8(%ebp),%eax
  66:	89 04 24             	mov    %eax,(%esp)
  69:	e8 00 00 00 00       	call   6e <_obtener_fecha_actual+0x45>
  6e:	90                   	nop
  6f:	c9                   	leave  
  70:	c3                   	ret    

00000071 <_menu_ventas>:
  71:	55                   	push   %ebp
  72:	89 e5                	mov    %esp,%ebp
  74:	53                   	push   %ebx
  75:	83 ec 74             	sub    $0x74,%esp
  78:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  7f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  86:	d9 ee                	fldz   
  88:	d9 5d ec             	fstps  -0x14(%ebp)
  8b:	c6 45 df 73          	movb   $0x73,-0x21(%ebp)
  8f:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  96:	e8 65 ff ff ff       	call   0 <_printf>
  9b:	e8 00 00 00 00       	call   a0 <_menu_ventas+0x2f>
  a0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  a3:	8d 45 c4             	lea    -0x3c(%ebp),%eax
  a6:	89 04 24             	mov    %eax,(%esp)
  a9:	e8 7b ff ff ff       	call   29 <_obtener_fecha_actual>
  ae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  b1:	89 44 24 08          	mov    %eax,0x8(%esp)
  b5:	8d 45 c4             	lea    -0x3c(%ebp),%eax
  b8:	89 44 24 04          	mov    %eax,0x4(%esp)
  bc:	c7 04 24 28 00 00 00 	movl   $0x28,(%esp)
  c3:	e8 38 ff ff ff       	call   0 <_printf>
  c8:	c7 04 24 4b 00 00 00 	movl   $0x4b,(%esp)
  cf:	e8 2c ff ff ff       	call   0 <_printf>
  d4:	e9 26 02 00 00       	jmp    2ff <_menu_ventas+0x28e>
  d9:	c7 04 24 68 00 00 00 	movl   $0x68,(%esp)
  e0:	e8 1b ff ff ff       	call   0 <_printf>
  e5:	8d 45 d5             	lea    -0x2b(%ebp),%eax
  e8:	89 44 24 04          	mov    %eax,0x4(%esp)
  ec:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
  f3:	e8 00 00 00 00       	call   f8 <_menu_ventas+0x87>
  f8:	c7 44 24 04 a4 00 00 	movl   $0xa4,0x4(%esp)
  ff:	00 
 100:	8d 45 d5             	lea    -0x2b(%ebp),%eax
 103:	89 04 24             	mov    %eax,(%esp)
 106:	e8 00 00 00 00       	call   10b <_menu_ventas+0x9a>
 10b:	85 c0                	test   %eax,%eax
 10d:	0f 84 04 02 00 00    	je     317 <_menu_ventas+0x2a6>
 113:	c7 44 24 04 a6 00 00 	movl   $0xa6,0x4(%esp)
 11a:	00 
 11b:	8d 45 d5             	lea    -0x2b(%ebp),%eax
 11e:	89 04 24             	mov    %eax,(%esp)
 121:	e8 00 00 00 00       	call   126 <_menu_ventas+0xb5>
 126:	85 c0                	test   %eax,%eax
 128:	0f 84 e9 01 00 00    	je     317 <_menu_ventas+0x2a6>
 12e:	8d 45 d5             	lea    -0x2b(%ebp),%eax
 131:	89 44 24 08          	mov    %eax,0x8(%esp)
 135:	8b 45 0c             	mov    0xc(%ebp),%eax
 138:	89 44 24 04          	mov    %eax,0x4(%esp)
 13c:	8b 45 08             	mov    0x8(%ebp),%eax
 13f:	89 04 24             	mov    %eax,(%esp)
 142:	e8 00 00 00 00       	call   147 <_menu_ventas+0xd6>
 147:	89 45 e0             	mov    %eax,-0x20(%ebp)
 14a:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 14e:	75 11                	jne    161 <_menu_ventas+0xf0>
 150:	c7 04 24 a8 00 00 00 	movl   $0xa8,(%esp)
 157:	e8 a4 fe ff ff       	call   0 <_printf>
 15c:	e9 9e 01 00 00       	jmp    2ff <_menu_ventas+0x28e>
 161:	8b 45 e0             	mov    -0x20(%ebp),%eax
 164:	8b 40 3c             	mov    0x3c(%eax),%eax
 167:	89 44 24 04          	mov    %eax,0x4(%esp)
 16b:	c7 04 24 c8 00 00 00 	movl   $0xc8,(%esp)
 172:	e8 89 fe ff ff       	call   0 <_printf>
 177:	8d 45 d0             	lea    -0x30(%ebp),%eax
 17a:	89 44 24 04          	mov    %eax,0x4(%esp)
 17e:	c7 04 24 f8 00 00 00 	movl   $0xf8,(%esp)
 185:	e8 00 00 00 00       	call   18a <_menu_ventas+0x119>
 18a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 18d:	85 c0                	test   %eax,%eax
 18f:	7e 0d                	jle    19e <_menu_ventas+0x12d>
 191:	8b 45 e0             	mov    -0x20(%ebp),%eax
 194:	8b 50 3c             	mov    0x3c(%eax),%edx
 197:	8b 45 d0             	mov    -0x30(%ebp),%eax
 19a:	39 c2                	cmp    %eax,%edx
 19c:	7d 1b                	jge    1b9 <_menu_ventas+0x148>
 19e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 1a1:	8b 40 3c             	mov    0x3c(%eax),%eax
 1a4:	89 44 24 04          	mov    %eax,0x4(%esp)
 1a8:	c7 04 24 fc 00 00 00 	movl   $0xfc,(%esp)
 1af:	e8 4c fe ff ff       	call   0 <_printf>
 1b4:	e9 46 01 00 00       	jmp    2ff <_menu_ventas+0x28e>
 1b9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 1bd:	8b 55 f0             	mov    -0x10(%ebp),%edx
 1c0:	89 d0                	mov    %edx,%eax
 1c2:	c1 e0 03             	shl    $0x3,%eax
 1c5:	01 d0                	add    %edx,%eax
 1c7:	c1 e0 03             	shl    $0x3,%eax
 1ca:	89 44 24 04          	mov    %eax,0x4(%esp)
 1ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
 1d1:	89 04 24             	mov    %eax,(%esp)
 1d4:	e8 00 00 00 00       	call   1d9 <_menu_ventas+0x168>
 1d9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 1dc:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 1e0:	75 11                	jne    1f3 <_menu_ventas+0x182>
 1e2:	c7 04 24 3c 01 00 00 	movl   $0x13c,(%esp)
 1e9:	e8 00 00 00 00       	call   1ee <_menu_ventas+0x17d>
 1ee:	e9 d6 02 00 00       	jmp    4c9 <_menu_ventas+0x458>
 1f3:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 1f6:	8b 55 f0             	mov    -0x10(%ebp),%edx
 1f9:	89 d0                	mov    %edx,%eax
 1fb:	c1 e0 03             	shl    $0x3,%eax
 1fe:	01 d0                	add    %edx,%eax
 200:	c1 e0 03             	shl    $0x3,%eax
 203:	8d 50 b8             	lea    -0x48(%eax),%edx
 206:	8b 45 f4             	mov    -0xc(%ebp),%eax
 209:	01 d0                	add    %edx,%eax
 20b:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 20f:	89 04 24             	mov    %eax,(%esp)
 212:	e8 00 00 00 00       	call   217 <_menu_ventas+0x1a6>
 217:	8b 45 e0             	mov    -0x20(%ebp),%eax
 21a:	8d 48 0a             	lea    0xa(%eax),%ecx
 21d:	8b 55 f0             	mov    -0x10(%ebp),%edx
 220:	89 d0                	mov    %edx,%eax
 222:	c1 e0 03             	shl    $0x3,%eax
 225:	01 d0                	add    %edx,%eax
 227:	c1 e0 03             	shl    $0x3,%eax
 22a:	8d 50 b8             	lea    -0x48(%eax),%edx
 22d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 230:	01 d0                	add    %edx,%eax
 232:	83 c0 0a             	add    $0xa,%eax
 235:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 239:	89 04 24             	mov    %eax,(%esp)
 23c:	e8 00 00 00 00       	call   241 <_menu_ventas+0x1d0>
 241:	8b 55 f0             	mov    -0x10(%ebp),%edx
 244:	89 d0                	mov    %edx,%eax
 246:	c1 e0 03             	shl    $0x3,%eax
 249:	01 d0                	add    %edx,%eax
 24b:	c1 e0 03             	shl    $0x3,%eax
 24e:	8d 50 b8             	lea    -0x48(%eax),%edx
 251:	8b 45 f4             	mov    -0xc(%ebp),%eax
 254:	01 c2                	add    %eax,%edx
 256:	8b 45 d0             	mov    -0x30(%ebp),%eax
 259:	89 42 3c             	mov    %eax,0x3c(%edx)
 25c:	8b 55 f0             	mov    -0x10(%ebp),%edx
 25f:	89 d0                	mov    %edx,%eax
 261:	c1 e0 03             	shl    $0x3,%eax
 264:	01 d0                	add    %edx,%eax
 266:	c1 e0 03             	shl    $0x3,%eax
 269:	8d 50 b8             	lea    -0x48(%eax),%edx
 26c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 26f:	01 c2                	add    %eax,%edx
 271:	8b 45 e0             	mov    -0x20(%ebp),%eax
 274:	d9 40 44             	flds   0x44(%eax)
 277:	d9 5a 40             	fstps  0x40(%edx)
 27a:	8b 55 f0             	mov    -0x10(%ebp),%edx
 27d:	89 d0                	mov    %edx,%eax
 27f:	c1 e0 03             	shl    $0x3,%eax
 282:	01 d0                	add    %edx,%eax
 284:	c1 e0 03             	shl    $0x3,%eax
 287:	8d 50 b8             	lea    -0x48(%eax),%edx
 28a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 28d:	01 c2                	add    %eax,%edx
 28f:	8b 45 d0             	mov    -0x30(%ebp),%eax
 292:	89 45 b0             	mov    %eax,-0x50(%ebp)
 295:	db 45 b0             	fildl  -0x50(%ebp)
 298:	d9 5d b4             	fstps  -0x4c(%ebp)
 29b:	d9 45 b4             	flds   -0x4c(%ebp)
 29e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 2a1:	d9 40 44             	flds   0x44(%eax)
 2a4:	de c9                	fmulp  %st,%st(1)
 2a6:	d9 5d b4             	fstps  -0x4c(%ebp)
 2a9:	d9 45 b4             	flds   -0x4c(%ebp)
 2ac:	d9 5a 44             	fstps  0x44(%edx)
 2af:	d9 45 ec             	flds   -0x14(%ebp)
 2b2:	8b 55 f0             	mov    -0x10(%ebp),%edx
 2b5:	89 d0                	mov    %edx,%eax
 2b7:	c1 e0 03             	shl    $0x3,%eax
 2ba:	01 d0                	add    %edx,%eax
 2bc:	c1 e0 03             	shl    $0x3,%eax
 2bf:	8d 50 b8             	lea    -0x48(%eax),%edx
 2c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2c5:	01 d0                	add    %edx,%eax
 2c7:	d9 40 44             	flds   0x44(%eax)
 2ca:	de c1                	faddp  %st,%st(1)
 2cc:	d9 5d ec             	fstps  -0x14(%ebp)
 2cf:	8b 45 e0             	mov    -0x20(%ebp),%eax
 2d2:	8b 50 3c             	mov    0x3c(%eax),%edx
 2d5:	8b 45 d0             	mov    -0x30(%ebp),%eax
 2d8:	29 c2                	sub    %eax,%edx
 2da:	8b 45 e0             	mov    -0x20(%ebp),%eax
 2dd:	89 50 3c             	mov    %edx,0x3c(%eax)
 2e0:	c7 04 24 60 01 00 00 	movl   $0x160,(%esp)
 2e7:	e8 14 fd ff ff       	call   0 <_printf>
 2ec:	8d 45 df             	lea    -0x21(%ebp),%eax
 2ef:	89 44 24 04          	mov    %eax,0x4(%esp)
 2f3:	c7 04 24 9c 01 00 00 	movl   $0x19c,(%esp)
 2fa:	e8 00 00 00 00       	call   2ff <_menu_ventas+0x28e>
 2ff:	0f b6 45 df          	movzbl -0x21(%ebp),%eax
 303:	3c 73                	cmp    $0x73,%al
 305:	0f 84 ce fd ff ff    	je     d9 <_menu_ventas+0x68>
 30b:	0f b6 45 df          	movzbl -0x21(%ebp),%eax
 30f:	3c 53                	cmp    $0x53,%al
 311:	0f 84 c2 fd ff ff    	je     d9 <_menu_ventas+0x68>
 317:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 31b:	0f 8e 91 01 00 00    	jle    4b2 <_menu_ventas+0x441>
 321:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 324:	89 44 24 04          	mov    %eax,0x4(%esp)
 328:	c7 04 24 a0 01 00 00 	movl   $0x1a0,(%esp)
 32f:	e8 cc fc ff ff       	call   0 <_printf>
 334:	c7 44 24 14 c2 01 00 	movl   $0x1c2,0x14(%esp)
 33b:	00 
 33c:	c7 44 24 10 cb 01 00 	movl   $0x1cb,0x10(%esp)
 343:	00 
 344:	c7 44 24 0c d5 01 00 	movl   $0x1d5,0xc(%esp)
 34b:	00 
 34c:	c7 44 24 08 db 01 00 	movl   $0x1db,0x8(%esp)
 353:	00 
 354:	c7 44 24 04 e4 01 00 	movl   $0x1e4,0x4(%esp)
 35b:	00 
 35c:	c7 04 24 ec 01 00 00 	movl   $0x1ec,(%esp)
 363:	e8 98 fc ff ff       	call   0 <_printf>
 368:	c7 04 24 0c 02 00 00 	movl   $0x20c,(%esp)
 36f:	e8 8c fc ff ff       	call   0 <_printf>
 374:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 37b:	e9 96 00 00 00       	jmp    416 <_menu_ventas+0x3a5>
 380:	8b 55 e8             	mov    -0x18(%ebp),%edx
 383:	89 d0                	mov    %edx,%eax
 385:	c1 e0 03             	shl    $0x3,%eax
 388:	01 d0                	add    %edx,%eax
 38a:	c1 e0 03             	shl    $0x3,%eax
 38d:	89 c2                	mov    %eax,%edx
 38f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 392:	01 d0                	add    %edx,%eax
 394:	d9 40 44             	flds   0x44(%eax)
 397:	8b 55 e8             	mov    -0x18(%ebp),%edx
 39a:	89 d0                	mov    %edx,%eax
 39c:	c1 e0 03             	shl    $0x3,%eax
 39f:	01 d0                	add    %edx,%eax
 3a1:	c1 e0 03             	shl    $0x3,%eax
 3a4:	89 c2                	mov    %eax,%edx
 3a6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 3a9:	01 d0                	add    %edx,%eax
 3ab:	d9 40 40             	flds   0x40(%eax)
 3ae:	d9 c9                	fxch   %st(1)
 3b0:	8b 55 e8             	mov    -0x18(%ebp),%edx
 3b3:	89 d0                	mov    %edx,%eax
 3b5:	c1 e0 03             	shl    $0x3,%eax
 3b8:	01 d0                	add    %edx,%eax
 3ba:	c1 e0 03             	shl    $0x3,%eax
 3bd:	89 c2                	mov    %eax,%edx
 3bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 3c2:	01 d0                	add    %edx,%eax
 3c4:	8b 48 3c             	mov    0x3c(%eax),%ecx
 3c7:	8b 55 e8             	mov    -0x18(%ebp),%edx
 3ca:	89 d0                	mov    %edx,%eax
 3cc:	c1 e0 03             	shl    $0x3,%eax
 3cf:	01 d0                	add    %edx,%eax
 3d1:	c1 e0 03             	shl    $0x3,%eax
 3d4:	89 c2                	mov    %eax,%edx
 3d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 3d9:	01 d0                	add    %edx,%eax
 3db:	8d 58 0a             	lea    0xa(%eax),%ebx
 3de:	8b 55 e8             	mov    -0x18(%ebp),%edx
 3e1:	89 d0                	mov    %edx,%eax
 3e3:	c1 e0 03             	shl    $0x3,%eax
 3e6:	01 d0                	add    %edx,%eax
 3e8:	c1 e0 03             	shl    $0x3,%eax
 3eb:	89 c2                	mov    %eax,%edx
 3ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
 3f0:	01 d0                	add    %edx,%eax
 3f2:	dd 5c 24 18          	fstpl  0x18(%esp)
 3f6:	dd 5c 24 10          	fstpl  0x10(%esp)
 3fa:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 3fe:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 402:	89 44 24 04          	mov    %eax,0x4(%esp)
 406:	c7 04 24 58 02 00 00 	movl   $0x258,(%esp)
 40d:	e8 ee fb ff ff       	call   0 <_printf>
 412:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 416:	8b 45 e8             	mov    -0x18(%ebp),%eax
 419:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 41c:	0f 8c 5e ff ff ff    	jl     380 <_menu_ventas+0x30f>
 422:	c7 04 24 0c 02 00 00 	movl   $0x20c,(%esp)
 429:	e8 d2 fb ff ff       	call   0 <_printf>
 42e:	d9 45 ec             	flds   -0x14(%ebp)
 431:	dd 5c 24 04          	fstpl  0x4(%esp)
 435:	c7 04 24 7b 02 00 00 	movl   $0x27b,(%esp)
 43c:	e8 bf fb ff ff       	call   0 <_printf>
 441:	c7 04 24 8e 02 00 00 	movl   $0x28e,(%esp)
 448:	e8 b3 fb ff ff       	call   0 <_printf>
 44d:	8d 45 cf             	lea    -0x31(%ebp),%eax
 450:	89 44 24 04          	mov    %eax,0x4(%esp)
 454:	c7 04 24 9c 01 00 00 	movl   $0x19c,(%esp)
 45b:	e8 00 00 00 00       	call   460 <_menu_ventas+0x3ef>
 460:	0f b6 45 cf          	movzbl -0x31(%ebp),%eax
 464:	3c 73                	cmp    $0x73,%al
 466:	74 08                	je     470 <_menu_ventas+0x3ff>
 468:	0f b6 45 cf          	movzbl -0x31(%ebp),%eax
 46c:	3c 53                	cmp    $0x53,%al
 46e:	75 34                	jne    4a4 <_menu_ventas+0x433>
 470:	8b 45 0c             	mov    0xc(%ebp),%eax
 473:	89 44 24 04          	mov    %eax,0x4(%esp)
 477:	8b 45 08             	mov    0x8(%ebp),%eax
 47a:	89 04 24             	mov    %eax,(%esp)
 47d:	e8 00 00 00 00       	call   482 <_menu_ventas+0x411>
 482:	8b 45 f0             	mov    -0x10(%ebp),%eax
 485:	89 44 24 0c          	mov    %eax,0xc(%esp)
 489:	8b 45 f4             	mov    -0xc(%ebp),%eax
 48c:	89 44 24 08          	mov    %eax,0x8(%esp)
 490:	8d 45 c4             	lea    -0x3c(%ebp),%eax
 493:	89 44 24 04          	mov    %eax,0x4(%esp)
 497:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 49a:	89 04 24             	mov    %eax,(%esp)
 49d:	e8 00 00 00 00       	call   4a2 <_menu_ventas+0x431>
 4a2:	eb 1a                	jmp    4be <_menu_ventas+0x44d>
 4a4:	c7 04 24 ac 02 00 00 	movl   $0x2ac,(%esp)
 4ab:	e8 50 fb ff ff       	call   0 <_printf>
 4b0:	eb 0c                	jmp    4be <_menu_ventas+0x44d>
 4b2:	c7 04 24 e4 02 00 00 	movl   $0x2e4,(%esp)
 4b9:	e8 42 fb ff ff       	call   0 <_printf>
 4be:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4c1:	89 04 24             	mov    %eax,(%esp)
 4c4:	e8 00 00 00 00       	call   4c9 <_menu_ventas+0x458>
 4c9:	83 c4 74             	add    $0x74,%esp
 4cc:	5b                   	pop    %ebx
 4cd:	5d                   	pop    %ebp
 4ce:	c3                   	ret    

000004cf <_main>:
 4cf:	55                   	push   %ebp
 4d0:	89 e5                	mov    %esp,%ebp
 4d2:	83 e4 f0             	and    $0xfffffff0,%esp
 4d5:	83 ec 50             	sub    $0x50,%esp
 4d8:	e8 00 00 00 00       	call   4dd <_main+0xe>
 4dd:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%esp)
 4e4:	00 
 4e5:	8d 44 24 3c          	lea    0x3c(%esp),%eax
 4e9:	89 04 24             	mov    %eax,(%esp)
 4ec:	e8 00 00 00 00       	call   4f1 <_main+0x22>
 4f1:	89 44 24 48          	mov    %eax,0x48(%esp)
 4f5:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 4fc:	00 
 4fd:	8d 44 24 38          	lea    0x38(%esp),%eax
 501:	89 04 24             	mov    %eax,(%esp)
 504:	e8 00 00 00 00       	call   509 <_main+0x3a>
 509:	89 44 24 44          	mov    %eax,0x44(%esp)
 50d:	83 7c 24 48 00       	cmpl   $0x0,0x48(%esp)
 512:	74 07                	je     51b <_main+0x4c>
 514:	83 7c 24 44 00       	cmpl   $0x0,0x44(%esp)
 519:	75 3e                	jne    559 <_main+0x8a>
 51b:	c7 04 24 10 03 00 00 	movl   $0x310,(%esp)
 522:	e8 d9 fa ff ff       	call   0 <_printf>
 527:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 52b:	85 c0                	test   %eax,%eax
 52d:	74 0c                	je     53b <_main+0x6c>
 52f:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 533:	89 04 24             	mov    %eax,(%esp)
 536:	e8 00 00 00 00       	call   53b <_main+0x6c>
 53b:	8b 44 24 38          	mov    0x38(%esp),%eax
 53f:	85 c0                	test   %eax,%eax
 541:	74 0c                	je     54f <_main+0x80>
 543:	8b 44 24 38          	mov    0x38(%esp),%eax
 547:	89 04 24             	mov    %eax,(%esp)
 54a:	e8 00 00 00 00       	call   54f <_main+0x80>
 54f:	b8 01 00 00 00       	mov    $0x1,%eax
 554:	e9 09 01 00 00       	jmp    662 <_main+0x193>
 559:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 560:	00 
 561:	c7 44 24 40 03 00 00 	movl   $0x3,0x40(%esp)
 568:	00 
 569:	e9 b3 00 00 00       	jmp    621 <_main+0x152>
 56e:	c7 04 24 55 03 00 00 	movl   $0x355,(%esp)
 575:	e8 86 fa ff ff       	call   0 <_printf>
 57a:	c7 04 24 70 03 00 00 	movl   $0x370,(%esp)
 581:	e8 7a fa ff ff       	call   0 <_printf>
 586:	8d 44 24 24          	lea    0x24(%esp),%eax
 58a:	89 44 24 04          	mov    %eax,0x4(%esp)
 58e:	c7 04 24 7a 03 00 00 	movl   $0x37a,(%esp)
 595:	e8 00 00 00 00       	call   59a <_main+0xcb>
 59a:	c7 04 24 7f 03 00 00 	movl   $0x37f,(%esp)
 5a1:	e8 5a fa ff ff       	call   0 <_printf>
 5a6:	8d 44 24 10          	lea    0x10(%esp),%eax
 5aa:	89 44 24 04          	mov    %eax,0x4(%esp)
 5ae:	c7 04 24 7a 03 00 00 	movl   $0x37a,(%esp)
 5b5:	e8 00 00 00 00       	call   5ba <_main+0xeb>
 5ba:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 5be:	8d 54 24 10          	lea    0x10(%esp),%edx
 5c2:	89 54 24 0c          	mov    %edx,0xc(%esp)
 5c6:	8d 54 24 24          	lea    0x24(%esp),%edx
 5ca:	89 54 24 08          	mov    %edx,0x8(%esp)
 5ce:	8b 54 24 48          	mov    0x48(%esp),%edx
 5d2:	89 54 24 04          	mov    %edx,0x4(%esp)
 5d6:	89 04 24             	mov    %eax,(%esp)
 5d9:	e8 00 00 00 00       	call   5de <_main+0x10f>
 5de:	84 c0                	test   %al,%al
 5e0:	74 22                	je     604 <_main+0x135>
 5e2:	c7 04 24 87 03 00 00 	movl   $0x387,(%esp)
 5e9:	e8 12 fa ff ff       	call   0 <_printf>
 5ee:	8b 44 24 38          	mov    0x38(%esp),%eax
 5f2:	8b 54 24 44          	mov    0x44(%esp),%edx
 5f6:	89 54 24 04          	mov    %edx,0x4(%esp)
 5fa:	89 04 24             	mov    %eax,(%esp)
 5fd:	e8 6f fa ff ff       	call   71 <_menu_ventas>
 602:	eb 2b                	jmp    62f <_main+0x160>
 604:	83 44 24 4c 01       	addl   $0x1,0x4c(%esp)
 609:	8b 44 24 40          	mov    0x40(%esp),%eax
 60d:	2b 44 24 4c          	sub    0x4c(%esp),%eax
 611:	89 44 24 04          	mov    %eax,0x4(%esp)
 615:	c7 04 24 a8 03 00 00 	movl   $0x3a8,(%esp)
 61c:	e8 df f9 ff ff       	call   0 <_printf>
 621:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 625:	3b 44 24 40          	cmp    0x40(%esp),%eax
 629:	0f 8c 3f ff ff ff    	jl     56e <_main+0x9f>
 62f:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 633:	3b 44 24 40          	cmp    0x40(%esp),%eax
 637:	75 0c                	jne    645 <_main+0x176>
 639:	c7 04 24 e4 03 00 00 	movl   $0x3e4,(%esp)
 640:	e8 bb f9 ff ff       	call   0 <_printf>
 645:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 649:	89 04 24             	mov    %eax,(%esp)
 64c:	e8 00 00 00 00       	call   651 <_main+0x182>
 651:	8b 44 24 38          	mov    0x38(%esp),%eax
 655:	89 04 24             	mov    %eax,(%esp)
 658:	e8 00 00 00 00       	call   65d <_main+0x18e>
 65d:	b8 00 00 00 00       	mov    $0x0,%eax
 662:	c9                   	leave  
 663:	c3                   	ret    
