package android.support.v4;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;

/* loaded from: classes.dex */
public abstract class e30<T extends Drawable> implements Resource<T>, Initializable {

    /* renamed from: do, reason: not valid java name */
    public final T f1241do;

    public e30(T t) {
        this.f1241do = (T) cf1.m900new(t);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final T get() {
        Drawable.ConstantState constantState = this.f1241do.getConstantState();
        return constantState == null ? this.f1241do : (T) constantState.newDrawable();
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public void initialize() {
        T t = this.f1241do;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (t instanceof GifDrawable) {
            ((GifDrawable) t).m11803new().prepareToDraw();
        }
    }
}
