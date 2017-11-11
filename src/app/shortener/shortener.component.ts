import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-shortener',
  templateUrl: './shortener.component.html',
  styleUrls: ['./shortener.component.scss']
})
export class ShortenerComponent implements OnInit {

  inputUsed = false;
  moreOptions = false;
  inputContent = '';

  constructor() { }

  ngOnInit() {
  }

}
