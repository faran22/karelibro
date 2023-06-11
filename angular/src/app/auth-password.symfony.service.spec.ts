import { TestBed } from '@angular/core/testing';

import { AuthPasswordSymfonyService } from './auth-password.symfony.service';

describe('AuthPasswordSymfonyService', () => {
  let service: AuthPasswordSymfonyService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(AuthPasswordSymfonyService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
