import { AfterViewInit, Component, ElementRef, ViewChild } from '@angular/core';
//import {register} from 'swiper/element/bundle';
import {A11y, Mousewheel, Navigation, Pagination, SwiperOptions} from 'swiper';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {

  public config: SwiperOptions = {
    modules: [ A11y, Mousewheel],
    autoHeight: true,
    spaceBetween: 20,
    slidesPerView: 3,
    pagination: true,
    breakpoints: {
      1200: {
        slidesPerView: 6,
        centeredSlides: false
      },
    }
  }
  

    
//ngAfterViewInit(): void {
//    register();
//}
  
  
}
