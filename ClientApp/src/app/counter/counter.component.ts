import { Component } from '@angular/core';

@Component({
  selector: 'app-counter-component',
  templateUrl: './counter.component.html'
})
export class CounterComponent {
  private firstElement = 0;
  private secondElement = 1;
  public currentElement = 0;
  private initialDisplay = true;

  public fibonacciSequence() {
    if (this.currentElement == 1 && this.initialDisplay == true) {
      this.initialDisplay = false;
    }
    else {
      this.currentElement = this.firstElement + this.secondElement;
      this.firstElement = this.secondElement;
      this.secondElement = this.currentElement;
    }
  }
}
