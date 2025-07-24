
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt




org 100h
.model large
.stack 1000h
.data
;welcome page
a1 db 10,13,'			*************************************$'
a2 db 10,13,'			**		welcome		               **$'				
a3 db 10,13,'			**		  to		               **$'
a4 db 10,13,'			**		online book 	           **$'
a5 db 10,13,'			**		   shop		               **$'
a6 db 10,13,'			*************************************$'

;chose
a7  db 10,13,'			Book list ---$'
a8  db 10,13,'			Enter your choice :$'
a19 db 10,13,'				Enter 1 to display book list: $'
a34 db 10,13,'				pick your book :$'
a35 db 10,13,'              Enter quantity :$'
a36 db 10,13,'          Invalid input !! Return the program$'
a37 db 10,13,'              Total price: $'
a38 db 10,13,'              1.Books List : $'
a39 db 10,13,'              2.Exit : $'


;Book list
a9  db 10,13,'           1. English Novels$'
a10 db 10,13,'          2. Urdu Novels$'
a11 db 10,13,'          3. Islamic Books$'

;English Novels List
a12 db 10,13,'         ******       English Novel List      ******$'
a13 db 10,13,'              1.wuthering heights         50/-$'
a14 db 10,13,'              2.Middle march              50/-$'
a15 db 10,13,'              3.Nineteen eightyfour       50/-$'
a16 db 10,13,'              4.Lord of rings             50/-$'
a17 db 10,13,'              5.Diary of nobody           50/-$'
a18 db 10,13,'              6.His dark material         50/-$'


;urdu novel list
a20 db 10,13,'         ******       Urdu Novel List      ******$'
a21 db 10,13,'              1.Jannat ka pattay          100/-$'
a22 db 10,13,'              2.Laa-Haasil                100/-$'
a23 db 10,13,'              3.Aangan                    100/-$'
a24 db 10,13,'              4.Peer-e-kanil              100/-$'
a25 db 10,13,'              5.Mushaf                    100/-$'
a26 db 10,13,'              6.Namal                     100/-$'


;Islamic novel list
a27 db 10,13,'         ******       Urdu Novel List      ******$'
a28 db 10,13,'              1.Minhaj ul Muslim          200/-$'
a29 db 10,13,'              2.Namaz-e-Nabwi             200/-$'
a30 db 10,13,'              3.Tib-e-Nabwi               200/-$'
a31 db 10,13,'              4.Hisnul-Muslim             200/-$'
a32 db 10,13,'              5.Tafseer Ahsan-ul-Bayan    200/-$'
a33 db 10,13,'              6.Riyad-us-Saliheen         200/-$'


.code
main proc
    
    mov ax,@data
    mov ds,ax
    
;Welcome page
mov ah,9
mov dx,offset a1
int 21h
mov dx,offset a2
int 21h
mov dx,offset a3
int 21h
mov dx,offset a4
int 21h
mov dx,offset a5
int 21h          
mov dx,offset a6
int 21h 

;newline
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

;take input to start
mov ah,9
mov dx,offset a19
int 21h
mov ah,1
int 21h
mov bh,al
sub bh,48

cmp bh,1
je BookList
jmp Invalid


BookList:
;newline
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
mov dx,offset a7
int 21h 
mov dx,offset a9
int 21h
mov dx,offset a10
int 21h
mov dx,offset a11
int 21h 

;list choose
mov dx,offset a8
int 21h  

mov ah,1
int 21h
mov bh,al
sub bh,48

cmp bh,1
je EnglishNovels

cmp bh,2
je UrduNovels

cmp bh,3
je IslamicBooks

jmp Invalid


;English Novels List
EnglishNovels:

;newline
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

;list start
mov ah,9
mov dx,offset a12
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
mov dx,offset a13
int 21h   
mov dx,offset a14
int 21h
mov dx,offset a15
int 21h
mov dx,offset a16
int 21h
mov dx,offset a17
int 21h
mov dx,offset a18
int 21h 


;condition Checking
mov dx,offset a34
int 21h
                  
mov ah,1
int 21h
mov bl,al
sub bl,48

