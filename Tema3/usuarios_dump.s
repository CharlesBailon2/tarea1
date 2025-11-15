
usuarios.o:     file format pe-i386


Disassembly of section .text:

00000000 <_cargar_vendedores>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	81 ec 9c 00 00 00    	sub    $0x9c,%esp
   c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  13:	00 
  14:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  1b:	e8 00 00 00 00       	call   20 <_cargar_vendedores+0x20>
  20:	89 45 e0             	mov    %eax,-0x20(%ebp)
  23:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  27:	75 16                	jne    3f <_cargar_vendedores+0x3f>
  29:	c7 04 24 11 00 00 00 	movl   $0x11,(%esp)
  30:	e8 00 00 00 00       	call   35 <_cargar_vendedores+0x35>
  35:	b8 00 00 00 00       	mov    $0x0,%eax
  3a:	e9 df 00 00 00       	jmp    11e <_cargar_vendedores+0x11e>
  3f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  46:	e9 8e 00 00 00       	jmp    d9 <_cargar_vendedores+0xd9>
  4b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
  4f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  52:	6b d0 5a             	imul   $0x5a,%eax,%edx
  55:	8b 45 08             	mov    0x8(%ebp),%eax
  58:	8b 00                	mov    (%eax),%eax
  5a:	89 54 24 04          	mov    %edx,0x4(%esp)
  5e:	89 04 24             	mov    %eax,(%esp)
  61:	e8 00 00 00 00       	call   66 <_cargar_vendedores+0x66>
  66:	89 c2                	mov    %eax,%edx
  68:	8b 45 08             	mov    0x8(%ebp),%eax
  6b:	89 10                	mov    %edx,(%eax)
  6d:	8b 45 08             	mov    0x8(%ebp),%eax
  70:	8b 00                	mov    (%eax),%eax
  72:	85 c0                	test   %eax,%eax
  74:	75 21                	jne    97 <_cargar_vendedores+0x97>
  76:	c7 04 24 30 00 00 00 	movl   $0x30,(%esp)
  7d:	e8 00 00 00 00       	call   82 <_cargar_vendedores+0x82>
  82:	8b 45 e0             	mov    -0x20(%ebp),%eax
  85:	89 04 24             	mov    %eax,(%esp)
  88:	e8 00 00 00 00       	call   8d <_cargar_vendedores+0x8d>
  8d:	b8 00 00 00 00       	mov    $0x0,%eax
  92:	e9 87 00 00 00       	jmp    11e <_cargar_vendedores+0x11e>
  97:	8b 45 08             	mov    0x8(%ebp),%eax
  9a:	8b 00                	mov    (%eax),%eax
  9c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  9f:	6b d2 5a             	imul   $0x5a,%edx,%edx
  a2:	83 ea 5a             	sub    $0x5a,%edx
  a5:	01 d0                	add    %edx,%eax
  a7:	89 c2                	mov    %eax,%edx
  a9:	8d 45 86             	lea    -0x7a(%ebp),%eax
  ac:	b9 5a 00 00 00       	mov    $0x5a,%ecx
  b1:	8b 18                	mov    (%eax),%ebx
  b3:	89 1a                	mov    %ebx,(%edx)
  b5:	8b 5c 08 fc          	mov    -0x4(%eax,%ecx,1),%ebx
  b9:	89 5c 0a fc          	mov    %ebx,-0x4(%edx,%ecx,1)
  bd:	8d 5a 04             	lea    0x4(%edx),%ebx
  c0:	83 e3 fc             	and    $0xfffffffc,%ebx
  c3:	29 da                	sub    %ebx,%edx
  c5:	29 d0                	sub    %edx,%eax
  c7:	01 d1                	add    %edx,%ecx
  c9:	83 e1 fc             	and    $0xfffffffc,%ecx
  cc:	c1 e9 02             	shr    $0x2,%ecx
  cf:	89 ca                	mov    %ecx,%edx
  d1:	89 df                	mov    %ebx,%edi
  d3:	89 c6                	mov    %eax,%esi
  d5:	89 d1                	mov    %edx,%ecx
  d7:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  d9:	8d 45 86             	lea    -0x7a(%ebp),%eax
  dc:	83 c0 28             	add    $0x28,%eax
  df:	89 44 24 10          	mov    %eax,0x10(%esp)
  e3:	8d 45 86             	lea    -0x7a(%ebp),%eax
  e6:	83 c0 14             	add    $0x14,%eax
  e9:	89 44 24 0c          	mov    %eax,0xc(%esp)
  ed:	8d 45 86             	lea    -0x7a(%ebp),%eax
  f0:	89 44 24 08          	mov    %eax,0x8(%esp)
  f4:	c7 44 24 04 4f 00 00 	movl   $0x4f,0x4(%esp)
  fb:	00 
  fc:	8b 45 e0             	mov    -0x20(%ebp),%eax
  ff:	89 04 24             	mov    %eax,(%esp)
 102:	e8 00 00 00 00       	call   107 <_cargar_vendedores+0x107>
 107:	83 f8 03             	cmp    $0x3,%eax
 10a:	0f 84 3b ff ff ff    	je     4b <_cargar_vendedores+0x4b>
 110:	8b 45 e0             	mov    -0x20(%ebp),%eax
 113:	89 04 24             	mov    %eax,(%esp)
 116:	e8 00 00 00 00       	call   11b <_cargar_vendedores+0x11b>
 11b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 11e:	81 c4 9c 00 00 00    	add    $0x9c,%esp
 124:	5b                   	pop    %ebx
 125:	5e                   	pop    %esi
 126:	5f                   	pop    %edi
 127:	5d                   	pop    %ebp
 128:	c3                   	ret    

