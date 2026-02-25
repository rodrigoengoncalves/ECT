// imageRGBTest - A program that performs some operations on RGB images.
//
// This program is an example use of the imageRGB module,
// a programming project for the course AED, DETI / UA.PT
//
// You may freely use and modify this code, NO WARRANTY, blah blah,
// as long as you give proper credit to the original and subsequent authors.
//
// The AED Team <jmadeira@ua.pt, jmr@ua.pt, ...>
// 2025

#include <assert.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "error.h"
#include "imageRGB.h"
#include "instrumentation.h"

int main(int argc, char* argv[]) {
  program_name = argv[0];
  if (argc != 1) {
    error(1, 0, "Usage: imageRGBTest");
  }

  ImageInit();

  // ------------------------------------------
  // TESTES PARTE 1 (COMO JÁ TINHAS)
  // ------------------------------------------

  printf("1) ImageCreate\n");
  Image white_image = ImageCreate(100, 100);
  // ImageRAWPrint(white_image);

  printf("2) ImageCreateChess(black)+ ImageSavePBM\n");
  Image image_chess_1 = ImageCreateChess(150, 120, 30, 0x000000);  // black
  // ImageRAWPrint(image_chess_1);
  ImageSavePBM(image_chess_1, "chess_image_1.pbm");

  printf("3) ImageCreateChess(red) + ImageSavePPM\n");
  Image image_chess_2 = ImageCreateChess(20, 20, 8, 0xff0000);  // red
  ImageRAWPrint(image_chess_2);
  ImageSavePPM(image_chess_2, "chess_image_2.ppm");

  printf("4) ImageCreateChess(all black)\n");
  Image black_image = ImageCreateChess(100, 100, 100, 0x000000);  // all black
  // ImageRAWPrint(black_image);
  ImageSavePBM(black_image, "black_image.pbm");

  printf("5) ImageCopy\n");
  Image copy_image = ImageCopy(image_chess_1);
  // ImageRAWPrint(copy_image);
  if (copy_image != NULL) {
    ImageSavePBM(copy_image, "copy_image.pbm");
  }

  printf("6) ImageLoadPBM\n");
  Image image_1 = ImageLoadPBM("img/feep.pbm");
  ImageRAWPrint(image_1);

  printf("7) ImageLoadPPM\n");
  Image image_2 = ImageLoadPPM("img/feep.ppm");
  ImageRAWPrint(image_2);

  printf("8) ImageCreatePalete\n");
  Image image_3 = ImageCreatePalete(4 * 32, 4 * 32, 4);
  ImageSavePPM(image_3, "palete.ppm");

  // ------------------------------------------
  // TESTES PARTE 2: ANÁLISE EXPERIMENTAL ImageIsEqual
  // ------------------------------------------
  
  // Tamanhos de teste (largura=altura)
  int test_sizes[20] = {
    10,   50,  100,  125, 
    200,  250,  300,  400,  500, 
    625,  750,  800, 900, 1000, 1250, 
    1500, 2000, 2225, 2500, 3000
  };


  printf("\n--- INICIO TESTES PARTE 2 (ImageIsEqual) ---\n");
  
  for (int i = 0; i < 20; i++) {
    
    int s = test_sizes[i];

    // Criar imagens de teste (ex: 50x50)
    const int W = s;
    const int H = s;
    
    Image imgA = ImageCreate(W, H); // Imagem 50x50 (tudo branco, label 0)
    Image imgB = ImageCreate(W, H+1); // Imagem 50x51 (para melhor caso)
    Image imgC = ImageCopy(imgA); // Imagem 50x50 (cópia de A, idêntica)
    Image imgD = ImageCreateChess(W, H, 5, 0x000000); // Imagem 50x50 (xadrez)

    int result;
    printf("\n----------------------------------------------------------------\n");
    printf("NUMERO DO TESTE:%d  ->  %dx%d", i,s,s);

    // Melhor Caso (Tamanhos Diferentes)
    
    printf("\nMelhor Caso\n");
    InstrReset(); // Zera o contador PIXMEM
    result = ImageIsEqual(imgA, imgB);
    InstrPrint(); // Imprime os contadores (PIXMEM deve ser 0)
    
    // Teste 10: Pior Caso (Imagens Iguais)

    printf("\nPior Caso)\n");
    InstrReset();
    result = ImageIsEqual(imgA, imgC);
    InstrPrint(); // Imprime os contadores (PIXMEM deve ser alto)

    printf("\n----------------------------------------------------------------\n");

    // Cleanup da Parte 2
    ImageDestroy(&imgA);
    ImageDestroy(&imgB);
    ImageDestroy(&imgC);
    ImageDestroy(&imgD);
  }

  printf("\n--- FIM TESTES PARTE 2 ---\n");

  // ------------------------------------------
  // TESTES PARTE 3: Segmentação (Flood Fill)
  // ------------------------------------------
  printf("\n--- INICIO TESTES PARTE 3 (Segmentacao) ---\n");

  // A imagem 'feep.pbm' (que já carregaste no Teste 6)
  // é boa para testar a segmentação.
  // Vamos usar cópias dela para testar cada algoritmo.
  Image img_seg_rec = ImageLoadPBM("img/feep.pbm");
  Image img_seg_stk = ImageCopy(img_seg_rec);
  Image img_seg_que = ImageCopy(img_seg_rec);
  int regions_rec = 0;
  int regions_stk = 0;
  int regions_que = 0;

  if (img_seg_rec == NULL) {
    printf("ERRO: Nao foi possivel carregar 'img/feep.pbm'.\n");
    printf("Certifique-se que a imagem esta na pasta 'img'.\n");
  } else {
    printf("\n12) Teste ImageSegmentation (Recursivo)\n");
    // Chama a segmentação, passando a função de preenchimento recursiva
    regions_rec = ImageSegmentation(img_seg_rec, ImageRegionFillingRecursive);
    printf("Regioes encontradas (Recursivo): %d\n", regions_rec);
    ImageSavePPM(img_seg_rec, "feep_segmentada_recursivo.ppm");

    printf("\n13) Teste ImageSegmentation (Stack)\n");
    // Chama a segmentação, passando a função de preenchimento com STACK
    regions_stk = ImageSegmentation(img_seg_stk, ImageRegionFillingWithSTACK);
    printf("Regioes encontradas (Stack): %d\n", regions_stk);
    ImageSavePPM(img_seg_stk, "feep_segmentada_stack.ppm");

    printf("\n14) Teste ImageSegmentation (Queue)\n");
    // Chama a segmentação, passando a função de preenchimento com QUEUE
    regions_que = ImageSegmentation(img_seg_que, ImageRegionFillingWithQUEUE);
    printf("Regioes encontradas (Queue): %d\n", regions_que);
    ImageSavePPM(img_seg_que, "feep_segmentada_queue.ppm");

    // Teste final
    if (regions_rec == regions_stk && regions_stk == regions_que) {
      printf("\nSUCESSO: Todos os metodos encontraram %d regioes.\n", regions_rec);
    } else {
      printf("\nFALHA: Metodos encontraram numeros diferentes de regioes!\n");
    }
  }
  printf("\n--- FIM TESTES PARTE 3 ---\n");


  // ------------------------------------------
  // CLEANUP (Destruir todas as imagens)
  // ------------------------------------------
  ImageDestroy(&white_image);
  ImageDestroy(&black_image);
  if (copy_image != NULL) {
    ImageDestroy(&copy_image);
  }
  ImageDestroy(&image_chess_1);
  ImageDestroy(&image_chess_2);
  ImageDestroy(&image_1);
  ImageDestroy(&image_2);
  ImageDestroy(&image_3);

  // Cleanup da Parte 3
  if (img_seg_rec != NULL) {
    ImageDestroy(&img_seg_rec);
    ImageDestroy(&img_seg_stk);
    ImageDestroy(&img_seg_que);
  }

  return 0;
}