cmp bl,1
je Fifty

cmp bl,2
je Fifty 

cmp bl,3
je Fifty 

 cmp bl,4
je Fifty

cmp bl,5
je Fifty

cmp bl,6
je Fifty




jmp invalid



UrduNovels:
;new line
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

;list start
mov ah,9
mov dx,offset a20
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
mov dx,offset a21
int 21h  
mov dx,offset a22
int 21h
mov dx,offset a23
int 21h
mov dx,offset a24
int 21h
mov dx,offset a25
int 21h
mov dx,offset a26
int 21h           

;condition Checking
mov dx,offset a34
int 21h

mov ah,1
int 21h
mov bl,al
sub bl,48

cmp bl,1
je Hundred

cmp bl,2
je Hundred 

cmp bl,3
je Hundred

cmp bl,4
je Hundred

cmp bl,5
je Hundred

cmp bl,6
je Hundred

jmp Invalid

;for exist
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
mov dx,offset a38
int 21h

mov ah,1
int 21h
mov bh, al

cmp bh,1
jmp Exit


IslamicBooks:
;newline
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

;list start
mov ah,9
mov dx,offset a27
int 21h

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
mov dx,offset a28
int 21h
mov dx,offset a29
int 21h
mov dx,offset a30
int 21h
mov dx,offset a31
int 21h
mov dx,offset a32
int 21h
mov dx,offset a33
int 21h           

;condition checking
mov dx,offset a34
int 21h

mov ah,1
int 21h
mov bl,al
sub bl,48

cmp bl,1
je TwoHundred

cmp bl,2
je TwoHundred

cmp bl,3
je TwoHundred

cmp bl,4
je TwoHundred

cmp bl,5
je TwoHundred

cmp bl,6
je TwoHundred

jmp Invalid 


Fifty:
mov bl,5
mov dx,offset a35
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48

mul bl

aam

mov cx,ax
add ch,48
add cl,48


mov dx,offset a37
mov ah,9
int 21h

mov ah,2
mov dl,ch
int 21h


mov dl,cl
int 21h

mov dl,'0'
int 21h



mov dl,47
int 21h
mov dl,45
int 21h

;for exit or main menu
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
mov dx,offset a38
int 21h

mov ah,9
mov dx,offset a39
int 21h

mov ah,9
mov dx,offset a8
int 21h

mov ah,1
int 21h
sub al,48

cmp al,1
je BookList

cmp al,2
je Exit

jmp Invalid


Hundred:
mov bl,10
mov dx,offset a35
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48

mul bl
aam

mov cx,ax
add ch,48
add cl,48


mov dx,offset a37
mov ah,9
int 21h

mov ah,2
mov dl,ch
int 21h

mov dl,cl
int 21h

mov dl,'0'
int 21h

mov dl,47
int 21h
mov dl,45
int 21h

;for exit
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
mov dx,offset a38
int 21h 

mov ah,9
mov dx,offset a39
int 21h

mov ah,9
mov dx,offset a8
int 21h

mov ah,1
int 21h
sub al,48

cmp al,1
je BookList

cmp al,2
je Exit

jmp Invalid 


TwoHundred:
mov bl,20
mov dx,offset a35
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48

mul bl 
aam

mov cx,ax
add ch,48
add cl,48


mov dx,offset a37
mov ah,9
int 21h

mov ah,2
mov dl,ch
int 21h

mov dl,cl
int 21h

mov dl,'0'
int 21h

mov dl,47
int 21h
mov dl,45
int 21h

;for exist
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,9
mov dx,offset a38
int 21h 

mov ah,9
mov dx,offset a39
int 21h

mov ah,9
mov dx,offset a8
int 21h          

mov ah,1
int 21h
sub al,48

cmp al,1
je BookList

cmp al,2
je Exit

jmp Invalid

Invalid:

;newline
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov dl,10
int 21h
mov dl,13
int 21h



mov ah,9
mov dx,offset a36
int 21h
jmp Exit


Exit:
mov ah,4ch
int 21h
main endp 
end main



ret




