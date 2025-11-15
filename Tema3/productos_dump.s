
productos.o:     file format pe-i386


Disassembly of section .text:

00000000 <_fprintf>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 24             	sub    $0x24,%esp
   7:	8d 45 10             	lea    0x10(%ebp),%eax
   a:	89 45 f4             	mov    %eax,-0xc(%ebp)
   d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10:	89 44 24 08          	mov    %eax,0x8(%esp)
  14:	8b 45 0c             	mov    0xc(%ebp),%eax
  17:	89 44 24 04          	mov    %eax,0x4(%esp)
  1b:	8b 45 08             	mov    0x8(%ebp),%eax
  1e:	89 04 24             	mov    %eax,(%esp)
  21:	e8 00 00 00 00       	call   26 <_fprintf+0x26>
  26:	89 c3                	mov    %eax,%ebx
  28:	89 d8                	mov    %ebx,%eax
  2a:	83 c4 24             	add    $0x24,%esp
  2d:	5b                   	pop    %ebx
  2e:	5d                   	pop    %ebp
  2f:	c3                   	ret    

00000030 <_printf>:
  30:	55                   	push   %ebp
  31:	89 e5                	mov    %esp,%ebp
  33:	53                   	push   %ebx
  34:	83 ec 24             	sub    $0x24,%esp
  37:	8d 45 0c             	lea    0xc(%ebp),%eax
  3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40:	89 44 24 04          	mov    %eax,0x4(%esp)
  44:	8b 45 08             	mov    0x8(%ebp),%eax
  47:	89 04 24             	mov    %eax,(%esp)
  4a:	e8 00 00 00 00       	call   4f <_printf+0x1f>
  4f:	89 c3                	mov    %eax,%ebx
  51:	89 d8                	mov    %ebx,%eax
  53:	83 c4 24             	add    $0x24,%esp
  56:	5b                   	pop    %ebx
  57:	5d                   	pop    %ebp
  58:	c3                   	ret    

