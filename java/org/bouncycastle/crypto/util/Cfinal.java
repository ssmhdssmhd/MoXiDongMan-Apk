package org.bouncycastle.crypto.util;

import android.support.v4.q3;
import java.math.BigInteger;

/* renamed from: org.bouncycastle.crypto.util.final, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfinal {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f30880do;

    /* renamed from: if, reason: not valid java name */
    private int f30881if = 0;

    public Cfinal(byte[] bArr) {
        this.f30880do = bArr;
    }

    public Cfinal(byte[] bArr, byte[] bArr2) {
        this.f30880do = bArr2;
        for (int i = 0; i != bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                throw new IllegalArgumentException("magic-number incorrect");
            }
        }
        this.f30881if += bArr.length;
    }

    /* renamed from: case, reason: not valid java name */
    public int m34483case() {
        int i = this.f30881if;
        int i2 = i + 4;
        byte[] bArr = this.f30880do;
        if (i2 > bArr.length) {
            throw new IllegalArgumentException("4 bytes for U32 exceeds buffer.");
        }
        int i3 = i + 1;
        this.f30881if = i3;
        int i4 = (bArr[i] & 255) << 24;
        int i5 = i3 + 1;
        this.f30881if = i5;
        int i6 = i4 | ((bArr[i3] & 255) << 16);
        int i7 = i5 + 1;
        this.f30881if = i7;
        int i8 = i6 | ((bArr[i5] & 255) << 8);
        this.f30881if = i7 + 1;
        return i8 | (bArr[i7] & 255);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m34484do() {
        return q3.m6371final(this.f30880do);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m34485for() {
        int iM34483case = m34483case();
        int i = this.f30881if;
        int i2 = i + iM34483case;
        byte[] bArr = this.f30880do;
        if (i2 > bArr.length) {
            throw new IllegalArgumentException("not enough data for big num");
        }
        byte[] bArr2 = new byte[iM34483case];
        System.arraycopy(bArr, i, bArr2, 0, iM34483case);
        this.f30881if += iM34483case;
        return new BigInteger(1, bArr2);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m34486if() {
        return this.f30881if < this.f30880do.length;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m34487new() {
        int iM34483case = m34483case();
        if (iM34483case == 0) {
            return new byte[0];
        }
        int i = this.f30881if;
        int i2 = i + iM34483case;
        byte[] bArr = this.f30880do;
        if (i2 > bArr.length) {
            throw new IllegalArgumentException("not enough data for string");
        }
        int i3 = (iM34483case - (bArr[(i + iM34483case) - 1] & 255)) + i;
        this.f30881if = i3;
        return q3.m6378instanceof(bArr, i, i3);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m34488try() {
        int iM34483case = m34483case();
        if (iM34483case == 0) {
            return new byte[0];
        }
        int i = this.f30881if;
        int i2 = i + iM34483case;
        byte[] bArr = this.f30880do;
        if (i2 > bArr.length) {
            throw new IllegalArgumentException("not enough data for string");
        }
        int i3 = iM34483case + i;
        this.f30881if = i3;
        return q3.m6378instanceof(bArr, i, i3);
    }
}
