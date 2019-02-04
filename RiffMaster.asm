#BITMAP DISPLAY
#Unit Width: 8
#Unit Height: 8
#Diplay Width: 128
#Display Height: 256

#KEYBOARD AND DISPLAY MMIO SIMULATOR
#Menu seleciona musicas, quando termina a musica volta ao menu

#Como jogar:
#Verde - a, Vermelho - s, Amarelo - d, Azul - f, Laranja - g
#Notas azuis claras se tocam usando o shift e a letra correspondente

.data
#Espaço alocado pro display
linha0: .space 64
linha1: .space 64
linha2: .space 64
linha3: .space 64
linha4: .space 64
linha5: .space 64
linha6: .space 64
linha7: .space 64
linha8: .space 64
linha9: .space 64
linha10: .space 64
linha11: .space 64
linha12: .space 64
linha13: .space 64
linha14: .space 64
linha15: .space 64
linha16: .space 64
linha17: .space 64
linha18: .space 64
linha19: .space 64
linha20: .space 64
linha21: .space 64
linha22: .space 64
linha23: .space 64
linha24: .space 64
linha25: .space 64
linha26: .space 64
linha27: .space 64
linha28: .space 64
linha29: .space 64
linha30: .space 64
linha31: .space 64

#Logo do jogo
logo1: .word  	0x000000, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 
		0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0x000000

logo2: .word 	0x000000, 0x4B0082, 0x800080, 0xFFFFFF, 0x000000, 0x800080, 0x800080, 0x800080, 
		0x800080, 0x800080, 0x800080, 0x800080, 0x800080, 0x800080, 0x4B0082, 0x000000

logo3: .word 	0x000000, 0x4B0082, 0x800080, 0xFFFFFF, 0xFFFFFF, 0x000000, 0x800080, 0xFFFFFF, 
		0x000000, 0x800080, 0xFFFFFF, 0x000000, 0x800080, 0x800080, 0x4B0082, 0x000000

logo46: .word 	0x000000, 0x4B0082, 0x800080, 0xFFFFFF, 0x000000, 0xFFFFFF, 0x000000, 0xFFFFFF,
	  	0xFFFFFF, 0x000000, 0xFFFFFF, 0xFFFFFF, 0x000000, 0x800080, 0x4B0082, 0x000000

logo5: .word 	0x000000, 0x4B0082, 0x800080, 0xFFFFFF, 0x000000, 0xFFFFFF, 0x000000, 0xFFFFFF, 
		0x000000, 0x800080, 0xFFFFFF, 0x000000, 0x800080, 0x800080, 0x4B0082, 0x000000

logo789: .word 	0x000000, 0x4B0082, 0x800080, 0x800080, 0x800080, 0x800080, 0x800080, 0xFFFFFF, 
		0x000000, 0x800080, 0xFFFFFF, 0x000000, 0x800080, 0x800080, 0x4B0082, 0x000000
			
logo10: .word 	0x000000, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0x4B0082, 0xFFFFFF, 
		0x000000, 0x4B0082, 0xFFFFFF, 0x000000, 0x4B0082, 0x4B0082, 0x4B0082, 0x000000

#Fundo do jogo
fundo: .word  	 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
		 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000

branco: .word 	 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
		 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF

corfundo: .word  0x000000, 0x00FF00, 0x00FF00, 0x000000, 0xFF0000, 0xFF0000, 0x000000, 0xFFFF00,
		 0xFFFF00, 0x000000, 0x0000FF, 0x0000FF, 0x000000, 0xFFA500, 0xFFA500, 0x000000

corbranco: .word 0xFFFFFF, 0x00FF00, 0x00FF00, 0xFFFFFF, 0xFF0000, 0xFF0000, 0xFFFFFF, 0xFFFF00,
		 0xFFFF00, 0xFFFFFF, 0x0000FF, 0x0000FF, 0xFFFFFF, 0xFFA500, 0xFFA500, 0xFFFFFF 

#Linhas pra descer
verde: .word 	0x000000, 0x00FF00, 0x00FF00, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
		0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000,
		0xFFFFFF, 0x00FF00, 0x00FF00, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
 		0x000000, 0x00FF00, 0x00FF00, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
 		0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000		 
		 