00000059 <_cargar_productos>:
  59:	55                   	push   %ebp
  5a:	89 e5                	mov    %esp,%ebp
  5c:	57                   	push   %edi
  5d:	56                   	push   %esi
  5e:	53                   	push   %ebx
  5f:	83 ec 7c             	sub    $0x7c,%esp
  62:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  69:	00 
  6a:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  71:	e8 00 00 00 00       	call   76 <_cargar_productos+0x1d>
  76:	89 45 e0             	mov    %eax,-0x20(%ebp)
  79:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  7d:	75 16                	jne    95 <_cargar_productos+0x3c>
  7f:	c7 04 24 0f 00 00 00 	movl   $0xf,(%esp)
  86:	e8 00 00 00 00       	call   8b <_cargar_productos+0x32>
  8b:	b8 00 00 00 00       	mov    $0x0,%eax
  90:	e9 e0 00 00 00       	jmp    175 <_cargar_productos+0x11c>
  95:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  9c:	eb 7e                	jmp    11c <_cargar_productos+0xc3>
  9e:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
  a2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  a5:	89 d0                	mov    %edx,%eax
  a7:	c1 e0 03             	shl    $0x3,%eax
  aa:	01 d0                	add    %edx,%eax
  ac:	c1 e0 03             	shl    $0x3,%eax
  af:	89 c2                	mov    %eax,%edx
  b1:	8b 45 08             	mov    0x8(%ebp),%eax
  b4:	8b 00                	mov    (%eax),%eax
  b6:	89 54 24 04          	mov    %edx,0x4(%esp)
  ba:	89 04 24             	mov    %eax,(%esp)
  bd:	e8 00 00 00 00       	call   c2 <_cargar_productos+0x69>
  c2:	89 c2                	mov    %eax,%edx
  c4:	8b 45 08             	mov    0x8(%ebp),%eax
  c7:	89 10                	mov    %edx,(%eax)
  c9:	8b 45 08             	mov    0x8(%ebp),%eax
  cc:	8b 00                	mov    (%eax),%eax
  ce:	85 c0                	test   %eax,%eax
  d0:	75 21                	jne    f3 <_cargar_productos+0x9a>
  d2:	c7 04 24 2b 00 00 00 	movl   $0x2b,(%esp)
  d9:	e8 00 00 00 00       	call   de <_cargar_productos+0x85>
  de:	8b 45 e0             	mov    -0x20(%ebp),%eax
  e1:	89 04 24             	mov    %eax,(%esp)
  e4:	e8 00 00 00 00       	call   e9 <_cargar_productos+0x90>
  e9:	b8 00 00 00 00       	mov    $0x0,%eax
  ee:	e9 82 00 00 00       	jmp    175 <_cargar_productos+0x11c>
  f3:	8b 45 08             	mov    0x8(%ebp),%eax
  f6:	8b 08                	mov    (%eax),%ecx
  f8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  fb:	89 d0                	mov    %edx,%eax
  fd:	c1 e0 03             	shl    $0x3,%eax
 100:	01 d0                	add    %edx,%eax
 102:	c1 e0 03             	shl    $0x3,%eax
 105:	83 e8 48             	sub    $0x48,%eax
 108:	01 c8                	add    %ecx,%eax
 10a:	89 c3                	mov    %eax,%ebx
 10c:	8d 45 98             	lea    -0x68(%ebp),%eax
 10f:	ba 12 00 00 00       	mov    $0x12,%edx
 114:	89 df                	mov    %ebx,%edi
 116:	89 c6                	mov    %eax,%esi
 118:	89 d1                	mov    %edx,%ecx
 11a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 11c:	8d 45 98             	lea    -0x68(%ebp),%eax
 11f:	83 c0 44             	add    $0x44,%eax
 122:	89 44 24 18          	mov    %eax,0x18(%esp)
 126:	8d 45 98             	lea    -0x68(%ebp),%eax
 129:	83 c0 40             	add    $0x40,%eax
 12c:	89 44 24 14          	mov    %eax,0x14(%esp)
 130:	8d 45 98             	lea    -0x68(%ebp),%eax
 133:	83 c0 3c             	add    $0x3c,%eax
 136:	89 44 24 10          	mov    %eax,0x10(%esp)
 13a:	8d 45 98             	lea    -0x68(%ebp),%eax
 13d:	83 c0 0a             	add    $0xa,%eax
 140:	89 44 24 0c          	mov    %eax,0xc(%esp)
 144:	8d 45 98             	lea    -0x68(%ebp),%eax
 147:	89 44 24 08          	mov    %eax,0x8(%esp)
 14b:	c7 44 24 04 49 00 00 	movl   $0x49,0x4(%esp)
 152:	00 
 153:	8b 45 e0             	mov    -0x20(%ebp),%eax
 156:	89 04 24             	mov    %eax,(%esp)
 159:	e8 00 00 00 00       	call   15e <_cargar_productos+0x105>
 15e:	83 f8 05             	cmp    $0x5,%eax
 161:	0f 84 37 ff ff ff    	je     9e <_cargar_productos+0x45>
 167:	8b 45 e0             	mov    -0x20(%ebp),%eax
 16a:	89 04 24             	mov    %eax,(%esp)
 16d:	e8 00 00 00 00       	call   172 <_cargar_productos+0x119>
 172:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 175:	83 c4 7c             	add    $0x7c,%esp
 178:	5b                   	pop    %ebx
 179:	5e                   	pop    %esi
 17a:	5f                   	pop    %edi
 17b:	5d                   	pop    %ebp
 17c:	c3                   	ret    

0000017d <_buscar_producto>:
 17d:	55                   	push   %ebp
 17e:	89 e5                	mov    %esp,%ebp
 180:	83 ec 28             	sub    $0x28,%esp
 183:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 18a:	eb 43                	jmp    1cf <_buscar_producto+0x52>
 18c:	8b 55 f4             	mov    -0xc(%ebp),%edx
 18f:	89 d0                	mov    %edx,%eax
 191:	c1 e0 03             	shl    $0x3,%eax
 194:	01 d0                	add    %edx,%eax
 196:	c1 e0 03             	shl    $0x3,%eax
 199:	89 c2                	mov    %eax,%edx
 19b:	8b 45 08             	mov    0x8(%ebp),%eax
 19e:	01 d0                	add    %edx,%eax
 1a0:	89 c2                	mov    %eax,%edx
 1a2:	8b 45 10             	mov    0x10(%ebp),%eax
 1a5:	89 44 24 04          	mov    %eax,0x4(%esp)
 1a9:	89 14 24             	mov    %edx,(%esp)
 1ac:	e8 00 00 00 00       	call   1b1 <_buscar_producto+0x34>
 1b1:	85 c0                	test   %eax,%eax
 1b3:	75 16                	jne    1cb <_buscar_producto+0x4e>
 1b5:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1b8:	89 d0                	mov    %edx,%eax
 1ba:	c1 e0 03             	shl    $0x3,%eax
 1bd:	01 d0                	add    %edx,%eax
 1bf:	c1 e0 03             	shl    $0x3,%eax
 1c2:	89 c2                	mov    %eax,%edx
 1c4:	8b 45 08             	mov    0x8(%ebp),%eax
 1c7:	01 d0                	add    %edx,%eax
 1c9:	eb 11                	jmp    1dc <_buscar_producto+0x5f>
 1cb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 1cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 1d2:	3b 45 0c             	cmp    0xc(%ebp),%eax
 1d5:	7c b5                	jl     18c <_buscar_producto+0xf>
 1d7:	b8 00 00 00 00       	mov    $0x0,%eax
 1dc:	c9                   	leave  
 1dd:	c3                   	ret    

