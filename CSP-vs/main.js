document.addEventListener('DOMContentLoaded', () => {
    const proBtn = document.getElementById("Producer");
    const conBtn = document.getElementById("Consumer");
    proBtn.addEventListener('click', event => {
            window.location.href = 'producerlogin.html';
    });
    conBtn.addEventListener('click', event => {
            window.location.href = 'consumerlogin.html';
    });
});