vermelho: .word	0x000000, 0x8B4513, 0x8B4513, 0x000000, 0xFF0000, 0xFF0000, 0x000000, 0x8B4513, 
		0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000,
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFF0000, 0xFF0000, 0xFFFFFF, 0xFFFFFF,
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,		
		0x000000, 0x8B4513, 0x8B4513, 0x000000, 0xFF0000, 0xFF0000, 0x000000, 0x8B4513, 
		0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000
		
amarelo: .word	0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0xFFFF00,
		0xFFFF00, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000,		
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFF00,
		0xFFFF00, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,		
		0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0xFFFF00,
		0xFFFF00, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000
		
azul: .word	0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
		0x8B4513, 0x000000, 0x0000FF, 0x0000FF, 0x000000, 0x8B4513, 0x8B4513, 0x000000,		
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
		0xFFFFFF, 0xFFFFFF, 0x0000FF, 0x0000FF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,		
		0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
		0x8B4513, 0x000000, 0x0000FF, 0x0000FF, 0x000000, 0x8B4513, 0x8B4513, 0x000000
		
laranja: .word	0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
		0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0xFFA500, 0xFFA500, 0x000000,		
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFA500, 0xFFA500, 0xFFFFFF,		
		0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
		0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0xFFA500, 0xFFA500, 0x000000
		 
#Linha sem nenhuma cor
marrom: .word	0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
		0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000,		
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
		0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,		
		0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
		0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000
		
#Linhas pra tocar com letra maiuscula
verdeshift: .word 	0x000000, 0x00FFFF, 0x00FFFF, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
			0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000,
			0xFFFFFF, 0x00FFFF, 0x00FFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
			0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
	 		0x000000, 0x00FFFF, 0x00FFFF, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
 			0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000		 
		 
vermelhoshift: .word	0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x00FFFF, 0x00FFFF, 0x000000, 0x8B4513, 
			0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000,
			0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0x00FFFF, 0x00FFFF, 0xFFFFFF, 0xFFFFFF,
			0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,		
			0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x00FFFF, 0x00FFFF, 0x000000, 0x8B4513, 
			0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000
		
amareloshift: .word	0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x00FFFF, 
			0x00FFFF, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000,		
			0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0x00FFFF, 
			0x00FFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,		
			0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x00FFFF, 
			0x00FFFF, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000
		
azulshift: .word	0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
			0x8B4513, 0x000000, 0x00FFFF, 0x00FFFF, 0x000000, 0x8B4513, 0x8B4513, 0x000000,		
			0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
			0xFFFFFF, 0xFFFFFF, 0x00FFFF, 0x00FFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,		
			0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
			0x8B4513, 0x000000, 0x00FFFF, 0x00FFFF, 0x000000, 0x8B4513, 0x8B4513, 0x000000
		
laranjashift: .word	0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
			0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x00FFFF, 0x00FFFF, 0x000000,		
			0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF,
			0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0x00FFFF, 0x00FFFF, 0xFFFFFF,		
			0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x8B4513, 
			0x8B4513, 0x000000, 0x8B4513, 0x8B4513, 0x000000, 0x00FFFF, 0x00FFFF, 0x000000
		 	 		
		 	 		
musica1: .word 	67,70,72,73,0, #asdfg
		0, 0, 0, 0, 0, #ASDFG
 		12, #quantidade de notas 
		1, 2, 3, 1, 2, 4, 3, 1, 2, 3, 2, 1, 0, 0 #notas mais 2 zeros
		 


musica2: .word 72,  64,  65, 67, 69,  62, 74, 70,  76, 71,
 33,

6, 2, 3, 4, 5, 2, 5, 
5, 4, 3, 4, 5, 10, 1, 4, 1,
1, 10, 5, 10, 1, 7, 9, 10, 2, 
5, 8, 3, 4, 3, 2, 3, 6, 0, 0

musica3: .word 69, 71, 74, 76, 78, 86, 88, 61, 61, 61, 
23,

