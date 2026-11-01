package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.support.v4.am0;
import android.support.v4.dn1;
import android.support.v4.yg0;
import android.widget.ImageView;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Celse;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Cnew;
import java.util.List;
import java.util.Map;

/* renamed from: com.bumptech.glide.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor extends ContextWrapper {

    /* renamed from: catch, reason: not valid java name */
    @VisibleForTesting
    public static final Cthis<?, ?> f9340catch = new yg0();

    /* renamed from: break, reason: not valid java name */
    @Nullable
    @GuardedBy("this")
    private dn1 f9341break;

    /* renamed from: case, reason: not valid java name */
    private final Map<Class<?>, Cthis<?, ?>> f9342case;

    /* renamed from: do, reason: not valid java name */
    private final ArrayPool f9343do;

    /* renamed from: else, reason: not valid java name */
    private final Celse f9344else;

    /* renamed from: for, reason: not valid java name */
    private final am0 f9345for;

    /* renamed from: goto, reason: not valid java name */
    private final boolean f9346goto;

    /* renamed from: if, reason: not valid java name */
    private final Ccase f9347if;

    /* renamed from: new, reason: not valid java name */
    private final Glide.RequestOptionsFactory f9348new;

    /* renamed from: this, reason: not valid java name */
    private final int f9349this;

    /* renamed from: try, reason: not valid java name */
    private final List<RequestListener<Object>> f9350try;

    public Cfor(@NonNull Context context, @NonNull ArrayPool arrayPool, @NonNull Ccase ccase, @NonNull am0 am0Var, @NonNull Glide.RequestOptionsFactory requestOptionsFactory, @NonNull Map<Class<?>, Cthis<?, ?>> map, @NonNull List<RequestListener<Object>> list, @NonNull Celse celse, boolean z, int i) {
        super(context.getApplicationContext());
        this.f9343do = arrayPool;
        this.f9347if = ccase;
        this.f9345for = am0Var;
        this.f9348new = requestOptionsFactory;
        this.f9350try = list;
        this.f9342case = map;
        this.f9344else = celse;
        this.f9346goto = z;
        this.f9349this = i;
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public Celse m11167case() {
        return this.f9344else;
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public <X> Cnew<ImageView, X> m11168do(@NonNull ImageView imageView, @NonNull Class<X> cls) {
        return this.f9345for.m278do(imageView, cls);
    }

    /* renamed from: else, reason: not valid java name */
    public int m11169else() {
        return this.f9349this;
    }

    /* renamed from: for, reason: not valid java name */
    public List<RequestListener<Object>> m11170for() {
        return this.f9350try;
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public Ccase m11171goto() {
        return this.f9347if;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public ArrayPool m11172if() {
        return this.f9343do;
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized dn1 m11173new() {
        if (this.f9341break == null) {
            this.f9341break = this.f9348new.build().o();
        }
        return this.f9341break;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m11174this() {
        return this.f9346goto;
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public <T> Cthis<?, T> m11175try(@NonNull Class<T> cls) {
        Cthis<?, T> cthis = (Cthis) this.f9342case.get(cls);
        if (cthis == null) {
            for (Map.Entry<Class<?>, Cthis<?, ?>> entry : this.f9342case.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    cthis = (Cthis) entry.getValue();
                }
            }
        }
        return cthis == null ? (Cthis<?, T>) f9340catch : cthis;
    }
}
