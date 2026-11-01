package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.b70;
import android.support.v4.cf1;
import android.support.v4.f81;
import android.support.v4.hc0;
import android.support.v4.hh0;
import android.support.v4.i9;
import android.support.v4.ih0;
import android.support.v4.ok0;
import android.support.v4.uf;
import android.support.v4.vf;
import android.support.v4.w01;
import android.support.v4.yl;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.Cif;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.load.resource.bitmap.Celse;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.Cdo;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.google.common.collect.LinkedHashMultimap;
import java.util.Map;

/* renamed from: com.bumptech.glide.request.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo<T extends Cdo<T>> implements Cloneable {
    private static final int a = 8192;

    /* renamed from: abstract, reason: not valid java name */
    private static final int f10309abstract = 8;
    private static final int b = 16384;
    private static final int c = 32768;

    /* renamed from: continue, reason: not valid java name */
    private static final int f10310continue = 16;
    private static final int d = 65536;
    private static final int e = 131072;
    private static final int f = 262144;

    /* renamed from: finally, reason: not valid java name */
    private static final int f10311finally = -1;
    private static final int g = 524288;
    private static final int h = 1048576;

    /* renamed from: implements, reason: not valid java name */
    private static final int f10312implements = 1024;

    /* renamed from: instanceof, reason: not valid java name */
    private static final int f10313instanceof = 2048;

    /* renamed from: interface, reason: not valid java name */
    private static final int f10314interface = 128;

    /* renamed from: package, reason: not valid java name */
    private static final int f10315package = 2;

    /* renamed from: private, reason: not valid java name */
    private static final int f10316private = 4;

    /* renamed from: protected, reason: not valid java name */
    private static final int f10317protected = 256;

    /* renamed from: strictfp, reason: not valid java name */
    private static final int f10318strictfp = 32;

    /* renamed from: synchronized, reason: not valid java name */
    private static final int f10319synchronized = 4096;

    /* renamed from: transient, reason: not valid java name */
    private static final int f10320transient = 512;

    /* renamed from: volatile, reason: not valid java name */
    private static final int f10321volatile = 64;

    /* renamed from: case, reason: not valid java name */
    private int f10323case;

    /* renamed from: const, reason: not valid java name */
    private boolean f10326const;

    /* renamed from: do, reason: not valid java name */
    private int f10328do;

    /* renamed from: else, reason: not valid java name */
    @Nullable
    private Drawable f10329else;

    /* renamed from: extends, reason: not valid java name */
    private boolean f10330extends;

    /* renamed from: goto, reason: not valid java name */
    private int f10333goto;

    /* renamed from: public, reason: not valid java name */
    private boolean f10338public;

    /* renamed from: return, reason: not valid java name */
    @Nullable
    private Resources.Theme f10339return;

    /* renamed from: static, reason: not valid java name */
    private boolean f10340static;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private Drawable f10341super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f10342switch;

    /* renamed from: throw, reason: not valid java name */
    private int f10344throw;

    /* renamed from: throws, reason: not valid java name */
    private boolean f10345throws;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private Drawable f10346try;

    /* renamed from: if, reason: not valid java name */
    private float f10334if = 1.0f;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private Ccase f10332for = Ccase.f9738try;

    /* renamed from: new, reason: not valid java name */
    @NonNull
    private Ctry f10337new = Ctry.NORMAL;

    /* renamed from: this, reason: not valid java name */
    private boolean f10343this = true;

    /* renamed from: break, reason: not valid java name */
    private int f10322break = -1;

    /* renamed from: catch, reason: not valid java name */
    private int f10324catch = -1;

    /* renamed from: class, reason: not valid java name */
    @NonNull
    private Key f10325class = b70.m459do();

    /* renamed from: final, reason: not valid java name */
    private boolean f10331final = true;

    /* renamed from: while, reason: not valid java name */
    @NonNull
    private f81 f10347while = new f81();

    /* renamed from: import, reason: not valid java name */
    @NonNull
    private Map<Class<?>, Transformation<?>> f10335import = new CachedHashCodeArrayMap();

    /* renamed from: native, reason: not valid java name */
    @NonNull
    private Class<?> f10336native = Object.class;

    /* renamed from: default, reason: not valid java name */
    private boolean f10327default = true;

    @NonNull
    private T D(@NonNull com.bumptech.glide.load.resource.bitmap.Ctry ctry, @NonNull Transformation<Bitmap> transformation) {
        return (T) E(ctry, transformation, true);
    }

    @NonNull
    private T E(@NonNull com.bumptech.glide.load.resource.bitmap.Ctry ctry, @NonNull Transformation<Bitmap> transformation, boolean z) {
        T t = z ? (T) P(ctry, transformation) : (T) w(ctry, transformation);
        t.f10327default = true;
        return t;
    }

    private T F() {
        return this;
    }

    @NonNull
    private T G() {
        if (this.f10338public) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        return (T) F();
    }

    private boolean h(int i) {
        return i(this.f10328do, i);
    }

    private static boolean i(int i, int i2) {
        return (i & i2) != 0;
    }

    @NonNull
    private T u(@NonNull com.bumptech.glide.load.resource.bitmap.Ctry ctry, @NonNull Transformation<Bitmap> transformation) {
        return (T) E(ctry, transformation, false);
    }

    @NonNull
    @CheckResult
    public T A(@DrawableRes int i) {
        if (this.f10340static) {
            return (T) clone().A(i);
        }
        this.f10333goto = i;
        int i2 = this.f10328do | 128;
        this.f10328do = i2;
        this.f10329else = null;
        this.f10328do = i2 & (-65);
        return (T) G();
    }

    @NonNull
    @CheckResult
    public T B(@Nullable Drawable drawable) {
        if (this.f10340static) {
            return (T) clone().B(drawable);
        }
        this.f10329else = drawable;
        int i = this.f10328do | 64;
        this.f10328do = i;
        this.f10333goto = 0;
        this.f10328do = i & (-129);
        return (T) G();
    }

    @NonNull
    @CheckResult
    public T C(@NonNull Ctry ctry) {
        if (this.f10340static) {
            return (T) clone().C(ctry);
        }
        this.f10337new = (Ctry) cf1.m900new(ctry);
        this.f10328do |= 8;
        return (T) G();
    }

    @NonNull
    @CheckResult
    public <Y> T H(@NonNull Option<Y> option, @NonNull Y y) {
        if (this.f10340static) {
            return (T) clone().H(option, y);
        }
        cf1.m900new(option);
        cf1.m900new(y);
        this.f10347while.m2197for(option, y);
        return (T) G();
    }

    @NonNull
    @CheckResult
    public T I(@NonNull Key key) {
        if (this.f10340static) {
            return (T) clone().I(key);
        }
        this.f10325class = (Key) cf1.m900new(key);
        this.f10328do |= 1024;
        return (T) G();
    }

    @NonNull
    @CheckResult
    public T J(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2) {
        if (this.f10340static) {
            return (T) clone().J(f2);
        }
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f10334if = f2;
        this.f10328do |= 2;
        return (T) G();
    }

    @NonNull
    @CheckResult
    public T K(boolean z) {
        if (this.f10340static) {
            return (T) clone().K(true);
        }
        this.f10343this = !z;
        this.f10328do |= 256;
        return (T) G();
    }

    @NonNull
    @CheckResult
    public T L(@Nullable Resources.Theme theme) {
        if (this.f10340static) {
            return (T) clone().L(theme);
        }
        this.f10339return = theme;
        this.f10328do |= 32768;
        return (T) G();
    }

    @NonNull
    @CheckResult
    public T M(@IntRange(from = 0) int i) {
        return (T) H(ok0.f4662if, Integer.valueOf(i));
    }

    @NonNull
    @CheckResult
    public T N(@NonNull Transformation<Bitmap> transformation) {
        return (T) O(transformation, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public T O(@NonNull Transformation<Bitmap> transformation, boolean z) {
        if (this.f10340static) {
            return (T) clone().O(transformation, z);
        }
        Celse celse = new Celse(transformation, z);
        R(Bitmap.class, transformation, z);
        R(Drawable.class, celse, z);
        R(BitmapDrawable.class, celse.m11766do(), z);
        R(GifDrawable.class, new hh0(transformation), z);
        return (T) G();
    }

    @NonNull
    @CheckResult
    public final T P(@NonNull com.bumptech.glide.load.resource.bitmap.Ctry ctry, @NonNull Transformation<Bitmap> transformation) {
        if (this.f10340static) {
            return (T) clone().P(ctry, transformation);
        }
        mo11919class(ctry);
        return (T) N(transformation);
    }

    @NonNull
    @CheckResult
    public <Y> T Q(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation) {
        return (T) R(cls, transformation, true);
    }

    @NonNull
    public <Y> T R(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation, boolean z) {
        if (this.f10340static) {
            return (T) clone().R(cls, transformation, z);
        }
        cf1.m900new(cls);
        cf1.m900new(transformation);
        this.f10335import.put(cls, transformation);
        int i = this.f10328do | 2048;
        this.f10328do = i;
        this.f10331final = true;
        int i2 = i | 65536;
        this.f10328do = i2;
        this.f10327default = false;
        if (z) {
            this.f10328do = i2 | 131072;
            this.f10326const = true;
        }
        return (T) G();
    }

    @NonNull
    @CheckResult
    public T S(@NonNull Transformation<Bitmap>... transformationArr) {
        return transformationArr.length > 1 ? (T) O(new w01(transformationArr), true) : transformationArr.length == 1 ? (T) N(transformationArr[0]) : (T) G();
    }

    @NonNull
    @CheckResult
    @Deprecated
    public T T(@NonNull Transformation<Bitmap>... transformationArr) {
        return (T) O(new w01(transformationArr), true);
    }

    @NonNull
    @CheckResult
    public T U(boolean z) {
        if (this.f10340static) {
            return (T) clone().U(z);
        }
        this.f10330extends = z;
        this.f10328do |= 1048576;
        return (T) G();
    }

    @NonNull
    @CheckResult
    public T V(boolean z) {
        if (this.f10340static) {
            return (T) clone().V(z);
        }
        this.f10342switch = z;
        this.f10328do |= 262144;
        return (T) G();
    }

    public final boolean a() {
        return this.f10342switch;
    }

    /* renamed from: abstract, reason: not valid java name */
    public final int m11916abstract() {
        return this.f10324catch;
    }

    public boolean b() {
        return this.f10340static;
    }

    @NonNull
    @CheckResult
    /* renamed from: break, reason: not valid java name */
    public T mo11917break() {
        return (T) H(ih0.f2771if, Boolean.TRUE);
    }

    public final boolean c() {
        return h(4);
    }

    @Override // 
    @CheckResult
    /* renamed from: case */
    public T clone() {
        try {
            T t = (T) super.clone();
            f81 f81Var = new f81();
            t.f10347while = f81Var;
            f81Var.m2198if(this.f10347while);
            CachedHashCodeArrayMap cachedHashCodeArrayMap = new CachedHashCodeArrayMap();
            t.f10335import = cachedHashCodeArrayMap;
            cachedHashCodeArrayMap.putAll(this.f10335import);
            t.f10338public = false;
            t.f10340static = false;
            return t;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @NonNull
    @CheckResult
    /* renamed from: catch, reason: not valid java name */
    public T mo11918catch() {
        if (this.f10340static) {
            return (T) clone().mo11918catch();
        }
        this.f10335import.clear();
        int i = this.f10328do & (-2049);
        this.f10328do = i;
        this.f10326const = false;
        int i2 = i & (-131073);
        this.f10328do = i2;
        this.f10331final = false;
        this.f10328do = i2 | 65536;
        this.f10327default = true;
        return (T) G();
    }

    @NonNull
    @CheckResult
    /* renamed from: class, reason: not valid java name */
    public T mo11919class(@NonNull com.bumptech.glide.load.resource.bitmap.Ctry ctry) {
        return (T) H(com.bumptech.glide.load.resource.bitmap.Ctry.f10171goto, cf1.m900new(ctry));
    }

    @NonNull
    @CheckResult
    /* renamed from: const, reason: not valid java name */
    public T mo11920const(@NonNull Bitmap.CompressFormat compressFormat) {
        return (T) H(i9.f2648for, cf1.m900new(compressFormat));
    }

    @Nullable
    /* renamed from: continue, reason: not valid java name */
    public final Drawable m11921continue() {
        return this.f10329else;
    }

    public final boolean d() {
        return this.f10338public;
    }

    @Nullable
    /* renamed from: default, reason: not valid java name */
    public final Drawable m11922default() {
        return this.f10341super;
    }

    @NonNull
    @CheckResult
    /* renamed from: do */
    public T mo11166do(@NonNull Cdo<?> cdo) {
        if (this.f10340static) {
            return (T) clone().mo11166do(cdo);
        }
        if (i(cdo.f10328do, 2)) {
            this.f10334if = cdo.f10334if;
        }
        if (i(cdo.f10328do, 262144)) {
            this.f10342switch = cdo.f10342switch;
        }
        if (i(cdo.f10328do, 1048576)) {
            this.f10330extends = cdo.f10330extends;
        }
        if (i(cdo.f10328do, 4)) {
            this.f10332for = cdo.f10332for;
        }
        if (i(cdo.f10328do, 8)) {
            this.f10337new = cdo.f10337new;
        }
        if (i(cdo.f10328do, 16)) {
            this.f10346try = cdo.f10346try;
            this.f10323case = 0;
            this.f10328do &= -33;
        }
        if (i(cdo.f10328do, 32)) {
            this.f10323case = cdo.f10323case;
            this.f10346try = null;
            this.f10328do &= -17;
        }
        if (i(cdo.f10328do, 64)) {
            this.f10329else = cdo.f10329else;
            this.f10333goto = 0;
            this.f10328do &= -129;
        }
        if (i(cdo.f10328do, 128)) {
            this.f10333goto = cdo.f10333goto;
            this.f10329else = null;
            this.f10328do &= -65;
        }
        if (i(cdo.f10328do, 256)) {
            this.f10343this = cdo.f10343this;
        }
        if (i(cdo.f10328do, 512)) {
            this.f10324catch = cdo.f10324catch;
            this.f10322break = cdo.f10322break;
        }
        if (i(cdo.f10328do, 1024)) {
            this.f10325class = cdo.f10325class;
        }
        if (i(cdo.f10328do, 4096)) {
            this.f10336native = cdo.f10336native;
        }
        if (i(cdo.f10328do, 8192)) {
            this.f10341super = cdo.f10341super;
            this.f10344throw = 0;
            this.f10328do &= -16385;
        }
        if (i(cdo.f10328do, 16384)) {
            this.f10344throw = cdo.f10344throw;
            this.f10341super = null;
            this.f10328do &= -8193;
        }
        if (i(cdo.f10328do, 32768)) {
            this.f10339return = cdo.f10339return;
        }
        if (i(cdo.f10328do, 65536)) {
            this.f10331final = cdo.f10331final;
        }
        if (i(cdo.f10328do, 131072)) {
            this.f10326const = cdo.f10326const;
        }
        if (i(cdo.f10328do, 2048)) {
            this.f10335import.putAll(cdo.f10335import);
            this.f10327default = cdo.f10327default;
        }
        if (i(cdo.f10328do, 524288)) {
            this.f10345throws = cdo.f10345throws;
        }
        if (!this.f10331final) {
            this.f10335import.clear();
            int i = this.f10328do & (-2049);
            this.f10328do = i;
            this.f10326const = false;
            this.f10328do = i & (-131073);
            this.f10327default = true;
        }
        this.f10328do |= cdo.f10328do;
        this.f10347while.m2198if(cdo.f10347while);
        return (T) G();
    }

    public final boolean e() {
        return this.f10343this;
    }

    @NonNull
    @CheckResult
    /* renamed from: else, reason: not valid java name */
    public T mo11923else(@NonNull Class<?> cls) {
        if (this.f10340static) {
            return (T) clone().mo11923else(cls);
        }
        this.f10336native = (Class) cf1.m900new(cls);
        this.f10328do |= 4096;
        return (T) G();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cdo)) {
            return false;
        }
        Cdo cdo = (Cdo) obj;
        return Float.compare(cdo.f10334if, this.f10334if) == 0 && this.f10323case == cdo.f10323case && com.bumptech.glide.util.Ccase.m12051new(this.f10346try, cdo.f10346try) && this.f10333goto == cdo.f10333goto && com.bumptech.glide.util.Ccase.m12051new(this.f10329else, cdo.f10329else) && this.f10344throw == cdo.f10344throw && com.bumptech.glide.util.Ccase.m12051new(this.f10341super, cdo.f10341super) && this.f10343this == cdo.f10343this && this.f10322break == cdo.f10322break && this.f10324catch == cdo.f10324catch && this.f10326const == cdo.f10326const && this.f10331final == cdo.f10331final && this.f10342switch == cdo.f10342switch && this.f10345throws == cdo.f10345throws && this.f10332for.equals(cdo.f10332for) && this.f10337new == cdo.f10337new && this.f10347while.equals(cdo.f10347while) && this.f10335import.equals(cdo.f10335import) && this.f10336native.equals(cdo.f10336native) && com.bumptech.glide.util.Ccase.m12051new(this.f10325class, cdo.f10325class) && com.bumptech.glide.util.Ccase.m12051new(this.f10339return, cdo.f10339return);
    }

    /* renamed from: extends, reason: not valid java name */
    public final int m11924extends() {
        return this.f10344throw;
    }

    public final boolean f() {
        return h(8);
    }

    @NonNull
    @CheckResult
    /* renamed from: final, reason: not valid java name */
    public T mo11925final(@IntRange(from = 0, to = 100) int i) {
        return (T) H(i9.f2649if, Integer.valueOf(i));
    }

    /* renamed from: finally, reason: not valid java name */
    public final boolean m11926finally() {
        return this.f10345throws;
    }

    @NonNull
    @CheckResult
    /* renamed from: for, reason: not valid java name */
    public T mo11927for() {
        return (T) P(com.bumptech.glide.load.resource.bitmap.Ctry.f10175try, new uf());
    }

    public boolean g() {
        return this.f10327default;
    }

    @NonNull
    @CheckResult
    /* renamed from: goto, reason: not valid java name */
    public T mo11928goto() {
        return (T) H(Downsampler.f10095catch, Boolean.FALSE);
    }

    public int hashCode() {
        return com.bumptech.glide.util.Ccase.m12058throw(this.f10339return, com.bumptech.glide.util.Ccase.m12058throw(this.f10325class, com.bumptech.glide.util.Ccase.m12058throw(this.f10336native, com.bumptech.glide.util.Ccase.m12058throw(this.f10335import, com.bumptech.glide.util.Ccase.m12058throw(this.f10347while, com.bumptech.glide.util.Ccase.m12058throw(this.f10337new, com.bumptech.glide.util.Ccase.m12058throw(this.f10332for, com.bumptech.glide.util.Ccase.m12049import(this.f10345throws, com.bumptech.glide.util.Ccase.m12049import(this.f10342switch, com.bumptech.glide.util.Ccase.m12049import(this.f10331final, com.bumptech.glide.util.Ccase.m12049import(this.f10326const, com.bumptech.glide.util.Ccase.m12055super(this.f10324catch, com.bumptech.glide.util.Ccase.m12055super(this.f10322break, com.bumptech.glide.util.Ccase.m12049import(this.f10343this, com.bumptech.glide.util.Ccase.m12058throw(this.f10341super, com.bumptech.glide.util.Ccase.m12055super(this.f10344throw, com.bumptech.glide.util.Ccase.m12058throw(this.f10329else, com.bumptech.glide.util.Ccase.m12055super(this.f10333goto, com.bumptech.glide.util.Ccase.m12058throw(this.f10346try, com.bumptech.glide.util.Ccase.m12055super(this.f10323case, com.bumptech.glide.util.Ccase.m12041class(this.f10334if)))))))))))))))))))));
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public T mo11929if() {
        if (this.f10338public && !this.f10340static) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f10340static = true;
        return (T) o();
    }

    @Nullable
    /* renamed from: implements, reason: not valid java name */
    public final Resources.Theme m11930implements() {
        return this.f10339return;
    }

    @NonNull
    @CheckResult
    /* renamed from: import, reason: not valid java name */
    public T mo11931import(@Nullable Drawable drawable) {
        if (this.f10340static) {
            return (T) clone().mo11931import(drawable);
        }
        this.f10341super = drawable;
        int i = this.f10328do | 8192;
        this.f10328do = i;
        this.f10344throw = 0;
        this.f10328do = i & (-16385);
        return (T) G();
    }

    @NonNull
    /* renamed from: instanceof, reason: not valid java name */
    public final Map<Class<?>, Transformation<?>> m11932instanceof() {
        return this.f10335import;
    }

    @NonNull
    /* renamed from: interface, reason: not valid java name */
    public final Class<?> m11933interface() {
        return this.f10336native;
    }

    public final boolean j() {
        return h(256);
    }

    public final boolean k() {
        return this.f10331final;
    }

    public final boolean l() {
        return this.f10326const;
    }

    public final boolean m() {
        return h(2048);
    }

    public final boolean n() {
        return com.bumptech.glide.util.Ccase.m12054static(this.f10324catch, this.f10322break);
    }

    @NonNull
    @CheckResult
    /* renamed from: native, reason: not valid java name */
    public T mo11934native() {
        return (T) D(com.bumptech.glide.load.resource.bitmap.Ctry.f10170for, new hc0());
    }

    @NonNull
    @CheckResult
    /* renamed from: new, reason: not valid java name */
    public T mo11935new() {
        return (T) D(com.bumptech.glide.load.resource.bitmap.Ctry.f10173new, new vf());
    }

    @NonNull
    public T o() {
        this.f10338public = true;
        return (T) F();
    }

    @NonNull
    @CheckResult
    public T p(boolean z) {
        if (this.f10340static) {
            return (T) clone().p(z);
        }
        this.f10345throws = z;
        this.f10328do |= 524288;
        return (T) G();
    }

    @NonNull
    /* renamed from: package, reason: not valid java name */
    public final f81 m11936package() {
        return this.f10347while;
    }

    /* renamed from: private, reason: not valid java name */
    public final int m11937private() {
        return this.f10322break;
    }

    @NonNull
    /* renamed from: protected, reason: not valid java name */
    public final Key m11938protected() {
        return this.f10325class;
    }

    @NonNull
    @CheckResult
    /* renamed from: public, reason: not valid java name */
    public T mo11939public(@NonNull Cif cif) {
        cf1.m900new(cif);
        return (T) H(Downsampler.f10098else, cif).H(ih0.f2770do, cif);
    }

    @NonNull
    @CheckResult
    public T q() {
        return (T) w(com.bumptech.glide.load.resource.bitmap.Ctry.f10175try, new uf());
    }

    @NonNull
    @CheckResult
    public T r() {
        return (T) u(com.bumptech.glide.load.resource.bitmap.Ctry.f10173new, new vf());
    }

    @NonNull
    @CheckResult
    /* renamed from: return, reason: not valid java name */
    public T mo11940return(@IntRange(from = 0) long j) {
        return (T) H(VideoDecoder.f10130else, Long.valueOf(j));
    }

    @NonNull
    @CheckResult
    public T s() {
        return (T) w(com.bumptech.glide.load.resource.bitmap.Ctry.f10175try, new yl());
    }

    @NonNull
    /* renamed from: static, reason: not valid java name */
    public final Ccase m11941static() {
        return this.f10332for;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final int m11942strictfp() {
        return this.f10333goto;
    }

    @NonNull
    @CheckResult
    /* renamed from: super, reason: not valid java name */
    public T mo11943super(@DrawableRes int i) {
        if (this.f10340static) {
            return (T) clone().mo11943super(i);
        }
        this.f10323case = i;
        int i2 = this.f10328do | 32;
        this.f10328do = i2;
        this.f10346try = null;
        this.f10328do = i2 & (-17);
        return (T) G();
    }

    /* renamed from: switch, reason: not valid java name */
    public final int m11944switch() {
        return this.f10323case;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final boolean m11945synchronized() {
        return this.f10330extends;
    }

    @NonNull
    @CheckResult
    public T t() {
        return (T) u(com.bumptech.glide.load.resource.bitmap.Ctry.f10170for, new hc0());
    }

    @NonNull
    @CheckResult
    /* renamed from: this, reason: not valid java name */
    public T mo11946this(@NonNull Ccase ccase) {
        if (this.f10340static) {
            return (T) clone().mo11946this(ccase);
        }
        this.f10332for = (Ccase) cf1.m900new(ccase);
        this.f10328do |= 4;
        return (T) G();
    }

    @NonNull
    @CheckResult
    /* renamed from: throw, reason: not valid java name */
    public T mo11947throw(@Nullable Drawable drawable) {
        if (this.f10340static) {
            return (T) clone().mo11947throw(drawable);
        }
        this.f10346try = drawable;
        int i = this.f10328do | 16;
        this.f10328do = i;
        this.f10323case = 0;
        this.f10328do = i & (-33);
        return (T) G();
    }

    @Nullable
    /* renamed from: throws, reason: not valid java name */
    public final Drawable m11948throws() {
        return this.f10346try;
    }

    /* renamed from: transient, reason: not valid java name */
    public final float m11949transient() {
        return this.f10334if;
    }

    @NonNull
    @CheckResult
    /* renamed from: try, reason: not valid java name */
    public T mo11950try() {
        return (T) P(com.bumptech.glide.load.resource.bitmap.Ctry.f10173new, new yl());
    }

    @NonNull
    @CheckResult
    public T v(@NonNull Transformation<Bitmap> transformation) {
        return (T) O(transformation, false);
    }

    @NonNull
    /* renamed from: volatile, reason: not valid java name */
    public final Ctry m11951volatile() {
        return this.f10337new;
    }

    @NonNull
    public final T w(@NonNull com.bumptech.glide.load.resource.bitmap.Ctry ctry, @NonNull Transformation<Bitmap> transformation) {
        if (this.f10340static) {
            return (T) clone().w(ctry, transformation);
        }
        mo11919class(ctry);
        return (T) O(transformation, false);
    }

    @NonNull
    @CheckResult
    /* renamed from: while, reason: not valid java name */
    public T mo11952while(@DrawableRes int i) {
        if (this.f10340static) {
            return (T) clone().mo11952while(i);
        }
        this.f10344throw = i;
        int i2 = this.f10328do | 16384;
        this.f10328do = i2;
        this.f10341super = null;
        this.f10328do = i2 & (-8193);
        return (T) G();
    }

    @NonNull
    @CheckResult
    public <Y> T x(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation) {
        return (T) R(cls, transformation, false);
    }

    @NonNull
    @CheckResult
    public T y(int i) {
        return (T) z(i, i);
    }

    @NonNull
    @CheckResult
    public T z(int i, int i2) {
        if (this.f10340static) {
            return (T) clone().z(i, i2);
        }
        this.f10324catch = i;
        this.f10322break = i2;
        this.f10328do |= 512;
        return (T) G();
    }
}