4, 5, 3, 3, 4, 4, 5, 2, 2, 1, 1, 7, 7, 7, 7, 6, 6, 2, 2, 1, 1, 0, 0

musica4: .word 71, 75, 76, 78, 79, 80, 81, 83, 0, 0,
120,

1, 2, 1, 4, 1, 2, 1, 4, 1, 2, 1, 4, 1, 2, 1, 4, 
1, 3, 1, 5, 1, 3, 1, 5, 1, 3, 1, 5, 1, 3, 1, 5, 
1, 8, 1, 7, 1, 6, 1, 7, 1, 6, 1, 4, 1, 6, 1, 3, 1, 4, 1, 2, 1, 4, 1, 2, 1, 4, 1, 2, 4, 2,
1, 8, 1, 7, 1, 6, 1, 7, 1, 6, 1, 4, 1, 6, 1, 3, 1, 4, 1, 2, 1, 4, 1, 2, 1, 4, 1, 2, 4, 2,
1, 8, 1, 7, 1, 6, 1, 7, 1, 6, 1, 4, 1, 6, 1, 3, 1, 4, 1, 2, 1, 4, 1, 2, 1, 4, 1, 2, 4, 2,
0, 0

musica5: .word 55, 57, 59, 60, 62, 64, 66, 67, 0, 0
40,

6, 6, 6, 6, 6, 7, 8, 7, 6, 6,
6, 6, 6, 6, 5, 5, 5, 6, 5, 5, 4, 4, 3, 3,
3, 3, 3, 3, 2, 2, 2, 3, 2, 2, 2, 2, 1, 1, 1, 2, 
0, 0

musica6: .word 50, 52, 62, 79, 76, 74, 71, 69, 70, 0,
35,

1, 2, 3, 2, 3, 2, 3, 2, 2, 3, 2, 3, 2, 3 
4, 5, 6, 7, 8, 9, 8,
1, 2, 3, 2, 3, 2, 3, 2, 1, 3, 1, 3, 1, 3, 0, 0 

.text   
li $v0, 31 #syscall do som sem delay
 #tempo de duração da nota
li $a3, 127 #volume
li $t0, 0xffff0004 #endereço de onde o teclado grava

#t1 iterador pro print
#t5 carrega o endereço da musica
#t4 usado de variavel pra carregar pra printar na tela e comparar na hora de tocar
#t3 limite dos loops dos prints
#t6 é o fim das notas antes dos dois 0s
#t7 itera pra printar as notas até t6

jal printfundo #chama a função de printar o logo com o fundo
nop

menu: 
lb $a0, ($t0) #carrega pra a0 oq o teclado escreve
beq $zero, $a0, menu #testa se foi digitado algo, vendo se n é um zero q ta lá e fica no loop
nop
sb $zero, ($t0) #salva na memoria um zero pra liberar a leitura pro proximoo menu
beq $a0, 49, smoke #chama a musica smoke on the water
nop
beq $a0, 50, crowley
nop
beq $a0, 51, jump
nop
beq $a0, 52, thunderstruck
nop
beq $a0, 53, iWillSurvive
nop
beq $a0, 54, backInBlack
nop
beq $a0, 48, fim #sai do jogo
nop
j menu #se foi digitado algo q n seja numero volta pro loop
nop

smoke:
li $v0, 31
li $a1, 1000
li $a2, 104 #instumento guitarra
la $t5, musica1
jal musica
nop
j menu
nop

crowley:
li $v0, 31
li $a1, 750
li $a2, 16 
la $t5, musica2
jal musica
nop
j menu
nop

jump:
li $v0, 33
li $a1, 500
li $a2, 8
la $t5, musica3
jal musica
nop
j menu
nop

thunderstruck:
li $v0, 31
li $a1, 1000
li $a2, 104 #instumento guitarra
la $t5, musica4
jal musica
nop
j menu
nop
iWillSurvive:
li $v0, 31
li $a1, 1000
li $a2, 104 #instumento guitarra
la $t5, musica5
jal musica
nop
j menu
nop
backInBlack:
li $v0, 31
li $a1, 1000
li $a2, 104 #instumento guitarra
la $t5, musica6
jal musica
nop
j menu
nop


