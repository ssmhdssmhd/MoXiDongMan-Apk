package com.wsw.cospa;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.v4.dn1;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.load.resource.bitmap.Ctry;
import com.bumptech.glide.request.Cdo;
import com.google.common.collect.LinkedHashMultimap;

/* renamed from: com.wsw.cospa.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif extends dn1 implements Cloneable {
    private static Cif q;
    private static Cif r;
    private static Cif s;
    private static Cif t;
    private static Cif u;
    private static Cif v;

    @NonNull
    @CheckResult
    public static Cif A0() {
        if (s == null) {
            s = new Cif().mo11927for().mo11929if();
        }
        return s;
    }

    @NonNull
    @CheckResult
    public static Cif C0() {
        if (r == null) {
            r = new Cif().mo11935new().mo11929if();
        }
        return r;
    }

    @NonNull
    @CheckResult
    public static Cif C1(@NonNull Key key) {
        return new Cif().I(key);
    }

    @NonNull
    @CheckResult
    public static Cif E0() {
        if (t == null) {
            t = new Cif().mo11950try().mo11929if();
        }
        return t;
    }

    @NonNull
    @CheckResult
    public static Cif E1(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return new Cif().J(f);
    }

    @NonNull
    @CheckResult
    public static Cif G1(boolean z) {
        return new Cif().K(z);
    }

    @NonNull
    @CheckResult
    public static Cif H0(@NonNull Class<?> cls) {
        return new Cif().mo11923else(cls);
    }

    @NonNull
    @CheckResult
    public static Cif J1(@IntRange(from = 0) int i) {
        return new Cif().M(i);
    }

    @NonNull
    @CheckResult
    public static Cif K0(@NonNull Ccase ccase) {
        return new Cif().mo11946this(ccase);
    }

    @NonNull
    @CheckResult
    public static Cif O0(@NonNull Ctry ctry) {
        return new Cif().mo11919class(ctry);
    }

    @NonNull
    @CheckResult
    public static Cif Q0(@NonNull Bitmap.CompressFormat compressFormat) {
        return new Cif().mo11920const(compressFormat);
    }

    @NonNull
    @CheckResult
    public static Cif S0(@IntRange(from = 0, to = 100) int i) {
        return new Cif().mo11925final(i);
    }

    @NonNull
    @CheckResult
    public static Cif V0(@DrawableRes int i) {
        return new Cif().mo11943super(i);
    }

    @NonNull
    @CheckResult
    public static Cif W0(@Nullable Drawable drawable) {
        return new Cif().mo11947throw(drawable);
    }

    @NonNull
    @CheckResult
    public static Cif a1() {
        if (q == null) {
            q = new Cif().mo11934native().mo11929if();
        }
        return q;
    }

    @NonNull
    @CheckResult
    public static Cif c1(@NonNull com.bumptech.glide.load.Cif cif) {
        return new Cif().mo11939public(cif);
    }

    @NonNull
    @CheckResult
    public static Cif e1(@IntRange(from = 0) long j) {
        return new Cif().mo11940return(j);
    }

    @NonNull
    @CheckResult
    public static Cif g1() {
        if (v == null) {
            v = new Cif().mo11917break().mo11929if();
        }
        return v;
    }

    @NonNull
    @CheckResult
    public static Cif h1() {
        if (u == null) {
            u = new Cif().mo11918catch().mo11929if();
        }
        return u;
    }

    @NonNull
    @CheckResult
    public static <T> Cif j1(@NonNull Option<T> option, @NonNull T t2) {
        return new Cif().H(option, t2);
    }

    @NonNull
    @CheckResult
    public static Cif s1(int i) {
        return new Cif().y(i);
    }

    @NonNull
    @CheckResult
    public static Cif t1(int i, int i2) {
        return new Cif().z(i, i2);
    }

    @NonNull
    @CheckResult
    public static Cif w1(@DrawableRes int i) {
        return new Cif().A(i);
    }

    @NonNull
    @CheckResult
    public static Cif x1(@Nullable Drawable drawable) {
        return new Cif().B(drawable);
    }

    @NonNull
    @CheckResult
    public static Cif y0(@NonNull Transformation<Bitmap> transformation) {
        return new Cif().N(transformation);
    }

    @NonNull
    @CheckResult
    public static Cif z1(@NonNull com.bumptech.glide.Ctry ctry) {
        return new Cif().C(ctry);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: A1, reason: merged with bridge method [inline-methods] */
    public <Y> Cif H(@NonNull Option<Y> option, @NonNull Y y) {
        return (Cif) super.H(option, y);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: B0, reason: merged with bridge method [inline-methods] */
    public Cif mo11935new() {
        return (Cif) super.mo11935new();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: B1, reason: merged with bridge method [inline-methods] */
    public Cif I(@NonNull Key key) {
        return (Cif) super.I(key);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: D0, reason: merged with bridge method [inline-methods] */
    public Cif mo11950try() {
        return (Cif) super.mo11950try();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: D1, reason: merged with bridge method [inline-methods] */
    public Cif J(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return (Cif) super.J(f);
    }

    @Override // com.bumptech.glide.request.Cdo
    @CheckResult
    /* renamed from: F0, reason: merged with bridge method [inline-methods] */
    public Cif clone() {
        return (Cif) super.clone();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: F1, reason: merged with bridge method [inline-methods] */
    public Cif K(boolean z) {
        return (Cif) super.K(z);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: G0, reason: merged with bridge method [inline-methods] */
    public Cif mo11923else(@NonNull Class<?> cls) {
        return (Cif) super.mo11923else(cls);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: H1, reason: merged with bridge method [inline-methods] */
    public Cif L(@Nullable Resources.Theme theme) {
        return (Cif) super.L(theme);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: I0, reason: merged with bridge method [inline-methods] */
    public Cif mo11928goto() {
        return (Cif) super.mo11928goto();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: I1, reason: merged with bridge method [inline-methods] */
    public Cif M(@IntRange(from = 0) int i) {
        return (Cif) super.M(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: J0, reason: merged with bridge method [inline-methods] */
    public Cif mo11946this(@NonNull Ccase ccase) {
        return (Cif) super.mo11946this(ccase);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: K1, reason: merged with bridge method [inline-methods] */
    public Cif N(@NonNull Transformation<Bitmap> transformation) {
        return (Cif) super.N(transformation);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: L0, reason: merged with bridge method [inline-methods] */
    public Cif mo11917break() {
        return (Cif) super.mo11917break();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: L1, reason: merged with bridge method [inline-methods] */
    public <Y> Cif Q(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation) {
        return (Cif) super.Q(cls, transformation);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: M0, reason: merged with bridge method [inline-methods] */
    public Cif mo11918catch() {
        return (Cif) super.mo11918catch();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @SafeVarargs
    @CheckResult
    /* renamed from: M1, reason: merged with bridge method [inline-methods] */
    public final Cif S(@NonNull Transformation<Bitmap>... transformationArr) {
        return (Cif) super.S(transformationArr);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: N0, reason: merged with bridge method [inline-methods] */
    public Cif mo11919class(@NonNull Ctry ctry) {
        return (Cif) super.mo11919class(ctry);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @Deprecated
    @SafeVarargs
    @CheckResult
    /* renamed from: N1, reason: merged with bridge method [inline-methods] */
    public final Cif T(@NonNull Transformation<Bitmap>... transformationArr) {
        return (Cif) super.T(transformationArr);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: O1, reason: merged with bridge method [inline-methods] */
    public Cif U(boolean z) {
        return (Cif) super.U(z);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: P0, reason: merged with bridge method [inline-methods] */
    public Cif mo11920const(@NonNull Bitmap.CompressFormat compressFormat) {
        return (Cif) super.mo11920const(compressFormat);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: P1, reason: merged with bridge method [inline-methods] */
    public Cif V(boolean z) {
        return (Cif) super.V(z);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: R0, reason: merged with bridge method [inline-methods] */
    public Cif mo11925final(@IntRange(from = 0, to = 100) int i) {
        return (Cif) super.mo11925final(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: T0, reason: merged with bridge method [inline-methods] */
    public Cif mo11943super(@DrawableRes int i) {
        return (Cif) super.mo11943super(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: U0, reason: merged with bridge method [inline-methods] */
    public Cif mo11947throw(@Nullable Drawable drawable) {
        return (Cif) super.mo11947throw(drawable);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: X0, reason: merged with bridge method [inline-methods] */
    public Cif mo11952while(@DrawableRes int i) {
        return (Cif) super.mo11952while(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public Cif mo11931import(@Nullable Drawable drawable) {
        return (Cif) super.mo11931import(drawable);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: Z0, reason: merged with bridge method [inline-methods] */
    public Cif mo11934native() {
        return (Cif) super.mo11934native();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: b1, reason: merged with bridge method [inline-methods] */
    public Cif mo11939public(@NonNull com.bumptech.glide.load.Cif cif) {
        return (Cif) super.mo11939public(cif);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: d1, reason: merged with bridge method [inline-methods] */
    public Cif mo11940return(@IntRange(from = 0) long j) {
        return (Cif) super.mo11940return(j);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    /* renamed from: f1, reason: merged with bridge method [inline-methods] */
    public Cif o() {
        return (Cif) super.o();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: i1, reason: merged with bridge method [inline-methods] */
    public Cif p(boolean z) {
        return (Cif) super.p(z);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: k1, reason: merged with bridge method [inline-methods] */
    public Cif q() {
        return (Cif) super.q();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: l1, reason: merged with bridge method [inline-methods] */
    public Cif r() {
        return (Cif) super.r();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: m1, reason: merged with bridge method [inline-methods] */
    public Cif s() {
        return (Cif) super.s();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: n1, reason: merged with bridge method [inline-methods] */
    public Cif t() {
        return (Cif) super.t();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: o1, reason: merged with bridge method [inline-methods] */
    public Cif v(@NonNull Transformation<Bitmap> transformation) {
        return (Cif) super.v(transformation);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: p1, reason: merged with bridge method [inline-methods] */
    public <Y> Cif x(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation) {
        return (Cif) super.x(cls, transformation);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: q1, reason: merged with bridge method [inline-methods] */
    public Cif y(int i) {
        return (Cif) super.y(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: r1, reason: merged with bridge method [inline-methods] */
    public Cif z(int i, int i2) {
        return (Cif) super.z(i, i2);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: u1, reason: merged with bridge method [inline-methods] */
    public Cif A(@DrawableRes int i) {
        return (Cif) super.A(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: v1, reason: merged with bridge method [inline-methods] */
    public Cif B(@Nullable Drawable drawable) {
        return (Cif) super.B(drawable);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: w0, reason: merged with bridge method [inline-methods] */
    public Cif mo11166do(@NonNull Cdo<?> cdo) {
        return (Cif) super.mo11166do(cdo);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    /* renamed from: x0, reason: merged with bridge method [inline-methods] */
    public Cif mo11929if() {
        return (Cif) super.mo11929if();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: y1, reason: merged with bridge method [inline-methods] */
    public Cif C(@NonNull com.bumptech.glide.Ctry ctry) {
        return (Cif) super.C(ctry);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: z0, reason: merged with bridge method [inline-methods] */
    public Cif mo11927for() {
        return (Cif) super.mo11927for();
    }
}
