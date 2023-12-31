function mostrarInput() {
    var input = document.getElementById('meuInput');
    input.style.display = 'block';
  }
  function validacaoEmail(emailField) {
    const email = emailField.value.trim();
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    const emailError = document.getElementById('emailError');

    if (!email) {
        emailError.textContent = 'Digite um email válido.';
    } else if (!emailRegex.test(email)) {
        emailError.textContent = 'O email digitado não é válido.';
    } else {
        emailError.textContent = '';
    }
}
