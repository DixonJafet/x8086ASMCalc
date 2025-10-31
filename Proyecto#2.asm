.model small
.stack

.data


N1 db "1$"
N2 db "2$"
N3 db "3$"
N4 db "4$"
N5 db "5$"
N6 db "6$"
N7 db "7$"
N8 db "8$"
N9 db "9$"
N0 db "0$"
S1 db "+$"
S2 db "-$"
S3 db "*$"
S4 db "/$"
S5 db "=$"
Bo db " $"
coma db ",$"


R1 db 0
R2 db 0
D1 db 0
D2 db 0
V db 0
ti db 10
Op db 0
ser db 0

cor db 4


.code




begin proc far  


    .startup  
              
mov R1,0
mov R2,0
mov D1,0
mov D2,0
mov V,0
mov cor,4
mov ti,10
mov Op,0              
mov ser,0              
              
              
              
              
              
mov ax,0013h ;Dibujito
    int 10h




            
Nu1:        mov ah,02h ; Numeros fila1
            mov dl,05
            mov dh,06
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N1
            int 21h
            
                        
            
            
Nu2:        mov ah,02h
            mov dl,12
            mov dh,06
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N2
            int 21h
            
            

Nu3:        mov ah,02h
            mov dl,20
            mov dh,06
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N3
            int 21h
            
Nu4:        mov ah,02h
            mov dl,27
            mov dh,06
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N4
            int 21h
            
Nu5:        mov ah,02h
            mov dl,35
            mov dh,06
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N5
            int 21h
            
            
Nu6:        mov ah,02h ;Numeros_fila2
            mov dl,05
            mov dh,10
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N6
            int 21h            


Nu7:        mov ah,02h
            mov dl,12
            mov dh,10
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N7
            int 21h 
            
            
Nu8:        mov ah,02h
            mov dl,20
            mov dh,10
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N8
            int 21h            


Nu9:        mov ah,02h
            mov dl,27
            mov dh,10
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N9
            int 21h



Nu0:        mov ah,02h
            mov dl,35
            mov dh,10
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,N0
            int 21h


;+
Sim1:       mov ah,02h
            mov dl,05
            mov dh,14
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,S1
            int 21h

;-
Sim2:       mov ah,02h
            mov dl,12
            mov dh,14
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,S2
            int 21h
            
            
;* 

Sim3:       mov ah,02h
            mov dl,20
            mov dh,14
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,S3
            int 21h

;/
Sim4:       mov ah,02h
            mov dl,27
            mov dh,14
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,S4
            int 21h


;=

Sim5:       mov ah,02h
            mov dl,35
            mov dh,14
            
            int 10h


            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,S5
            int 21h    

;________________________________________
    
    
Dibujos:    mov cx,20
            mov dl,10
            mov bx,140
           

Graficar:   mov ah,0ch; Pantalla 
            mov al,07h
            int 10h
                    
            inc cx
            cmp cx,300
            je  sumar1
            jmp Graficar
            
            
sumar1:     mov cx,20
            add dl,18
            jmp Graficar2


Graficar2:  mov ah,0ch 
            mov al,07h
            int 10h
                    
            inc cx
            cmp cx,300
            je  lados
            jmp Graficar2
            
lados:      mov cx,20
            mov dl,10
            jmp L1
L1:         mov ah,0ch; Pantalla 
            mov al,07h
            int 10h

            inc dl
            cmp dl,30
            je  ladoss
            jmp L1
            
ladoss:     mov cx,300
            mov dl,10
            jmp L2
L2:         mov ah,0ch; Pantalla 
            mov al,07h
            int 10h
            
            inc dl
            cmp dl,30
            je  sumar2
            jmp L2               



sumar2:     mov bx,60 ;Botones Horizontal
            mov cx,20
            add dl,15
            cmp dl,120
            ja  pos_ver
            jmp Grafib2           

Grafib2:    mov ah,0ch 
            mov al,07h
            int 10h
            
            inc cx
            cmp cx,bx
            je  Grafib
            jmp Grafib2 

