package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class o9 extends r62<Bitmap> {
    public o9(ImageView imageView) {
        super(imageView);
    }

    @Override // android.support.v4.r62
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public Drawable mo2128const(Bitmap bitmap) {
        return new BitmapDrawable(((ImageView) this.f10430if).getResources(), bitmap);
    }

    @Deprecated
    public o9(ImageView imageView, boolean z) {
        super(imageView, z);
    }
}
