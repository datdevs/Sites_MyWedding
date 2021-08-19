// import lazySizes from 'lazysizes'
// import 'lazysizes/plugins/bgset/ls.bgset'

// import 'lightgallery.js'
// import 'lg-fullscreen.js'
// import 'lg-thumbnail.js'
// import 'lg-zoom.js'

// import Isotope from 'isotope-layout'

// import 'waypoints/lib/noframework.waypoints'

import './scss/app.scss'

import(/* webpackChunkName: "lazysizes" */ './js/lazysizes').then(({ lazySizes }) => {
  lazySizes.cfg.lazyClass = 'vuj-laz'
  lazySizes.cfg.loadedClass = 'vuj-loaded'
})

// const API_KEY = 'AIzaSyCBCFjBMERjN2MBBg87N3T-XUJ21bqGMBI'

// function loadDrivePhotos(id, a) {
//   const xhttp = new XMLHttpRequest()
//   xhttp.onreadystatechange = function () {
//     if (this.readyState == 4 && this.status == 200) {
//       const item = JSON.parse(this.responseText),
//         gallery_item = `<div class="col-md-4 gallery-item ceremony">
//         <a href="${item.webContentLink}" class="img-zoom">
//           <div class="gallery-box">
//             <div class="gallery-img">
//               <img class="img-fluid mx-auto d-block vuj-laz" data-src="${item.webContentLink}" alt="${item.name}">
//             </div>
//             <div class="gallery-detail">
//               <h4 class="mb-0">Wedding Ceremony</h4>
//             </div>
//           </div>
//         </a>
//       </div>`
//       a.insertAdjacentHTML('beforeend', gallery_item)
//     }
//   }
//   xhttp.open('GET', `https://www.googleapis.com/drive/v3/files/${id}?fields=name%2C%20webContentLink&key=${API_KEY}`, true)
//   xhttp.send()
// }

// function homeIMGfetch(a) {
//   const xmlhttp = new XMLHttpRequest()
//   xmlhttp.onreadystatechange = function () {
//     if (this.readyState == 4 && this.status == 200) {
//       const myData = JSON.parse(this.responseText),
//         limitData = myData.items.slice(0, 6)
//       limitData.forEach((e) => {
//         loadDrivePhotos(e.id, a)
//       })
//     }
//   }
//   xmlhttp.open('GET', '/themes/Wedding/album/engaged.json', true)
//   xmlhttp.send()
// }

const $ = window.jQuery

function ready(fn) {
  if (document.readyState != 'loading') {
    fn()
  } else {
    document.addEventListener('DOMContentLoaded', fn)
  }
}

window.ready = ready

const isMobile = {
  Android: function () {
    return navigator.userAgent.match(/Android/i)
  },
  BlackBerry: function () {
    return navigator.userAgent.match(/BlackBerry/i)
  },
  iOS: function () {
    return navigator.userAgent.match(/iPhone|iPad|iPod/i)
  },
  Opera: function () {
    return navigator.userAgent.match(/Opera Mini/i)
  },
  Windows: function () {
    return navigator.userAgent.match(/IEMobile/i)
  },
  any: function () {
    return isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows()
  },
}

function setSmoothScroll() {
  $('a[href*="#"]')
    .not('[href="#"]')
    .not('[href="#0"]')
    .click(function (event) {
      if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
        var target = $(this.hash)
        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']')
        if (target.length) {
          event.preventDefault()
          $('html, body').animate(
            {
              scrollTop: target.offset().top,
            },
            0,
            function () {
              var $target = $(target)
              $target.focus()
              if ($target.is(':focus')) {
                return false
              } else {
                $target.attr('tabindex', '-1')
                $target.focus()
              }
            }
          )
        }
      }
    })
}

function burgerMenu(a) {
  a.addEventListener('click', (e) => {
    const $this = e.target,
      dombody = document.body
    dombody.classList.contains('offcanvas') ? (dombody.classList.remove('offcanvas'), $this.classList.remove('active')) : (dombody.classList.add('offcanvas'), $this.classList.add('active'))
  })
}

