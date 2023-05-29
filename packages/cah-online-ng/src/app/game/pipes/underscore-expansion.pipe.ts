import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'underscoreExpansion',
  standalone: true,
})
export class UnderscoreExpansionPipe implements PipeTransform {
  transform(value: string): string {
    return value.replace(/_/g, '__________');
  }
}
