import { Component, EventEmitter, Input, Output, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DomSanitizer, SafeResourceUrl } from '@angular/platform-browser';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'cah-avatar',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './avatar.component.html',
  styles: [],
})
export class AvatarComponent {
  _avatarUrl: SafeResourceUrl | undefined;
  uploading = false;

  @Input()
  set avatarUrl(url: string | null) {
    if (url) {
      this.downloadImage(url);
    }
  }

  @Output() upload = new EventEmitter<string>();

  private authService = inject(AuthService);
  private dom = inject(DomSanitizer);

  async downloadImage(path: string) {
    try {
      const { data } = await this.authService.downLoadImage(path);
      console.log(
        '🚀 ~ file: avatar.component.ts:40 ~ AvatarComponent ~ downloadImage ~ data:',
        data
      );
      if (data instanceof Blob) {
        this._avatarUrl = this.dom.bypassSecurityTrustResourceUrl(
          URL.createObjectURL(data)
        );
      }
    } catch (error) {
      if (error instanceof Error) {
        console.error('Error downloading image: ', error.message);
      }
    }
  }

  async uploadAvatar(event: Event) {
    try {
      this.uploading = true;
      if (
        !event.target ||
        !(event.target instanceof HTMLInputElement) ||
        !event.target.files ||
        event.target.files.length === 0
      ) {
        throw new Error('You must select an image to upload.');
      }

      const file = event.target.files[0];
      const fileExt = file.name.split('.').pop();
      const filePath = `${Math.random()}.${fileExt}`;

      await this.authService.uploadAvatar(filePath, file);
      this.upload.emit(filePath);
    } catch (error) {
      if (error instanceof Error) {
        alert(error.message);
      }
    } finally {
      this.uploading = false;
    }
  }
}
