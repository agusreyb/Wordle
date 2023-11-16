.8086
.model small
.stack 100h
.data
	opciones db "ACTOR AGUDO ALTAR AMBOS BANCO BICHO BYTES CABRA CALOR CAMPO CANAS CANOA "
			 db "CANTO CARTA CERCA CERDO CIEGO COLOR COMUN CORTA CRUDO CUEVA DATOS DEJAR "
			 db "DENSO DOBLE ENERO ENOJO ENTRA ERROR FABIO FALLA FALTA FECHA FIERA FRUTA " 
			 db "GASTO GORRO GRITO GUISO HIELO HUEVO JUEGO JUGAR KAYAK LAMER LIBRE LIMON "
			 db "LUCHA MARCA MARCO MENOS METRO MISIL MONTE MORIR NECIO PALOS PANDA PASTA " 
			 db "PATOS PEDRO PELEA PESCA PINZA PLANO PRIMA QUEMA RELOJ RENTA REZAR ROBAR "
			 db "ROSAS RUBIO SABIO SALSA SALUD SERIO SILLA SITIO SONAR SOPLO SUCIO TABLA "
			 db "TECLA TERCO TEXTO TOCAR TORAX TRABA TRIGO UNSAM VALOR VERDE VOCAL VUELO YERBA YOGUR ZORRO ZURDO"
	
	PALABRA db 6 dup(24h)

	cartel db 20h,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"        Bienvenidos a       ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db,20h,20h,20h,0dbh,	   "           WORDLE           ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"        Jugar (ENTER)  	   ",0dbh,20h,20h,20h,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"        Salir  (ESC)        ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"      Comparato, Decuzzi    ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"    Rey Brienza, Sabbatini  ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dh,0ah,24h
   
   	fin1   db 0ah,0ah,20h,20h,20h,20h,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"        Palabra: ",24h          
    fin2   db "      ",20h,20h,0dbh,0dh,0ah
           db ,20h,20h,20h,0dbh,	   "                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
		   db 20h,20h,20h,20h,0dbh,"         Jugar (ENTER)        ",0dbh,20h,20h,20h,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"         Salir  (ESC)       ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dh,0ah,24h

    win    db 20h,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"           GANASTE          ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dh,0ah,24h
    
    lose   db 20h,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dch,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"          GAME OVER         ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dbh,"                            ",20h,20h,0dbh,0dh,0ah
           db 20h,20h,20h,20h,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0dh,0ah,24h
   
    reglas db 20h,20h,"      Reglas del juego:         ",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           ;db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db,20h,	  " Debe intentar adivinar la palabra ",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h,"            de 5 letras            ",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h,"  Si la letra se pinta de verde es ",20h,20h,20h,0ah
           db 20h,20h,"porque esta en la posicion correcta",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h,"Si la letra se pinta de amarillo es",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h," porque esta en la palabra pero no ",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h,"   esta en la posicion correcta    ",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h,"          Tiene 6 intentos         ",20h,20h,0dh,0ah
           db 20h,20h,"                                   ",20h,20h,0dh,0ah
           db 20h,20h,"              Suerte!              ",20h,20h,0dh,0ah

    salto db 0dh,0ah, 24h
	NumRand db "00"
	palRand db "XXXXX",24h
	WinFlag db "L"	

