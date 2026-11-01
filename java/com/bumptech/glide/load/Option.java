package com.bumptech.glide.load;

import android.support.v4.cf1;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public final class Option<T> {

    /* renamed from: try, reason: not valid java name */
    private static final CacheKeyUpdater<Object> f9484try = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final T f9485do;

    /* renamed from: for, reason: not valid java name */
    private final String f9486for;

    /* renamed from: if, reason: not valid java name */
    private final CacheKeyUpdater<T> f9487if;

    /* renamed from: new, reason: not valid java name */
    private volatile byte[] f9488new;

    public interface CacheKeyUpdater<T> {
        void update(@NonNull byte[] bArr, @NonNull T t, @NonNull MessageDigest messageDigest);
    }

    /* renamed from: com.bumptech.glide.load.Option$do, reason: invalid class name */
    public class Cdo implements CacheKeyUpdater<Object> {
        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public void update(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    }

    private Option(@NonNull String str, @Nullable T t, @NonNull CacheKeyUpdater<T> cacheKeyUpdater) {
        this.f9486for = cf1.m899if(str);
        this.f9485do = t;
        this.f9487if = (CacheKeyUpdater) cf1.m900new(cacheKeyUpdater);
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public static <T> Option<T> m11259case(@NonNull String str) {
        return new Option<>(str, null, m11262for());
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static <T> Option<T> m11260do(@NonNull String str, @NonNull CacheKeyUpdater<T> cacheKeyUpdater) {
        return new Option<>(str, null, cacheKeyUpdater);
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public static <T> Option<T> m11261else(@NonNull String str, @NonNull T t) {
        return new Option<>(str, t, m11262for());
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    private static <T> CacheKeyUpdater<T> m11262for() {
        return (CacheKeyUpdater<T>) f9484try;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static <T> Option<T> m11263if(@NonNull String str, @Nullable T t, @NonNull CacheKeyUpdater<T> cacheKeyUpdater) {
        return new Option<>(str, t, cacheKeyUpdater);
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    private byte[] m11264try() {
        if (this.f9488new == null) {
            this.f9488new = this.f9486for.getBytes(Key.CHARSET);
        }
        return this.f9488new;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Option) {
            return this.f9486for.equals(((Option) obj).f9486for);
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m11265goto(@NonNull T t, @NonNull MessageDigest messageDigest) {
        this.f9487if.update(m11264try(), t, messageDigest);
    }

    public int hashCode() {
        return this.f9486for.hashCode();
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    public T m11266new() {
        return this.f9485do;
    }

    public String toString() {
        return "Option{key='" + this.f9486for + '\'' + MessageFormatter.DELIM_STOP;
    }
}
