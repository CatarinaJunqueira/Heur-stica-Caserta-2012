% Nome: Trocar
% Objetivo: Trocar o conteiner de posicao dentro do patio.

function [patio] = trocar(patio,posicao_conteiner,posicao_vazia) %conteúdo, e não posição.

I1 = patio(posicao_conteiner(1,1),posicao_conteiner(1,2)); %identificando no patio o conteiner que esta na lista_navio
patio(posicao_vazia(1,1),posicao_vazia(1,2))=I1; % Colocando-o na posicao vazio
patio(posicao_conteiner(1,1),posicao_conteiner(1,2))=0; %zerando a posicao em que ele estava antes

end