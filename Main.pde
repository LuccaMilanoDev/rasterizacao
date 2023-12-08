// instâncias das classes
GradeDesenho objetoGrade;
DDA objetoDDA;

void setup() {
  size(400, 400);
  objetoGrade = new GradeDesenho(10, 10, width, height); // cria uma instância da classe grade
  objetoDDA = new DDA(objetoGrade); // cria uma instância da classe algoritmodda, passando a instância da grade
}

void draw() {
  background(255);
  objetoGrade.desenharLinhas(); // desenha a grade

  if (objetoDDA.steps > 0) {
    objetoDDA.DDA(); // chama o método DDA para desenhar a reta na tela
  }
}

// função que identifica clique do mouse
void mouseClicked() {
  int col = objetoGrade.getColuna(mouseX);
  int row = objetoGrade.getLinha(mouseY);
  objetoDDA.setStartPoint(col * objetoGrade.larguraCelula, row * objetoGrade.alturaCelula); // define o ponto inicial da reta ao clicar na grade
}

// função que identifica se o mouse é arrastado
void mouseDragged() {
  int col = objetoGrade.getColuna(mouseX);
  int row = objetoGrade.getLinha(mouseY);
  objetoDDA.setEndPoint(col * objetoGrade.larguraCelula, row * objetoGrade.alturaCelula); // define o ponto final da reta ao arrastar o mouse na grade
}
