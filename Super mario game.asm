
.model small
.stack 
.data

check byte 0
	rows byte 0
	wi byte 0
	level db 1
	string2 db "               Super Mario               $"
	string1 db "Enter username:-  $"
	array db 100 dup(?)

 

xt word 100 
yt word 50


	mar db 11,11,11,4,4,4,4,4,11,11,11,11,11
  db 11,11,4,4,4,4,4,4,4,4,4,11,11
  db 11,0,6,6,6,13,13,6,13,11,11,11,11
  db 11,6,13,6,13,13,13,6,13,13,13,11,11
  db 11,6,13,6,6,13,13,13,6,13,13,6,11
  db 11,6,6,13,13,13,13,6,6,6,6,11,11
  db 11,11,11,13,13,13,13,13,13,13,11,11,11
  db 11,11,4,4,1,4,4,4,4,11,11,11,11
  db 11,4,4,4,1,4,4,1,4,4,4,11,11
  db 4,4,4,4,1,1,1,1,4,4,4,4,11
  db 13,13,4,1,14,1,1,14,1,4,13,13,11
  db 13,13,13,1,1,1,1,1,1,13,13,13,11
  db 13,13,1,1,1,1,1,1,1,1,13,13,11
  db 11,11,1,1,1,11,11,1,1,1,11,11,11
  db 11,6,6,6,11,11,11,11,6,6,6,11,11
  db 6,6,6,6,11,11,11,11,6,6,6,6,11
xx word 0
yy word 184
temp word 0

Fla db 2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 
  db 2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 
  db 2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 
  db 15,2 ,2 ,2 ,2 ,2 ,15,15,15,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 
  db 2 ,15,15,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 
  db 2 ,2 ,15,15,15,15,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 
  db 2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 ,2 ,2 ,2 
  db 2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 ,2 ,2 
  db 2 ,2 ,2 ,2 ,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 ,2 ,2 
  db 2 ,2 ,2 ,15,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 ,2 
  db 2 ,2 ,2 ,15,15,15,2 ,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 ,2 
  db 2 ,2 ,15,15,15,2 ,2 ,2 ,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 
  db 2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 
  db 2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 
  db 2 ,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 
  db 2 ,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 
  db 2 ,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,2 
  db 2 ,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,2 
  db 2 ,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,2 
  db 2 ,2 ,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,2 
  db 2 ,2 ,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,2 
  db 2 ,2 ,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,2 
  db 2 ,2 ,2 ,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,2
  db 2 ,2 ,2 ,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,15,15,15,2 ,2 
  db 2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,2 ,2 ,2 
  db 2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,2 ,2 ,2 ,2 
  db 2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 
  db 2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 
  db 2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,15,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 
  db 2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,15,15,15,15,15,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 
xf word 250
yf word 13

enemy db 11,11,11,11,11,11,6,6,6,6,11,11,11,11,11,11,11
  db 11,11,11,11,11,6,6,6,6,6,6,11,11,11,11,11,11
  db 11,11,11,11,6,6,6,6,6,6,6,6,11,11,11,11,11
  db 11,11,11,6,6,6,6,6,6,6,6,6,6,11,11,11,11
  db 11,11,6,0,0,6,6,6,6,6,6,0,0,6,11,11,11
  db 11,6,6,6,13,0,6,6,6,6,0,13,6,6,6,11,11
  db 11,6,6,6,13,0,0,0,0,0,0,13,6,6,6,11,11
  db 6,6,6,6,13,0,13,6,6,13,0,13,6,6,6,6,11
  db 6,6,6,6,13,0,13,13,13,13,0,13,6,6,6,6,11
  db 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,11
  db 11,6,6,6,6,13,13,13,13,13,13,6,6,6,6,11,11
  db 11,11,11,11,13,13,13,13,13,13,13,13,11,11,11,11,11
  db 11,11,0,0,13,13,13,13,13,13,13,13,0,0,11,11,11
  db 11,0,0,0,0,0,13,13,13,13,0,0,0,0,0,11,11
  db 11,0,0,0,0,0,0,13,13,0,0,0,0,0,0,11,11
  db 11,11,0,0,0,0,0,11,11,0,0,0,0,0,11,11,11
  xe1 word 70
  ye1 word 185
  xe2  word 150
  ye2  word 185
  counter_E byte 0
  counter_E2  byte 1

