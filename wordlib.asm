.8086
.model small
.stack 100h

.data
	titulo db "WORDLE",24h
	PALABRA db 6 dup(24h)
.code
	public limpia
	public pos_cursor
	public imp_titulo

	limpia proc
	    mov ah, 00h 	;<------MODO VIDEO INT 10h
		mov al, 13h		;elijo el modo
		int 10h      	;INTERRUPCION 10h VIDEO
		ret
	limpia endp

	;FUNCION INT 10h --> ah=02h PARA CAMBIAR EL LUGAR DEL CURSOR
	;(antes de llamarla hay que ponerle a dh=FILA.h y a dl=COLUMNA.h)
	pos_cursor proc
		mov ah, 02h 				;posición del cursor INT 10h
		mov bh, 00h 
		int 10h 					;Interrupcion 10h: modo video
		ret
	pos_cursor endp

	imp_titulo proc
		mov cx, 6           ;cantidad de veces que quiero imprimir el caracter
		mov si, 5			;cuantas veces quiero recorrer el loop
		mov ah, 09h 		;Escribo y pasa el cursor a la derecha
		mov bh, 00h 		;Pagina 0
		mov bl, 03h 		;COLOR 03=turquesa
			
		ciclo:
			mov al, titulo[si]	;Paso la letra al "al" para que el int 10h lo imprima
			int 10h
			dec si
		loop ciclo
		ret
	imp_titulo endp

end