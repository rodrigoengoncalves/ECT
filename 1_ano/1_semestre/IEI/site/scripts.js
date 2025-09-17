document.addEventListener("DOMContentLoaded", () => {
    const observer = new IntersectionObserver(
        (entries) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    entry.target.classList.add("fade-section");
                } else {
                    entry.target.classList.remove("fade-section");
                }
            });
        },
        { threshold: 0.2 }
    );

    const contentSections = document.querySelectorAll(".content");
    contentSections.forEach((section) => observer.observe(section));
});

// Mostrar ou ocultar o botão ao rolar
window.onscroll = function() {
    const backToTopButton = document.getElementById("backToTop");
    if (document.documentElement.scrollTop > 100) {
        backToTopButton.classList.add("show"); // Adiciona a classe para animação
    } else {
        backToTopButton.classList.remove("show"); // Remove a classe para esconder
    }
};

// Função para rolar suavemente até o topo
function scrollToTop() {
    window.scrollTo({ top: 0, behavior: "smooth" });
}

document.addEventListener("DOMContentLoaded", () => {
    // Seleciona todas as imagens com a classe 'image'
    const images = document.querySelectorAll('.image');

    // Adiciona um evento de clique para cada imagem
    images.forEach(image => {
        image.addEventListener('click', () => {
            // Pega o link armazenado no atributo 'data-link'
            const link = image.getAttribute('data-link');
            
            // Abre o link em uma nova aba
            window.open(link, '_blank');
        });
    });
});

const carouselImages = document.querySelector('.carousel-images');
let index = 0;

function nextSlide() {
    index = (index + 1) % 3; // Substitua '3' pelo número total de imagens
    carouselImages.style.transform = `translateX(-${index * 100}%)`;
}

setInterval(nextSlide, 3000); // Troca de imagem a cada 3 segundos

const gameBoard = document.getElementById('game-board');

// Função para embaralhar as cartas
function shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
}

// Lista de imagens para as cartas
const images = [
    'image1.jpg', 'image2.jpg', 'image3.jpg', 'image4.jpg', 
    'image5.jpg', 'image6.jpg', 'image7.jpg', 'image8.jpg'
];

// Duplicar as imagens para formar pares
const cards = [...images, ...images];

// Embaralhar as cartas
shuffle(cards);

// Criar as cartas no HTML
cards.forEach((image, index) => {
    const card = document.createElement('div');
    card.classList.add('card');
    card.setAttribute('data-id', index);
    card.setAttribute('data-image', image);  // Guardar o nome da imagem
    const imgElement = document.createElement('img');
    imgElement.setAttribute('src', 'images/back.jpg'); // Imagem de fundo da carta
    imgElement.setAttribute('alt', 'Carta virada');
    card.appendChild(imgElement);
    card.addEventListener('click', flipCard);
    gameBoard.appendChild(card);
});

let flippedCards = [];
let matchedCards = [];
let lockBoard = false; // Controle para bloquear o tabuleiro durante a verificação
let cards_fliped = 0; // Contador para o número de cartas viradas

function flipCard() {
    const card = this;

    // Impede de virar a carta se ela já estiver virada
    if (card.classList.contains('flipped') || lockBoard) {
        return; // Se a carta já estiver virada ou o tabuleiro estiver bloqueado, nada acontece
    }

    // Impede de virar mais de duas cartas ao mesmo tempo
    if (cards_fliped < 2) {
        cards_fliped = cards_fliped + 1;
    } else {
        return; // Impede virar mais de duas cartas
    }

    card.classList.add('flipped');
    const imgElement = card.querySelector('img');
    imgElement.setAttribute('src', 'images/' + card.getAttribute('data-image'));  // Mostrar a imagem da carta
    flippedCards.push(card);

    // Quando duas cartas são viradas, verifica se são iguais
    if (flippedCards.length === 2) {
        lockBoard = true; // Bloqueia o tabuleiro enquanto compara as cartas
        checkForMatch();
    }
}

function checkForMatch() {
    const [firstCard, secondCard] = flippedCards;

    // Se as cartas forem iguais, elas ficam combinadas
    if (firstCard.getAttribute('data-image') === secondCard.getAttribute('data-image')) {
        firstCard.classList.add('matched');
        secondCard.classList.add('matched');
        matchedCards.push(firstCard, secondCard);
        cards_fliped = 0;
    } else {
        // Se não forem iguais, espera 1 segundo e vira as cartas de volta
        setTimeout(() => {
            firstCard.classList.remove('flipped');
            secondCard.classList.remove('flipped');
            const firstImg = firstCard.querySelector('img');
            const secondImg = secondCard.querySelector('img');
            firstImg.setAttribute('src', 'images/back.jpg');  // Volta para a imagem de fundo
            secondImg.setAttribute('src', 'images/back.jpg'); // Volta para a imagem de fundo
            cards_fliped = 0;
        }, 1000);
    }

    flippedCards = [];
    lockBoard = false; // Desbloqueia o tabuleiro para novos cliques

    // Verifica se todas as cartas foram combinadas
    if (matchedCards.length === cards.length) {
        setTimeout(() => alert('Parabéns, GANHASTE'), 500);
    }
}


// Espera até que a página seja carregada completamente
window.onload = function() {
    var ctx = document.getElementById('graficoImpactoAmbiental').getContext('2d'); // Obtém o contexto do canvas
  
    // Cria o gráfico
    var graficoImpactoAmbiental = new Chart(ctx, {
        type: 'bar', // Tipo de gráfico (barras)
        data: {
            labels: ['Urbanização', 'Poluição', 'Mudanças Climáticas', 'Espécies Invasoras', 'Áreas Protegidas', 'Projetos de Conservação'], // Labels (categorias)
            datasets: [{
                label: 'Impacto Ambiental em Portugal', // Título da série de dados
                data: [85, 90, 80, 75, 70, 60], // Dados (valores representando o impacto de cada fator)
                backgroundColor: 'rgba(54, 162, 235, 0.2)', // Cor de fundo das barras
                borderColor: 'rgba(54, 162, 235, 1)', // Cor da borda das barras
                borderWidth: 1
            }]
        },
        options: {
            responsive: true, // Garante que o gráfico seja responsivo
            scales: {
                y: {
                    beginAtZero: true // Garante que o eixo Y comece no zero
                }
            }
        }
    });
  };
  