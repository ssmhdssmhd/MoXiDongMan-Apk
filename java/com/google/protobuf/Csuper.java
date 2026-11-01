package com.google.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* renamed from: com.google.protobuf.super, reason: invalid class name */
/* loaded from: classes2.dex */
final class Csuper {

    /* renamed from: case, reason: not valid java name */
    private static final long f17212case;

    /* renamed from: do, reason: not valid java name */
    private static final int f17213do = 1024;

    /* renamed from: for, reason: not valid java name */
    private static final float f17214for = 0.5f;

    /* renamed from: if, reason: not valid java name */
    private static final int f17215if = 16384;

    /* renamed from: new, reason: not valid java name */
    private static final ThreadLocal<SoftReference<byte[]>> f17216new = new ThreadLocal<>();

    /* renamed from: try, reason: not valid java name */
    private static final Class<?> f17217try;

    static {
        Class<?> clsM21155case = m21155case("java.io.FileOutputStream");
        f17217try = clsM21155case;
        f17212case = m21158for(clsM21155case);
    }

    private Csuper() {
    }

    /* renamed from: case, reason: not valid java name */
    private static Class<?> m21155case(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m21156do() {
        f17216new.set(null);
    }

    /* renamed from: else, reason: not valid java name */
    private static void m21157else(byte[] bArr) {
        f17216new.set(new SoftReference<>(bArr));
    }

    /* renamed from: for, reason: not valid java name */
    private static long m21158for(Class<?> cls) {
        if (cls == null) {
            return -1L;
        }
        try {
            if (z1.f()) {
                return z1.j(cls.getDeclaredField("channel"));
            }
            return -1L;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m21159goto(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        int iPosition = byteBuffer.position();
        try {
            if (byteBuffer.hasArray()) {
                outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            } else if (!m21162this(byteBuffer, outputStream)) {
                byte[] bArrM21161new = m21161new(byteBuffer.remaining());
                while (byteBuffer.hasRemaining()) {
                    int iMin = Math.min(byteBuffer.remaining(), bArrM21161new.length);
                    byteBuffer.get(bArrM21161new, 0, iMin);
                    outputStream.write(bArrM21161new, 0, iMin);
                }
            }
        } finally {
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static byte[] m21160if() {
        SoftReference<byte[]> softReference = f17216new.get();
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    /* renamed from: new, reason: not valid java name */
    private static byte[] m21161new(int i) {
        int iMax = Math.max(i, 1024);
        byte[] bArrM21160if = m21160if();
        if (bArrM21160if == null || m21163try(iMax, bArrM21160if.length)) {
            bArrM21160if = new byte[iMax];
            if (iMax <= 16384) {
                m21157else(bArrM21160if);
            }
        }
        return bArrM21160if;
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m21162this(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        long j = f17212case;
        if (j < 0 || !f17217try.isInstance(outputStream)) {
            return false;
        }
        WritableByteChannel writableByteChannel = null;
        try {
            writableByteChannel = (WritableByteChannel) z1.b(outputStream, j);
        } catch (ClassCastException unused) {
        }
        if (writableByteChannel == null) {
            return false;
        }
        writableByteChannel.write(byteBuffer);
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    private static boolean m21163try(int i, int i2) {
        return i2 < i && ((float) i2) < ((float) i) * 0.5f;
    }
}
