package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.v4.b30;
import androidx.annotation.NonNull;
import com.bumptech.glide.Cthis;
import com.bumptech.glide.request.transition.TransitionFactory;

/* loaded from: classes.dex */
public final class r9 extends Cthis<r9, Bitmap> {
    @NonNull
    /* renamed from: const, reason: not valid java name */
    public static r9 m6849const(@NonNull TransitionFactory<Bitmap> transitionFactory) {
        return new r9().m12032case(transitionFactory);
    }

    @NonNull
    /* renamed from: final, reason: not valid java name */
    public static r9 m6850final() {
        return new r9().m6858goto();
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    public static r9 m6851import(@NonNull TransitionFactory<Drawable> transitionFactory) {
        return new r9().m6857class(transitionFactory);
    }

    @NonNull
    /* renamed from: super, reason: not valid java name */
    public static r9 m6852super(int i) {
        return new r9().m6859this(i);
    }

    @NonNull
    /* renamed from: throw, reason: not valid java name */
    public static r9 m6853throw(@NonNull b30.Cdo cdo) {
        return new r9().m6855break(cdo);
    }

    @NonNull
    /* renamed from: while, reason: not valid java name */
    public static r9 m6854while(@NonNull b30 b30Var) {
        return new r9().m6856catch(b30Var);
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public r9 m6855break(@NonNull b30.Cdo cdo) {
        return m6857class(cdo.m433do());
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public r9 m6856catch(@NonNull b30 b30Var) {
        return m6857class(b30Var);
    }

    @NonNull
    /* renamed from: class, reason: not valid java name */
    public r9 m6857class(@NonNull TransitionFactory<Drawable> transitionFactory) {
        return m12032case(new q9(transitionFactory));
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public r9 m6858goto() {
        return m6855break(new b30.Cdo());
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public r9 m6859this(int i) {
        return m6855break(new b30.Cdo(i));
    }
}