.code
	extrn limpia:proc
	extrn pos_cursor:proc
	extrn imp_titulo:proc

	main proc
		mov ax, @data
		mov ds, ax

		call limpia
		
		;IMPRIMO EL CARTEL DE BIENVENIDA
		mov ah, 02h        	;posiciona el cursor
	    mov bh, 0
	    mov dh, 4			;fila
	    mov dl, 3			;columna
	    int 10h

	    mov ah, 9
	    lea dx, cartel
	    int 21h

	    opcion:
		    mov ah, 08h     ;pido caracter
		    int 21h 
		    cmp al, 0Dh 	;me fijo si es ENTER. Si lo es, empieza el juego
		    je jugar
		    cmp al, 1Bh		;me fijo si es ESC. Si lo es, sale del juego
		    je salir
		    jmp opcion		;sigue ingresando caracteres hasta que sea una de las dos opciones

		salir:
			mov ax, 4c00h
			int 21h

		jugar:
			call limpia
			
			mov ah, 02h			;posiciona el cursor
		    mov bh, 0
		    mov dh, 4		   	;fila
		    mov dl, 3		   	;columna
		    int 10h

		    ;IMPRIMO LAS REGLAS DEL JUEGO
		   	mov ah, 9
		    	lea dx, reglas
		    	int 21h
			mov ah, 08h			;pide cualquier caracter para seguir		
			int 21h

	    cicloWordle:
			mov WinFlag[0], 'L'
			call limpia
			call random	    
			;CAMBIO EL LUGAR DEL CURSOR
			mov dh, 02h 		;Fila del cursor
			mov dl, 61h 		;columna del cursor
			call pos_cursor
			;IMPRIMO EL TITULO DE WORDLE
			call imp_titulo

			;PALABRA 1///////////////////////////////////////
				call fPalabra1
				cmp WinFlag[0], 'W'
				je ending
			;PALABRA 2///////////////////////////////////////
				call fPalabra2
				cmp WinFlag[0], 'W'
				je ending
			;PALABRA 3///////////////////////////////////////
				call fPalabra3
				cmp WinFlag[0], 'W'
				je ending
			;PALABRA 4///////////////////////////////////////
				call fPalabra4
				cmp WinFlag[0], 'W'
				je ending
			;PALABRA 5///////////////////////////////////////
				call fPalabra5
				cmp WinFlag[0], 'W'
				je ending
			;PALABRA 6///////////////////////////////////////
				call fPalabra6
		ending:
			cmp WinFlag[0], 'W'
			je ganador 
			jne perdedor
			
		ganador:
			call limpia
			mov ah, 02h         ;posiciona el cursor
		    mov bh, 0
		    mov dh, 4			;fila
		    mov dl, 3			;columna
		    int 10h
		    mov ah, 9
		    lea dx, win
		    int 21h
		    mov ah, 9
		    lea dx, fin1
		    int 21h
			mov ah, 9
			mov dx, offset palRand
			int 21h		    
		    mov ah, 9
	    	lea dx, fin2
	    	int 21h	
	    	jmp opcion

	    perdedor:
	    	call limpia
			mov ah, 02h        ;posiciona el cursor
		    mov bh, 0
		    mov dh, 4			;fila
		    mov dl, 3			;columna
		    int 10h
		    mov ah, 9
		    lea dx, lose
		    int 21h
		    mov ah, 9
		    lea dx, fin1
		    int 21h
			mov ah, 9
			mov dx, offset palRand
			int 21h		    
		    mov ah, 9
	    	lea dx, fin2
	    	int 21h	
	    	jmp opcion
		
	main endp

