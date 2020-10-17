function toggle(e){
  const card = e.currentTarget;
  const opened = document.querySelector('.card:not(.closed)');
  if (opened && (opened != card)) {
    opened.classList.add('closed');
  }
  card.classList.toggle('closed');
}

function initToggleCards() {
  const cards = document.querySelectorAll('.card');
  cards.forEach((card) => {
    card.addEventListener('click', toggle);
  })
}

export { initToggleCards };