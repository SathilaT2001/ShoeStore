searchForm = document.querySelector('search-form');

document.querySelector('#search-btn').onclick = () =>{
    searchForm.classList.toggle('active1');
};


window.onscroll = () => {
    
    searchForm.classList.remove('active1');
    
    if(window.scrollY > 80){
        document.querySelector('.header .header-2').classList.add('active1');
    }else{
        document.querySelector('.header .header-2').classList.remove('active1');
    }
    }
   