000001de <_actualizar_inventario>:
 1de:	55                   	push   %ebp
 1df:	89 e5                	mov    %esp,%ebp
 1e1:	53                   	push   %ebx
 1e2:	83 ec 44             	sub    $0x44,%esp
 1e5:	c7 44 24 04 62 00 00 	movl   $0x62,0x4(%esp)
 1ec:	00 
 1ed:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 1f4:	e8 00 00 00 00       	call   1f9 <_actualizar_inventario+0x1b>
 1f9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 1fc:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 200:	75 11                	jne    213 <_actualizar_inventario+0x35>
 202:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 209:	e8 00 00 00 00       	call   20e <_actualizar_inventario+0x30>
 20e:	e9 cc 00 00 00       	jmp    2df <_actualizar_inventario+0x101>
 213:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 21a:	e9 9d 00 00 00       	jmp    2bc <_actualizar_inventario+0xde>
 21f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 222:	89 d0                	mov    %edx,%eax
 224:	c1 e0 03             	shl    $0x3,%eax
 227:	01 d0                	add    %edx,%eax
 229:	c1 e0 03             	shl    $0x3,%eax
 22c:	89 c2                	mov    %eax,%edx
 22e:	8b 45 08             	mov    0x8(%ebp),%eax
 231:	01 d0                	add    %edx,%eax
 233:	d9 40 44             	flds   0x44(%eax)
 236:	8b 55 f4             	mov    -0xc(%ebp),%edx
 239:	89 d0                	mov    %edx,%eax
 23b:	c1 e0 03             	shl    $0x3,%eax
 23e:	01 d0                	add    %edx,%eax
 240:	c1 e0 03             	shl    $0x3,%eax
 243:	89 c2                	mov    %eax,%edx
 245:	8b 45 08             	mov    0x8(%ebp),%eax
 248:	01 d0                	add    %edx,%eax
 24a:	d9 40 40             	flds   0x40(%eax)
 24d:	d9 c9                	fxch   %st(1)
 24f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 252:	89 d0                	mov    %edx,%eax
 254:	c1 e0 03             	shl    $0x3,%eax
 257:	01 d0                	add    %edx,%eax
 259:	c1 e0 03             	shl    $0x3,%eax
 25c:	89 c2                	mov    %eax,%edx
 25e:	8b 45 08             	mov    0x8(%ebp),%eax
 261:	01 d0                	add    %edx,%eax
 263:	8b 48 3c             	mov    0x3c(%eax),%ecx
 266:	8b 55 f4             	mov    -0xc(%ebp),%edx
 269:	89 d0                	mov    %edx,%eax
 26b:	c1 e0 03             	shl    $0x3,%eax
 26e:	01 d0                	add    %edx,%eax
 270:	c1 e0 03             	shl    $0x3,%eax
 273:	89 c2                	mov    %eax,%edx
 275:	8b 45 08             	mov    0x8(%ebp),%eax
 278:	01 d0                	add    %edx,%eax
 27a:	8d 58 0a             	lea    0xa(%eax),%ebx
 27d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 280:	89 d0                	mov    %edx,%eax
 282:	c1 e0 03             	shl    $0x3,%eax
 285:	01 d0                	add    %edx,%eax
 287:	c1 e0 03             	shl    $0x3,%eax
 28a:	89 c2                	mov    %eax,%edx
 28c:	8b 45 08             	mov    0x8(%ebp),%eax
 28f:	01 d0                	add    %edx,%eax
 291:	dd 5c 24 1c          	fstpl  0x1c(%esp)
 295:	dd 5c 24 14          	fstpl  0x14(%esp)
 299:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 29d:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 2a1:	89 44 24 08          	mov    %eax,0x8(%esp)
 2a5:	c7 44 24 04 86 00 00 	movl   $0x86,0x4(%esp)
 2ac:	00 
 2ad:	8b 45 f0             	mov    -0x10(%ebp),%eax
 2b0:	89 04 24             	mov    %eax,(%esp)
 2b3:	e8 48 fd ff ff       	call   0 <_fprintf>
 2b8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 2bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2bf:	3b 45 0c             	cmp    0xc(%ebp),%eax
 2c2:	0f 8c 57 ff ff ff    	jl     21f <_actualizar_inventario+0x41>
 2c8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 2cb:	89 04 24             	mov    %eax,(%esp)
 2ce:	e8 00 00 00 00       	call   2d3 <_actualizar_inventario+0xf5>
 2d3:	c7 04 24 9c 00 00 00 	movl   $0x9c,(%esp)
 2da:	e8 51 fd ff ff       	call   30 <_printf>
 2df:	83 c4 44             	add    $0x44,%esp
 2e2:	5b                   	pop    %ebx
 2e3:	5d                   	pop    %ebp
 2e4:	c3                   	ret    

