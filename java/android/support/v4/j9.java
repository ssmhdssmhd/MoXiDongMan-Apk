package android.support.v4;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class j9 extends zl0<Bitmap> {
    public j9(ImageView imageView) {
        super(imageView);
    }

    @Override // android.support.v4.zl0
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo1129catch(Bitmap bitmap) {
        ((ImageView) this.f10430if).setImageBitmap(bitmap);
    }

    @Deprecated
    public j9(ImageView imageView, boolean z) {
        super(imageView, z);
    }
}