monster db 11,11,11,11,11,11,11,11,11,11,11,11,0,0,11,0,0,11,0,0,11,11,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,11,11,0,14,0,0,15,0,14,0,11,11,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,11,11,0,14,6,14,15,15,14,0,11,11,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,11,11,0,6,0,6,14,12 ,6,0,11,11,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,0,0,0,15,15,15,15,15,15,0,0,0,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,0,0,15,15,15,15,15,15,15,15,15,15,15,15,0,0,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11,11,11,11
  db 11,11,11,11,11,0,7,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11,11,11
  db 11,11,11,11,11,0,7,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11,11,11
  db 11,11,11,11,0,7,7,15,15,15,15,15,15,15,15,0,8,7,15,15,0,0,7,15,15,0,15,0,11,11,11,11,11
  db 11,11,11,11,0,7,7,15,15,15,15,15,15,15,15,7,0,0,0,0,7,7,0,0,0,15,15,0,11,11,11,11,11
  db 11,11,11,11,0,7,7,15,15,15,15,15,15,15,15,15,7,7,8,8,15,15,8,8,15,15,15,0,11,11,11,11,11
  db 11,11,11,0,15,7,7,15,15,15,15,15,15,15,15,15,15,15,8,15,15,15,15,8,15,15,15,15,0,11,11,11,11
  db 11,11,11,0,15,7,7,7,15,15,15,15,15,15,15,15,15,15,8,8,15,15,8,8,15,15,15,15,0,11,11,11,11
  db 11,11,11,0,15,7,7,7,15,15,15,15,15,15,15,15,15,15,0,0,15,15,0,0,15,15,15,15,0,11,11,11,11
  db 11,11,11,0,15,7,7,7,7,15,15,15,15,15,15,0,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11
  db 11,11,11,0,15,7,0,15,7,7,15,15,15,15,15,4,0,0,15,15,15,15,15,15,0,4,15,7,0,11,11,11,11
  db 11,11,11,0,0,0,15,15,15,15,7,7,15,15,15,4,9,7,0,0,0,0,0,0,7,4,7,0,15,0,11,11,11
  db 0,0,0,15,0,15,15,15,15,15,7,7,7,7,15,4,7,15,4,7,4,7,4,7,15,7,7,0,7,15,0,11,11
  db 0,15,15,0,15,15,15,15,15,15,7,7,7,7,7,7,4,15,4,4,4,4,4,4,15,7,7,0,7,7,15,0,11
  db 0,7,7,0,15,15,15,15,0,0,7,7,7,7,7,7,12 ,13,13,13,12 ,4,4,4,7,7,0,7,7,7,15,0,11
  db 11,0,15,7,15,15,15,15,7,7,7,7,7,7,7,7,7,13,13,13,13,12 ,4,7,7,7,0,0,0,0,0,11,11
  db 11,11,0,0,7,7,0,15,15,15,7,7,7,7,7,7,7,7,13,13,13,7,7,7,7,0,11,11,11,11,11,11,11
  db 11,11,11,11,0,0,0,0,15,15,15,15,7,7,7,7,7,7,7,7,7,7,7,7,0,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,0,0,15,15,15,15,15,7,7,7,7,7,7,7,0,0,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,11,11,11,0,0,0,0,0,0,11,11,11,11,11,11,11,11,11,11,11,11,11,11
  xm word 30
  ym word 5
  counter_M byte 1
bomb db 11,11,11,11,0,0,0,0,11,11,11,11,11,11,11,11
  db 11,11,11,0,0,0,0,0,0,0,0,11,11,11,11,11,11
  db 11,11,0,0,0,0,0,0,0,0,0,0,11,11,11,11,11
  db 11,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,11
  db 11,0,15,0,15,0,0,0,0,0,0,0,0,0,15,0,11
  db 0,0,15,0,15,0,0,0,0,0,0,0,0,0,15,0,11
  db 0,0,15,0,15,0,0,0,0,0,0,0,15,15,15,0,11
  db 0,0,0,0,0,0,0,0,0,0,0,0,14,14,15,0,11
  db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,11
  db 11,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,11
  db 11,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,11
  db 11,11,0,0,0,0,0,0,0,0,0,0,11,11,11,11,11
  db 11,0,15,15,0,0,0,0,0,0,14,14,0,11,11,11,11
  db 11,0,14,14,14,0,0,0,0,0,14,14,0,11,11,11,11
  db 11,11,0,14,14,0,11,11,0,15,14,0,11,11,11,11,11
  db 11,11,11,0,0,11,11,11,11,0,0,11,11,11,11,11,11
xb word 14
yb word 30

