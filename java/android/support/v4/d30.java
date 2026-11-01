package android.support.v4;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class d30 extends zl0<Drawable> {
    public d30(ImageView imageView) {
        super(imageView);
    }

    @Override // android.support.v4.zl0
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo1129catch(@Nullable Drawable drawable) {
        ((ImageView) this.f10430if).setImageDrawable(drawable);
    }

    @Deprecated
    public d30(ImageView imageView, boolean z) {
        super(imageView, z);
    }
}