musica:
lw $t6, 40($t5) #multiplica o numero de notas por 4
add $t6, $t6, $t6
add $t6, $t6, $t6
addi $t7, $t5, 44
add $t6, $t7, $t6

j printmusica #chama o print das notas do jogo
nop

loopmusica:
lb $a0, ($t0) #carrega pra a0 oq o teclado escreve
beq $zero, $a0, loopmusica #testa se foi digitado algo vendo se n é um zero q ta lá
nop
sw $ra, ($sp)
jal tocamusica #chama a função de tocar a nota
nop
lw $ra, ($sp)
sb $zero, ($t0) #escreve zero na memoria onde o teclado escreveria
j printmusica #chama o print das notas do jogo a cada digitada
nop

tocamusica:
beq $a0, 97, tocaa #compara pra ver se foi um a
nop
beq $a0, 115, tocas #compara pra ver se foi um s
nop
beq $a0, 100, tocad #compara pra ver se foi um d
nop
beq $a0, 102, tocaf #compara pra ver se foi um f
nop
beq $a0, 103, tocag #compara pra ver se foi um g
nop
beq $a0, 65, tocaashift #compara pra ver se foi um A
nop
beq $a0, 83, tocasshift #compara pra ver se foi um S
nop
beq $a0, 68, tocadshift #compara pra ver se foi um D
nop
beq $a0, 70, tocafshift #compara pra ver se foi um F
nop
beq $a0, 71, tocagshift #compara pra ver se foi um G
nop
jr $ra #se nao foi nem um deles volta sem tocar nada
nop

tocaa: #carrega a nota e toca ela
lw $a0, 0($t5)
syscall
jr $ra
nop

tocas: #carrega a nota e toca ela
lw $a0, 4($t5)
syscall
jr $ra
nop

tocad: #carrega a nota e toca ela
lw $a0, 8($t5)
syscall
jr $ra
nop

tocaf: #carrega a nota e toca ela
lw $a0, 12($t5)
syscall
jr $ra
nop

tocag: #carrega a nota e toca ela
lw $a0, 16($t5)
syscall
jr $ra
nop

tocaashift: #carrega a nota e toca ela
lw $a0, 20($t5)
syscall
jr $ra
nop

tocasshift: #carrega a nota e toca ela
lw $a0, 24($t5)
syscall
jr $ra
nop

tocadshift: #carrega a nota e toca ela
lw $a0, 28($t5)
syscall
jr $ra
nop

tocafshift: #carrega a nota e toca ela
lw $a0, 32($t5)
syscall
jr $ra
nop

tocagshift: #carrega a nota e toca ela
lw $a0, 36($t5)
syscall
jr $ra
nop

printmusica: 
#loop de t7 diferente de t6
#carrega t7 pro t4 e testa, depois t7 +4 e t7 +8
#soma t7+4 e volta pro loopmusica
#quando acaba o loop printa marrom24 e volta pro menu

beq $t7, $t6, printfim
nop
printslinha1:
lw $t4, 0($t7)
beq $t4, 1, linha1verde
nop
beq $t4, 2, linha1vermelho
nop
beq $t4, 3, linha1amarelo
nop
beq $t4, 4, linha1azul
nop
beq $t4, 5, linha1laranja
nop
beq $t4, 6, linha1verdeshift
nop
beq $t4, 7, linha1vermelhoshift
nop
beq $t4, 8, linha1amareloshift
nop
beq $t4, 9, linha1azulshift
nop
beq $t4, 10, linha1laranjashift
nop
printslinha2:
lw $t4, 4($t7)
beq $t4, 0, linha2marrom
nop
beq $t4, 1, linha2verde
nop
beq $t4, 2, linha2vermelho
nop
beq $t4, 3, linha2amarelo
nop
beq $t4, 4, linha2azul
nop
beq $t4, 5, linha2laranja
nop
beq $t4, 6, linha2verdeshift
nop
beq $t4, 7, linha2vermelhoshift
nop
beq $t4, 8, linha2amareloshift
nop
beq $t4, 9, linha2azulshift
nop
beq $t4, 10, linha2laranjashift
nop
printslinha3:
lw $t4, 8($t7)
beq $t4, 0, linha3marrom
nop
beq $t4, 1, linha3verde
nop
beq $t4, 2, linha3vermelho
nop
beq $t4, 3, linha3amarelo
nop
beq $t4, 4, linha3azul
nop
beq $t4, 5, linha3laranja
nop
beq $t4, 6, linha3verdeshift
nop
beq $t4, 7, linha3vermelhoshift
nop
beq $t4, 8, linha3amareloshift
nop
beq $t4, 9, linha3azulshift
nop
beq $t4, 10, linha3laranjashift
nop
resto: 
addi $t7, $t7, 4
j loopmusica
nop