castle db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
 db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
 db 11,11,11,11,11,11,11,11,11,11,11,11,11,4 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
 db 11,11,11,11,11,11,11,11,11,11,11,11,11,4 ,4 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
 db 11,11,11,11,11,11,11,11,11,11,11,11,11,4 ,4 ,4 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
 db 11,11,11,11,11,11,11,11,11,11,11,11,11,4 ,4 ,4 ,4 ,4 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11
 db 11,11,11,11,4 ,11,11,11,11,11,11,11,11,4 ,11,11,11,11,11,11,11,11,4 ,11,11,11,11,11,11,11,11,11
 db 11,11,11,11,4 ,4 ,11,11,11,11,11,11,11,4 ,11,11,11,11,11,11,11,11,4 ,4 ,11,11,11,11,11,11,11,11
 db 11,11,11,11,4 ,4 ,4 ,11,11,11,11,11,11,4 ,11,11,11,11,11,11,11,11,4 ,4 ,4 ,11,11,11,11,11,11,11
 db 11,11,11,11,4 ,4 ,4 ,4 ,11,11,11,11,4 ,4 ,4 ,11,11,11,11,11,11,11,4 ,4 ,4 ,4 ,11,11,11,11,11,11
 db 11,11,11,11,4 ,11,11,11,11,11,11,4 ,4 ,4 ,4 ,4 ,11,11,11,11,11,11,4 ,11,11,11,11,11,11,11,11,11
 db 11,11,11,11,4 ,11,11,11,11,11,4 ,4 ,4 ,4 ,4 ,4 ,4 ,11,11,11,11,11,4 ,11,11,11,11,11,11,11,11,11
 db 11,11,11,11,4 ,11,11,11,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,11,11,11,4 ,11,11,11,11,11,11,11,11,11
 db 11,11,11,4 ,4 ,4 ,11,11,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,11,11,4 ,4 ,4 ,11,11,11,11,11,11,11,11
 db 11,11,4 ,4 ,4 ,4 ,4 ,11,11,11,8 ,8 ,14,14,14,8 ,8 ,11,11,11,4 ,4 ,4 ,4 ,4 ,11,11,11,11,11,11,11
 db 11,4 ,4 ,4 ,4 ,4 ,4 ,4 ,11,11,8 ,8 ,14,14,14,8 ,8 ,11,11,4 ,4 ,4 ,4 ,4 ,4 ,4 ,11,11,11,11,11,11
 db 11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,8 ,8 ,14,14,14,8 ,8 ,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,11,11,11,11
 db 11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,8 ,8 ,14,14,14,8 ,8 ,11,11,8 ,8 ,14,14,14,8 ,8 ,11,11,11,11,11,11
 db 11,8 ,8 ,14,14,14,8 ,8 ,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,8 ,8 ,14,14,14,8 ,8 ,11,11,11,11,11,11
 db 11,8 ,8 ,14,14,14,8 ,8 ,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,8 ,8 ,14,14,14,8 ,8 ,11,11,11,11,11,11
 db 11,8 ,8 ,14,14,14,8 ,8 ,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,11,11,11,11
 db 11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,11,11,11,11
 db 11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,11,11,11,11
 db 7 ,7 ,7 ,8 ,8 ,8 ,7 ,7 ,7 ,11,8 ,8 ,7 ,7 ,7 ,8 ,8 ,11,7 ,7 ,7 ,8 ,8 ,8 ,7 ,7 ,7 ,11,11,11,7 ,7
 db 7 ,7 ,7 ,8 ,8 ,8 ,7 ,7 ,7 ,11,8 ,8 ,7 ,7 ,7 ,8 ,8 ,11,7 ,7 ,7 ,8 ,8 ,8 ,7 ,7 ,7 ,11,11,11,7 ,7
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 7,7,7,8 ,8 ,8 ,8 ,7,7,7,7,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,7,7,7,7,8 ,8 ,8 ,8 ,7,7,7
 db 7,7,7,8 ,8 ,8 ,8 ,7,7,7,7,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,7,7,7,7,8 ,8 ,8 ,8 ,7,7,7
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,7,7,7,7,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,7,7,7,7,8 ,8 
 db 8 ,8 ,7,7,7,7,8 ,8 ,8 ,8 ,8 ,8 ,6,0,6,6,0,6,6,0,6,8 ,8 ,8 ,8 ,8 ,7,7,7,7,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,0,6,6,0,6,6,0,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 7,7,7,8 ,8 ,8 ,8 ,7,7,7,6,6,6,0,6,6,0,6,6,0,6,6,6,7,7,8 ,8 ,8 ,8 ,7,7,7
 db 7,7,7,8 ,8 ,8 ,8 ,7,7,7,6,6,6,0,6,6,0,6,6,0,6,6,6,7,7,8 ,8 ,8 ,8 ,7,7,7
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,7,7,7,7,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,7,7,7,7,8 ,8 ,8 
 db 8 ,8 ,7,7,7,7,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,7,7,7,7,8 ,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 7,7,7,8 ,8 ,8 ,8 ,7,7,7,6,6,6,0,6,6,0,6,6,0,6,6,6,7,7,8 ,8 ,8 ,8 ,7,7,7
 db 7,7,7,8 ,8 ,8 ,8 ,7,7,7,6,6,6,0,6,6,0,6,6,0,6,6,6,7,7,8 ,8 ,8 ,8 ,7,7,7
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 
 db 8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,6,6,6,0,6,6,0,6,6,0,6,6,6,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8
 

  xc word 285
  yc word 150