;/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;FUNCIONES
;/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		
	palabra_cajadecarga proc
		;CARGA SIN ECHO E IMPRESION POR INT DE VIDEO (esta hecho de esta manera asi despues se puede mayusculizar, 
		;identificar si es entre la a-z o A-Z y no sea otro caracter, y saber si es enter o DEL)
		mov si, 0
		
		carga_Palabra:
			mov ah, 08h					;escanea sin echo en pantalla
			int 21h						
			cmp al, 08h					;compara si la letra leida fue el backspace (la tecla DEL)
			je DEL_volveratras			;Si es DEL salta un espacio atras para reescribir la letra	
			cmp si, 5
			je ENTER_confirmarpalabra		
			call fmayusculizador
			cmp al, 41h
			jae casi_Letra
			jmp carga_Palabra
		
		casi_Letra:
			cmp al, 5Ah
			jbe si_Letra
			jmp carga_Palabra
			
		si_Letra:
			mov PALABRA[si], al
			mov cx, 1
			mov ah, 09h 				;Escribe y pasa el cursor a la derecha INT 10h
			mov bh, 00h 				;Pagina 0
			mov bl, 0Fh 				;Color 0F=blanco 
			int 10h					    
			inc si
			cmp si, 6
			je finCarga_palabra
			add dl, 02h					;columna del cursor
			call pos_cursor
			jmp carga_Palabra
		
		DEL_volveratras:
			cmp si, 0
			je carga_Palabra
			mov ah, 09
			mov al, 0FFh  				;Imprimo caracter invisible para hacer desaparecer
			int 10h				     	;
			sub dl, 02h
			call pos_cursor
			mov ah, 09
			mov al, 0FFh  				;Imprimo caracter invisible para hacer desaparecer
			int 10h				     	;
			dec si
			jmp carga_Palabra
			
		ENTER_confirmarpalabra:
			cmp al, 0Dh
			je finCarga_palabra
			jmp carga_Palabra

		finCarga_palabra:	
			ret
	palabra_cajadecarga endp

	;///////////CONVIERTE PALABRAS A MAYÚSCULA///////////
	fmayusculizador proc
		cmp al, 61h
		jae casiMin
		jmp terminarMin
		casiMin:
			cmp al, 7Ah
			jbe esMin
			jmp terminarMin
		esMin:
			sub al, 20h
		terminarMin:
			ret
	fmayusculizador endp
  
  	;///////////GENERA UN NÚMERO ALEATORIO DE 0 A 99 Y ELIJE UNA DE LAS PALABRAS///////////
  	random proc
    	push ax
    	push cx
    	push bx
   		push dx

	    ; Generar semilla
	    mov ah, 00h
	    int 1Ah
	    mov  ax, dx
	    xor  dx, dx
	    mov  cx, 100
	    div  cx            ; DX contiene la semilla en el rango de 0 a 99

	    ; Generar dígito para las decenas
	    mov  bx, dx        ; Guardar la semilla en BX
	    xor  dx, dx
	    mov  cx, 10
	    div  cx            ; DX contiene el dígito para las decenas (0-9)
	    add  dl, '0'       ; Convertir a ASCII
	    mov  NumRand[0], dl

	    ; Generar dígito para las unidades
	    xor  dx, dx        ; Limpiar DX para la siguiente división
	    mov  ax, bx        ; Recuperar la semilla original de BX
	    div  cx            ; DX contiene el dígito para las unidades (0-9)
	    add  dl, '0'       ; Convertir a ASCII
	    mov  NumRand[1], dl

	    ; Obtener el primer dígito
		mov al, NumRand[0]     ; Cargar el primer dígito en AL
    	sub al, '0'            ; Convertir a valor numérico
    	mov bl, 10             ; Base 10
    	mul bl                 ; Multiplicar por la base
   		mov bx, ax             ; Guardar el resultado en BX

   		; Obtener el segundo dígito
    	mov al, NumRand[1]  ; Cargar el segundo dígito en AL
    	sub al, '0'            ; Convertir a valor numérico
    	add bx, ax             ; Sumar al resultado previo en BX

    	mov cx, bx             ; Mover el resultado final a CX

		mov bx, 0
		
		palabrarandom:
			add bx, 6
		loop palabrarandom

			mov si, 0
		buscarpalabrarandom:
			cmp si, 5
			je finBuscarpalabrarandom
			mov al, opciones[bx]
			mov palRand[si], al
			inc si
			inc bx
			jmp buscarpalabrarandom
		
		finBuscarpalabrarandom:
	    	pop dx
	    	pop bx
	    	pop cx
	    	pop ax
	    	ret
	random endp

	;/////////// PINTA DE GRIS LAS LETRAS QUE NO CORRESPONDEN A LA PALABRA ///////////
	fgris proc
		mov bx, 0
		grisear:
			cmp bx, 5
			je finGrisear
			mov al, PALABRA[bx]
			push bx
			mov ah, 09h 				;Escribe y pasa el cursor a la derecha INT 10h
			mov bh, 00h 				;Pagina 0
			mov bl, 07h 				;Color 07=gris 
			int 10h
			pop bx
			;CAMBIO EL LUGAR DEL CURSOR
			add dl, 2 		;columna del cursor
			call pos_cursor
			inc bx
		jmp grisear
		finGrisear:
			;CAMBIO EL LUGAR DEL CURSOR
			sub dl, 10 		;columna del cursor
			call pos_cursor
			call famarillo
		ret
	fgris endp

	;/////////// PINTA DE AMARIILLO LAS LETRAS QUE ESTÁN CONTENIDAS EN LA PALABRA PERO NO EN LA POSICIÓN CORRECTA ///////////
	famarillo proc
		mov si, 0
		mov bx, 0
		; Q U E S O bx palRand
		; G U X E X si  PALABRA

		compAmarillo:
			cmp bx, 5
			je siguienteLetra
			cmp si, 5
			je finAmarillo
			mov al, PALABRA[si]
			cmp al, palRand[bx]
			je pinta
			inc bx
			jmp compAmarillo
		siguienteLetra:
			mov bx, 0
			inc si
			;CAMBIO EL LUGAR DEL CURSOR
			add dl, 2 					;columna del cursor
			call pos_cursor
			jmp compAmarillo

		pinta:
			push bx
			mov ah, 09h 				;Escribe y pasa el cursor a la derecha INT 10h
			mov bh, 00h 				;Pagina 0
			mov bl, 0Eh 				;Color 0E=amarillo 
			int 10h
			pop bx
			;CAMBIO EL LUGAR DEL CURSOR
			add dl, 2 					;columna del cursor
			call pos_cursor
			inc si
			mov bx, 0
			jmp compAmarillo
		finAmarillo:

			;CAMBIO EL LUGAR DEL CURSOR
			sub dl, 10 		;columna del cursor
			call pos_cursor
			call fverde

		ret
	famarillo endp

	;/////////// PINTA DE VERDE LA LETRA QUE ESTÁ EN LA POSICIÓN CORRECTA ///////////
	fverde proc
		mov si, 0
		mov bx, 0
		jmp comparar
		siguienteComparar:
			;CAMBIO EL LUGAR DEL CURSOR
			add dl, 2 		;columna del cursor
			call pos_cursor
		
		comparar:
			cmp si, 5
			je finComparar
			mov al, PALABRA[si]
			cmp al, palRand[bx]				;SI SON IGUALES SE PINTA DE VERDE
			je verde 						
			jmp siguienteCaracter
		
		siguienteCaracter:
			inc bx
			inc si
			add dl, 2 						;columna del cursor
			call pos_cursor
			jmp comparar
		
		verde:
			push bx
			mov ah, 09h 				;Escribe y pasa el cursor a la derecha INT 10h
			mov bh, 00h 				;Pagina 0
			mov bl, 02h 				;Color 02=verde 
			int 10h
			pop bx
			inc si
			inc bx
			jmp siguienteComparar
		
		finComparar:
			ret
	fverde endp
	
	;///////////CAMBIA EL VALOR DEL WIN FLAG SI ES QUE LA PALABRA INGRESADA ES IGUAL A LA RANDOM///////////
	WinFlagCheck proc
	push bx
	push ax
	push cx
		mov bx, 0
		mov si, 0
		cicloFlag:
			cmp bx, 5
			je finCicloFlag
			mov al, PalRand[bx]
			cmp al, PALABRA[bx]
			je letraIgual
			inc bx
			jmp cicloFlag
		letraIgual:
			inc bx
			inc si
			jmp cicloFlag
		finCicloFlag:
			cmp si, 5
			je cambiarFlag
			jmp flagEnd
		cambiarFlag:
			mov WinFlag[0], 'W'
		flagEnd:

		pop cx
		pop ax
		pop bx
		ret
	WinFlagCheck endp

	;============INGRESO DE PALABRAS===============
	;<==PALABRA 1
	fPalabra1 proc
		mov dh, 06h 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call palabra_cajadecarga
		mov dh, 06h 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call fgris
		call WinFlagCheck
	ret
	fPalabra1 endp 

	;<==PALABRA 2
	fPalabra2 proc
		mov dh, 08h 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call palabra_cajadecarga
		mov dh, 08h 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call fgris
		call WinFlagCheck
	ret
	fPalabra2 endp 

	;<==PALABRA 3
	fPalabra3 proc
		mov dh, 0Ah 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call palabra_cajadecarga
		mov dh, 0Ah 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call fgris
		call WinFlagCheck
	ret
	fPalabra3 endp 

	;<==PALABRA 4
	fPalabra4 proc
		mov dh, 0Ch 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call palabra_cajadecarga
		mov dh, 0Ch 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call fgris
		call WinFlagCheck
	ret
	fPalabra4 endp 

	;<==PALABRA 5
	fPalabra5 proc
		mov dh, 0Eh 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call palabra_cajadecarga
		mov dh, 0Eh 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call fgris
		call WinFlagCheck
	ret
	fPalabra5 endp 

	;PALABRA 6
	fPalabra6 proc
		mov dh, 10h 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call palabra_cajadecarga
		mov dh, 10h 		;Fila del cursor
		mov dl, 60h 		;columna del cursor
		call pos_cursor		;CAMBIO EL LUGAR DEL CURSOR
		call fgris
		call WinFlagCheck
	ret
	fPalabra6 endp 


	end