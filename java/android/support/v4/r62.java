package android.support.v4;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.target.Cif;

/* loaded from: classes.dex */
public abstract class r62<T> extends zl0<T> {
    public r62(ImageView imageView) {
        super(imageView);
    }

    @Override // android.support.v4.zl0
    /* renamed from: catch */
    public void mo1129catch(@Nullable T t) {
        ViewGroup.LayoutParams layoutParams = ((ImageView) this.f10430if).getLayoutParams();
        Drawable drawableMo2128const = mo2128const(t);
        if (layoutParams != null && layoutParams.width > 0 && layoutParams.height > 0) {
            drawableMo2128const = new Cif(drawableMo2128const, layoutParams.width, layoutParams.height);
        }
        ((ImageView) this.f10430if).setImageDrawable(drawableMo2128const);
    }

    /* renamed from: const */
    public abstract Drawable mo2128const(T t);

    @Deprecated
    public r62(ImageView imageView, boolean z) {
        super(imageView, z);
    }
}
