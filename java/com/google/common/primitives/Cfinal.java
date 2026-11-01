package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.ki0;
import java.util.Arrays;
import java.util.Comparator;

@ki0
/* renamed from: com.google.common.primitives.final, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfinal {

    /* renamed from: do, reason: not valid java name */
    public static final byte f15506do = 64;

    /* renamed from: com.google.common.primitives.final$do, reason: invalid class name */
    public enum Cdo implements Comparator<byte[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int iMin = Math.min(bArr.length, bArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iM17572if = Cfinal.m17572if(bArr[i], bArr2[i]);
                if (iM17572if != 0) {
                    return iM17572if;
                }
            }
            return bArr.length - bArr2.length;
        }
    }

    private Cfinal() {
    }

    /* renamed from: case, reason: not valid java name */
    public static byte m17567case(byte... bArr) {
        af1.m220new(bArr.length > 0);
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] < b) {
                b = bArr[i];
            }
        }
        return b;
    }

    /* renamed from: do, reason: not valid java name */
    public static byte m17568do(long j) {
        byte b = (byte) j;
        af1.m232throw(((long) b) == j, "Out of range: %s", j);
        return b;
    }

    /* renamed from: else, reason: not valid java name */
    public static byte m17569else(long j) {
        if (j > 127) {
            return Byte.MAX_VALUE;
        }
        if (j < -128) {
            return Byte.MIN_VALUE;
        }
        return (byte) j;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m17570for(String str, byte... bArr) {
        af1.m205continue(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 5);
        sb.append((int) bArr[0]);
        for (int i = 1; i < bArr.length; i++) {
            sb.append(str);
            sb.append((int) bArr[i]);
        }
        return sb.toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m17571goto(byte[] bArr) {
        af1.m205continue(bArr);
        m17574this(bArr, 0, bArr.length);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m17572if(byte b, byte b2) {
        return b - b2;
    }

    /* renamed from: new, reason: not valid java name */
    public static Comparator<byte[]> m17573new() {
        return Cdo.INSTANCE;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m17574this(byte[] bArr, int i, int i2) {
        af1.m205continue(bArr);
        af1.s(i, i2, bArr.length);
        Arrays.sort(bArr, i, i2);
        Cif.m17620final(bArr, i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public static byte m17575try(byte... bArr) {
        af1.m220new(bArr.length > 0);
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] > b) {
                b = bArr[i];
            }
        }
        return b;
    }
}
