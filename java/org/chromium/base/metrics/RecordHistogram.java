package org.chromium.base.metrics;

import android.support.v4.cx0;
import android.support.v4.lo0;
import androidx.annotation.VisibleForTesting;
import org.apache.commons.lang3.time.Cdo;
import org.mozilla.javascript.v8dtoa.FastDtoa;

@lo0("base::android")
@cx0
/* loaded from: classes3.dex */
public class RecordHistogram {

    public interface Natives {
        int getHistogramTotalCountForTesting(String str);

        int getHistogramValueCountForTesting(String str, int i);
    }

    /* renamed from: break, reason: not valid java name */
    public static void m37129break(String str, long j, long j2, long j3, int i) {
        m37131catch(str, j, j2, j3, i);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m37130case(String str, int i) {
        Celse.m37167do().recordExponentialHistogram(str, i, 1, 1000, 50);
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m37131catch(String str, long j, long j2, long j3, int i) {
        Celse.m37167do().recordExponentialHistogram(str, m37134do(j), m37134do(j2), m37134do(j3), i);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m37132class(String str, int i, int i2) {
        m37133const(str, i, i2);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m37133const(String str, int i, int i2) {
        Celse.m37167do().recordLinearHistogram(str, i, 1, i2, i2 + 1);
    }

    /* renamed from: do, reason: not valid java name */
    private static int m37134do(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m37135else(String str, int i) {
        Celse.m37167do().recordExponentialHistogram(str, i, 1, 100, 50);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m37136final(String str, int i, int i2, int i3, int i4) {
        Celse.m37167do().recordLinearHistogram(str, i, i2, i3, i4);
    }

    @VisibleForTesting
    /* renamed from: for, reason: not valid java name */
    public static int m37137for(String str, int i) {
        return Cnew.m37176if().getHistogramValueCountForTesting(str, i);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m37138goto(String str, int i) {
        Celse.m37167do().recordExponentialHistogram(str, i, 1, 1000000, 50);
    }

    @VisibleForTesting
    /* renamed from: if, reason: not valid java name */
    public static int m37139if(String str) {
        return Cnew.m37176if().getHistogramTotalCountForTesting(str);
    }

    /* renamed from: import, reason: not valid java name */
    public static void m37140import(String str, int i) {
        Celse.m37167do().recordExponentialHistogram(str, i, 1000, 500000, 50);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m37141native(String str, int i) {
        m37133const(str, i, 101);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m37142new(String str, boolean z) {
        Celse.m37167do().recordBooleanHistogram(str, z);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m37143public(String str, int i) {
        Celse.m37167do().recordSparseHistogram(str, i);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m37144return(String str, long j) {
        m37131catch(str, j, 1L, 10000L, 50);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m37145super(String str, long j) {
        m37131catch(str, j, 1L, Cdo.f28825for, 50);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m37146this(String str, int i, int i2, int i3, int i4) {
        Celse.m37167do().recordExponentialHistogram(str, i, i2, i3, i4);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m37147throw(String str, long j) {
        m37131catch(str, j, 1L, Cdo.f28825for, 100);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m37148try(String str, int i) {
        Celse.m37167do().recordExponentialHistogram(str, i, 1, FastDtoa.kTen5, 50);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m37149while(String str, long j) {
        m37131catch(str, j, 10L, 180000L, 50);
    }
}
