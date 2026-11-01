package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.af2;

/* renamed from: com.google.common.hash.break, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cbreak extends Ctry {

    /* renamed from: do, reason: not valid java name */
    public static final HashFunction f15141do = new Cbreak();

    /* renamed from: for, reason: not valid java name */
    private static final long f15142for = -5435081209227447693L;

    /* renamed from: if, reason: not valid java name */
    private static final long f15143if = -4348849565147123417L;

    /* renamed from: new, reason: not valid java name */
    private static final long f15144new = -7286425919675154353L;

    /* renamed from: case, reason: not valid java name */
    private static long m16873case(byte[] bArr, int i, int i2) {
        long jM16875else = m16875else(-7956866745689871395L) * f15144new;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long jM16868if = 95310865018149119L + LittleEndianByteArray.m16868if(bArr, i);
        int i3 = i2 - 1;
        int i4 = i + ((i3 / 64) * 64);
        int i5 = i3 & 63;
        int i6 = (i4 + i5) - 63;
        long j = 2480279821605975764L;
        int i7 = i;
        while (true) {
            long jRotateRight = Long.rotateRight(jM16868if + j + jArr[0] + LittleEndianByteArray.m16868if(bArr, i7 + 8), 37) * f15142for;
            long jRotateRight2 = Long.rotateRight(j + jArr[1] + LittleEndianByteArray.m16868if(bArr, i7 + 48), 42) * f15142for;
            long j2 = jRotateRight ^ jArr2[1];
            long jM16868if2 = jRotateRight2 + jArr[0] + LittleEndianByteArray.m16868if(bArr, i7 + 40);
            long jRotateRight3 = Long.rotateRight(jM16875else + jArr2[0], 33) * f15142for;
            m16877goto(bArr, i7, jArr[1] * f15142for, j2 + jArr2[0], jArr);
            m16877goto(bArr, i7 + 32, jRotateRight3 + jArr2[1], jM16868if2 + LittleEndianByteArray.m16868if(bArr, i7 + 16), jArr2);
            i7 += 64;
            if (i7 == i4) {
                long j3 = ((j2 & 255) << 1) + f15142for;
                jArr2[0] = jArr2[0] + i5;
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long jRotateRight4 = Long.rotateRight(jRotateRight3 + jM16868if2 + jArr[0] + LittleEndianByteArray.m16868if(bArr, i6 + 8), 37) * j3;
                long jRotateRight5 = Long.rotateRight(jM16868if2 + jArr[1] + LittleEndianByteArray.m16868if(bArr, i6 + 48), 42) * j3;
                long j4 = jRotateRight4 ^ (jArr2[1] * 9);
                long jM16868if3 = jRotateRight5 + (jArr[0] * 9) + LittleEndianByteArray.m16868if(bArr, i6 + 40);
                long jRotateRight6 = Long.rotateRight(j2 + jArr2[0], 33) * j3;
                m16877goto(bArr, i6, jArr[1] * j3, j4 + jArr2[0], jArr);
                m16877goto(bArr, i6 + 32, jRotateRight6 + jArr2[1], LittleEndianByteArray.m16868if(bArr, i6 + 16) + jM16868if3, jArr2);
                return m16876for(m16876for(jArr[0], jArr2[0], j3) + (m16875else(jM16868if3) * f15143if) + j4, m16876for(jArr[1], jArr2[1], j3) + jRotateRight6, j3);
            }
            jM16875else = j2;
            j = jM16868if2;
            jM16868if = jRotateRight3;
        }
    }

    @af2
    /* renamed from: do, reason: not valid java name */
    public static long m16874do(byte[] bArr, int i, int i2) {
        return i2 <= 32 ? i2 <= 16 ? m16878if(bArr, i, i2) : m16879new(bArr, i, i2) : i2 <= 64 ? m16880try(bArr, i, i2) : m16873case(bArr, i, i2);
    }

    /* renamed from: else, reason: not valid java name */
    private static long m16875else(long j) {
        return j ^ (j >>> 47);
    }

    /* renamed from: for, reason: not valid java name */
    private static long m16876for(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m16877goto(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long jM16868if = LittleEndianByteArray.m16868if(bArr, i);
        long jM16868if2 = LittleEndianByteArray.m16868if(bArr, i + 8);
        long jM16868if3 = LittleEndianByteArray.m16868if(bArr, i + 16);
        long jM16868if4 = LittleEndianByteArray.m16868if(bArr, i + 24);
        long j3 = j + jM16868if;
        long j4 = jM16868if2 + j3 + jM16868if3;
        long jRotateRight = Long.rotateRight(j2 + j3 + jM16868if4, 21) + Long.rotateRight(j4, 44);
        jArr[0] = j4 + jM16868if4;
        jArr[1] = jRotateRight + j3;
    }

    /* renamed from: if, reason: not valid java name */
    private static long m16878if(byte[] bArr, int i, int i2) {
        if (i2 >= 8) {
            long j = (i2 * 2) + f15144new;
            long jM16868if = LittleEndianByteArray.m16868if(bArr, i) + f15144new;
            long jM16868if2 = LittleEndianByteArray.m16868if(bArr, (i + i2) - 8);
            return m16876for((Long.rotateRight(jM16868if2, 37) * j) + jM16868if, (Long.rotateRight(jM16868if, 25) + jM16868if2) * j, j);
        }
        if (i2 >= 4) {
            return m16876for(i2 + ((LittleEndianByteArray.m16866do(bArr, i) & 4294967295L) << 3), LittleEndianByteArray.m16866do(bArr, (i + i2) - 4) & 4294967295L, (i2 * 2) + f15144new);
        }
        if (i2 <= 0) {
            return f15144new;
        }
        return m16875else((((bArr[i] & 255) + ((bArr[(i2 >> 1) + i] & 255) << 8)) * f15144new) ^ ((i2 + ((bArr[i + (i2 - 1)] & 255) << 2)) * f15143if)) * f15144new;
    }

    /* renamed from: new, reason: not valid java name */
    private static long m16879new(byte[] bArr, int i, int i2) {
        long j = (i2 * 2) + f15144new;
        long jM16868if = LittleEndianByteArray.m16868if(bArr, i) * f15142for;
        long jM16868if2 = LittleEndianByteArray.m16868if(bArr, i + 8);
        int i3 = i + i2;
        long jM16868if3 = LittleEndianByteArray.m16868if(bArr, i3 - 8) * j;
        return m16876for((LittleEndianByteArray.m16868if(bArr, i3 - 16) * f15144new) + Long.rotateRight(jM16868if + jM16868if2, 43) + Long.rotateRight(jM16868if3, 30), jM16868if + Long.rotateRight(jM16868if2 + f15144new, 18) + jM16868if3, j);
    }

    /* renamed from: try, reason: not valid java name */
    private static long m16880try(byte[] bArr, int i, int i2) {
        long j = (i2 * 2) + f15144new;
        long jM16868if = LittleEndianByteArray.m16868if(bArr, i) * f15144new;
        long jM16868if2 = LittleEndianByteArray.m16868if(bArr, i + 8);
        int i3 = i + i2;
        long jM16868if3 = LittleEndianByteArray.m16868if(bArr, i3 - 8) * j;
        long jRotateRight = Long.rotateRight(jM16868if + jM16868if2, 43) + Long.rotateRight(jM16868if3, 30) + (LittleEndianByteArray.m16868if(bArr, i3 - 16) * f15144new);
        long jM16876for = m16876for(jRotateRight, jM16868if3 + Long.rotateRight(jM16868if2 + f15144new, 18) + jM16868if, j);
        long jM16868if4 = LittleEndianByteArray.m16868if(bArr, i + 16) * j;
        long jM16868if5 = LittleEndianByteArray.m16868if(bArr, i + 24);
        long jM16868if6 = (jRotateRight + LittleEndianByteArray.m16868if(bArr, i3 - 32)) * j;
        return m16876for(((jM16876for + LittleEndianByteArray.m16868if(bArr, i3 - 24)) * j) + Long.rotateRight(jM16868if4 + jM16868if5, 43) + Long.rotateRight(jM16868if6, 30), jM16868if4 + Long.rotateRight(jM16868if5 + jM16868if, 18) + jM16868if6, j);
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    @Override // com.google.common.hash.Ctry, com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashBytes(byte[] bArr, int i, int i2) {
        af1.s(i, i + i2, bArr.length);
        return Cclass.fromLong(m16874do(bArr, i, i2));
    }

    public String toString() {
        return "Hashing.farmHashFingerprint64()";
    }
}
