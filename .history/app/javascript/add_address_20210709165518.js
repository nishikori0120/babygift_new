function add_address(){
  console.log("aaaa")
  const addBtn = document.getElementById('add_address');
  const form = document.getElementById('address_form');
  const selectAddress = document.getElementById('select_address');
  const next = document.getElementById("next")

  addBtn.addEventListener('click', () => {
    if (form.getAttribute("style") == "display:block;") {
      // document.getElementById("add_address").textContent = "【違う配送先を指定】"
      form.removeAttribute("style", "display:block;")
      selectAddress.removeAttribute("style", "display:none;")
      next.removeAttribute("style", "display:block;")
    } else {
      // document.getElementById("add_address").textContent = "戻る"
      form.setAttribute("style", "display:block;")
      selectAddress.setAttribute("style", "display:none;")
      next.setAttribute("style", "display:none;")

    }
  })
}

window.addEventListener('load', add_address);