Grafib:     
            add cx,20 
            add bx,60
            cmp cx,300
            ja  sumar2
            jmp Grafib2                         
            
            

pos_ver:    mov cx,20 ;Botones_verticales
            xor bx,bx
            mov dl,45
            mov bl,120
            mov bh,60
            
ver_B1:     mov ah,0ch 
            mov al,07h
            int 10h
            
            
            inc dl
            cmp dl,bh
            je  saltar1
            jmp ver_B1
            
            
saltar1:    add dl,15
            add bh,30
            cmp dl,120
            ja  mover_cx
            jmp ver_B1            
                        
          
mover_cx:   add cx,60
            cmp cx,320
            je  pos_ver2
            mov dl,45
            mov bl,120
            mov bh,60
            jmp ver_B1
                       
            
pos_ver2:   mov cx,60 ;Botones_verticales2
            xor bx,bx
            mov dl,45
            mov bl,120
            mov bh,60
            
            
ver_B2:     mov ah,0ch 
            mov al,07h
            int 10h
            
            
            inc dl
            cmp dl,bh
            je  saltar2
            jmp ver_B2            
            

saltar2:    add dl,15
            add bh,30
            cmp bh,120
            ja  mover_cx2
            jmp ver_B2


mover_cx2:  add cx,60
            cmp cx,360
            je  limpiar    
            mov dl,45
            mov bl,120
            mov bh,60
            jmp ver_B2




    
limpiar:    xor ax,ax
            xor bx,bx
            xor cx,cx
            xor dx,dx
            jmp Botones       ; FFFFinn
            



                   

Botones:    mov ax,0        ;Mouse
            int 33h
            
            mov ax,1
            int 33h


Boton1:     mov ax,3
            int 33h
            
            cmp cx,40
            jge Numero1
            jmp Boton2
    Numero1:cmp cx,120
            jle Numero1_1
            jmp Boton2
            
  Numero1_1:cmp dx,43
            jge Numero1_2
            jmp Boton2
  Numero1_2:cmp dx,60
            jle Numero1_3
            jmp Boton2
  
  Numero1_3:cmp bl,1
            je  accion
            jmp Boton1
                      
            
accion:     mov ser,1
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N1
            int 21h
            
            jmp Integrar
            
            
            
            
      
           
    

;_______________________________________
Boton2:     mov ax,3
            int 33h
            
            cmp cx,160
            jge Numero2
            jmp Boton3
    Numero2:cmp cx,238
            jle Numero2_1
            jmp Boton3
            
  Numero2_1:cmp dx,43
            jge Numero2_2
            jmp Boton3
  Numero2_2:cmp dx,60
            jle Numero2_3
            jmp Boton3
  
  Numero2_3:cmp bl,1
            je  accion2
            jmp Boton2


accion2:    mov ser,2
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N2
            int 21h

            jmp Integrar
;____________________________________________

Boton3:     mov ax,3
            int 33h
            
            cmp cx,280
            jge Numero3
            jmp Boton4
    Numero3:cmp cx,360
            jle Numero3_1
            jmp Boton4
            
  Numero3_1:cmp dx,43
            jge Numero3_2
            jmp Boton4
  Numero3_2:cmp dx,60
            jle Numero3_3
            jmp Boton4
  
  Numero3_3:cmp bl,1
            je  accion3
            jmp Boton3


accion3:    mov ser,3
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N3
            int 21h

            jmp Integrar

;_______________________________________

Boton4:     mov ax,3
            int 33h
            
            cmp cx,389
            jge Numero4
            jmp Boton5
    Numero4:cmp cx,480
            jle Numero4_1
            jmp Boton5
            
  Numero4_1:cmp dx,43
            jge Numero4_2
            jmp Boton5
  Numero4_2:cmp dx,60
            jle Numero4_3
            jmp Boton5
  
  Numero4_3:cmp bl,1
            je  accion4
            jmp Boton4


accion4:    mov ser,4
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N4
            int 21h

            jmp Integrar

;_______________________________________

