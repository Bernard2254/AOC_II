# Hierarquia de Memórias

- Devido ao custo e velocidade;
- Para ganhar desempenho na localidade temporal e espacial;
- Hierarquia:
  - Registrador;
  - L1;
  - L2;
  - L3;
  - RAM;
  - Disco;
- A velocidade do processador aumentou muito ao longo do tempo;
- Já a velocidade de acesso a memória não acompanhou isto (por isso a necessidade de ter uma hierarquia);

## Conceitos

- **Taxa de acerto (hit rate)** -> Proporção de acertos na busca nos níveis de memória;
- **Taxa de falhas (miss rate)** -> Proporção de erros na busca nos níveis de memória;
- **Tempo de acerto** -> Tempo gasto para buscar dados;
- **Penalidade de falha** -> Tempo necessário para buscar um bloco de um nível inferior para um superior;

## Cache

- Nível mais alto da hierarquia de memória;
- Onde o bloco vai ser colocado na memória de nível mais alto?;
- Como encontrar esse bloco?;
- Quais blocos serão trocados em um miss?;
- FALTA UMA PERGUNTA

### Mapeamento direto

- Cada local da memória é mapeado exatamente para um local na cache -> (endereço do bloco) % (número de blocos de cache)
  - Inserir 11000 -> coloca no índice 000 a tag 11;
  - Busca 10000 -> acha no índice 000, mas a tag é diferente, substitui a tag para 10;

### Cache totalmente associativa

- Uma estrutura de bloco pode ser colocada em qualquer endereço;

### Endereçamento

- Tag -> Resto dos bits -> Diferencia os endereços;
- Índice -> X bits menos significativos -> endereça 8 posições;

### Cache associativa

- Ao contrário do mapeamento direto, você divide a memória por 2;
  - Inserir 11000 -> coloca no índice 000 a tag 11 na primeira via;
  - Busca 10000 -> acha no índice 000, mas a tag é diferente, acessa a segunda via e coloca 10000;

### Categorias de falha

- **Compulsória**: primeiro acesso a um bloco não pode estar na cache, o bloco deve ser trazido;
- **Capacidade**: quando cache está cheia;
- **Conflito**: apontam para mesmo local;
