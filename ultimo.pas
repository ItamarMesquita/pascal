program semnome;
uses Crt;
Var
jogada,jogo,r2,r1,jn : boolean;
a : array[1..3,1..3] of integer;
b : array[1..3,1..3] of string;
j,j1,j2 : integer;
x,y,z : integer;
jogarn : string;
//-------------------------------------------------------------------------------------------
procedure matriz; //Desenho do jogo
begin
  ClrScr;
  writeln(' ',b[3,1],' | ',b[3,2],' | ',b[3,3]);
  writeln('--- --- ---');
  writeln(' ',b[2,1],' | ',b[2,2],' | ',b[2,3]);
  writeln('--- --- ---');
  writeln(' ',b[1,1],' | ',b[1,2],' | ',b[1,3]);
  writeln;
end;
//-------------------------------------------------------------------------------------------
procedure combinacoes;  //possiveis combinações
begin
  if ((a[1,1]=a[1,2]) and (a[1,2]=a[1,3])) or
  ((a[2,1]=a[2,2]) and (a[2,2]=a[2,3])) or
  ((a[3,1]=a[3,2]) and (a[3,2]=a[3,3])) or
  ((a[1,1]=a[2,1]) and (a[2,1]=a[3,1])) or
  ((a[1,2]=a[2,2]) and (a[2,2]=a[3,2])) or
  ((a[1,3]=a[2,3]) and (a[2,3]=a[3,3])) or
  ((a[1,1]=a[2,2]) and (a[2,2]=a[3,3])) or
  ((a[1,3]=a[2,2]) and (a[2,2]=a[3,1])) then
  begin
    writeln('O jogador[',j,'] GANHOU!!!');
    jogada:=true;
    jogo:=false;
    readkey;
  end;
end;
//-------------------------------------------------------------------------------------------
procedure empate; //se ninguem ganhar, empata!!!
begin
  if (jogada=true) then
  begin
  end
  else
  begin
    if((a[1,1]<>1) and (a[1,2]<>2) and (a[1,3]<>3) and (a[2,1]<>4) and (a[2,2]<>5) and (a[2,3]<>6) and (a[3,1]<>7) and (a[3,2]<>8) and (a[3,3]<>9)) then
    begin
      jogada:=true;
      jogo:=false;
      writeln('EMPATOU!!!');
      readkey;
    end;
  end;
end;
//-------------------------------------------------------------------------------------------
procedure jogador1;  // Vez do jogador 1 !!!
begin
  while r1 do
  begin
    z := 0;
    matriz;
    write('Jogador [1]: ');
    readln(j1);
    writeln('');
    writeln('Processando...');
    delay(600);
    
    for x := 1 to 3 do
    begin
      for y := 1 to 3 do
      begin
        z := z + 1;
        if (j1=z) then
        begin
          if a[x,y]<>z then
          begin
          end
          else
          begin
            a[x,y]:=10;
            b[x,y]:='X';
            r1:=false;
          end;
        end;
      end;
    end;
    
  end;
  j:=1;
  combinacoes;
  
  empate;
  
  ClrScr;
  
end;
procedure jogador2; //Vez do jogador 2
begin
  while r2 do
  begin
    z := 0;
    matriz;
    write('Jogador [2]: ');
    readln(j2);
    writeln('');
    writeln('Processando...');
    delay(600);
    
    for x := 1 to 3 do
    begin
      for y := 1 to 3 do
      begin
        z := z + 1;
        
        if (j2=z) then
        begin
          if a[x,y]<>z then
          begin
          end
          else
          begin
            a[x,y]:=21;
            b[x,y]:='O';
            r2:=false;
          end;
        end;
      end;
    end;
    
  end;
  j:=2;
  
  combinacoes;
  
  ClrScr;
end;

BEGIN //INICIO DO JOGO!!!!!!!!!!
  jn:=true;
  while jn do
  begin
    a[1,1]:=1;
    a[1,2]:=2;
    a[1,3]:=3;
    a[2,1]:=4;
    a[2,2]:=5;
    a[2,3]:=6;
    a[3,1]:=7;
    a[3,2]:=8;
    a[3,3]:=9;
    b[1,1]:='1';
    b[1,2]:='2';
    b[1,3]:='3';
    b[2,1]:='4';
    b[2,2]:='5';
    b[2,3]:='6';
    b[3,1]:='7';
    b[3,2]:='8';
    b[3,3]:='9';
    
    jogo:=true;
    jogada:=false;
    while jogo do begin
      if jogada=false then
      begin
        r1:=true;
        jogador1;
      end;
      if jogada=false then
      begin
        r2:=true;
        jogador2;
      end;
    end;
    
    write('Deseja jogar novamente? (S ou N): ');
    readln(jogarn);
    
    if (jogarn='s') then
    begin
    end;
    if (jogarn='n') then
    begin
      jn:=false;
    end
    else
    begin
      write('Jogada INVÁLIDA!!!');
    end;
    Clrscr;
  end;
end.