Boton5:     mov ax,3
            int 33h
            
            cmp cx,520
            jge Numero5
            jmp Boton6
    Numero5:cmp cx,602
            jle Numero5_1
            jmp Boton6
            
  Numero5_1:cmp dx,43
            jge Numero5_2
            jmp Boton6
  Numero5_2:cmp dx,60
            jle Numero5_3
            jmp Boton6
  
  Numero5_3:cmp bl,1
            je  accion5
            jmp Boton5


accion5:    mov ser,5
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N5
            int 21h

            jmp Integrar

;____________________________________________


Boton6:     
            mov ax,3
            int 33h
            
            cmp cx,40
            jge Numero6
            jmp Boton7
    Numero6:cmp cx,120
            jle Numero6_1
            jmp Boton7
            
  Numero6_1:cmp dx,74
            jge Numero6_2
            jmp Boton7
  Numero6_2:cmp dx,90
            jle Numero6_3
            jmp Boton7
  
  Numero6_3:cmp bl,1
            je  accion6
            jmp Boton6


accion6:    mov ser,6
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N6
            int 21h

            jmp Integrar

;_____________________________________________


Boton7:     mov ser,7
            mov ax,3
            int 33h
            
            cmp cx,160
            jge Numero7
            jmp Boton8
    Numero7:cmp cx,238
            jle Numero7_1
            jmp Boton8
            
  Numero7_1:cmp dx,74
            jge Numero7_2
            jmp Boton8
  Numero7_2:cmp dx,90
            jle Numero7_3
            jmp Boton8
  
  Numero7_3:cmp bl,1
            je  accion7
            jmp Boton7


accion7:    mov ser,7
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N7
            int 21h

            jmp Integrar

;______________________________________________

Boton8:     mov ax,3
            int 33h
            
            cmp cx,280
            jge Numero8
            jmp Boton9
    Numero8:cmp cx,360
            jle Numero8_1
            jmp Boton9
            
  Numero8_1:cmp dx,74
            jge Numero8_2
            jmp Boton9
  Numero8_2:cmp dx,90
            jle Numero8_3
            jmp Boton9
  
  Numero8_3:cmp bl,1
            je  accion8
            jmp Boton8


accion8:    mov ser,8
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N8
            int 21h

            jmp Integrar

;_______________________________________

Boton9:     mov ax,3
            int 33h
            
            cmp cx,389
            jge Numero9
            jmp Boton0
    Numero9:cmp cx,480
            jle Numero9_1
            jmp Boton0
            
  Numero9_1:cmp dx,74
            jge Numero9_2
            jmp Boton0
  Numero9_2:cmp dx,90
            jle Numero9_3
            jmp Boton0
  
  Numero9_3:cmp bl,1
            je  accion9
            jmp Boton9


accion9:    mov ser,9
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N9
            int 21h

            jmp Integrar

;_______________________________________

Boton0:     mov ax,3
            int 33h
            
            cmp cx,520
            jge Numero0
            jmp BotonMas
    Numero0:cmp cx,602
            jle Numero0_1
            jmp BotonMas
            
  Numero0_1:cmp dx,74
            jge Numero0_2
            jmp BotonMas
  Numero0_2:cmp dx,90
            jle Numero0_3
            jmp BotonMas
  
  Numero0_3:cmp bl,1
            je  accion0
            jmp Boton0


accion0:    add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,N0
            int 21h
            
            jmp Integrar_cero
            jmp Boton1

;____________________________________________


BotonMas:   mov ax,3
            int 33h
            
            cmp cx,40
            jge Mas
            jmp BotonMenos
        Mas:cmp cx,120
            jle Mas_1
            jmp BotonMenos
            
       Mas_1:cmp dx,105
            jge Mas_2
            jmp BotonMenos
      Mas_2:cmp dx,120
            jle Mas_3
            jmp BotonMenos
  
      Mas_3:cmp bl,1
            je  accionMas
            jmp BotonMas


accionMas:  mov bh,2
            mov op,bh
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,S1
            int 21h
            
            mov V,1

            jmp Boton1

;__________________________________________


