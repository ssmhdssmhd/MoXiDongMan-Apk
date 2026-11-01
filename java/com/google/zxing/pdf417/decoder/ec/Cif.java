package com.google.zxing.pdf417.decoder.ec;

import android.support.v4.w91;

/* renamed from: com.google.zxing.pdf417.decoder.ec.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif {

    /* renamed from: case, reason: not valid java name */
    public static final Cif f17787case = new Cif(w91.f7420do, 3);

    /* renamed from: do, reason: not valid java name */
    private final int[] f17788do;

    /* renamed from: for, reason: not valid java name */
    private final Cfor f17789for;

    /* renamed from: if, reason: not valid java name */
    private final int[] f17790if;

    /* renamed from: new, reason: not valid java name */
    private final Cfor f17791new;

    /* renamed from: try, reason: not valid java name */
    private final int f17792try;

    private Cif(int i, int i2) {
        this.f17792try = i;
        this.f17788do = new int[i];
        this.f17790if = new int[i];
        int i3 = 1;
        for (int i4 = 0; i4 < i; i4++) {
            this.f17788do[i4] = i3;
            i3 = (i3 * i2) % i;
        }
        for (int i5 = 0; i5 < i - 1; i5++) {
            this.f17790if[this.f17788do[i5]] = i5;
        }
        this.f17789for = new Cfor(this, new int[]{0});
        this.f17791new = new Cfor(this, new int[]{1});
    }

    /* renamed from: break, reason: not valid java name */
    public int m22216break(int i, int i2) {
        int i3 = this.f17792try;
        return ((i + i3) - i2) % i3;
    }

    /* renamed from: case, reason: not valid java name */
    public Cfor m22217case() {
        return this.f17789for;
    }

    /* renamed from: do, reason: not valid java name */
    public int m22218do(int i, int i2) {
        return (i + i2) % this.f17792try;
    }

    /* renamed from: else, reason: not valid java name */
    public int m22219else(int i) {
        if (i != 0) {
            return this.f17788do[(this.f17792try - this.f17790if[i]) - 1];
        }
        throw new ArithmeticException();
    }

    /* renamed from: for, reason: not valid java name */
    public int m22220for(int i) {
        return this.f17788do[i];
    }

    /* renamed from: goto, reason: not valid java name */
    public int m22221goto(int i) {
        if (i != 0) {
            return this.f17790if[i];
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: if, reason: not valid java name */
    public Cfor m22222if(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f17789for;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new Cfor(this, iArr);
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m22223new() {
        return this.f17791new;
    }

    /* renamed from: this, reason: not valid java name */
    public int m22224this(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f17788do;
        int[] iArr2 = this.f17790if;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f17792try - 1)];
    }

    /* renamed from: try, reason: not valid java name */
    public int m22225try() {
        return this.f17792try;
    }
}
