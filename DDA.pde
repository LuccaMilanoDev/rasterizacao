class DDA {
  float startX, startY, endX, endY; // pontos inicial e final da reta
  int steps; // número de passos no algoritmo
  GradeDesenho objetoGrade; // instância da classe Grade para trabalhar com a grade

  // construtor da classe DDA
  DDA(GradeDesenho grade) {
    this.steps = 0;
    this.objetoGrade = grade;
  }

  // método para definir o ponto inicial da reta
  void setStartPoint(float x, float y) {
    this.startX = x;
    this.startY = y;
    this.steps = 0;
  }

  // método para definir o ponto final da reta
  void setEndPoint(float x, float y) {
    this.endX = x;
    this.endY = y;
    this.steps = int(abs(endX - startX));
  }

  // método para implementar o algoritmo DDA e desenhar a reta na tela
  void DDA() {
    float X, Y;
    float Xinc, Yinc;

    steps = int(abs(endX - startX));
    if (abs(endY - startY) > steps) {
      steps = int(abs(endY - startY));
    }

    Xinc = (endX - startX) / steps;
    Yinc = (endY - startY) / steps;

    X = startX;
    Y = startY;

    // loop para percorrer os passos do algoritmo DDA
    for (int k = 0; k < steps; k++) {
      int col = round(X / objetoGrade.larguraCelula); // converte a posição X para a coluna correspondente
      int row = round(Y / objetoGrade.alturaCelula); // converte a posição Y para a linha correspondente
      putPixel(col, row, color(0)); // desenha um pixel na posição calculada
      X += Xinc;
      Y += Yinc;
    }
  }

  // método para desenhar um pixel na posição da grade especificada
  void putPixel(int col, int row, color c) {
    int x = col * objetoGrade.larguraCelula; // calcula a posição X na tela
    int y = row * objetoGrade.alturaCelula; // calcula a posição Y na tela
    fill(c);
    noStroke();
    rect(x, y, objetoGrade.larguraCelula, objetoGrade.alturaCelula); // desenha um retângulo representando um pixel na tela
  }
}