.code

	clear macro		;CLear Macro
;{
	mov al,13h
	mov ah,0                  
	int 10h
;}
	endm		;End CLear
	
	sleep macro		;Sleep Macro
;{
	push dx
	mov al,0
	mov cx,1
	mov dx,000fh
	mov ah,86h
	int 15h
	pop dx
;}
	endm		;End Sleep
	
	BackGround macro
;{
	mov ah,06h
	mov al,0
	mov ch,0
	mov cl,0
	mov dh,24
	mov dl,39
	mov bh,11
	int 10h
;}
	endm 	;End BackGround
	
	
;======----------=====MAIN PROC==========-----------==============

	main proc	;======MAIN PROC======
;{
	mov ax,@data
	mov ds,ax
	


;     =========   	NEWLINE   =============

    mov ah,10
    mov dl,ah
    mov ah,02h
    int 21h

;-------------prompting name from user ---------

	mov ah,09h
	mov dx,Offset string2
	int 21h

;     =========   	NEWLINE   =============

    mov ah,10
    mov dl,ah
    mov ah,02h
    int 21h

;-------------prompting name from user ---------

	mov ah,09h
	mov dx,Offset string1
	int 21h

;     =========   	NEWLINE   =============

    mov ah,10
    mov dl,ah
    mov ah,02h
    int 21h
;     =========    =============


	mov ah,3fh
	mov dx,offset array
	int 21h

;------------------------------------------------------------------------------------


	mov ah,0
	int 16h
	;cmp ah,1c
	mov ah,0h
	mov al,13h
	int 10h
	
	mov bh,5
	E:
	;clear
	
		Displ:

	cmp level,3
	jg Game_over

	cmp level,0
	je start_game

	BackGround 13

	cmp level,1
	je level1

	cmp level,2
	je level2
	
	cmp level,3
	jmp level3



	level1:
		call flag
		call Hurdle_1
		call Hurdle_2
		call Hurdle_3
		call star
		call mario
		jmp l1
	
	level2:
		call flag
		call Hurdle_1
		call Hurdle_2
		call Hurdle_3
		call star
		call mario
		call Enemy2
		call Enemy1
		jmp l1
	
	level3:
		call Hurdle_1
		call Hurdle_2
		call Hurdle_3
		call mario
		call Enemy2
		call Enemy1
		call BOMB_FLY
		call MONSTER_Fly
		call castle_ftn
		jmp l1
	
	Game_over:
			BackGround 0
			mov al,12
			mov ah,0
			int 10h

			call game_end
				
			mov ax,4c00h
			int 21h
			jmp O

	start_game:
		BackGround 0
			mov al,12
			mov ah,0
			int 10h

			;call text
			;call game_start
			
				mov ah,01h
				int 16h

				cmp ah,20
				je increment
				
			jmp E
			increment:
				inc level
				jmp E

	l1:
	sleep

	
	mov ah,01h
	int 16h
	;jz Displ 				; commented by Umaid
	jz collision_check


	
	mov ah,0
	int 16h
	
	cmp ah,72	; for Up Arrow
	je u 		; on line 224
	;int 16h



	cmp ah,80	; for Down Arrow
	je dow		; on line 230
	;int 16h
	cmp ah,75	; for Left Arrow
	je lef		; on line 282
	;int 16h
	cmp ah,77	; for Right Arrow
	je rig		; on line 306



	cmp ah,01	; for terminating game
	je O

	;int 16h
	;jmp O
	;	..................................Keyboard Controller....................................


	u:
	;{	
	enemy_check_up:
		mov bx,xe1
		cmp xx,bx
		je ycheck_up
		jmp enemycheck_up2
		
		ycheck_up:
		cmp yy,184
		je reset
		jmp enemycheck_up2
		
		enemycheck_up2:
		mov bx,xe2
		cmp xx,bx
		je y_check_up2
		jmp bomb_check_up
		
		y_check_up2:
			cmp yy,184
			je reset
		
		bomb_check_up:
			mov bx,xb
			cmp xx,bx
			jne bombxup
			jmp bycheckup
			;jmp abb
		
		bombxup:
			mov bx,xb
			sub bx,10
			cmp xx,bx
			jg bombxup2
			jmp abb
		
		bombxup2:
			mov bx,xb
			add bx,10
			cmp xx,bx
			jl bycheckup
			jmp abb
		
		bycheckup:
			mov bx,yb
			cmp yy,bx
			jne bombyup
			jmp reset
		
		bombyup:
			mov bx,yb
			sub bx,10
			cmp yy,bx
			jg bombyup2
			jmp abb
		
		bombyup2:
			mov bx,yb
			add bx,10
			cmp yy,bx
			jl reset
			jmp abb
		
		abb:
			cmp yy,0
			jng E
			sub yy,2
			jmp E		;call Display on line 182
		;}call Hurdle_2
	
	dow:
	;{
	
		enemy_check_down:
		mov bx,xe1
		cmp xx,bx
		je ycheck_down
		jmp enemycheck_down2
		
		ycheck_down:
			cmp yy,184
			je reset
			jmp enemycheck_down2
		
		enemycheck_down2:
			mov bx,xe2
			cmp xx,bx
			je y_check_down2
			jmp bomb_check_down
		
		y_check_down2:
			cmp yy,184
			je reset
		





		bomb_check_down:
			mov bx,xb
			cmp xx,bx
			jne bombxdown
			jmp bycheckup
			;jmp abb
		
		bombxdown:
			mov bx,xb
			sub bx,10
			cmp xx,bx
			jg bombxdown2
			jmp ab
		
		bombxdown2:
			mov bx,xb
			add bx,10
			cmp xx,bx
			jl bycheckdown
			jmp ab
		
		bycheckdown:
			mov bx,yb
			cmp yy,bx
			jne bombydown
			jmp reset
		
		bombydown:
			mov bx,yb
			sub bx,10
			cmp yy,bx
			jg bombydown2
			jmp ab
		
		bombydown2:
			mov bx,yb
			add bx,10
			cmp yy,bx
			jl reset
			jmp ab









		ab:

		cmp xx,205
		ja NNext11

		jmp Escape11
		
		NNext11:
		cmp xx,240
		jbe NNNext21
		
		jmp Escape11
		
		NNNext21:
		cmp yy,144
		je E	
		
		Escape11:
	
	
		cmp xx,118
		ja NNext1

		jmp Escape1
		
		NNext1:
		cmp xx,151
		jbe NNNext2
		jmp Escape1
		
		NNNext2:
		cmp yy,152
		je E	
		
		Escape1:
			
			
		cmp yy,184
		jae E
		cmp xx,36
		ja NNext
		jmp Escape

		NNext:
		cmp xx,72
		jbe NNNext
		jmp Escape

		NNNext:
		cmp yy,160
		je E
		
		
		
		Escape:
	add yy,2
		
		jmp E
	;}
	
	lef:
	;{
		cmp xx,240
		je E

		cmp yy,152
		jbe Q
	
		cmp xx,152
		je E
		
		cmp yy,160
		jbe Q

		cmp xx,0
		je E
		cmp xx,72
		je E
		
		
		enemy_check:
		mov bx,xe1
		cmp xx,bx
		je ycheck
		jmp enemycheck2
		
		y_check:
		cmp yy,184
		je reset
		jmp Q
		
		enemycheck2:
		mov bx,xe2
		cmp xx,bx
		je y_check2
		jmp Q
		
		y_check2:
		cmp yy,184
		je reset
		


		bomb_check:
			mov bx,xb
			cmp xx,bx
			jne bombxleft
			jmp bycheckleft
			;jmp abb
		
		bombxleft:
			mov bx,xb
			sub bx,10
			cmp xx,bx
			jg bombxleft2
			jmp Q
		
		bombxleft2:
			mov bx,xb
			add bx,10
			cmp xx,bx
			jl bycheckleft
			jmp Q
		
		bycheckleft:
			mov bx,yb
			cmp yy,bx
			jne bombyleft
			jmp reset
		
		bombyleft:
			mov bx,yb
			sub bx,10
			cmp yy,bx
			jg bombyleft2
			jmp Q
		
		bombyleft2:
			mov bx,yb
			add bx,10
			cmp yy,bx
			jl reset
			jmp Q


		Q:
		cmp xx,0
		jng E
		sub_x2:
		SUB xx,2



		jmp dow			; ------------------------------------------------
			
		JMP E

		condition_2:
			cmp yy,152
			jg E

		;call Left	;call Left Macro
	;}
	rig:
	;{

		;	call Right
		
		cmp yy,144
		jbe Next

		cmp xx,206
		je E

		cmp yy,152
		jbe Next
		
		cmp xx,118
		je E

		cmp yy,160
		jbe Next
		
		cmp xx,36
		je E
		
		
	
		Next:
		mov bx,xe1
		cmp xx,bx
		je ycheck
		jmp enemy_check2
		ycheck:
		cmp yy,184
		je reset
		jmp bomb_check2
		enemy_check2:
		mov bx,xe2
		cmp xx,bx
		je ycheck2
		jmp bomb_check2
		ycheck2:
		cmp yy,184
		je reset
		
		bomb_check2:
			mov bx,xb
			cmp xx,bx
			jne bombxright
			jmp bycheckright
			;jmp abb
		
		bombxright:
			mov bx,xb
			sub bx,10
			cmp xx,bx
			jg bombxright2
			jmp flag_check
		
		bombxright2:
			mov bx,xb
			add bx,10
			cmp xx,bx
			jl bycheckright
			jmp flag_check
		
		bycheckright:
			mov bx,yb
			cmp yy,bx
			jne bombyright
			jmp reset
		
		bombyright:
			mov bx,yb
			sub bx,10
			cmp yy,bx
			jg bombyright2
			jmp flag_check
		
		bombyright2:
			mov bx,yb
			add bx,10
			cmp yy,bx
			jl reset
			jmp flag_check

		flag_check:
		cmp xx,286
		je reset
		
		add_x2:
		ADD xx,2
	
		;call mario

		jmp dow 			; ------------------------------------------------------------

		jmp E

		reset: 
			cmp xx,286
			jne re
			inc level
			re:
			mov xx,0
			mov yy,184
			jmp E
		
		;call Right	;call Right Macro
	;}

;-----------------------------------------------------------------------------------------
;---------------------	COLLISION CHECK --------------------------------------------
	
	collision_check:

		bomb_check_1:
			mov bx,xb
			cmp xx,bx
			jne bomb_x1
			jmp bomb_y
			;jmp abb
		
		bomb_x1:
			mov bx,xb
			sub bx,10
			cmp xx,bx
			jg bomb_x2
			jmp dow
		
		bomb_x2:
			mov bx,xb
			add bx,10
			cmp xx,bx
			jl bycheckdown
			jmp dow
		
		bomb_y:
			mov bx,yb
			cmp yy,bx
			jne bomb_y1
			jmp dow
		
		bomb_y1:
			mov bx,yb
			sub bx,10
			cmp yy,bx
			jg bomb_y2
			jmp dow
		
		bomb_y2:
			mov bx,yb
			add bx,10
			cmp yy,bx
			jl reset
			jmp dow






	;L................................END Keyboard Controller........................................
	O:
	mov ah,4ch
	int 21h
	ret
;}
	main endp	;=====END MAIN PROC=====
	
