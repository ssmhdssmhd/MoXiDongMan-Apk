package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.cf1;
import android.support.v4.dn1;
import android.support.v4.u1;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.request.Cif;
import com.bumptech.glide.request.Cnew;
import com.bumptech.glide.request.Ctry;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Cfor;
import com.bumptech.glide.request.target.Target;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* renamed from: com.bumptech.glide.else, reason: invalid class name */
/* loaded from: classes.dex */
public class Celse<TranscodeType> extends com.bumptech.glide.request.Cdo<Celse<TranscodeType>> implements Cloneable, ModelTypes<Celse<TranscodeType>> {
    public static final dn1 w = new dn1().mo11946this(Ccase.f9735for).C(Ctry.LOW).K(true);
    private final Context i;
    private final Cgoto j;
    private final Class<TranscodeType> k;
    private final Glide l;
    private final Cfor m;

    @NonNull
    private Cthis<?, ? super TranscodeType> n;

    @Nullable
    private Object o;

    @Nullable
    private List<RequestListener<TranscodeType>> p;

    @Nullable
    private Celse<TranscodeType> q;

    @Nullable
    private Celse<TranscodeType> r;

    @Nullable
    private Float s;
    private boolean t;
    private boolean u;
    private boolean v;

    /* renamed from: com.bumptech.glide.else$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f9338do;

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ int[] f9339if;

        static {
            int[] iArr = new int[Ctry.values().length];
            f9339if = iArr;
            try {
                iArr[Ctry.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9339if[Ctry.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9339if[Ctry.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9339if[Ctry.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f9338do = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9338do[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f9338do[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f9338do[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f9338do[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f9338do[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f9338do[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f9338do[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    @SuppressLint({"CheckResult"})
    public Celse(@NonNull Glide glide, Cgoto cgoto, Class<TranscodeType> cls, Context context) {
        this.t = true;
        this.l = glide;
        this.j = cgoto;
        this.k = cls;
        this.i = context;
        this.n = cgoto.m11216final(cls);
        this.m = glide.m11050break();
        h0(cgoto.m11212class());
        mo11166do(cgoto.m11213const());
    }

    private Request Y(Target<TranscodeType> target, @Nullable RequestListener<TranscodeType> requestListener, com.bumptech.glide.request.Cdo<?> cdo, Executor executor) {
        return Z(new Object(), target, requestListener, null, this.n, cdo.m11951volatile(), cdo.m11916abstract(), cdo.m11937private(), cdo, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Request Z(Object obj, Target<TranscodeType> target, @Nullable RequestListener<TranscodeType> requestListener, @Nullable RequestCoordinator requestCoordinator, Cthis<?, ? super TranscodeType> cthis, Ctry ctry, int i, int i2, com.bumptech.glide.request.Cdo<?> cdo, Executor executor) {
        RequestCoordinator requestCoordinator2;
        RequestCoordinator cif;
        if (this.r != null) {
            cif = new Cif(obj, requestCoordinator);
            requestCoordinator2 = cif;
        } else {
            requestCoordinator2 = null;
            cif = requestCoordinator;
        }
        Request requestA0 = a0(obj, target, requestListener, cif, cthis, ctry, i, i2, cdo, executor);
        if (requestCoordinator2 == null) {
            return requestA0;
        }
        int iM11916abstract = this.r.m11916abstract();
        int iM11937private = this.r.m11937private();
        if (com.bumptech.glide.util.Ccase.m12054static(i, i2) && !this.r.n()) {
            iM11916abstract = cdo.m11916abstract();
            iM11937private = cdo.m11937private();
        }
        Celse<TranscodeType> celse = this.r;
        Cif cif2 = requestCoordinator2;
        cif2.m11960try(requestA0, celse.Z(obj, target, requestListener, cif2, celse.n, celse.m11951volatile(), iM11916abstract, iM11937private, this.r, executor));
        return cif2;
    }

    private Request a0(Object obj, Target<TranscodeType> target, RequestListener<TranscodeType> requestListener, @Nullable RequestCoordinator requestCoordinator, Cthis<?, ? super TranscodeType> cthis, Ctry ctry, int i, int i2, com.bumptech.glide.request.Cdo<?> cdo, Executor executor) {
        Celse<TranscodeType> celse = this.q;
        if (celse == null) {
            if (this.s == null) {
                return z0(obj, target, requestListener, cdo, requestCoordinator, cthis, ctry, i, i2, executor);
            }
            Ctry ctry2 = new Ctry(obj, requestCoordinator);
            ctry2.m12030new(z0(obj, target, requestListener, cdo, ctry2, cthis, ctry, i, i2, executor), z0(obj, target, requestListener, cdo.clone().J(this.s.floatValue()), ctry2, cthis, g0(ctry), i, i2, executor));
            return ctry2;
        }
        if (this.v) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        Cthis<?, ? super TranscodeType> cthis2 = celse.t ? cthis : celse.n;
        Ctry ctryM11951volatile = celse.f() ? this.q.m11951volatile() : g0(ctry);
        int iM11916abstract = this.q.m11916abstract();
        int iM11937private = this.q.m11937private();
        if (com.bumptech.glide.util.Ccase.m12054static(i, i2) && !this.q.n()) {
            iM11916abstract = cdo.m11916abstract();
            iM11937private = cdo.m11937private();
        }
        Ctry ctry3 = new Ctry(obj, requestCoordinator);
        Request requestZ0 = z0(obj, target, requestListener, cdo, ctry3, cthis, ctry, i, i2, executor);
        this.v = true;
        Celse<TranscodeType> celse2 = this.q;
        Request requestZ = celse2.Z(obj, target, requestListener, ctry3, cthis2, ctryM11951volatile, iM11916abstract, iM11937private, celse2, executor);
        this.v = false;
        ctry3.m12030new(requestZ0, requestZ);
        return ctry3;
    }

    @NonNull
    private Ctry g0(@NonNull Ctry ctry) {
        int i = Cdo.f9339if[ctry.ordinal()];
        if (i == 1) {
            return Ctry.NORMAL;
        }
        if (i == 2) {
            return Ctry.HIGH;
        }
        if (i == 3 || i == 4) {
            return Ctry.IMMEDIATE;
        }
        throw new IllegalArgumentException("unknown priority: " + m11951volatile());
    }

    @SuppressLint({"CheckResult"})
    private void h0(List<RequestListener<Object>> list) {
        Iterator<RequestListener<Object>> it = list.iterator();
        while (it.hasNext()) {
            W((RequestListener) it.next());
        }
    }

    private <Y extends Target<TranscodeType>> Y k0(@NonNull Y y, @Nullable RequestListener<TranscodeType> requestListener, com.bumptech.glide.request.Cdo<?> cdo, Executor executor) {
        cf1.m900new(y);
        if (!this.u) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        Request requestY = Y(y, requestListener, cdo, executor);
        Request request = y.getRequest();
        if (requestY.isEquivalentTo(request) && !n0(cdo, request)) {
            if (!((Request) cf1.m900new(request)).isRunning()) {
                request.begin();
            }
            return y;
        }
        this.j.m11225this(y);
        y.setRequest(requestY);
        this.j.m11219interface(y, requestY);
        return y;
    }

    private boolean n0(com.bumptech.glide.request.Cdo<?> cdo, Request request) {
        return !cdo.e() && request.isComplete();
    }

    @NonNull
    private Celse<TranscodeType> y0(@Nullable Object obj) {
        this.o = obj;
        this.u = true;
        return this;
    }

    private Request z0(Object obj, Target<TranscodeType> target, RequestListener<TranscodeType> requestListener, com.bumptech.glide.request.Cdo<?> cdo, RequestCoordinator requestCoordinator, Cthis<?, ? super TranscodeType> cthis, Ctry ctry, int i, int i2, Executor executor) {
        Context context = this.i;
        Cfor cfor = this.m;
        return Cnew.m11974super(context, cfor, obj, this.o, this.k, cdo, i, i2, ctry, target, requestListener, this.p, requestCoordinator, cfor.m11167case(), cthis.m12035for(), executor);
    }

    @NonNull
    public Target<TranscodeType> A0() {
        return B0(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @NonNull
    public Target<TranscodeType> B0(int i, int i2) {
        return j0(Cfor.m12001if(this.j, i, i2));
    }

    @NonNull
    public FutureTarget<TranscodeType> C0() {
        return D0(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @NonNull
    public FutureTarget<TranscodeType> D0(int i, int i2) {
        com.bumptech.glide.request.Cfor cfor = new com.bumptech.glide.request.Cfor(i, i2);
        return (FutureTarget) l0(cfor, cfor, com.bumptech.glide.util.Cnew.m12078do());
    }

    @NonNull
    @CheckResult
    public Celse<TranscodeType> E0(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.s = Float.valueOf(f);
        return this;
    }

    @NonNull
    @CheckResult
    public Celse<TranscodeType> F0(@Nullable Celse<TranscodeType> celse) {
        this.q = celse;
        return this;
    }

    @NonNull
    @CheckResult
    public Celse<TranscodeType> G0(@Nullable Celse<TranscodeType>... celseArr) {
        Celse<TranscodeType> celseF0 = null;
        if (celseArr == null || celseArr.length == 0) {
            return F0(null);
        }
        for (int length = celseArr.length - 1; length >= 0; length--) {
            Celse<TranscodeType> celse = celseArr[length];
            if (celse != null) {
                celseF0 = celseF0 == null ? celse : celse.F0(celseF0);
            }
        }
        return F0(celseF0);
    }

    @NonNull
    @CheckResult
    public Celse<TranscodeType> H0(@NonNull Cthis<?, ? super TranscodeType> cthis) {
        this.n = (Cthis) cf1.m900new(cthis);
        this.t = false;
        return this;
    }

    @NonNull
    @CheckResult
    public Celse<TranscodeType> W(@Nullable RequestListener<TranscodeType> requestListener) {
        if (requestListener != null) {
            if (this.p == null) {
                this.p = new ArrayList();
            }
            this.p.add(requestListener);
        }
        return this;
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> mo11166do(@NonNull com.bumptech.glide.request.Cdo<?> cdo) {
        cf1.m900new(cdo);
        return (Celse) super.mo11166do(cdo);
    }

    @Override // com.bumptech.glide.request.Cdo
    @CheckResult
    /* renamed from: b0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public Celse<TranscodeType> clone() {
        Celse<TranscodeType> celse = (Celse) super.clone();
        celse.n = celse.n.clone();
        return celse;
    }

    @CheckResult
    @Deprecated
    public FutureTarget<File> c0(int i, int i2) {
        return f0().D0(i, i2);
    }

    @CheckResult
    @Deprecated
    public <Y extends Target<File>> Y d0(@NonNull Y y) {
        return (Y) f0().j0(y);
    }

    @NonNull
    public Celse<TranscodeType> e0(@Nullable Celse<TranscodeType> celse) {
        this.r = celse;
        return this;
    }

    @NonNull
    @CheckResult
    public Celse<File> f0() {
        return new Celse(File.class, this).mo11166do(w);
    }

    @Deprecated
    public FutureTarget<TranscodeType> i0(int i, int i2) {
        return D0(i, i2);
    }

    @NonNull
    public <Y extends Target<TranscodeType>> Y j0(@NonNull Y y) {
        return (Y) l0(y, null, com.bumptech.glide.util.Cnew.m12080if());
    }

    @NonNull
    public <Y extends Target<TranscodeType>> Y l0(@NonNull Y y, @Nullable RequestListener<TranscodeType> requestListener, Executor executor) {
        return (Y) k0(y, requestListener, this, executor);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    @NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.bumptech.glide.request.target.Cnew<ImageView, TranscodeType> m0(@NonNull ImageView imageView) {
        Celse<TranscodeType> celseQ;
        com.bumptech.glide.util.Ccase.m12048if();
        cf1.m900new(imageView);
        if (!m() && k() && imageView.getScaleType() != null) {
            switch (Cdo.f9338do[imageView.getScaleType().ordinal()]) {
                case 1:
                    celseQ = clone().q();
                    break;
                case 2:
                    celseQ = clone().r();
                    break;
                case 3:
                case 4:
                case 5:
                    celseQ = clone().t();
                    break;
                case 6:
                    celseQ = clone().r();
                    break;
            }
        } else {
            celseQ = this;
        }
        return (com.bumptech.glide.request.target.Cnew) k0(this.m.m11168do(imageView, this.k), null, celseQ, com.bumptech.glide.util.Cnew.m12080if());
    }

    @NonNull
    @CheckResult
    public Celse<TranscodeType> o0(@Nullable RequestListener<TranscodeType> requestListener) {
        this.p = null;
        return W(requestListener);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: p0, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> load(@Nullable Bitmap bitmap) {
        return y0(bitmap).mo11166do(dn1.b0(Ccase.f9736if));
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: q0, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> load(@Nullable Drawable drawable) {
        return y0(drawable).mo11166do(dn1.b0(Ccase.f9736if));
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: r0, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> load(@Nullable Uri uri) {
        return y0(uri);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: s0, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> load(@Nullable File file) {
        return y0(file);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: t0, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> load(@Nullable @DrawableRes @RawRes Integer num) {
        return y0(num).mo11166do(dn1.s0(u1.m8182do(this.i)));
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: u0, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> load(@Nullable Object obj) {
        return y0(obj);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: v0, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> load(@Nullable String str) {
        return y0(str);
    }

    @Override // com.bumptech.glide.ModelTypes
    @CheckResult
    @Deprecated
    /* renamed from: w0, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> load(@Nullable URL url) {
        return y0(url);
    }

    @Override // com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: x0, reason: merged with bridge method [inline-methods] */
    public Celse<TranscodeType> load(@Nullable byte[] bArr) {
        Celse<TranscodeType> celseY0 = y0(bArr);
        if (!celseY0.c()) {
            celseY0 = celseY0.mo11166do(dn1.b0(Ccase.f9736if));
        }
        return !celseY0.j() ? celseY0.mo11166do(dn1.u0(true)) : celseY0;
    }

    @SuppressLint({"CheckResult"})
    public Celse(Class<TranscodeType> cls, Celse<?> celse) {
        this(celse.l, celse.j, cls, celse.i);
        this.o = celse.o;
        this.u = celse.u;
        mo11166do(celse);
    }
}