00000129 <_autenticar_usuario>:
 129:	55                   	push   %ebp
 12a:	89 e5                	mov    %esp,%ebp
 12c:	83 ec 28             	sub    $0x28,%esp
 12f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 136:	eb 4c                	jmp    184 <_autenticar_usuario+0x5b>
 138:	8b 45 f4             	mov    -0xc(%ebp),%eax
 13b:	6b d0 5a             	imul   $0x5a,%eax,%edx
 13e:	8b 45 08             	mov    0x8(%ebp),%eax
 141:	01 d0                	add    %edx,%eax
 143:	89 c2                	mov    %eax,%edx
 145:	8b 45 10             	mov    0x10(%ebp),%eax
 148:	89 44 24 04          	mov    %eax,0x4(%esp)
 14c:	89 14 24             	mov    %edx,(%esp)
 14f:	e8 00 00 00 00       	call   154 <_autenticar_usuario+0x2b>
 154:	85 c0                	test   %eax,%eax
 156:	75 28                	jne    180 <_autenticar_usuario+0x57>
 158:	8b 45 f4             	mov    -0xc(%ebp),%eax
 15b:	6b d0 5a             	imul   $0x5a,%eax,%edx
 15e:	8b 45 08             	mov    0x8(%ebp),%eax
 161:	01 d0                	add    %edx,%eax
 163:	8d 50 14             	lea    0x14(%eax),%edx
 166:	8b 45 14             	mov    0x14(%ebp),%eax
 169:	89 44 24 04          	mov    %eax,0x4(%esp)
 16d:	89 14 24             	mov    %edx,(%esp)
 170:	e8 00 00 00 00       	call   175 <_autenticar_usuario+0x4c>
 175:	85 c0                	test   %eax,%eax
 177:	75 07                	jne    180 <_autenticar_usuario+0x57>
 179:	b8 01 00 00 00       	mov    $0x1,%eax
 17e:	eb 11                	jmp    191 <_autenticar_usuario+0x68>
 180:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 184:	8b 45 f4             	mov    -0xc(%ebp),%eax
 187:	3b 45 0c             	cmp    0xc(%ebp),%eax
 18a:	7c ac                	jl     138 <_autenticar_usuario+0xf>
 18c:	b8 00 00 00 00       	mov    $0x0,%eax
 191:	c9                   	leave  
 192:	c3                   	ret    
 193:	90                   	nop
