package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import java.security.MessageDigest;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.bumptech.glide.load.engine.for, reason: invalid class name */
/* loaded from: classes.dex */
final class Cfor implements Key {

    /* renamed from: do, reason: not valid java name */
    private final Key f9810do;

    /* renamed from: if, reason: not valid java name */
    private final Key f9811if;

    public Cfor(Key key, Key key2) {
        this.f9810do = key;
        this.f9811if = key2;
    }

    /* renamed from: do, reason: not valid java name */
    public Key m11515do() {
        return this.f9810do;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof Cfor)) {
            return false;
        }
        Cfor cfor = (Cfor) obj;
        return this.f9810do.equals(cfor.f9810do) && this.f9811if.equals(cfor.f9811if);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return (this.f9810do.hashCode() * 31) + this.f9811if.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f9810do + ", signature=" + this.f9811if + MessageFormatter.DELIM_STOP;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f9810do.updateDiskCacheKey(messageDigest);
        this.f9811if.updateDiskCacheKey(messageDigest);
    }
}