;======------------======END MAIN PROC=======------------============

Enemy1 proc		;=-~~~~ENEMY 1~~~~-=
;{
	
	push bx
	mov bx,xe1
	mov di,offset enemy
	mov cx,16
	L3:
	;{
		mov temp,cx
		mov cx,16
		L4:
		;{
			push cx
			mov cx,xe1
			mov dx,ye1
			mov al,[di]
			mov ah,0CH
			int 10h
			inc xe1
			inc di
			pop cx
		;}
		Loop L4
		mov xe1,bx
		inc ye1
		inc di
		mov cx,temp
	;}
	Loop L3
	sub ye1,16
	
	cmp counter_E,0
	je Increment_Enemy
	jmp ENext
	Increment_Enemy:
	inc xe1
	cmp xe1,119
	je setcounter1
	jmp _out
	setcounter1:
	mov counter_E,1
	jmp _out
	ENext:
	cmp counter_E,1
	je Decrement_Enemy
	jmp _out
	Decrement_Enemy:
	dec xe1
	cmp xe1,65
	je setcounter0
	jmp _out
	setcounter0:
	mov counter_E,0
	jmp _out
	


	_out:
	pop bx
	ret

;}
	Enemy1 endp		;=-~~~~END ENEMY~~~~-=
	
	Enemy2 proc		;=-~~~~ENEMY 1~~~~-=
