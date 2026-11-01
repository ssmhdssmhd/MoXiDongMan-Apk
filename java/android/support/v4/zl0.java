package android.support.v4;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.target.Cnew;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes.dex */
public abstract class zl0<Z> extends Cnew<ImageView, Z> implements Transition.ViewAdapter {

    /* renamed from: break, reason: not valid java name */
    @Nullable
    private Animatable f8596break;

    public zl0(ImageView imageView) {
        super(imageView);
    }

    /* renamed from: break, reason: not valid java name */
    private void m10237break(@Nullable Z z) {
        if (!(z instanceof Animatable)) {
            this.f8596break = null;
            return;
        }
        Animatable animatable = (Animatable) z;
        this.f8596break = animatable;
        animatable.start();
    }

    /* renamed from: class, reason: not valid java name */
    private void m10238class(@Nullable Z z) {
        mo1129catch(z);
        m10237break(z);
    }

    /* renamed from: catch */
    public abstract void mo1129catch(@Nullable Z z);

    @Override // com.bumptech.glide.request.transition.Transition.ViewAdapter
    @Nullable
    public Drawable getCurrentDrawable() {
        return ((ImageView) this.f10430if).getDrawable();
    }

    @Override // com.bumptech.glide.request.target.Cnew, android.support.v4.p7, com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
        super.onLoadCleared(drawable);
        Animatable animatable = this.f8596break;
        if (animatable != null) {
            animatable.stop();
        }
        m10238class(null);
        setDrawable(drawable);
    }

    @Override // android.support.v4.p7, com.bumptech.glide.request.target.Target
    public void onLoadFailed(@Nullable Drawable drawable) {
        super.onLoadFailed(drawable);
        m10238class(null);
        setDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.target.Cnew, android.support.v4.p7, com.bumptech.glide.request.target.Target
    public void onLoadStarted(@Nullable Drawable drawable) {
        super.onLoadStarted(drawable);
        m10238class(null);
        setDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onResourceReady(@NonNull Z z, @Nullable Transition<? super Z> transition) {
        if (transition == null || !transition.transition(z, this)) {
            m10238class(z);
        } else {
            m10237break(z);
        }
    }

    @Override // android.support.v4.p7, com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
        Animatable animatable = this.f8596break;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // android.support.v4.p7, com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
        Animatable animatable = this.f8596break;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // com.bumptech.glide.request.transition.Transition.ViewAdapter
    public void setDrawable(Drawable drawable) {
        ((ImageView) this.f10430if).setImageDrawable(drawable);
    }

    @Deprecated
    public zl0(ImageView imageView, boolean z) {
        super(imageView, z);
    }
}
