package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public final class f81 implements Key {

    /* renamed from: do, reason: not valid java name */
    private final ArrayMap<Option<?>, Object> f1713do = new CachedHashCodeArrayMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    private static <T> void m2195new(@NonNull Option<T> option, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        option.m11265goto(obj, messageDigest);
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public <T> T m2196do(@NonNull Option<T> option) {
        return this.f1713do.containsKey(option) ? (T) this.f1713do.get(option) : option.m11266new();
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof f81) {
            return this.f1713do.equals(((f81) obj).f1713do);
        }
        return false;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public <T> f81 m2197for(@NonNull Option<T> option, @NonNull T t) {
        this.f1713do.put(option, t);
        return this;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f1713do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public void m2198if(@NonNull f81 f81Var) {
        this.f1713do.putAll((SimpleArrayMap<? extends Option<?>, ? extends Object>) f81Var.f1713do);
    }

    public String toString() {
        return "Options{values=" + this.f1713do + MessageFormatter.DELIM_STOP;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        for (int i = 0; i < this.f1713do.size(); i++) {
            m2195new(this.f1713do.keyAt(i), this.f1713do.valueAt(i), messageDigest);
        }
    }
}