;{
	push bx
	mov bx,xe2
	mov di,offset enemy
	mov cx,16
	L3:
	;{
		mov temp,cx
		mov cx,16
		L4:
		;{
			push cx
			mov cx,xe2
			mov dx,ye2
			mov al,[di]
			mov ah,0CH
			int 10h
			inc xe2
			inc di
			pop cx
		;}
		Loop L4
		mov xe2,bx
		inc ye2
		inc di
		mov cx,temp
	;}
	Loop L3
	sub ye2,16
	
	cmp counter_E2,0
	je Increment_Enemy
	jmp ENext
	Increment_Enemy:
	inc xe2
	cmp xe2,208
	je setcounter1
	jmp _out
	setcounter1:
	mov counter_E2,1
	jmp _out
	ENext:
	cmp counter_E2,1
	je Decrement_Enemy
	jmp _out
	Decrement_Enemy:
	dec xe2
	cmp xe2,145
	je setcounter0
	jmp _out
	setcounter0:
	mov counter_E2,0
	
	
	_out:
	pop bx
	ret
;}
	Enemy2 endp		;=-~~~~END ENEMY~~~~-=
	
	MONSTER_Fly proc	;=-~~~~MONSTER PROC~~~~-=
;{
	push bx
	mov bx,xm
	mov si,offset monster
	mov cx,27
	L1:
	;{
		mov temp,cx
		mov cx,32
		L2:
		;{
			push cx
			mov cx,xm
			mov dx,ym
			mov al,[si]
			mov ah,0CH
			int 10h
			inc xm
			inc si
			pop cx
		;}
		Loop L2
		mov xm,bx
		inc ym
		inc si
		mov cx,temp
	;}
	Loop L1
	sub ym,27
	pop bx
	
	cmp counter_M,0
	je Increment_Enemy
	jmp ENext
	Increment_Enemy:
	inc xm
	cmp xm,225
	je setcounter1
	jmp _out
	setcounter1:
	mov counter_M,1
	jmp _out
	ENext:
	cmp counter_M,1
	je Decrement_Enemy
	jmp _out
	Decrement_Enemy:
	dec xm
	cmp xm,0
	je setcounter0
	jmp _out
	setcounter0:
	mov counter_M,0
	
	
	_out:
	
	
;}
	MONSTER_Fly endp 	;=-~~~~END MONSTER PROC~~~~-=
	
	BOMB_FLY proc 	;=-~~~~BOMB_FLY PROC~~~~-=
