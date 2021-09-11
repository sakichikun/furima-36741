window.addEventListener('load', () => {
  const priceNumber = document.getElementById("item-price");
  priceNumber.addEventListener("input", () => {
    const inputValue = priceNumber.value;
    const TaxPrice = document.getElementById("add-tax-price");
    TaxPrice.innerHTML = (Math.floor(inputValue * 0.1));
      const profitNumber = document.getElementById("profit")
      const value_result = inputValue * 0.1
      profitNumber.innerHTML = (Math.floor(inputValue - value_result));
  })
})