#linha1
linha1verde:
sw $ra, ($sp)
jal printverde24
nop
lw $ra, ($sp)
j printslinha2
nop

linha1vermelho:
sw $ra, ($sp)
jal printvermelho24
nop
lw $ra, ($sp)
j printslinha2
nop

linha1amarelo:
sw $ra, ($sp)
jal printamarelo24
nop
lw $ra, ($sp)
j printslinha2
nop

linha1azul:
sw $ra, ($sp)
jal printazul24
nop
lw $ra, ($sp)
j printslinha2
nop

linha1laranja:
sw $ra, ($sp)
jal printlaranja24
nop
lw $ra, ($sp)
j printslinha2
nop

linha1verdeshift:
sw $ra, ($sp)
jal printverdeshift24
nop
lw $ra, ($sp)
j printslinha2
nop

linha1vermelhoshift:
sw $ra, ($sp)
jal printvermelhoshift24
nop
lw $ra, ($sp)
j printslinha2
nop

linha1amareloshift:
sw $ra, ($sp)
jal printamareloshift24
nop
lw $ra, ($sp)
j printslinha2
nop

linha1azulshift:
sw $ra, ($sp)
jal printazulshift24
nop
lw $ra, ($sp)
j printslinha2
nop

linha1laranjashift:
sw $ra, ($sp)
jal printlaranjashift24
nop
lw $ra, ($sp)
j printslinha2
nop

#linha2
linha2verde:
sw $ra, ($sp)
jal printverde19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2marrom:
sw $ra, ($sp)
jal printmarrom19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2vermelho:
sw $ra, ($sp)
jal printvermelho19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2amarelo:
sw $ra, ($sp)
jal printamarelo19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2azul:
sw $ra, ($sp)
jal printazul19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2laranja:
sw $ra, ($sp)
jal printlaranja19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2verdeshift:
sw $ra, ($sp)
jal printverdeshift19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2vermelhoshift:
sw $ra, ($sp)
jal printvermelhoshift19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2amareloshift:
sw $ra, ($sp)
jal printamareloshift19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2azulshift:
sw $ra, ($sp)
jal printazulshift19
nop
lw $ra, ($sp)
j printslinha3
nop

linha2laranjashift:
sw $ra, ($sp)
jal printlaranjashift19
nop
lw $ra, ($sp)
j printslinha3
nop

#linha 3
linha3verde:
sw $ra, ($sp)
jal printverde14
nop
lw $ra, ($sp)
j resto
nop

linha3marrom:
sw $ra, ($sp)
jal printmarrom14
nop
lw $ra, ($sp)
j resto
nop

linha3vermelho:
sw $ra, ($sp)
jal printvermelho14
nop
lw $ra, ($sp)
j resto
nop

linha3amarelo:
sw $ra, ($sp)
jal printamarelo14
nop
lw $ra, ($sp)
j resto
nop

linha3azul:
sw $ra, ($sp)
jal printazul14
nop
lw $ra, ($sp)
j resto
nop

linha3laranja:
sw $ra, ($sp)
jal printlaranja14
nop
lw $ra, ($sp)
j resto
nop

linha3verdeshift:
sw $ra, ($sp)
jal printverdeshift14
nop
lw $ra, ($sp)
j resto
nop

linha3vermelhoshift:
sw $ra, ($sp)
jal printvermelhoshift14
nop
lw $ra, ($sp)
j resto
nop