000002e5 <_obtener_ultimo_num_factura>:
 2e5:	55                   	push   %ebp
 2e6:	89 e5                	mov    %esp,%ebp
 2e8:	81 ec 28 01 00 00    	sub    $0x128,%esp
 2ee:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2f5:	00 
 2f6:	c7 04 24 c4 00 00 00 	movl   $0xc4,(%esp)
 2fd:	e8 00 00 00 00       	call   302 <_obtener_ultimo_num_factura+0x1d>
 302:	89 45 f0             	mov    %eax,-0x10(%ebp)
 305:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 309:	75 07                	jne    312 <_obtener_ultimo_num_factura+0x2d>
 30b:	b8 01 00 00 00       	mov    $0x1,%eax
 310:	eb 6b                	jmp    37d <_obtener_ultimo_num_factura+0x98>
 312:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 319:	eb 30                	jmp    34b <_obtener_ultimo_num_factura+0x66>
 31b:	8d 45 ec             	lea    -0x14(%ebp),%eax
 31e:	89 44 24 08          	mov    %eax,0x8(%esp)
 322:	c7 44 24 04 cf 00 00 	movl   $0xcf,0x4(%esp)
 329:	00 
 32a:	8d 85 ec fe ff ff    	lea    -0x114(%ebp),%eax
 330:	89 04 24             	mov    %eax,(%esp)
 333:	e8 00 00 00 00       	call   338 <_obtener_ultimo_num_factura+0x53>
 338:	83 f8 01             	cmp    $0x1,%eax
 33b:	75 0e                	jne    34b <_obtener_ultimo_num_factura+0x66>
 33d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 340:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 343:	7e 06                	jle    34b <_obtener_ultimo_num_factura+0x66>
 345:	8b 45 ec             	mov    -0x14(%ebp),%eax
 348:	89 45 f4             	mov    %eax,-0xc(%ebp)
 34b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 34e:	89 44 24 08          	mov    %eax,0x8(%esp)
 352:	c7 44 24 04 00 01 00 	movl   $0x100,0x4(%esp)
 359:	00 
 35a:	8d 85 ec fe ff ff    	lea    -0x114(%ebp),%eax
 360:	89 04 24             	mov    %eax,(%esp)
 363:	e8 00 00 00 00       	call   368 <_obtener_ultimo_num_factura+0x83>
 368:	85 c0                	test   %eax,%eax
 36a:	75 af                	jne    31b <_obtener_ultimo_num_factura+0x36>
 36c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 36f:	89 04 24             	mov    %eax,(%esp)
 372:	e8 00 00 00 00       	call   377 <_obtener_ultimo_num_factura+0x92>
 377:	8b 45 f4             	mov    -0xc(%ebp),%eax
 37a:	83 c0 01             	add    $0x1,%eax
 37d:	c9                   	leave  
 37e:	c3                   	ret    

