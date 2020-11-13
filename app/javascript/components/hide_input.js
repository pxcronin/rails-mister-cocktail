function hideInput() {
  var hiddenForm = document.getElementById("hiddenIngredientForm");
  hiddenForm.style.display === "none" ?  hiddenForm.style.display = 'block' : hiddenForm.style.display = 'none';
};

export { hideInput };