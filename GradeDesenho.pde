class GradeDesenho {
  int numColunas, numLinhas; // número de colunas e linhas
  int larguraCelula, alturaCelula; // largura e altura de cada célula 

  GradeDesenho(int colunas, int linhas, int larguraTela, int alturaTela) {
    this.numColunas = colunas;
    this.numLinhas = linhas;
    this.larguraCelula = larguraTela / colunas; // largura de cada célula na grade
    this.alturaCelula = alturaTela / linhas; // altura de cada célula na grade
  }

  // método para desenhar a grade na tela
  void desenharLinhas() {
    stroke(2);
    for (int i = 0; i < numColunas + 1; i++) {
      line(i * larguraCelula, 0, i * larguraCelula, height);
    }
    for (int j = 0; j < numLinhas + 1; j++) {
      line(0, j * alturaCelula, width, j * alturaCelula);
    }
  }

  int getColuna(int x) {
    return int(x / larguraCelula);
  }

  int getLinha(int y) {
    return int(y / alturaCelula);
  }
}