;{
	push bx
	Jmp J2
	
	J1:
	mov yb,20
	J2:
	mov bx,xm
	mov si,offset bomb
	mov cx,16
	L1:
	;{
		mov temp,cx
		mov cx,16
		L2:
		;{
			push cx
			mov cx,xb
			mov dx,yb
			mov al,[si]
			mov ah,0CH
			int 10h
			inc xb
			inc si
			pop cx
		;}
		Loop L2
		mov xb,bx
		inc yb
		inc si
		mov cx,temp
	;}
	Loop L1
	sub yb,16
	add yb,1
	cmp yb,185
	je J1 
	
	pop bx
;}
	BOMB_FLY endp 	;=-~~~~END BOMB_FLY~~~~-=
	
	hurdle_1 proc		;=-~~~~Hurdle_1 Proc~~~~-=
;{
	mov ch,22
	mov cl,6
	mov dh,22
	mov dl,8
	
	mov bh,4
	int 10h
	
	mov ch,23
	mov cl,7
	mov dh,24
	mov dl,7
	
	mov bh,4
	int 10h
	ret
;}
	Hurdle_1 endp		;=-~~~~Hurdle_1 End~~~~-=
	
	hurdle_2 proc		;=-~~~~Hurdle_2 Proc~~~~-=
;{
	mov ch,21
	mov cl,16
	mov dh,21
	mov dl,18
	
	mov bh,12
	int 10h
	
	mov ch,22
	mov cl,17
	mov dh,24
	mov dl,17
	
	;mov bh,12
	int 10h
	ret
;}
	Hurdle_2 endp		;=-~~~~Hurdle_2 End~~~~-=
	
	hurdle_3 proc		;=-~~~~Hurdle_3 proc~~~~-=
;{
	mov ch,20
	mov cl,27
	mov dh,20
	mov dl,29
	
	mov bh,06
	int 10h
	
	mov ch,21
	mov cl,28
	mov dh,24
	mov dl,28
	
	mov bh,06
	int 10h
	ret
;}
	Hurdle_3 endp		;=-~~~~Hurdle_3 End~~~~-=


castle_ftn Proc			;=-~~~~castle_ftn proc~~~~-=
	push si

		mov si,offset castle
	mov cx,48
	L1:
	;{
    	mov temp,cx
		mov cx,31
		L2:
		;{
			push cx
			mov cx,xc
			mov dx,yc
			mov al,[si]
			mov ah,0CH
			int 10h
			inc xc
			inc si
			pop cx
		;}
		Loop L2
		mov xc,285
		inc yc
		inc si
		mov cx,temp
;}
	Loop L1

	pop si
	;mov yc
	sub yc,48
	ret
	castle_ftn endp				;=-~~~~star End~~~~-=


	text Proc			;=-~~~~text proc~~~~-=
	push si

		mov si,offset Fla
	mov cx,47
	L1:
	;{
    	mov temp,cx
		mov cx,52
		L2:
		;{
			push cx
			mov cx,xf
			mov dx,yf
			mov al,[si]
			mov ah,0CH
			int 10h
			inc xf
			inc si
			pop cx
		;}
		Loop L2
		mov xt,100
		inc yt
		inc si
		mov cx,temp
;}
	Loop L1

	pop si

	sub yf,47
	ret
	text endp				;=-~~~~text End~~~~-=





	star Proc			;=-~~~~star proc~~~~-=
	push si

		mov si,offset Fla
	mov cx,30
	L1:
	;{
    	mov temp,cx
		mov cx,27
		L2:
		;{
			push cx
			mov cx,xf
			mov dx,yf
			mov al,[si]
			mov ah,0CH
			int 10h
			inc xf
			inc si
			pop cx
		;}
		Loop L2
		mov xf,250
		inc yf
		inc si
		mov cx,temp
;}
	Loop L1

	pop si

	sub yf,30
	ret
	star endp				;=-~~~~star End~~~~-=

	
