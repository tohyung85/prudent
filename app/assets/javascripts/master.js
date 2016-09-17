$(function(){
  if (window.location.href.includes('projects') || window.location.href.includes('categories')){
    $('#projects-link').css('color', '#DB6C4B');
  } 

  if (window.location.href.includes('contact')){
    $('#contact-link').css('color', '#E7DDA1');
  } 

  if (window.location.href.includes('about')){
    $('#about-link').css('color', '#26A5D4');
  } 

});