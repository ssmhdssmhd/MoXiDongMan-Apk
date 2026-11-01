package com.wsw.cospa;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.Celse;
import com.bumptech.glide.Cgoto;
import com.bumptech.glide.Cthis;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Cif;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.request.Cdo;
import com.bumptech.glide.request.RequestListener;
import com.google.common.collect.LinkedHashMultimap;
import java.io.File;
import java.net.URL;

/* renamed from: com.wsw.cospa.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor<TranscodeType> extends Celse<TranscodeType> implements Cloneable {
    public Cfor(@NonNull Class<TranscodeType> cls, @NonNull Celse<?> celse) {
        super(cls, celse);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: A1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> C(@NonNull Ctry ctry) {
        return (Cfor) super.C(ctry);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: B1, reason: merged with bridge method [inline-methods] */
    public <Y> Cfor<TranscodeType> H(@NonNull Option<Y> option, @NonNull Y y) {
        return (Cfor) super.H(option, y);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: C1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> I(@NonNull Key key) {
        return (Cfor) super.I(key);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: D1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> J(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return (Cfor) super.J(f);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: E1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> K(boolean z) {
        return (Cfor) super.K(z);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: F1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> L(@Nullable Resources.Theme theme) {
        return (Cfor) super.L(theme);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: G1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> E0(float f) {
        return (Cfor) super.E0(f);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: H1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> F0(@Nullable Celse<TranscodeType> celse) {
        return (Cfor) super.F0(celse);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: I0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> W(@Nullable RequestListener<TranscodeType> requestListener) {
        return (Cfor) super.W(requestListener);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @SafeVarargs
    @CheckResult
    /* renamed from: I1, reason: merged with bridge method [inline-methods] */
    public final Cfor<TranscodeType> G0(@Nullable Celse<TranscodeType>... celseArr) {
        return (Cfor) super.G0(celseArr);
    }

    @Override // com.bumptech.glide.Celse, com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: J0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11166do(@NonNull Cdo<?> cdo) {
        return (Cfor) super.mo11166do(cdo);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: J1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> M(@IntRange(from = 0) int i) {
        return (Cfor) super.M(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: K0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11927for() {
        return (Cfor) super.mo11927for();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: K1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> N(@NonNull Transformation<Bitmap> transformation) {
        return (Cfor) super.N(transformation);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: L0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11935new() {
        return (Cfor) super.mo11935new();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: L1, reason: merged with bridge method [inline-methods] */
    public <Y> Cfor<TranscodeType> Q(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation) {
        return (Cfor) super.Q(cls, transformation);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: M0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11950try() {
        return (Cfor) super.mo11950try();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: M1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> S(@NonNull Transformation<Bitmap>... transformationArr) {
        return (Cfor) super.S(transformationArr);
    }

    @Override // com.bumptech.glide.Celse, com.bumptech.glide.request.Cdo
    @CheckResult
    /* renamed from: N0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> clone() {
        return (Cfor) super.clone();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    @Deprecated
    /* renamed from: N1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> T(@NonNull Transformation<Bitmap>... transformationArr) {
        return (Cfor) super.T(transformationArr);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: O0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11923else(@NonNull Class<?> cls) {
        return (Cfor) super.mo11923else(cls);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: O1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> H0(@NonNull Cthis<?, ? super TranscodeType> cthis) {
        return (Cfor) super.H0(cthis);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: P0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11928goto() {
        return (Cfor) super.mo11928goto();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: P1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> U(boolean z) {
        return (Cfor) super.U(z);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: Q0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11946this(@NonNull Ccase ccase) {
        return (Cfor) super.mo11946this(ccase);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: Q1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> V(boolean z) {
        return (Cfor) super.V(z);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: R0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11917break() {
        return (Cfor) super.mo11917break();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: S0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11918catch() {
        return (Cfor) super.mo11918catch();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: T0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11919class(@NonNull com.bumptech.glide.load.resource.bitmap.Ctry ctry) {
        return (Cfor) super.mo11919class(ctry);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: U0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11920const(@NonNull Bitmap.CompressFormat compressFormat) {
        return (Cfor) super.mo11920const(compressFormat);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11925final(@IntRange(from = 0, to = 100) int i) {
        return (Cfor) super.mo11925final(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: W0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11943super(@DrawableRes int i) {
        return (Cfor) super.mo11943super(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: X0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11947throw(@Nullable Drawable drawable) {
        return (Cfor) super.mo11947throw(drawable);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    /* renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> e0(@Nullable Celse<TranscodeType> celse) {
        return (Cfor) super.e0(celse);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: Z0, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11952while(@DrawableRes int i) {
        return (Cfor) super.mo11952while(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: a1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11931import(@Nullable Drawable drawable) {
        return (Cfor) super.mo11931import(drawable);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: b1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11934native() {
        return (Cfor) super.mo11934native();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: c1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11939public(@NonNull Cif cif) {
        return (Cfor) super.mo11939public(cif);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: d1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> mo11940return(@IntRange(from = 0) long j) {
        return (Cfor) super.mo11940return(j);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: e1, reason: merged with bridge method [inline-methods] */
    public Cfor<File> f0() {
        return new Cfor(File.class, this).mo11166do(Celse.w);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: f1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> o0(@Nullable RequestListener<TranscodeType> requestListener) {
        return (Cfor) super.o0(requestListener);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: g1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> load(@Nullable Bitmap bitmap) {
        return (Cfor) super.load(bitmap);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: h1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> load(@Nullable Drawable drawable) {
        return (Cfor) super.load(drawable);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: i1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> load(@Nullable Uri uri) {
        return (Cfor) super.load(uri);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: j1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> load(@Nullable File file) {
        return (Cfor) super.load(file);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: k1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> load(@Nullable @DrawableRes @RawRes Integer num) {
        return (Cfor) super.load(num);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: l1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> load(@Nullable Object obj) {
        return (Cfor) super.load(obj);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: m1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> load(@Nullable String str) {
        return (Cfor) super.load(str);
    }

    @Override // com.bumptech.glide.Celse
    @CheckResult
    @Deprecated
    /* renamed from: n1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> load(@Nullable URL url) {
        return (Cfor) super.load(url);
    }

    @Override // com.bumptech.glide.Celse
    @NonNull
    @CheckResult
    /* renamed from: o1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> load(@Nullable byte[] bArr) {
        return (Cfor) super.load(bArr);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: p1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> p(boolean z) {
        return (Cfor) super.p(z);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: q1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> q() {
        return (Cfor) super.q();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: r1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> r() {
        return (Cfor) super.r();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: s1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> s() {
        return (Cfor) super.s();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: t1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> t() {
        return (Cfor) super.t();
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: u1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> v(@NonNull Transformation<Bitmap> transformation) {
        return (Cfor) super.v(transformation);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: v1, reason: merged with bridge method [inline-methods] */
    public <Y> Cfor<TranscodeType> x(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation) {
        return (Cfor) super.x(cls, transformation);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: w1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> y(int i) {
        return (Cfor) super.y(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: x1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> z(int i, int i2) {
        return (Cfor) super.z(i, i2);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: y1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> A(@DrawableRes int i) {
        return (Cfor) super.A(i);
    }

    @Override // com.bumptech.glide.request.Cdo
    @NonNull
    @CheckResult
    /* renamed from: z1, reason: merged with bridge method [inline-methods] */
    public Cfor<TranscodeType> B(@Nullable Drawable drawable) {
        return (Cfor) super.B(drawable);
    }

    public Cfor(@NonNull Glide glide, @NonNull Cgoto cgoto, @NonNull Class<TranscodeType> cls, @NonNull Context context) {
        super(glide, cgoto, cls, context);
    }
}
