package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.brotli.dec.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo {

    /* renamed from: break, reason: not valid java name */
    private static final int f32853break = 1024;

    /* renamed from: catch, reason: not valid java name */
    private static final int f32854catch = 16;

    /* renamed from: class, reason: not valid java name */
    private static final int f32855class = 1040;

    /* renamed from: const, reason: not valid java name */
    private static final int f32856const = 4096;

    /* renamed from: final, reason: not valid java name */
    private static final int f32857final = 4160;

    /* renamed from: case, reason: not valid java name */
    public long f32858case;

    /* renamed from: else, reason: not valid java name */
    public int f32860else;

    /* renamed from: goto, reason: not valid java name */
    private int f32862goto;

    /* renamed from: new, reason: not valid java name */
    private InputStream f32864new;

    /* renamed from: try, reason: not valid java name */
    private boolean f32866try;

    /* renamed from: do, reason: not valid java name */
    private final byte[] f32859do = new byte[f32857final];

    /* renamed from: if, reason: not valid java name */
    private final int[] f32863if = new int[f32855class];

    /* renamed from: for, reason: not valid java name */
    private final Cthis f32861for = new Cthis();

    /* renamed from: this, reason: not valid java name */
    private int f32865this = 0;

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
    
        r4.f32866try = true;
        r4.f32865this = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
    
        r1 = r1 + 3;
     */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m36655break(Cdo cdo) throws IOException {
        int i = cdo.f32862goto;
        if (i <= 1015) {
            return;
        }
        if (cdo.f32866try) {
            if (m36656case(cdo) < -2) {
                throw new Cfor("No more input");
            }
            return;
        }
        int i2 = i << 2;
        int i3 = 4096 - i2;
        byte[] bArr = cdo.f32859do;
        System.arraycopy(bArr, i2, bArr, 0, i3);
        cdo.f32862goto = 0;
        while (true) {
            if (i3 >= 4096) {
                break;
            }
            try {
                int i4 = cdo.f32864new.read(cdo.f32859do, i3, 4096 - i3);
                if (i4 <= 0) {
                    break;
                } else {
                    i3 += i4;
                }
            } catch (IOException e) {
                throw new Cfor("Failed to read input", e);
            }
        }
        Cthis.m36676do(cdo.f32861for, i3 >> 2);
    }

    /* renamed from: case, reason: not valid java name */
    public static int m36656case(Cdo cdo) {
        return (cdo.f32866try ? (cdo.f32865this + 3) >> 2 : 1024) - cdo.f32862goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m36657catch(Cdo cdo) throws IOException {
        if (cdo.f32860else == 64) {
            m36661goto(cdo);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m36658do(Cdo cdo, boolean z) {
        if (cdo.f32866try) {
            int i = ((cdo.f32862goto << 2) + ((cdo.f32860else + 7) >> 3)) - 8;
            int i2 = cdo.f32865this;
            if (i > i2) {
                throw new Cfor("Read after end");
            }
            if (z && i != i2) {
                throw new Cfor("Unused bytes after end");
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m36659else(Cdo cdo) {
        int i = (64 - cdo.f32860else) & 7;
        if (i != 0 && m36664this(cdo, i) != 0) {
            throw new Cfor("Corrupted padding bits");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m36660for(Cdo cdo, byte[] bArr, int i, int i2) throws IOException {
        if ((cdo.f32860else & 7) != 0) {
            throw new Cfor("Unaligned copyBytes");
        }
        while (true) {
            int i3 = cdo.f32860else;
            if (i3 == 64 || i2 == 0) {
                break;
            }
            bArr[i] = (byte) (cdo.f32858case >>> i3);
            cdo.f32860else = i3 + 8;
            i2--;
            i++;
        }
        if (i2 == 0) {
            return;
        }
        int iMin = Math.min(m36656case(cdo), i2 >> 2);
        if (iMin > 0) {
            int i4 = iMin << 2;
            System.arraycopy(cdo.f32859do, cdo.f32862goto << 2, bArr, i, i4);
            i += i4;
            i2 -= i4;
            cdo.f32862goto += iMin;
        }
        if (i2 == 0) {
            return;
        }
        if (m36656case(cdo) <= 0) {
            while (i2 > 0) {
                try {
                    int i5 = cdo.f32864new.read(bArr, i, i2);
                    if (i5 == -1) {
                        throw new Cfor("Unexpected end of input");
                    }
                    i += i5;
                    i2 -= i5;
                } catch (IOException e) {
                    throw new Cfor("Failed to read input", e);
                }
            }
            return;
        }
        m36663new(cdo);
        while (i2 != 0) {
            long j = cdo.f32858case;
            int i6 = cdo.f32860else;
            bArr[i] = (byte) (j >>> i6);
            cdo.f32860else = i6 + 8;
            i2--;
            i++;
        }
        m36658do(cdo, false);
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m36661goto(Cdo cdo) throws IOException {
        m36655break(cdo);
        m36658do(cdo, false);
        m36663new(cdo);
        m36663new(cdo);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36662if(Cdo cdo) throws IOException {
        InputStream inputStream = cdo.f32864new;
        cdo.f32864new = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m36663new(Cdo cdo) {
        int i = cdo.f32860else;
        if (i >= 32) {
            int[] iArr = cdo.f32863if;
            cdo.f32862goto = cdo.f32862goto + 1;
            cdo.f32858case = (iArr[r3] << 32) | (cdo.f32858case >>> 32);
            cdo.f32860else = i - 32;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static int m36664this(Cdo cdo, int i) {
        m36663new(cdo);
        long j = cdo.f32858case;
        int i2 = cdo.f32860else;
        int i3 = ((int) (j >>> i2)) & ((1 << i) - 1);
        cdo.f32860else = i2 + i;
        return i3;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m36665try(Cdo cdo, InputStream inputStream) throws IOException {
        if (cdo.f32864new != null) {
            throw new IllegalStateException("Bit reader already has associated input stream");
        }
        Cthis.m36677if(cdo.f32861for, cdo.f32859do, cdo.f32863if);
        cdo.f32864new = inputStream;
        cdo.f32858case = 0L;
        cdo.f32860else = 64;
        cdo.f32862goto = 1024;
        cdo.f32866try = false;
        m36661goto(cdo);
    }
}
