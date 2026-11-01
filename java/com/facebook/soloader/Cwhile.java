package com.facebook.soloader;

import android.support.v4.ab2;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import okhttp3.internal.ws.WebSocketProtocol;

/* renamed from: com.facebook.soloader.while, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cwhile {

    /* renamed from: case, reason: not valid java name */
    public static final int f10753case = 2;

    /* renamed from: do, reason: not valid java name */
    public static final int f10754do = 1179403647;

    /* renamed from: else, reason: not valid java name */
    public static final int f10755else = 65535;

    /* renamed from: for, reason: not valid java name */
    public static final int f10756for = 1;

    /* renamed from: if, reason: not valid java name */
    public static final int f10757if = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f10758new = 5;

    /* renamed from: try, reason: not valid java name */
    public static final int f10759try = 1;

    /* renamed from: com.facebook.soloader.while$do, reason: invalid class name */
    public static class Cdo extends RuntimeException {
        public Cdo(String str) {
            super(str);
        }
    }

    /* renamed from: com.facebook.soloader.while$if, reason: invalid class name */
    public enum Cif {
        NOT_SO("not_so"),
        X86("x86"),
        ARM("armeabi-v7a"),
        X86_64("x86_64"),
        AARCH64("arm64-v8a"),
        OTHERS("others");

        private final String value;

        Cif(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static long m12237case(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        m12241goto(fileChannel, byteBuffer, 4, j);
        return byteBuffer.getInt() & 4294967295L;
    }

    /* renamed from: do, reason: not valid java name */
    public static String[] m12238do(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return m12242if(fileInputStream.getChannel());
        } finally {
            fileInputStream.close();
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static short m12239else(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        m12241goto(fileChannel, byteBuffer, 1, j);
        return (short) (byteBuffer.get() & 255);
    }

    /* renamed from: for, reason: not valid java name */
    private static long m12240for(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        m12241goto(fileChannel, byteBuffer, 8, j);
        return byteBuffer.getLong();
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m12241goto(FileChannel fileChannel, ByteBuffer byteBuffer, int i, long j) throws IOException {
        int i2;
        byteBuffer.position(0);
        byteBuffer.limit(i);
        while (byteBuffer.remaining() > 0 && (i2 = fileChannel.read(byteBuffer, j)) != -1) {
            j += i2;
        }
        if (byteBuffer.remaining() > 0) {
            throw new Cdo("ELF file truncated");
        }
        byteBuffer.position(0);
    }

    /* renamed from: if, reason: not valid java name */
    public static String[] m12242if(FileChannel fileChannel) throws IOException {
        long jM12237case;
        long j;
        long jM12237case2;
        long j2;
        long jM12240for;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        if (m12237case(fileChannel, byteBufferAllocate, 0L) != 1179403647) {
            throw new Cdo("file is not ELF");
        }
        boolean z = m12239else(fileChannel, byteBufferAllocate, 4L) == 1;
        if (m12239else(fileChannel, byteBufferAllocate, 5L) == 2) {
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        }
        long jM12237case3 = z ? m12237case(fileChannel, byteBufferAllocate, 28L) : m12240for(fileChannel, byteBufferAllocate, 32L);
        long jM12244try = z ? m12244try(fileChannel, byteBufferAllocate, 44L) : m12244try(fileChannel, byteBufferAllocate, 56L);
        int iM12244try = m12244try(fileChannel, byteBufferAllocate, z ? 42L : 54L);
        if (jM12244try == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            long jM12237case4 = z ? m12237case(fileChannel, byteBufferAllocate, 32L) : m12240for(fileChannel, byteBufferAllocate, 40L);
            jM12244try = z ? m12237case(fileChannel, byteBufferAllocate, jM12237case4 + 28) : m12237case(fileChannel, byteBufferAllocate, jM12237case4 + 44);
        }
        long j3 = jM12237case3;
        long j4 = 0;
        while (true) {
            if (j4 >= jM12244try) {
                jM12237case = 0;
                break;
            }
            if ((z ? m12237case(fileChannel, byteBufferAllocate, j3 + 0) : m12237case(fileChannel, byteBufferAllocate, j3 + 0)) == 2) {
                jM12237case = z ? m12237case(fileChannel, byteBufferAllocate, j3 + 4) : m12240for(fileChannel, byteBufferAllocate, j3 + 8);
            } else {
                j3 += iM12244try;
                j4++;
            }
        }
        long j5 = 0;
        if (jM12237case == 0) {
            throw new Cdo("ELF file does not contain dynamic linking information");
        }
        long j6 = jM12237case;
        long jM12237case5 = 0;
        int i = 0;
        while (true) {
            boolean z2 = z;
            long jM12237case6 = z ? m12237case(fileChannel, byteBufferAllocate, j6 + j5) : m12240for(fileChannel, byteBufferAllocate, j6 + j5);
            if (jM12237case6 == 1) {
                j = jM12237case;
                if (i == Integer.MAX_VALUE) {
                    throw new Cdo("malformed DT_NEEDED section");
                }
                i++;
            } else {
                j = jM12237case;
                if (jM12237case6 == 5) {
                    jM12237case5 = z2 ? m12237case(fileChannel, byteBufferAllocate, j6 + 4) : m12240for(fileChannel, byteBufferAllocate, j6 + 8);
                }
            }
            long j7 = 16;
            j6 += z2 ? 8L : 16L;
            j5 = 0;
            if (jM12237case6 != 0) {
                z = z2;
                jM12237case = j;
            } else {
                if (jM12237case5 == 0) {
                    throw new Cdo("Dynamic section string-table not found");
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= jM12244try) {
                        jM12237case2 = 0;
                        break;
                    }
                    if ((z2 ? m12237case(fileChannel, byteBufferAllocate, jM12237case3 + j5) : m12237case(fileChannel, byteBufferAllocate, jM12237case3 + j5)) == 1) {
                        long jM12237case7 = z2 ? m12237case(fileChannel, byteBufferAllocate, jM12237case3 + 8) : m12240for(fileChannel, byteBufferAllocate, jM12237case3 + j7);
                        if (z2) {
                            j2 = jM12244try;
                            jM12240for = m12237case(fileChannel, byteBufferAllocate, jM12237case3 + 20);
                        } else {
                            j2 = jM12244try;
                            jM12240for = m12240for(fileChannel, byteBufferAllocate, jM12237case3 + 40);
                        }
                        if (jM12237case7 <= jM12237case5 && jM12237case5 < jM12240for + jM12237case7) {
                            jM12237case2 = (z2 ? m12237case(fileChannel, byteBufferAllocate, jM12237case3 + 4) : m12240for(fileChannel, byteBufferAllocate, jM12237case3 + 8)) + (jM12237case5 - jM12237case7);
                        }
                    } else {
                        j2 = jM12244try;
                    }
                    jM12237case3 += iM12244try;
                    i2++;
                    jM12244try = j2;
                    j7 = 16;
                    j5 = 0;
                }
                long j8 = 0;
                if (jM12237case2 == 0) {
                    throw new Cdo("did not find file offset of DT_STRTAB table");
                }
                String[] strArr = new String[i];
                int i3 = 0;
                while (true) {
                    long j9 = j + j8;
                    long jM12237case8 = z2 ? m12237case(fileChannel, byteBufferAllocate, j9) : m12240for(fileChannel, byteBufferAllocate, j9);
                    if (jM12237case8 == 1) {
                        strArr[i3] = m12243new(fileChannel, byteBufferAllocate, (z2 ? m12237case(fileChannel, byteBufferAllocate, j + 4) : m12240for(fileChannel, byteBufferAllocate, j + 8)) + jM12237case2);
                        if (i3 == Integer.MAX_VALUE) {
                            throw new Cdo("malformed DT_NEEDED section");
                        }
                        i3++;
                    }
                    j += z2 ? 8L : 16L;
                    if (jM12237case8 == 0) {
                        if (i3 == i) {
                            return strArr;
                        }
                        throw new Cdo("malformed DT_NEEDED section");
                    }
                    j8 = 0;
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static String m12243new(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short sM12239else = m12239else(fileChannel, byteBuffer, j);
            if (sM12239else == 0) {
                return sb.toString();
            }
            sb.append((char) sM12239else);
            j = j2;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static int m12244try(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        m12241goto(fileChannel, byteBuffer, 2, j);
        return byteBuffer.getShort() & ab2.f80for;
    }
}