flag proc		;=-~~~~Flag Proc~~~~-=
;{
	mov ah,06h
	mov al,0
	
	mov ch,1
	mov cl,37
	mov dh,24
	mov dl,37
	
	mov bh,6
	int 10h
	
	mov ch,1
	mov cl,30
	mov dh,5
	mov dl,36	
	
	mov bh,2
	int 10h
	
	mov ch,1
	mov cl,36
	mov dh,5
	mov dl,36
	
	mov bh,15
	int 10h
	
	ret
;}
	flag endp		;=-~~~~End Flag~~~~-=
	

	

	mario proc	;=-~~~~Mario Proc~~~~-=
;{
	push bx
		mov bx,xx
	;	mov temp,bx
	
	mov si,offset mar
	mov cx,16
	L1:
	;{	
		push cx

		mov cx,12
		mov dx,yy
		L2:
		;{
			push cx
			mov ah,0CH
			mov cx,xx
			mov al,[si]
			int 10h
			inc xx
			inc si
			pop cx
		;}
		Loop L2
		
	;	mov bx,temp
		mov xx,bx
		add yy,1
		inc si
		pop cx
			;mov cx,temp
	;}
	Loop L1
	sub yy,16
	pop bx
	ret

	mario endp		;Mario End
	



		game_start proc	;=-~~~~game_start Proc~~~~-=

		mov al,03
		mov ah,0
		int 10h


	mov rows, 9
	mov wi,20


	mov rows, 12
	mov wi,33
	mov check,0


			
		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'G'
		mov bh,0
		mov bl,0
		mov cx,1
		int 10h	

		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'S'
		mov bh,0
		mov bl,9
		mov cx,1
		int 10h	


		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                 
		mov ah,09h
		mov al,'U'
		mov bh,0
		mov bl,04
		mov cx,1
		int 10h

		MOV AH,2                  
		MOV DH,rows
		inc wi
		MOV DL,wi		
		INT 10H                
		mov ah,09h
		mov al,'P'
		mov bh,0
		mov bl,5
		mov cx,1
		int 10h

		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'E'
		mov bh,0
		mov bl,6
		mov cx,1
		int 10h

		MOV AH,2                      
		MOV DH,rows    
		inc wi
		MOV DL,wi
		INT 10H 
		mov ah,09h
		mov al,'R'
		mov bh,0
		mov bl,01
		mov cx,1
		int 10h

		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'M'
		mov bh,0
		mov bl,7
		mov cx,1
		int 10h
		
		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'A'
		mov bh,0
		mov bl,10
		mov cx,1
		int 10h

				
		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'R'
		mov bh,0
		mov bl,8
		mov cx,1
		int 10h
		
		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'I'
		mov bh,0
		mov bl,9
		mov cx,1
		int 10h	

		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'O'
		mov bh,0
		mov bl,9
		mov cx,1
		int 10h	


		ret
	game_start endp		;game_start End





	game_end proc	;=-~~~~game_end Proc~~~~-=

		mov al,03
		mov ah,0
		int 10h


	mov rows, 9
	mov wi,20


	mov rows, 12
	mov wi,33
	mov check,0


			
		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'G'
		mov bh,0
		mov bl,0
		mov cx,1
		int 10h	

		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'G'
		mov bh,0
		mov bl,9
		mov cx,1
		int 10h	


		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                 
		mov ah,09h
		mov al,'A'
		mov bh,0
		mov bl,04
		mov cx,1
		int 10h

		MOV AH,2                  
		MOV DH,rows
		inc wi
		MOV DL,wi		
		INT 10H                
		mov ah,09h
		mov al,'M'
		mov bh,0
		mov bl,5
		mov cx,1
		int 10h

		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'E'
		mov bh,0
		mov bl,6
		mov cx,1
		int 10h

		MOV AH,2                      
		MOV DH,rows    
		inc wi
		MOV DL,wi
		INT 10H 
		mov ah,09h
		mov al,'_'
		mov bh,0
		mov bl,01
		mov cx,1
		int 10h

		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'O'
		mov bh,0
		mov bl,7
		mov cx,1
		int 10h
		
		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'V'
		mov bh,0
		mov bl,10
		mov cx,1
		int 10h

				
		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'E'
		mov bh,0
		mov bl,8
		mov cx,1
		int 10h
		
		MOV AH,2                             
		MOV DH,rows
		inc wi
		MOV DL,wi
		INT 10H                
		mov ah,09h
		mov al,'R'
		mov bh,0
		mov bl,9
		mov cx,1
		int 10h	


		ret
	game_end endp		;game_end End
	end