import { TestBed } from '@angular/core/testing';

import { UrlparamsService } from './urlparams.service';

describe('UrlparamsService', () => {
  let service: UrlparamsService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(UrlparamsService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
