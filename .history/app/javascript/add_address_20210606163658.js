function add_address(){
  console.log("aaaa")
  const addBtn = document.getElementById('add_address');
  const form = document.getElementById('address_form');
  const selectAddress = document.getElementById('select_address');
  const next = document.getElementById("next")

  addBtn.addEventListener('click', () => {
    if (form.getAttribute("style") == "display:block;") {
      document.getElementById("add_address").textContent = 【違う配送先を指定】
      <svg width="18" height="13" fill="cadetblue" fill-rule="evenodd" viewBox="0 0 24 24" aria-hidden="true"><path d="M17.51,11.3H12.7v-5a.7.7,0,0,0-1.4,0v5h-5a.7.7,0,0,0,0,1.4h5v4.81a.7.7,0,0,0,1.4,0V12.7h4.81a.7.7,0,0,0,0-1.4Z"></path><path d="M12,2A10,10,0,1,0,22,12,10,10,0,0,0,12,2Zm0,18.6A8.6,8.6,0,1,1,20.6,12,8.61,8.61,0,0,1,12,20.6Z"></path></svg>
      form.removeAttribute("style", "display:block;")
      selectAddress.removeAttribute("style", "display:none;")
      next.removeAttribute("style", "display:block;")
    } else {
      document.getElementById("add_address").textContent = "戻る"
      form.setAttribute("style", "display:block;")
      selectAddress.setAttribute("style", "display:none;")
      next.setAttribute("style", "display:none;")
    }
  })
}

window.addEventListener('load', add_address);