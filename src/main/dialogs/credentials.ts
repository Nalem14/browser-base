import { VIEW_Y_OFFSET } from '~/constants/design';
import { AppWindow } from '../windows';
import { PersistentDialog } from './dialog';

const WIDTH = 350;
const HEIGHT = 271;

export class CredentialsDialog extends PersistentDialog {
  public constructor(appWindow: AppWindow) {
    super({
      name: 'credentials',
      bounds: {
        height: HEIGHT,
        width: WIDTH,
        y: VIEW_Y_OFFSET,
      },
    });
  }

  public rearrange() {
    const { width } = this.browserWindow.getContentBounds();
    super.rearrange({
      x: width - WIDTH,
    });
  }
}