linha3amareloshift:
sw $ra, ($sp)
jal printamareloshift14
nop
lw $ra, ($sp)
j resto
nop

linha3azulshift:
sw $ra, ($sp)
jal printazulshift14
nop
lw $ra, ($sp)
j resto
nop

linha3laranjashift:
sw $ra, ($sp)
jal printlaranjashift14
nop
lw $ra, ($sp)
j resto
nop

printfim:
sw $ra, ($sp)
jal printmarrom24
nop
lw $ra, ($sp)
jr $ra
nop

#PRINTA AS LINHAS NA TELA
printazul19: 
li $t1, 0
loopazul19:
lw $t4, azul($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopazul19
nop
jr $ra
nop
    
printmarrom19:
li $t1, 0
loopmarrom19:
lw $t4, marrom($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopmarrom19
nop
jr $ra
nop

printamarelo19: 
li $t1, 0
loopamarelo19:
lw $t4, amarelo($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopamarelo19 
nop
jr $ra
nop    
    
printverde19:
li $t1, 0
loopverde19:
lw $t4, verde($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopverde19
nop
jr $ra
nop
        
printvermelho19:
li $t1, 0
loopvermelho19:
lw $t4, vermelho($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopvermelho19
nop
jr $ra
nop
    
printlaranja19:
li $t1, 0
looplaranja19:
lw $t4, laranja($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, looplaranja19
nop
jr $ra
nop

printazul24:
li $t1, 0
loopazul24:
lw $t4, azul($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopazul24
nop
jr $ra
nop
    
printmarrom24: 
li $t1, 0
loopmarrom24:
lw $t4, marrom($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopmarrom24
nop
jr $ra
nop

printamarelo24:
li $t1, 0
loopamarelo24:
lw $t4, amarelo($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopamarelo24 
nop
jr $ra
nop    
    
printverde24:
li $t1, 0
loopverde24:
lw $t4, verde($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopverde24
nop
jr $ra
nop
        
printvermelho24:
li $t1, 0
loopvermelho24:
lw $t4, vermelho($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopvermelho24
nop
jr $ra
nop
    
printlaranja24:
li $t1, 0
looplaranja24:
lw $t4, laranja($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, looplaranja24
nop
jr $ra
nop

printazul14:
li $t1, 0
loopazul14:
lw $t4, azul($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopazul14
nop
jr $ra
nop
    
printmarrom14:
li $t1, 0
loopmarrom14:
lw $t4, marrom($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopmarrom14
nop
jr $ra
nop

printamarelo14:
li $t1, 0
loopamarelo14:
lw $t4, amarelo($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopamarelo14
nop
jr $ra
nop    
    
printverde14:
li $t1, 0
loopverde14:
lw $t4, verde($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopverde14
nop
jr $ra
nop
        
printvermelho14:
li $t1, 0
loopvermelho14:
lw $t4, vermelho($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopvermelho14
nop
jr $ra
nop
    
printlaranja14:
li $t1, 0
looplaranja14:
lw $t4, laranja($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, looplaranja14
nop
jr $ra
nop

printazulshift19: 
li $t1, 0
loopazulshift19:
lw $t4, azulshift($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopazulshift19
nop
jr $ra
nop
    
printamareloshift19: 
li $t1, 0
loopamareloshift19:
lw $t4, amareloshift($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopamareloshift19 
nop
jr $ra
nop    
    
printverdeshift19:
li $t1, 0
loopverdeshift19:
lw $t4, verdeshift($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopverdeshift19
nop
jr $ra
nop
        
printvermelhoshift19:
li $t1, 0
loopvermelhoshift19:
lw $t4, vermelhoshift($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopvermelhoshift19
nop
jr $ra
nop
    
printlaranjashift19:
li $t1, 0
looplaranjashift19:
lw $t4, laranjashift($t1)
sw $t4, linha19($t1)
addi $t1, $t1, 4
bne $t1, $t3, looplaranjashift19
nop
jr $ra
nop

printazulshift24:
li $t1, 0
loopazulshift24:
lw $t4, azulshift($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopazulshift24
nop
jr $ra
nop
    
printamareloshift24:
li $t1, 0
loopamareloshift24:
lw $t4, amareloshift($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopamareloshift24 
nop
jr $ra
nop    
    
printverdeshift24:
li $t1, 0
loopverdeshift24:
lw $t4, verdeshift($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopverdeshift24
nop
jr $ra
nop
        
printvermelhoshift24:
li $t1, 0
loopvermelhoshift24:
lw $t4, vermelhoshift($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopvermelhoshift24
nop
jr $ra
nop
    
printlaranjashift24:
li $t1, 0
looplaranjashift24:
lw $t4, laranjashift($t1)
sw $t4, linha24($t1)
addi $t1, $t1, 4
bne $t1, $t3, looplaranjashift24
nop
jr $ra
nop

printazulshift14:
li $t1, 0
loopazulshift14:
lw $t4, azulshift($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopazulshift14
nop
jr $ra
nop

printamareloshift14:
li $t1, 0
loopamareloshift14:
lw $t4, amareloshift($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopamareloshift14
nop
jr $ra
nop    
    
printverdeshift14:
li $t1, 0
loopverdeshift14:
lw $t4, verdeshift($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopverdeshift14
nop
jr $ra
nop
        
printvermelhoshift14:
li $t1, 0
loopvermelhoshift14:
lw $t4, vermelhoshift($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, loopvermelhoshift14
nop
jr $ra
nop
    
printlaranjashift14:
li $t1, 0
looplaranjashift14:
lw $t4, laranjashift($t1)
sw $t4, linha14($t1)
addi $t1, $t1, 4
bne $t1, $t3, looplaranjashift14
nop
jr $ra
nop

printfundo:
li $t1, 0 #usa de contador
li $t3, 64 #pra quebrar o loop
    
printloop0: 
lw $t4, fundo($t1)
sw $t4, linha12($t1)
sw $t4, linha13($t1)
sw $t4, linha14($t1)
sw $t4, linha16($t1)
sw $t4, linha17($t1)
sw $t4, linha18($t1)
sw $t4, linha19($t1)
sw $t4, linha21($t1)
sw $t4, linha22($t1)
sw $t4, linha23($t1)
sw $t4, linha24($t1)
sw $t4, linha26($t1)
sw $t4, linha27($t1)
sw $t4, linha28($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop0
nop   
    
li $t1, 0 #zera o contador antes de cada loop

printloop1:    
lw $t4, branco($t1)
sw $t4, linha15($t1)
sw $t4, linha20($t1)
sw $t4, linha25($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop1
nop  
 
li $t1, 0 

printloop2:    
lw $t4, corbranco($t1)
sw $t4, linha30($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop2
nop  
 
li $t1, 0 

printloop3:    
lw $t4, corfundo($t1)
sw $t4, linha29($t1)
sw $t4, linha31($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop3
nop  
    
li $t1, 0 

printloop4:    
lw $t4, logo1($t1)
sw $t4, linha1($t1)    
addi $t1, $t1, 4
bne $t1, $t3, printloop4
nop     
    
li $t1, 0

printloop5:    
lw $t4, logo2($t1)
sw $t4, linha2($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop5
nop   
        
li $t1, 0 

printloop6:    
lw $t4, logo3($t1)
sw $t4, linha3($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop6
nop   
    
li $t1, 0

printloop7:    
lw $t4, logo46($t1)
sw $t4, linha4($t1)
sw $t4, linha6($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop7
nop   
    
li $t1, 0 

printloop8:    
lw $t4, logo5($t1)
sw $t4, linha5($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop8
nop   
    
li $t1, 0 

printloop9:    
lw $t4, logo789($t1)
sw $t4, linha7($t1)
sw $t4, linha8($t1)
sw $t4, linha9($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop9
nop   
    
li $t1, 0 

printloop10:    
lw $t4, logo10($t1)
sw $t4, linha10($t1)
addi $t1, $t1, 4
bne $t1, $t3, printloop10
nop   

#multiplica por 3 pra imprimir 3 linhas
#só no inicio do programa se printa linha por linha, depois é só de 3 em 3
add $t1, $t3, $t3  
add $t3, $t1, $t3

jr $ra
fim: nop
