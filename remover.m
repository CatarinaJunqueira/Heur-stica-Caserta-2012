% Nome: Remover
% Objetivo: Remover o conteiner da posicao (i,j).

function [patio] = remover(patio,posicao_navio) %tira do patio

linha = posicao_navio(1,1); %posi��o 
coluna = posicao_navio(1,2);

patio(linha,coluna)=0;  % substitui o conte�do do conteiner retirado por 0.

end