function mobileMenuOutsideClick(a, b) {
  const dombody = document.body
  document.addEventListener('click', (e) => {
    const $this = e.target
    if (!a.contains($this) && !b.contains($this)) {
      if (dombody.classList.contains('offcanvas')) {
        dombody.classList.remove('offcanvas')
        b.classList.remove('active')
      }
    }
  })
  window.addEventListener('scroll', () => {
    if (dombody.classList.contains('offcanvas')) {
      dombody.classList.remove('offcanvas')
      b.classList.remove('active')
    }
  })
}

function setWaypoints(a) {
  import(/* webpackChunkName: "waypoints" */ './js/waypoints').then(() => {
    var waypoint = new Waypoint({
      element: a,
      handler: function (direction) {
        if (direction === 'down' && !a.classList.contains('animated')) {
          a.classList.add('item-animate')
          var effect = a.getAttribute('data-animate-effect')
          if (effect === 'fadeIn') {
            a.classList.add('fadeIn', 'animated')
          } else if (effect === 'fadeInLeft') {
            a.classList.add('fadeInLeft', 'animated')
          } else if (effect === 'fadeInRight') {
            a.classList.add('fadeInRight', 'animated')
          } else {
            a.classList.add('fadeInUp', 'animated')
          }
          a.classList.remove('item-animate')
        }
      },
      offset: '85%',
    })
  })
}

function countDownWedding() {
  const second = 1000,
    minute = second * 60,
    hour = minute * 60,
    day = hour * 24
  let savetheday = 'May 02, 2021 17:30:00',
    countDown = new Date(savetheday).getTime(),
    x = setInterval(function () {
      let now = new Date().getTime(),
        distance = countDown - now

      // do something later when date is reached
      if (distance < 0) {
        const wehome = `<div class="row">
                            <div class="section-head col-md-12">
                              <h4>We Got Married!</h4>
                            </div>
                          </div>`
        $('#showtime').html(wehome)
        clearInterval(x)
        return false
      }

      (document.getElementById('days').innerText = Math.floor(distance / day)), (document.getElementById('hours').innerText = Math.floor((distance % day) / hour)), (document.getElementById('minutes').innerText = Math.floor((distance % hour) / minute)), (document.getElementById('seconds').innerText = Math.floor((distance % minute) / second))
    }, 0)
}

ready(() => {
  const vuj_toggle = document.querySelector('.js-vuj-nav-toggle'),
    vuj_aside = document.querySelector('#vuj-aside'),
    vuj_gallery = document.querySelector('#vuj_gallery'),
    animate_box = document.querySelectorAll('.animate-box')
  setSmoothScroll()
  burgerMenu(vuj_toggle)
  mobileMenuOutsideClick(vuj_aside, vuj_toggle)
  countDownWedding()
  if (animate_box) animate_box.forEach((e) => setWaypoints(e))
  if (vuj_gallery) {
    import(/* webpackChunkName: "lightgallery" */ './js/lightgallery').then(() => {
      lightGallery(vuj_gallery, {
        selector: '.img-zoom',
        download: false,
        mode: 'lg-zoom-in',
      })
    })
  }
})

window.addEventListener('load', () => {
  const filter = document.querySelector('.gallery-filter')
  if (filter) {
    import(/* webpackChunkName: "isotope" */ './js/isotope').then(({ Isotope }) => {
      const filter_menu = document.querySelectorAll('#gallery-filter a')
      let iso = new Isotope(filter, {
        filter: '.engagement',
        layoutMode: 'masonry',
        animationOptions: {
          duration: 750,
          easing: 'linear',
        },
      })
      filter_menu.forEach((i) => {
        i.addEventListener('click', (e) => {
          if (e.target.classList.contains('backlink')) return
          e.preventDefault()
          filter_menu.forEach((j) => {
            j.classList.remove('active')
          })
          e.target.classList.add('active')
          const new_filter = e.target.getAttribute('data-filter')
          iso.arrange({
            filter: new_filter,
          })
        })
      })
    })
  }
})
