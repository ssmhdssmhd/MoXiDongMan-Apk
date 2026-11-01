package com.google.zxing;

import android.support.v4.j41;
import android.support.v4.w8;
import android.support.v4.z8;

/* renamed from: com.google.zxing.for, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private final Cif f17542do;

    /* renamed from: if, reason: not valid java name */
    private z8 f17543if;

    public Cfor(Cif cif) {
        if (cif == null) {
            throw new IllegalArgumentException("Binarizer must be non-null.");
        }
        this.f17542do = cif;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m21949case() {
        return this.f17542do.m21960try().mo4518else();
    }

    /* renamed from: do, reason: not valid java name */
    public Cfor m21950do(int i, int i2, int i3, int i4) {
        return new Cfor(this.f17542do.mo7893do(this.f17542do.m21960try().mo4517do(i, i2, i3, i4)));
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m21951else() {
        return this.f17542do.m21960try().mo4520goto();
    }

    /* renamed from: for, reason: not valid java name */
    public w8 m21952for(int i, w8 w8Var) throws j41 {
        return this.f17542do.mo7894for(i, w8Var);
    }

    /* renamed from: goto, reason: not valid java name */
    public Cfor m21953goto() {
        return new Cfor(this.f17542do.mo7893do(this.f17542do.m21960try().mo4523this()));
    }

    /* renamed from: if, reason: not valid java name */
    public z8 m21954if() throws j41 {
        if (this.f17543if == null) {
            this.f17543if = this.f17542do.mo7895if();
        }
        return this.f17543if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m21955new() {
        return this.f17542do.m21959new();
    }

    /* renamed from: this, reason: not valid java name */
    public Cfor m21956this() {
        return new Cfor(this.f17542do.mo7893do(this.f17542do.m21960try().mo4515break()));
    }

    public String toString() {
        try {
            return m21954if().toString();
        } catch (j41 unused) {
            return "";
        }
    }

    /* renamed from: try, reason: not valid java name */
    public int m21957try() {
        return this.f17542do.m21958case();
    }
}