BotonMenos: mov ax,3
            int 33h
            
            cmp cx,160
            jge Menos
            jmp BotonMul
      Menos:cmp cx,238
            jle Menos_1
            jmp BotonMul
            
    Menos_1:cmp dx,105
            jge Menos_2
            jmp BotonMul
    Menos_2:cmp dx,120
            jle Menos_3
            jmp BotonMul
  
    Menos_3:cmp bl,1
            je  accionMenos
            jmp BotonMenos


accionMenos:xor bh,bh
            mov op,bh 
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,S2
            int 21h

            mov V,1 
             
            jmp Boton1

;_____________________________________

BotonMul:   mov ax,3
            int 33h
            
            cmp cx,280
            jge Mul_
            jmp BotonDiv
        Mul_:cmp cx,360
            jle Mul_1
            jmp BotonDiv
            
       Mul_1:cmp dx,105
            jge Mul_2
            jmp BotonDiv
       Mul_2:cmp dx,120
            jle Mul_3
            jmp BotonDiv
  
       Mul_3:cmp bl,1
            je  accionMul
            jmp BotonMul


  accionMul:mov bh,3
            mov op,bh
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,S3
            int 21h
            
            mov V,1
            
            jmp Boton1

;____________________________________

BotonDiv:   mov ax,3
            int 33h
            
            cmp cx,389
            jge Divi
            jmp BotonIgual
        Divi:cmp cx,480
            jle Div_1
            jmp BotonIgual
            
       Div_1:cmp dx,105
            jge Div_2
            jmp BotonIgual
       Div_2:cmp dx,120
            jle Div_3
            jmp BotonIgual
  
       Div_3:cmp bl,1
            je  accionDiv
            jmp BotonDiv


accionDiv:  mov bh,4
            mov op,bh
            mov V,1
            add bh,4
            add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,S4
            int 21h
           
            jmp Boton1

;____________________________________

BotonIgual: mov ax,3
            int 33h
            
            cmp cx,520
            jge Igual
            jmp BotonBo
     Igual:cmp cx,602
            jle Igual_1
            jmp BotonBo
            
    Igual_1:cmp dx,105
            jge Igual_2
            jmp BotonBo
    Igual_2:cmp dx,120
            jle Igual_3
            jmp BotonBo
  
    Igual_3:cmp bx,1
            je  accionIgual
            jmp BotonIgual


accionIgual:add cor,1
            mov ah,02h
            mov dl,cor
            mov dh,02
            
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,S5
            int 21h

            jmp Operaciones
    
;_______________________________________    
    
BotonBo:    mov ax,3
            int 33h
            
            cmp cx,40
            jge Borrar
            jmp Boton1
     Borrar:cmp cx,602
            jle Borrar_1
            jmp Boton1
            
    Borrar_1:cmp dx,09
            jge Borrar_2
            jmp Boton1
    Borrar_2:cmp dx,22
            jle Borrar_3
            jmp Boton1
  
    Borrar_3:cmp bx,1
            je  accionBorrar
            jmp BotonBo


accionBorrar:mov cor,4
            
                       
     Perro: inc cor
            cmp cor,35
            je  devolver
            mov ah,02h
            mov dl,cor
            mov dh,02
            int 10h

            mov ax,@DATA
            mov ds,ax
                      
            mov ah,09h
            lea dx,Bo
            int 21h 
            jmp Perro

   devolver:mov R1,0
            mov R2,0
            mov D1,0
            mov D2,0
            mov V,0
            mov cor,4
            mov ti,10
            xor bh,bh              
            mov ser,0
           
            jmp Boton1   
            
   
;______________________________________________    
    
Operaciones: cmp Op,0
             je  Resta

             cmp Op,2
             je  adition    
    
             cmp Op,3
             je  Expo
             
             cmp Op,4
             je  vencer
             
