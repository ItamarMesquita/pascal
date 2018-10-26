program semnome;
uses Crt;
Var
	fim,x,y,z : boolean;
	a11,a12,a13,a21,a22,a23,a31,a32,a33 : string;
	b11, b12, b13, b21, b22, b23, b31, b32, b33 : integer;
	f1,f2,f3,f4,f5,f6,f7,f8,f9 : boolean;
	j1,j2 : integer;

procedure matriz;
begin
	  ClrScr;
	  writeln(' ',a31,' | ',a32,' | ',a33,'            Para sair do jogo     ');
      writeln('--- --- ---               digite "0"');
      writeln(' ',a21,' | ',a22,' | ',a23);
      writeln('--- --- ---');
      writeln(' ',a11,' | ',a12,' | ',a13);
      writeln;
end;

procedure jogador1;
begin
   z:=true;
   while z do 
	begin
      matriz;
      write('Jogador [1]: ');
      readln(j1);
 
      case j1 of

     
      1 : begin
         if ((a11='O') or (a11='X')) then 
			 begin
			 end 
         else 
			 begin
				a11:='X';
				b11:=1;
				z:=false;
				f1:=false;
			 end;
         end;

      2 : begin
         if ((a12='O') or (a12='X')) then 
			 begin
			 end 
         else 
			 begin
				a12:='X';
				b12:=1;
				z:=false;
				f2:=false;
			 end;
         end;

      3 : begin
         if ((a13='O') or (a13='X')) then 
			 begin
			 end 
         else 
			 begin
				a13:='X';
				b13:=1;
				z:=false;
				f3:=false;
			 end;
         end;

      4 : begin
         if ((a21='O') or (a21='X')) then 
			 begin
			 end 
         else 
			 begin
				a21:='X';
				b21:=1;
				z:=false;
				f4:=false;
			 end;
         end;

      5 : begin
         if ((a22='O') or (a22='X')) then 
			 begin
			 end 
         else 
			 begin
				a22:='X';
				b22:=1;
				z:=false;
				f5:=false;
			 end;
         end;

      6 : begin
         if ((a23='O') or (a23='X')) then 
			 begin
			 end 
         else 
			 begin
				a23:='X';
				b23:=1;
				z:=false;
				f6:=false;
			 end;
         end;
         
      7 : begin
         if ((a31='O') or (a31='X')) then 
			 begin
			 end 
         else 
			 begin
				a31:='X';
				b31:=1;
				z:=false;
				f7:=false;
			 end;
         end;

      8 : begin
         if ((a32='O') or (a32='X')) then 
			 begin
			 end 
         else 
			 begin
				a32:='X';
				b32:=1;
				z:=false;
				f8:=false;
			 end;
         end;
         
      9 : begin
         if ((a33='O') or (a33='X')) then 
			 begin
			 end 
         else 
			 begin
				a33:='X';
				b33:=1;
				z:=false;
				f9:=false;
			 end;
         end;
         
      0 : begin
		x:=false;
		z:=false;
		fim:=false;
	  end;

	  end;
end;

      if ((a11=a12) and (a12=a13)) or ((a21=a22) and (a22=a23)) or ((a31=a32) and (a32=a33)) or ((a11=a21) and (a21=a31)) or ((a12=a22) and (a22=a32)) or ((a13=a23) and (a23=a33)) or ((a11=a22) and (a22=a33)) or ((a13=a22) and (a22=a31)) then 
		  begin
			 writeln('O jogador 1 GANHOU!!!');
			 fim:=false;
			 x:=false;
			 readkey;
		  end;
      if (fim=false) then
		  begin
		  end
      else
		begin
		  if((f1=f2) and (f2=f3) and (f3=f4) and (f4=f5) and (f5=f6) and (f6=f7) and (f7=f8) and (f8=f9)) then 
		  begin
			 fim:=false;
			 x:=false;
			 writeln('EMPATOU!!!');
			 readkey;
		  end;
      end;
      ClrScr;
   
end;

procedure jogador2;
begin
   y:=true;
   while y do begin
      matriz;
      write('Jogador [2]: ');
      readln(j2);

      case j2 of
      
      1 : begin
         if ((a11='O') or (a11='X')) then 
			 begin
			 end 
         else 
			 begin
				a11:='O';
				b11:=2;
				y:=false;
				f1:=false;
			 end;
         end;

      2 : begin
         if ((a12='O') or (a12='X')) then 
			 begin
			 end 
         else 
			 begin
				a12:='O';
				b12:=2;
				y:=false;
				f2:=false;
			 end;
         end;

      3 : begin
         if ((a13='O') or (a13='X')) then 
			 begin
			 end 
         else 
			 begin
				a13:='O';
				b13:=2;
				y:=false;
				f3:=false;
			 end;
         end;

      4 : begin
         if ((a21='O') or (a21='X')) then 
			 begin
			 end 
         else 
			 begin
				a21:='O';
				b21:=2;
				y:=false;
				f4:=false;
			 end;
         end;

      5 : begin
         if ((a22='O') or (a22='X')) then 
			 begin
			 end 
         else 
			 begin
				a22:='O';
				b22:=2;
				y:=false;
				f5:=false;
			 end;
         end;

      6 : begin
         if ((a23='O') or (a23='X')) then 
			 begin
			 end 
         else 
			 begin
				a23:='O';
				b23:=2;
				y:=false;
				f6:=false;
			 end;
         end;

      7 : begin
         if ((a31='O') or (a31='X')) then 
			 begin
			 end 
         else 
			 begin
				a31:='O';
				b31:=2;
				y:=false;
				f7:=false;
			 end;
         end;

      8 : begin
         if ((a32='O') or (a32='X')) then 
			 begin
			 end 
         else 
			 begin
				a32:='O';
				b32:=2;
				y:=false;
				f8:=false;
			 end;
         end;

      9 : begin
         if ((a33='O') or (a33='X')) then 
			 begin
			 end 
         else 
			 begin
				a33:='O';
				b33:=2;
				y:=false;
				f9:=false;
			 end;
         end;
        
      0 : begin
		x:=false;
		y:=false;
		fim:=false;
	  end;

      end;
end;
      if ((a11=a12) and (a12=a13)) or ((a21=a22) and (a22=a23)) or ((a31=a32) and (a32=a33)) or ((a11=a21) and (a21=a31)) or ((a12=a22) and (a22=a32)) or ((a13=a23) and (a23=a33)) or ((a11=a22) and (a22=a33)) or ((a13=a22) and (a22=a31)) then 
      begin
         writeln('O jogador 2 GANHOU!!!');
         fim:=false;
         x:=false;
         readkey;
      end;
      ClrScr;

   
end;

begin
   a11:='1';
   a12:='2';
   a13:='3';
   a21:='4';
   a22:='5';
   a23:='6';
   a31:='7';
   a32:='8';
   a33:='9';
   f1:=false;
   f2:=true;
   f3:=true;
   f4:=true;
   f5:=true;
   f6:=true;
   f7:=true;
   f8:=true;
   f9:=true;
   x:=true;
   fim:=true;
   while x do begin
      if fim=true then 
      begin
         jogador1;
      end;
      if fim=true then 
      begin
         jogador2;
      end;
   end;


end.