0000037f <_registrar_venta>:
 37f:	55                   	push   %ebp
 380:	89 e5                	mov    %esp,%ebp
 382:	53                   	push   %ebx
 383:	83 ec 44             	sub    $0x44,%esp
 386:	c7 44 24 04 d3 00 00 	movl   $0xd3,0x4(%esp)
 38d:	00 
 38e:	c7 04 24 c4 00 00 00 	movl   $0xc4,(%esp)
 395:	e8 00 00 00 00       	call   39a <_registrar_venta+0x1b>
 39a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 39d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 3a1:	75 11                	jne    3b4 <_registrar_venta+0x35>
 3a3:	c7 04 24 d8 00 00 00 	movl   $0xd8,(%esp)
 3aa:	e8 00 00 00 00       	call   3af <_registrar_venta+0x30>
 3af:	e9 cc 00 00 00       	jmp    480 <_registrar_venta+0x101>
 3b4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 3bb:	e9 96 00 00 00       	jmp    456 <_registrar_venta+0xd7>
 3c0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3c3:	89 d0                	mov    %edx,%eax
 3c5:	c1 e0 03             	shl    $0x3,%eax
 3c8:	01 d0                	add    %edx,%eax
 3ca:	c1 e0 03             	shl    $0x3,%eax
 3cd:	89 c2                	mov    %eax,%edx
 3cf:	8b 45 10             	mov    0x10(%ebp),%eax
 3d2:	01 d0                	add    %edx,%eax
 3d4:	d9 40 40             	flds   0x40(%eax)
 3d7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3da:	89 d0                	mov    %edx,%eax
 3dc:	c1 e0 03             	shl    $0x3,%eax
 3df:	01 d0                	add    %edx,%eax
 3e1:	c1 e0 03             	shl    $0x3,%eax
 3e4:	89 c2                	mov    %eax,%edx
 3e6:	8b 45 10             	mov    0x10(%ebp),%eax
 3e9:	01 d0                	add    %edx,%eax
 3eb:	8b 48 3c             	mov    0x3c(%eax),%ecx
 3ee:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3f1:	89 d0                	mov    %edx,%eax
 3f3:	c1 e0 03             	shl    $0x3,%eax
 3f6:	01 d0                	add    %edx,%eax
 3f8:	c1 e0 03             	shl    $0x3,%eax
 3fb:	89 c2                	mov    %eax,%edx
 3fd:	8b 45 10             	mov    0x10(%ebp),%eax
 400:	01 d0                	add    %edx,%eax
 402:	8d 58 0a             	lea    0xa(%eax),%ebx
 405:	8b 55 f4             	mov    -0xc(%ebp),%edx
 408:	89 d0                	mov    %edx,%eax
 40a:	c1 e0 03             	shl    $0x3,%eax
 40d:	01 d0                	add    %edx,%eax
 40f:	c1 e0 03             	shl    $0x3,%eax
 412:	89 c2                	mov    %eax,%edx
 414:	8b 45 10             	mov    0x10(%ebp),%eax
 417:	01 d0                	add    %edx,%eax
 419:	89 c2                	mov    %eax,%edx
 41b:	8b 45 0c             	mov    0xc(%ebp),%eax
 41e:	89 44 24 28          	mov    %eax,0x28(%esp)
 422:	dd 5c 24 20          	fstpl  0x20(%esp)
 426:	d9 ee                	fldz   
 428:	dd 5c 24 18          	fstpl  0x18(%esp)
 42c:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 430:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 434:	89 54 24 0c          	mov    %edx,0xc(%esp)
 438:	8b 45 08             	mov    0x8(%ebp),%eax
 43b:	89 44 24 08          	mov    %eax,0x8(%esp)
 43f:	c7 44 24 04 00 01 00 	movl   $0x100,0x4(%esp)
 446:	00 
 447:	8b 45 f0             	mov    -0x10(%ebp),%eax
 44a:	89 04 24             	mov    %eax,(%esp)
 44d:	e8 ae fb ff ff       	call   0 <_fprintf>
 452:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 456:	8b 45 f4             	mov    -0xc(%ebp),%eax
 459:	3b 45 14             	cmp    0x14(%ebp),%eax
 45c:	0f 8c 5e ff ff ff    	jl     3c0 <_registrar_venta+0x41>
 462:	8b 45 f0             	mov    -0x10(%ebp),%eax
 465:	89 04 24             	mov    %eax,(%esp)
 468:	e8 00 00 00 00       	call   46d <_registrar_venta+0xee>
 46d:	8b 45 08             	mov    0x8(%ebp),%eax
 470:	89 44 24 04          	mov    %eax,0x4(%esp)
 474:	c7 04 24 1c 01 00 00 	movl   $0x11c,(%esp)
 47b:	e8 b0 fb ff ff       	call   30 <_printf>
 480:	83 c4 44             	add    $0x44,%esp
 483:	5b                   	pop    %ebx
 484:	5d                   	pop    %ebp
 485:	c3                   	ret    
 486:	90                   	nop
 487:	90                   	nop
