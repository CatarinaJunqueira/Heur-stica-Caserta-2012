
function [Resultados_Medios,M,Media] = LerInstanciaCasertaRegras()
a = input('Primeiro valor da instância = ');
b = input('Segundo valor da instância = ');
c = input('Terceiro valor da instância = ');
Resultados_Medios=cell(1,5);
for i=1:5
X = sprintf('Rodada %i',i);
disp(X)

instancia=strcat('data',int2str(a),'-',int2str(b),'-',int2str(c),'.dat');
P=csvread(instancia);

P(:,1)=[];
P(1,:)=[];
P = rot90(P);
P = [zeros(2,size(P,2));P]; % adicionando duas colunas de zeros
%P = [zeros(5,size(P,2));P];  % adicionando cinco colunas de zeros
   
[Resultados] = Rt_Caserta(P);  
Resultados_Medios{1,i}=Resultados; 
clear P
c=c+1;
end

M=zeros(1,5);
for k=1:5
    M(1,k)=min(min(cell2mat(Resultados_Medios{1,k}(:,1))));
end
Media=mean(M);
NomeInstancia=strcat('ResultadosInstancia',int2str(a),'-',int2str(b),'-',int2str(c),'.mat');
save(NomeInstancia, 'Resultados_Medios','M','Media'); 
end