Resta:       inc cor    
             mov bh,D1
             sub bh,D2
             mov al,bh 
             mov bl,1 
             mul bl
             aam
              
             mov R2,al
             add R2,30h
 
             mov R1,ah
             add R1,30h
   
             mov ah,02h
                
             mov dh,02
             mov dl,cor
                
             int 10h
                
             mov ah,02h
             mov dl,R1
             int 21h
                
             inc cor
             mov ah,02h
                
             mov dh,02
             mov dl,cor
                
             int 10h
                
             mov ah,02h
             mov dl,R2
             int 21h   
        
             jmp Boton1



    
adition:    xor bx,bx
            inc cor
            mov bh,D1
            add bh,D2
            mov al,bh 
            mov bl,1 
            mul bl
            aam
            xor bx,bx
            
            
            mov R2,al
            add R2,30h
            
            
            mov R1,ah
            add R1,30h
            
            
            mov ah,02h
            
            mov dh,02
            mov dl,cor
            
            int 10h
            
            mov ah,02h
            mov dl,R1
            int 21h
            
            inc cor
            mov ah,02h
            
            mov dh,02
            mov dl,cor
            
            int 10h
            
            mov ah,02h
            mov dl,R2
            int 21h 
                        
            jmp Boton1
                

Expo:       
            inc cor
            mov al,D1 
            mov bl,D2 
            mul bl
            aam
            xor bx,bx
            
            
            mov R2,al
            add R2,30h
            
            
            mov R1,ah
            add R1,30h
            
            
            mov ah,02h
            
            mov dh,02
            mov dl,cor
            
            int 10h
            
            mov ah,02h
            mov dl,R1
            int 21h
            
            inc cor
            mov ah,02h
            
            mov dh,02
            mov dl,cor
            
            int 10h
            
            mov ah,02h
            mov dl,R2
            int 21h    
    
            jmp Boton1
    
vencer:     xor ax,ax
            inc cor
            mov al,D1 
            div D2
            
            mov R1,al
            add R1,30h

            cmp ah,0
            je ignorar
            jmp desimal
            
    desimal:mov R2,ah
            mov al,R2 ;residuo
            mov bl,ti 
            mul bl
            mov R2,al
            
            mov al,R2
            div D2
            mov R2,al
            
            xor bl,bl
            xor al,al
            xor dh,dh
            jmp ignorar2
            
   
    ignorar2:add R2,30h
            
            mov ah,02h
            
            mov dh,02
            mov dl,cor
            
            int 10h
            
            mov ah,02h
            mov dl,R1
            int 21h
           
            add cor,2     ;Desi
            mov ah,02h
            
            mov dh,02
            mov dl,cor
            
            int 10h
            
            mov ah,02h
            mov dl,R2
            int 21h    
    
            dec cor       ;coma
            mov ah,02h
            
            mov dh,02
            mov dl,cor
            
            int 10h
            
            mov ax,@DATA
            mov ds,ax
                      
            
            mov ah,09h
            lea dx,coma
            int 21h
            
            jmp Boton1    
    
    ignorar:
            mov ah,02h
            mov dh,02
            mov dl,cor
            
            int 10h
            
            mov ah,02h
            mov dl,R1
            int 21h
 
            jmp Boton1
 
 
 
 
 
 
 
 
 
;_________________________ 
 
Integrar:cmp V,1         ;___________----------
            je meter
            
            mov al,D1 
            mov bl,ti 
            mul bl 
            add al,ser        
            mov D1,al
            xor bl,bl
            xor al,al
            
             
            jmp Boton1      
      
      meter:mov al,D2 
            mov bl,ti 
            mul bl 
            add al,ser        
            mov D2,al
            xor bl,bl
            xor al,al


            
            jmp Boton1 
 
 
Integrar_cero:cmp V,1         ;___________----------
            je meter_cero
            
            mov al,D1 
            mov bl,ti 
            mul bl 
            mov D1,al
            xor bl,bl
            xor al,al
             
            jmp Boton1      
      
 meter_cero:mov al,D2 
            mov bl,ti 
            mul bl 
            mov D2,al
            xor bl,bl
            xor al,al
            
            jmp Boton1 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    
            
fin:        mov ah,0h
            int 16h       
                    
                    
                   
                    
                             
                    
     .exit           

begin endp


end 