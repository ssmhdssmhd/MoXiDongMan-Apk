package com.google.protobuf;

import android.support.v4.t3;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import freemarker.core.o3;
import java.nio.ByteBuffer;
import okio.Utf8;

/* loaded from: classes2.dex */
final class a2 {

    /* renamed from: case, reason: not valid java name */
    private static final int f16598case = 16;

    /* renamed from: do, reason: not valid java name */
    private static final Cif f16599do;

    /* renamed from: for, reason: not valid java name */
    public static final int f16600for = 3;

    /* renamed from: if, reason: not valid java name */
    private static final long f16601if = -9187201950435737472L;

    /* renamed from: new, reason: not valid java name */
    public static final int f16602new = 0;

    /* renamed from: try, reason: not valid java name */
    public static final int f16603try = -1;

    /* renamed from: com.google.protobuf.a2$do, reason: invalid class name */
    public static class Cdo {
        private Cdo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: break, reason: not valid java name */
        public static void m19716break(byte b, byte b2, byte b3, char[] cArr, int i) throws n {
            if (m19720const(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m19720const(b3)))) {
                throw n.invalidUtf8();
            }
            cArr[i] = (char) (((b & 15) << 12) | (m19727import(b2) << 6) | m19727import(b3));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public static void m19718catch(byte b, byte b2, char[] cArr, int i) throws n {
            if (b < -62 || m19720const(b2)) {
                throw n.invalidUtf8();
            }
            cArr[i] = (char) (((b & t3.f6399protected) << 6) | m19727import(b2));
        }

        /* renamed from: class, reason: not valid java name */
        private static char m19719class(int i) {
            return (char) ((i >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        }

        /* renamed from: const, reason: not valid java name */
        private static boolean m19720const(byte b) {
            return b > -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: final, reason: not valid java name */
        public static boolean m19723final(byte b) {
            return b >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public static void m19725goto(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws n {
            if (m19720const(b2) || (((b << t3.f6403strictfp) + (b2 + 112)) >> 30) != 0 || m19720const(b3) || m19720const(b4)) {
                throw n.invalidUtf8();
            }
            int iM19727import = ((b & 7) << 18) | (m19727import(b2) << 12) | (m19727import(b3) << 6) | m19727import(b4);
            cArr[i] = m19719class(iM19727import);
            cArr[i + 1] = m19733while(iM19727import);
        }

        /* renamed from: import, reason: not valid java name */
        private static int m19727import(byte b) {
            return b & Utf8.REPLACEMENT_BYTE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public static boolean m19729super(byte b) {
            return b < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public static void m19730this(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: throw, reason: not valid java name */
        public static boolean m19731throw(byte b) {
            return b < -32;
        }

        /* renamed from: while, reason: not valid java name */
        private static char m19733while(int i) {
            return (char) ((i & 1023) + Utf8.LOG_SURROGATE_HEADER);
        }
    }

    /* renamed from: com.google.protobuf.a2$for, reason: invalid class name */
    public static final class Cfor extends Cif {
        /* renamed from: throw, reason: not valid java name */
        private static int m19734throw(byte[] bArr, int i, int i2) {
            while (i < i2 && bArr[i] >= 0) {
                i++;
            }
            if (i >= i2) {
                return 0;
            }
            return m19735while(bArr, i, i2);
        }

        /* renamed from: while, reason: not valid java name */
        private static int m19735while(byte[] bArr, int i, int i2) {
            while (i < i2) {
                int i3 = i + 1;
                byte b = bArr[i];
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b >= -62) {
                            i = i3 + 1;
                            if (bArr[i3] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b >= -16) {
                        if (i3 >= i2 - 2) {
                            return a2.m19704import(bArr, i3, i2);
                        }
                        int i4 = i3 + 1;
                        byte b2 = bArr[i3];
                        if (b2 <= -65 && (((b << t3.f6403strictfp) + (b2 + 112)) >> 30) == 0) {
                            int i5 = i4 + 1;
                            if (bArr[i4] <= -65) {
                                i3 = i5 + 1;
                                if (bArr[i5] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i3 >= i2 - 1) {
                        return a2.m19704import(bArr, i3, i2);
                    }
                    int i6 = i3 + 1;
                    byte b3 = bArr[i3];
                    if (b3 <= -65 && ((b != -32 || b3 >= -96) && (b != -19 || b3 < -96))) {
                        i = i6 + 1;
                        if (bArr[i6] > -65) {
                        }
                    }
                    return -1;
                }
                i = i3;
            }
            return 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        
            if (r8[r9] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
        
            if (r8[r9] > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x007f, code lost:
        
            if (r8[r9] > (-65)) goto L53;
         */
        @Override // com.google.protobuf.a2.Cif
        /* renamed from: class, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int mo19736class(int i, byte[] bArr, int i2, int i3) {
            int i4;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b = (byte) i;
                if (b < -32) {
                    if (b >= -62) {
                        i4 = i2 + 1;
                    }
                    return -1;
                }
                if (b < -16) {
                    byte b2 = (byte) ((i >> 8) ^ (-1));
                    if (b2 == 0) {
                        int i5 = i2 + 1;
                        byte b3 = bArr[i2];
                        if (i5 >= i3) {
                            return a2.m19710super(b, b3);
                        }
                        i2 = i5;
                        b2 = b3;
                    }
                    if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || b2 < -96))) {
                        i4 = i2 + 1;
                    }
                    return -1;
                }
                byte b4 = (byte) ((i >> 8) ^ (-1));
                byte b5 = 0;
                if (b4 == 0) {
                    int i6 = i2 + 1;
                    b4 = bArr[i2];
                    if (i6 >= i3) {
                        return a2.m19710super(b, b4);
                    }
                    i2 = i6;
                } else {
                    b5 = (byte) (i >> 16);
                }
                if (b5 == 0) {
                    int i7 = i2 + 1;
                    b5 = bArr[i2];
                    if (i7 >= i3) {
                        return a2.m19713throw(b, b4, b5);
                    }
                    i2 = i7;
                }
                if (b4 <= -65 && (((b << t3.f6403strictfp) + (b4 + 112)) >> 30) == 0 && b5 <= -65) {
                    i4 = i2 + 1;
                }
                return -1;
                i2 = i4;
            }
            return m19734throw(bArr, i2, i3);
        }

        @Override // com.google.protobuf.a2.Cif
        /* renamed from: goto, reason: not valid java name */
        public void mo19737goto(CharSequence charSequence, ByteBuffer byteBuffer) {
            m19747else(charSequence, byteBuffer);
        }

        @Override // com.google.protobuf.a2.Cif
        /* renamed from: if, reason: not valid java name */
        public String mo19738if(byte[] bArr, int i, int i2) throws n {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                if (!Cdo.m19723final(b)) {
                    break;
                }
                i++;
                Cdo.m19730this(b, cArr, i4);
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = bArr[i];
                if (Cdo.m19723final(b2)) {
                    int i7 = i5 + 1;
                    Cdo.m19730this(b2, cArr, i5);
                    while (i6 < i3) {
                        byte b3 = bArr[i6];
                        if (!Cdo.m19723final(b3)) {
                            break;
                        }
                        i6++;
                        Cdo.m19730this(b3, cArr, i7);
                        i7++;
                    }
                    i = i6;
                    i5 = i7;
                } else if (Cdo.m19731throw(b2)) {
                    if (i6 >= i3) {
                        throw n.invalidUtf8();
                    }
                    Cdo.m19718catch(b2, bArr[i6], cArr, i5);
                    i = i6 + 1;
                    i5++;
                } else if (Cdo.m19729super(b2)) {
                    if (i6 >= i3 - 1) {
                        throw n.invalidUtf8();
                    }
                    int i8 = i6 + 1;
                    Cdo.m19716break(b2, bArr[i6], bArr[i8], cArr, i5);
                    i = i8 + 1;
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw n.invalidUtf8();
                    }
                    int i9 = i6 + 1;
                    byte b4 = bArr[i6];
                    int i10 = i9 + 1;
                    Cdo.m19725goto(b2, b4, bArr[i9], bArr[i10], cArr, i5);
                    i = i10 + 1;
                    i5 = i5 + 1 + 1;
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // com.google.protobuf.a2.Cif
        /* renamed from: new, reason: not valid java name */
        public String mo19739new(ByteBuffer byteBuffer, int i, int i2) throws n {
            return m19749for(byteBuffer, i, i2);
        }

        @Override // com.google.protobuf.a2.Cif
        /* renamed from: super, reason: not valid java name */
        public int mo19740super(int i, ByteBuffer byteBuffer, int i2, int i3) {
            return m19748final(i, byteBuffer, i2, i3);
        }

        @Override // com.google.protobuf.a2.Cif
        /* renamed from: try, reason: not valid java name */
        public int mo19741try(CharSequence charSequence, byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            int i5;
            char cCharAt;
            int length = charSequence.length();
            int i6 = i2 + i;
            int i7 = 0;
            while (i7 < length && (i5 = i7 + i) < i6 && (cCharAt = charSequence.charAt(i7)) < 128) {
                bArr[i5] = (byte) cCharAt;
                i7++;
            }
            if (i7 == length) {
                return i + length;
            }
            int i8 = i + i7;
            while (i7 < length) {
                char cCharAt2 = charSequence.charAt(i7);
                if (cCharAt2 >= 128 || i8 >= i6) {
                    if (cCharAt2 < 2048 && i8 <= i6 - 2) {
                        int i9 = i8 + 1;
                        bArr[i8] = (byte) ((cCharAt2 >>> 6) | 960);
                        i8 = i9 + 1;
                        bArr[i9] = (byte) ((cCharAt2 & '?') | 128);
                    } else {
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i8 > i6 - 3) {
                            if (i8 > i6 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i4 = i7 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i4)))) {
                                    throw new Cnew(i7, length);
                                }
                                StringBuilder sb = new StringBuilder(37);
                                sb.append("Failed writing ");
                                sb.append(cCharAt2);
                                sb.append(" at index ");
                                sb.append(i8);
                                throw new ArrayIndexOutOfBoundsException(sb.toString());
                            }
                            int i10 = i7 + 1;
                            if (i10 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(i10);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    int i11 = i8 + 1;
                                    bArr[i8] = (byte) ((codePoint >>> 18) | MountainSceneView.f20267finally);
                                    int i12 = i11 + 1;
                                    bArr[i11] = (byte) (((codePoint >>> 12) & 63) | 128);
                                    int i13 = i12 + 1;
                                    bArr[i12] = (byte) (((codePoint >>> 6) & 63) | 128);
                                    i8 = i13 + 1;
                                    bArr[i13] = (byte) ((codePoint & 63) | 128);
                                    i7 = i10;
                                } else {
                                    i7 = i10;
                                }
                            }
                            throw new Cnew(i7 - 1, length);
                        }
                        int i14 = i8 + 1;
                        bArr[i8] = (byte) ((cCharAt2 >>> '\f') | 480);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                        i3 = i15 + 1;
                        bArr[i15] = (byte) ((cCharAt2 & '?') | 128);
                    }
                    i7++;
                } else {
                    i3 = i8 + 1;
                    bArr[i8] = (byte) cCharAt2;
                }
                i8 = i3;
                i7++;
            }
            return i8;
        }
    }

    /* renamed from: com.google.protobuf.a2$if, reason: invalid class name */
    public static abstract class Cif {
        /* renamed from: const, reason: not valid java name */
        private static int m19742const(ByteBuffer byteBuffer, int i, int i2) {
            int iM19697const = i + a2.m19697const(byteBuffer, i, i2);
            while (iM19697const < i2) {
                int i3 = iM19697const + 1;
                byte b = byteBuffer.get(iM19697const);
                if (b < 0) {
                    if (b < -32) {
                        if (i3 >= i2) {
                            return b;
                        }
                        if (b < -62 || byteBuffer.get(i3) > -65) {
                            return -1;
                        }
                        i3++;
                    } else {
                        if (b >= -16) {
                            if (i3 >= i2 - 2) {
                                return a2.m19715while(byteBuffer, b, i3, i2 - i3);
                            }
                            int i4 = i3 + 1;
                            byte b2 = byteBuffer.get(i3);
                            if (b2 <= -65 && (((b << t3.f6403strictfp) + (b2 + 112)) >> 30) == 0) {
                                int i5 = i4 + 1;
                                if (byteBuffer.get(i4) <= -65) {
                                    i3 = i5 + 1;
                                    if (byteBuffer.get(i5) > -65) {
                                    }
                                }
                            }
                            return -1;
                        }
                        if (i3 >= i2 - 1) {
                            return a2.m19715while(byteBuffer, b, i3, i2 - i3);
                        }
                        int i6 = i3 + 1;
                        byte b3 = byteBuffer.get(i3);
                        if (b3 > -65 || ((b == -32 && b3 < -96) || ((b == -19 && b3 >= -96) || byteBuffer.get(i6) > -65))) {
                            return -1;
                        }
                        iM19697const = i6 + 1;
                    }
                }
                iM19697const = i3;
            }
            return 0;
        }

        /* renamed from: break, reason: not valid java name */
        public final boolean m19743break(byte[] bArr, int i, int i2) {
            return mo19736class(0, bArr, i, i2) == 0;
        }

        /* renamed from: case, reason: not valid java name */
        public final void m19744case(CharSequence charSequence, ByteBuffer byteBuffer) {
            if (byteBuffer.hasArray()) {
                int iArrayOffset = byteBuffer.arrayOffset();
            } else if (byteBuffer.isDirect()) {
                mo19737goto(charSequence, byteBuffer);
            } else {
                m19747else(charSequence, byteBuffer);
            }
        }

        /* renamed from: catch, reason: not valid java name */
        public final int m19745catch(int i, ByteBuffer byteBuffer, int i2, int i3) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? mo19740super(i, byteBuffer, i2, i3) : m19748final(i, byteBuffer, i2, i3);
            }
            int iArrayOffset = byteBuffer.arrayOffset();
            return mo19736class(i, byteBuffer.array(), i2 + iArrayOffset, iArrayOffset + i3);
        }

        /* renamed from: class */
        public abstract int mo19736class(int i, byte[] bArr, int i2, int i3);

        /* renamed from: do, reason: not valid java name */
        public final String m19746do(ByteBuffer byteBuffer, int i, int i2) throws n {
            if (byteBuffer.hasArray()) {
                return mo19738if(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
            }
            return byteBuffer.isDirect() ? mo19739new(byteBuffer, i, i2) : m19749for(byteBuffer, i, i2);
        }

        /* renamed from: else, reason: not valid java name */
        public final void m19747else(CharSequence charSequence, ByteBuffer byteBuffer) {
            int length = charSequence.length();
            int iPosition = byteBuffer.position();
            int i = 0;
            while (i < length) {
                try {
                    char cCharAt = charSequence.charAt(i);
                    if (cCharAt >= 128) {
                        break;
                    }
                    byteBuffer.put(iPosition + i, (byte) cCharAt);
                    i++;
                } catch (IndexOutOfBoundsException unused) {
                    int iPosition2 = byteBuffer.position() + Math.max(i, (iPosition - byteBuffer.position()) + 1);
                    char cCharAt2 = charSequence.charAt(i);
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Failed writing ");
                    sb.append(cCharAt2);
                    sb.append(" at index ");
                    sb.append(iPosition2);
                    throw new ArrayIndexOutOfBoundsException(sb.toString());
                }
            }
            if (i == length) {
                return;
            }
            iPosition += i;
            while (i < length) {
                char cCharAt3 = charSequence.charAt(i);
                if (cCharAt3 < 128) {
                    byteBuffer.put(iPosition, (byte) cCharAt3);
                } else if (cCharAt3 < 2048) {
                    int i2 = iPosition + 1;
                    try {
                        byteBuffer.put(iPosition, (byte) ((cCharAt3 >>> 6) | 192));
                        byteBuffer.put(i2, (byte) ((cCharAt3 & '?') | 128));
                        iPosition = i2;
                    } catch (IndexOutOfBoundsException unused2) {
                        iPosition = i2;
                        int iPosition22 = byteBuffer.position() + Math.max(i, (iPosition - byteBuffer.position()) + 1);
                        char cCharAt22 = charSequence.charAt(i);
                        StringBuilder sb2 = new StringBuilder(37);
                        sb2.append("Failed writing ");
                        sb2.append(cCharAt22);
                        sb2.append(" at index ");
                        sb2.append(iPosition22);
                        throw new ArrayIndexOutOfBoundsException(sb2.toString());
                    }
                } else {
                    if (cCharAt3 >= 55296 && 57343 >= cCharAt3) {
                        int i3 = i + 1;
                        if (i3 != length) {
                            try {
                                char cCharAt4 = charSequence.charAt(i3);
                                if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                    int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                    int i4 = iPosition + 1;
                                    try {
                                        byteBuffer.put(iPosition, (byte) ((codePoint >>> 18) | MountainSceneView.f20267finally));
                                        int i5 = i4 + 1;
                                        byteBuffer.put(i4, (byte) (((codePoint >>> 12) & 63) | 128));
                                        int i6 = i5 + 1;
                                        byteBuffer.put(i5, (byte) (((codePoint >>> 6) & 63) | 128));
                                        byteBuffer.put(i6, (byte) ((codePoint & 63) | 128));
                                        iPosition = i6;
                                        i = i3;
                                    } catch (IndexOutOfBoundsException unused3) {
                                        iPosition = i4;
                                        i = i3;
                                        int iPosition222 = byteBuffer.position() + Math.max(i, (iPosition - byteBuffer.position()) + 1);
                                        char cCharAt222 = charSequence.charAt(i);
                                        StringBuilder sb22 = new StringBuilder(37);
                                        sb22.append("Failed writing ");
                                        sb22.append(cCharAt222);
                                        sb22.append(" at index ");
                                        sb22.append(iPosition222);
                                        throw new ArrayIndexOutOfBoundsException(sb22.toString());
                                    }
                                } else {
                                    i = i3;
                                }
                            } catch (IndexOutOfBoundsException unused4) {
                            }
                        }
                        throw new Cnew(i, length);
                    }
                    int i7 = iPosition + 1;
                    byteBuffer.put(iPosition, (byte) ((cCharAt3 >>> '\f') | 224));
                    iPosition = i7 + 1;
                    byteBuffer.put(i7, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    byteBuffer.put(iPosition, (byte) ((cCharAt3 & '?') | 128));
                }
                i++;
                iPosition++;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        
            if (r8.get(r9) > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
        
            if (r8.get(r9) > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008b, code lost:
        
            if (r8.get(r9) > (-65)) goto L53;
         */
        /* renamed from: final, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int m19748final(int i, ByteBuffer byteBuffer, int i2, int i3) {
            int i4;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b = (byte) i;
                if (b < -32) {
                    if (b >= -62) {
                        i4 = i2 + 1;
                    }
                    return -1;
                }
                if (b < -16) {
                    byte b2 = (byte) ((i >> 8) ^ (-1));
                    if (b2 == 0) {
                        int i5 = i2 + 1;
                        byte b3 = byteBuffer.get(i2);
                        if (i5 >= i3) {
                            return a2.m19710super(b, b3);
                        }
                        i2 = i5;
                        b2 = b3;
                    }
                    if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || b2 < -96))) {
                        i4 = i2 + 1;
                    }
                    return -1;
                }
                byte b4 = (byte) ((i >> 8) ^ (-1));
                byte b5 = 0;
                if (b4 == 0) {
                    int i6 = i2 + 1;
                    b4 = byteBuffer.get(i2);
                    if (i6 >= i3) {
                        return a2.m19710super(b, b4);
                    }
                    i2 = i6;
                } else {
                    b5 = (byte) (i >> 16);
                }
                if (b5 == 0) {
                    int i7 = i2 + 1;
                    b5 = byteBuffer.get(i2);
                    if (i7 >= i3) {
                        return a2.m19713throw(b, b4, b5);
                    }
                    i2 = i7;
                }
                if (b4 <= -65 && (((b << t3.f6403strictfp) + (b4 + 112)) >> 30) == 0 && b5 <= -65) {
                    i4 = i2 + 1;
                }
                return -1;
                i2 = i4;
            }
            return m19742const(byteBuffer, i2, i3);
        }

        /* renamed from: for, reason: not valid java name */
        public final String m19749for(ByteBuffer byteBuffer, int i, int i2) throws n {
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = byteBuffer.get(i);
                if (!Cdo.m19723final(b)) {
                    break;
                }
                i++;
                Cdo.m19730this(b, cArr, i4);
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = byteBuffer.get(i);
                if (Cdo.m19723final(b2)) {
                    int i7 = i5 + 1;
                    Cdo.m19730this(b2, cArr, i5);
                    while (i6 < i3) {
                        byte b3 = byteBuffer.get(i6);
                        if (!Cdo.m19723final(b3)) {
                            break;
                        }
                        i6++;
                        Cdo.m19730this(b3, cArr, i7);
                        i7++;
                    }
                    i = i6;
                    i5 = i7;
                } else if (Cdo.m19731throw(b2)) {
                    if (i6 >= i3) {
                        throw n.invalidUtf8();
                    }
                    Cdo.m19718catch(b2, byteBuffer.get(i6), cArr, i5);
                    i = i6 + 1;
                    i5++;
                } else if (Cdo.m19729super(b2)) {
                    if (i6 >= i3 - 1) {
                        throw n.invalidUtf8();
                    }
                    int i8 = i6 + 1;
                    Cdo.m19716break(b2, byteBuffer.get(i6), byteBuffer.get(i8), cArr, i5);
                    i = i8 + 1;
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw n.invalidUtf8();
                    }
                    int i9 = i6 + 1;
                    byte b4 = byteBuffer.get(i6);
                    int i10 = i9 + 1;
                    Cdo.m19725goto(b2, b4, byteBuffer.get(i9), byteBuffer.get(i10), cArr, i5);
                    i = i10 + 1;
                    i5 = i5 + 1 + 1;
                }
            }
            return new String(cArr, 0, i5);
        }

        /* renamed from: goto */
        public abstract void mo19737goto(CharSequence charSequence, ByteBuffer byteBuffer);

        /* renamed from: if */
        public abstract String mo19738if(byte[] bArr, int i, int i2) throws n;

        /* renamed from: new */
        public abstract String mo19739new(ByteBuffer byteBuffer, int i, int i2) throws n;

        /* renamed from: super */
        public abstract int mo19740super(int i, ByteBuffer byteBuffer, int i2, int i3);

        /* renamed from: this, reason: not valid java name */
        public final boolean m19750this(ByteBuffer byteBuffer, int i, int i2) {
            return m19745catch(0, byteBuffer, i, i2) == 0;
        }

        /* renamed from: try */
        public abstract int mo19741try(CharSequence charSequence, byte[] bArr, int i, int i2);
    }

    /* renamed from: com.google.protobuf.a2$new, reason: invalid class name */
    public static class Cnew extends IllegalArgumentException {
        public Cnew(int i, int i2) {
            StringBuilder sb = new StringBuilder(54);
            sb.append("Unpaired surrogate at index ");
            sb.append(i);
            sb.append(" of ");
            sb.append(i2);
            super(sb.toString());
        }
    }

    /* renamed from: com.google.protobuf.a2$try, reason: invalid class name */
    public static final class Ctry extends Cif {
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0063, code lost:
        
            return -1;
         */
        /* renamed from: import, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static int m19751import(byte[] bArr, long j, int i) {
            long j2;
            int iM19753public = m19753public(bArr, j, i);
            int i2 = i - iM19753public;
            long j3 = j + iM19753public;
            while (true) {
                byte bM21668finally = 0;
                while (true) {
                    if (i2 <= 0) {
                        break;
                    }
                    long j4 = j3 + 1;
                    bM21668finally = z1.m21668finally(bArr, j3);
                    if (bM21668finally < 0) {
                        j3 = j4;
                        break;
                    }
                    i2--;
                    j3 = j4;
                }
                if (i2 == 0) {
                    return 0;
                }
                int i3 = i2 - 1;
                if (bM21668finally >= -32) {
                    if (bM21668finally >= -16) {
                        if (i3 >= 3) {
                            i2 = i3 - 3;
                            long j5 = j3 + 1;
                            byte bM21668finally2 = z1.m21668finally(bArr, j3);
                            if (bM21668finally2 <= -65 && (((bM21668finally << t3.f6403strictfp) + (bM21668finally2 + 112)) >> 30) == 0) {
                                long j6 = j5 + 1;
                                if (z1.m21668finally(bArr, j5) > -65) {
                                    break;
                                }
                                j2 = 1 + j6;
                                if (z1.m21668finally(bArr, j6) > -65) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        } else {
                            return m19755static(bArr, bM21668finally, j3, i3);
                        }
                    } else {
                        if (i3 < 2) {
                            return m19755static(bArr, bM21668finally, j3, i3);
                        }
                        i2 = i3 - 2;
                        long j7 = j3 + 1;
                        byte bM21668finally3 = z1.m21668finally(bArr, j3);
                        if (bM21668finally3 > -65 || ((bM21668finally == -32 && bM21668finally3 < -96) || (bM21668finally == -19 && bM21668finally3 >= -96))) {
                            break;
                        }
                        j2 = 1 + j7;
                        if (z1.m21668finally(bArr, j7) > -65) {
                            break;
                        }
                    }
                } else if (i3 != 0) {
                    i2 = i3 - 1;
                    if (bM21668finally < -62) {
                        break;
                    }
                    j2 = 1 + j3;
                    if (z1.m21668finally(bArr, j3) > -65) {
                        break;
                    }
                } else {
                    return bM21668finally;
                }
                j3 = j2;
            }
            return -1;
        }

        /* renamed from: native, reason: not valid java name */
        private static int m19752native(long j, int i) {
            if (i < 16) {
                return 0;
            }
            int i2 = 8 - (((int) j) & 7);
            int i3 = i2;
            while (i3 > 0) {
                long j2 = 1 + j;
                if (z1.m21663default(j) < 0) {
                    return i2 - i3;
                }
                i3--;
                j = j2;
            }
            int i4 = i - i2;
            while (i4 >= 8 && (z1.m21672implements(j) & a2.f16601if) == 0) {
                j += 8;
                i4 -= 8;
            }
            return i - i4;
        }

        /* renamed from: public, reason: not valid java name */
        private static int m19753public(byte[] bArr, long j, int i) {
            int i2 = 0;
            if (i < 16) {
                return 0;
            }
            while (i2 < i) {
                long j2 = 1 + j;
                if (z1.m21668finally(bArr, j) < 0) {
                    return i2;
                }
                i2++;
                j = j2;
            }
            return i;
        }

        /* renamed from: return, reason: not valid java name */
        private static int m19754return(long j, int i, int i2) {
            if (i2 == 0) {
                return a2.m19700final(i);
            }
            if (i2 == 1) {
                return a2.m19710super(i, z1.m21663default(j));
            }
            if (i2 == 2) {
                return a2.m19713throw(i, z1.m21663default(j), z1.m21663default(j + 1));
            }
            throw new AssertionError();
        }

        /* renamed from: static, reason: not valid java name */
        private static int m19755static(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                return a2.m19700final(i);
            }
            if (i2 == 1) {
                return a2.m19710super(i, z1.m21668finally(bArr, j));
            }
            if (i2 == 2) {
                return a2.m19713throw(i, z1.m21668finally(bArr, j), z1.m21668finally(bArr, j + 1));
            }
            throw new AssertionError();
        }

        /* renamed from: throw, reason: not valid java name */
        public static boolean m19756throw() {
            return z1.f() && z1.g();
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0063, code lost:
        
            return -1;
         */
        /* renamed from: while, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static int m19757while(long j, int i) {
            long j2;
            int iM19752native = m19752native(j, i);
            long j3 = j + iM19752native;
            int i2 = i - iM19752native;
            while (true) {
                byte bM21663default = 0;
                while (true) {
                    if (i2 <= 0) {
                        break;
                    }
                    long j4 = j3 + 1;
                    bM21663default = z1.m21663default(j3);
                    if (bM21663default < 0) {
                        j3 = j4;
                        break;
                    }
                    i2--;
                    j3 = j4;
                }
                if (i2 == 0) {
                    return 0;
                }
                int i3 = i2 - 1;
                if (bM21663default >= -32) {
                    if (bM21663default >= -16) {
                        if (i3 >= 3) {
                            i2 = i3 - 3;
                            long j5 = j3 + 1;
                            byte bM21663default2 = z1.m21663default(j3);
                            if (bM21663default2 <= -65 && (((bM21663default << t3.f6403strictfp) + (bM21663default2 + 112)) >> 30) == 0) {
                                long j6 = j5 + 1;
                                if (z1.m21663default(j5) > -65) {
                                    break;
                                }
                                j2 = 1 + j6;
                                if (z1.m21663default(j6) > -65) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        } else {
                            return m19754return(j3, bM21663default, i3);
                        }
                    } else {
                        if (i3 < 2) {
                            return m19754return(j3, bM21663default, i3);
                        }
                        i2 = i3 - 2;
                        long j7 = j3 + 1;
                        byte bM21663default3 = z1.m21663default(j3);
                        if (bM21663default3 > -65 || ((bM21663default == -32 && bM21663default3 < -96) || (bM21663default == -19 && bM21663default3 >= -96))) {
                            break;
                        }
                        j2 = 1 + j7;
                        if (z1.m21663default(j7) > -65) {
                            break;
                        }
                    }
                } else if (i3 != 0) {
                    i2 = i3 - 1;
                    if (bM21663default < -62) {
                        break;
                    }
                    j2 = 1 + j3;
                    if (z1.m21663default(j3) > -65) {
                        break;
                    }
                } else {
                    return bM21663default;
                }
                j3 = j2;
            }
            return -1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
        
            if (com.google.protobuf.z1.m21668finally(r13, r2) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
        
            if (com.google.protobuf.z1.m21668finally(r13, r2) > (-65)) goto L59;
         */
        @Override // com.google.protobuf.a2.Cif
        /* renamed from: class */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int mo19736class(int i, byte[] bArr, int i2, int i3) {
            long j;
            byte bM21668finally = 0;
            if ((i2 | i3 | (bArr.length - i3)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            long j2 = i2;
            long j3 = i3;
            if (i != 0) {
                if (j2 >= j3) {
                    return i;
                }
                byte b = (byte) i;
                if (b < -32) {
                    if (b >= -62) {
                        long j4 = 1 + j2;
                        if (z1.m21668finally(bArr, j2) <= -65) {
                            j2 = j4;
                        }
                    }
                    return -1;
                }
                if (b < -16) {
                    byte bM21668finally2 = (byte) ((i >> 8) ^ (-1));
                    if (bM21668finally2 == 0) {
                        long j5 = j2 + 1;
                        bM21668finally2 = z1.m21668finally(bArr, j2);
                        if (j5 >= j3) {
                            return a2.m19710super(b, bM21668finally2);
                        }
                        j2 = j5;
                    }
                    if (bM21668finally2 <= -65 && ((b != -32 || bM21668finally2 >= -96) && (b != -19 || bM21668finally2 < -96))) {
                        j = j2 + 1;
                    }
                    return -1;
                }
                byte bM21668finally3 = (byte) ((i >> 8) ^ (-1));
                if (bM21668finally3 == 0) {
                    long j6 = j2 + 1;
                    bM21668finally3 = z1.m21668finally(bArr, j2);
                    if (j6 >= j3) {
                        return a2.m19710super(b, bM21668finally3);
                    }
                    j2 = j6;
                } else {
                    bM21668finally = (byte) (i >> 16);
                }
                if (bM21668finally == 0) {
                    long j7 = j2 + 1;
                    bM21668finally = z1.m21668finally(bArr, j2);
                    if (j7 >= j3) {
                        return a2.m19713throw(b, bM21668finally3, bM21668finally);
                    }
                    j2 = j7;
                }
                if (bM21668finally3 <= -65 && (((b << t3.f6403strictfp) + (bM21668finally3 + 112)) >> 30) == 0 && bM21668finally <= -65) {
                    j = j2 + 1;
                }
                return -1;
                j2 = j;
            }
            return m19751import(bArr, j2, (int) (j3 - j2));
        }

        @Override // com.google.protobuf.a2.Cif
        /* renamed from: goto */
        public void mo19737goto(CharSequence charSequence, ByteBuffer byteBuffer) {
            char c;
            long j;
            int i;
            char cCharAt;
            long jM21688this = z1.m21688this(byteBuffer);
            long jPosition = byteBuffer.position() + jM21688this;
            long jLimit = byteBuffer.limit() + jM21688this;
            int length = charSequence.length();
            if (length > jLimit - jPosition) {
                char cCharAt2 = charSequence.charAt(length - 1);
                int iLimit = byteBuffer.limit();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(cCharAt2);
                sb.append(" at index ");
                sb.append(iLimit);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            int i2 = 0;
            while (true) {
                c = 128;
                if (i2 >= length || (cCharAt = charSequence.charAt(i2)) >= 128) {
                    break;
                }
                z1.o(jPosition, (byte) cCharAt);
                i2++;
                jPosition = 1 + jPosition;
            }
            if (i2 == length) {
                return;
            }
            while (i2 < length) {
                char cCharAt3 = charSequence.charAt(i2);
                if (cCharAt3 < c && jPosition < jLimit) {
                    z1.o(jPosition, (byte) cCharAt3);
                    jPosition++;
                    j = jM21688this;
                } else if (cCharAt3 >= 2048 || jPosition > jLimit - 2) {
                    j = jM21688this;
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || jPosition > jLimit - 3) {
                        if (jPosition > jLimit - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i = i2 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i)))) {
                                throw new Cnew(i2, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt3);
                            sb2.append(" at index ");
                            sb2.append(jPosition);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int i3 = i2 + 1;
                        if (i3 != length) {
                            char cCharAt4 = charSequence.charAt(i3);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                long j2 = jPosition + 1;
                                z1.o(jPosition, (byte) ((codePoint >>> 18) | MountainSceneView.f20267finally));
                                long j3 = j2 + 1;
                                z1.o(j2, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j4 = j3 + 1;
                                z1.o(j3, (byte) (((codePoint >>> 6) & 63) | 128));
                                long j5 = j4 + 1;
                                z1.o(j4, (byte) ((codePoint & 63) | 128));
                                i2 = i3;
                                jPosition = j5;
                            } else {
                                i2 = i3;
                            }
                        }
                        throw new Cnew(i2 - 1, length);
                    }
                    long j6 = jPosition + 1;
                    z1.o(jPosition, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j7 = j6 + 1;
                    z1.o(j6, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    z1.o(j7, (byte) ((cCharAt3 & '?') | 128));
                    jPosition = j7 + 1;
                } else {
                    j = jM21688this;
                    long j8 = jPosition + 1;
                    z1.o(jPosition, (byte) ((cCharAt3 >>> 6) | 960));
                    z1.o(j8, (byte) ((cCharAt3 & '?') | 128));
                    jPosition = j8 + 1;
                }
                i2++;
                jM21688this = j;
                c = 128;
            }
        }

        @Override // com.google.protobuf.a2.Cif
        /* renamed from: if */
        public String mo19738if(byte[] bArr, int i, int i2) throws n {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte bM21668finally = z1.m21668finally(bArr, i);
                if (!Cdo.m19723final(bM21668finally)) {
                    break;
                }
                i++;
                Cdo.m19730this(bM21668finally, cArr, i4);
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte bM21668finally2 = z1.m21668finally(bArr, i);
                if (Cdo.m19723final(bM21668finally2)) {
                    int i7 = i5 + 1;
                    Cdo.m19730this(bM21668finally2, cArr, i5);
                    while (i6 < i3) {
                        byte bM21668finally3 = z1.m21668finally(bArr, i6);
                        if (!Cdo.m19723final(bM21668finally3)) {
                            break;
                        }
                        i6++;
                        Cdo.m19730this(bM21668finally3, cArr, i7);
                        i7++;
                    }
                    i = i6;
                    i5 = i7;
                } else if (Cdo.m19731throw(bM21668finally2)) {
                    if (i6 >= i3) {
                        throw n.invalidUtf8();
                    }
                    Cdo.m19718catch(bM21668finally2, z1.m21668finally(bArr, i6), cArr, i5);
                    i = i6 + 1;
                    i5++;
                } else if (Cdo.m19729super(bM21668finally2)) {
                    if (i6 >= i3 - 1) {
                        throw n.invalidUtf8();
                    }
                    int i8 = i6 + 1;
                    Cdo.m19716break(bM21668finally2, z1.m21668finally(bArr, i6), z1.m21668finally(bArr, i8), cArr, i5);
                    i = i8 + 1;
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw n.invalidUtf8();
                    }
                    int i9 = i6 + 1;
                    byte bM21668finally4 = z1.m21668finally(bArr, i6);
                    int i10 = i9 + 1;
                    Cdo.m19725goto(bM21668finally2, bM21668finally4, z1.m21668finally(bArr, i9), z1.m21668finally(bArr, i10), cArr, i5);
                    i = i10 + 1;
                    i5 = i5 + 1 + 1;
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // com.google.protobuf.a2.Cif
        /* renamed from: new */
        public String mo19739new(ByteBuffer byteBuffer, int i, int i2) throws n {
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            long jM21688this = z1.m21688this(byteBuffer) + i;
            long j = i2 + jM21688this;
            char[] cArr = new char[i2];
            int i3 = 0;
            while (jM21688this < j) {
                byte bM21663default = z1.m21663default(jM21688this);
                if (!Cdo.m19723final(bM21663default)) {
                    break;
                }
                jM21688this++;
                Cdo.m19730this(bM21663default, cArr, i3);
                i3++;
            }
            while (true) {
                int i4 = i3;
                while (jM21688this < j) {
                    long j2 = jM21688this + 1;
                    byte bM21663default2 = z1.m21663default(jM21688this);
                    if (Cdo.m19723final(bM21663default2)) {
                        int i5 = i4 + 1;
                        Cdo.m19730this(bM21663default2, cArr, i4);
                        while (j2 < j) {
                            byte bM21663default3 = z1.m21663default(j2);
                            if (!Cdo.m19723final(bM21663default3)) {
                                break;
                            }
                            j2++;
                            Cdo.m19730this(bM21663default3, cArr, i5);
                            i5++;
                        }
                        i4 = i5;
                        jM21688this = j2;
                    } else if (Cdo.m19731throw(bM21663default2)) {
                        if (j2 >= j) {
                            throw n.invalidUtf8();
                        }
                        jM21688this = j2 + 1;
                        Cdo.m19718catch(bM21663default2, z1.m21663default(j2), cArr, i4);
                        i4++;
                    } else if (Cdo.m19729super(bM21663default2)) {
                        if (j2 >= j - 1) {
                            throw n.invalidUtf8();
                        }
                        long j3 = j2 + 1;
                        Cdo.m19716break(bM21663default2, z1.m21663default(j2), z1.m21663default(j3), cArr, i4);
                        i4++;
                        jM21688this = j3 + 1;
                    } else {
                        if (j2 >= j - 2) {
                            throw n.invalidUtf8();
                        }
                        long j4 = j2 + 1;
                        byte bM21663default4 = z1.m21663default(j2);
                        long j5 = j4 + 1;
                        byte bM21663default5 = z1.m21663default(j4);
                        jM21688this = j5 + 1;
                        Cdo.m19725goto(bM21663default2, bM21663default4, bM21663default5, z1.m21663default(j5), cArr, i4);
                        i3 = i4 + 1 + 1;
                    }
                }
                return new String(cArr, 0, i4);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
        
            if (com.google.protobuf.z1.m21663default(r2) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00a8, code lost:
        
            if (com.google.protobuf.z1.m21663default(r2) > (-65)) goto L59;
         */
        @Override // com.google.protobuf.a2.Cif
        /* renamed from: super */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int mo19740super(int i, ByteBuffer byteBuffer, int i2, int i3) {
            long j;
            byte bM21663default = 0;
            if ((i2 | i3 | (byteBuffer.limit() - i3)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            long jM21688this = z1.m21688this(byteBuffer) + i2;
            long j2 = (i3 - i2) + jM21688this;
            if (i != 0) {
                if (jM21688this >= j2) {
                    return i;
                }
                byte b = (byte) i;
                if (b < -32) {
                    if (b >= -62) {
                        long j3 = 1 + jM21688this;
                        if (z1.m21663default(jM21688this) <= -65) {
                            jM21688this = j3;
                        }
                    }
                    return -1;
                }
                if (b < -16) {
                    byte bM21663default2 = (byte) ((i >> 8) ^ (-1));
                    if (bM21663default2 == 0) {
                        long j4 = jM21688this + 1;
                        bM21663default2 = z1.m21663default(jM21688this);
                        if (j4 >= j2) {
                            return a2.m19710super(b, bM21663default2);
                        }
                        jM21688this = j4;
                    }
                    if (bM21663default2 <= -65 && ((b != -32 || bM21663default2 >= -96) && (b != -19 || bM21663default2 < -96))) {
                        j = jM21688this + 1;
                    }
                    return -1;
                }
                byte bM21663default3 = (byte) ((i >> 8) ^ (-1));
                if (bM21663default3 == 0) {
                    long j5 = jM21688this + 1;
                    bM21663default3 = z1.m21663default(jM21688this);
                    if (j5 >= j2) {
                        return a2.m19710super(b, bM21663default3);
                    }
                    jM21688this = j5;
                } else {
                    bM21663default = (byte) (i >> 16);
                }
                if (bM21663default == 0) {
                    long j6 = jM21688this + 1;
                    bM21663default = z1.m21663default(jM21688this);
                    if (j6 >= j2) {
                        return a2.m19713throw(b, bM21663default3, bM21663default);
                    }
                    jM21688this = j6;
                }
                if (bM21663default3 <= -65 && (((b << t3.f6403strictfp) + (bM21663default3 + 112)) >> 30) == 0 && bM21663default <= -65) {
                    j = jM21688this + 1;
                }
                return -1;
                jM21688this = j;
            }
            return m19757while(jM21688this, (int) (j2 - jM21688this));
        }

        @Override // com.google.protobuf.a2.Cif
        /* renamed from: try */
        public int mo19741try(CharSequence charSequence, byte[] bArr, int i, int i2) {
            char c;
            long j;
            long j2;
            long j3;
            int i3;
            char cCharAt;
            long j4 = i;
            long j5 = i2 + j4;
            int length = charSequence.length();
            if (length > i2 || bArr.length - i2 < i) {
                char cCharAt2 = charSequence.charAt(length - 1);
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(cCharAt2);
                sb.append(" at index ");
                sb.append(i + i2);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            int i4 = 0;
            while (true) {
                c = 128;
                j = 1;
                if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                z1.q(bArr, j4, (byte) cCharAt);
                i4++;
                j4 = 1 + j4;
            }
            if (i4 == length) {
                return (int) j4;
            }
            while (i4 < length) {
                char cCharAt3 = charSequence.charAt(i4);
                if (cCharAt3 >= c || j4 >= j5) {
                    if (cCharAt3 < 2048 && j4 <= j5 - 2) {
                        long j6 = j4 + j;
                        z1.q(bArr, j4, (byte) ((cCharAt3 >>> 6) | 960));
                        z1.q(bArr, j6, (byte) ((cCharAt3 & '?') | 128));
                        j2 = j6 + j;
                        j3 = j;
                    } else {
                        if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j4 > j5 - 3) {
                            if (j4 > j5 - 4) {
                                if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                                    throw new Cnew(i4, length);
                                }
                                StringBuilder sb2 = new StringBuilder(46);
                                sb2.append("Failed writing ");
                                sb2.append(cCharAt3);
                                sb2.append(" at index ");
                                sb2.append(j4);
                                throw new ArrayIndexOutOfBoundsException(sb2.toString());
                            }
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char cCharAt4 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                    int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                    long j7 = j4 + 1;
                                    z1.q(bArr, j4, (byte) ((codePoint >>> 18) | MountainSceneView.f20267finally));
                                    long j8 = j7 + 1;
                                    z1.q(bArr, j7, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j9 = j8 + 1;
                                    z1.q(bArr, j8, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j3 = 1;
                                    j2 = j9 + 1;
                                    z1.q(bArr, j9, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new Cnew(i4 - 1, length);
                        }
                        long j10 = j4 + j;
                        z1.q(bArr, j4, (byte) ((cCharAt3 >>> '\f') | 480));
                        long j11 = j10 + j;
                        z1.q(bArr, j10, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                        z1.q(bArr, j11, (byte) ((cCharAt3 & '?') | 128));
                        j2 = j11 + 1;
                        j3 = 1;
                    }
                    i4++;
                    c = 128;
                    long j12 = j3;
                    j4 = j2;
                    j = j12;
                } else {
                    long j13 = j4 + j;
                    z1.q(bArr, j4, (byte) cCharAt3);
                    j3 = j;
                    j2 = j13;
                }
                i4++;
                c = 128;
                long j122 = j3;
                j4 = j2;
                j = j122;
            }
            return (int) j4;
        }
    }

    static {
        f16599do = (!Ctry.m19756throw() || com.google.protobuf.Cnew.m20909for()) ? new Cfor() : new Ctry();
    }

    private a2() {
    }

    /* renamed from: break, reason: not valid java name */
    public static void m19693break(CharSequence charSequence, ByteBuffer byteBuffer) {
        f16599do.m19744case(charSequence, byteBuffer);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m19695catch(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int iM19696class = length;
        while (true) {
            if (i < length) {
                char cCharAt = charSequence.charAt(i);
                if (cCharAt >= 2048) {
                    iM19696class += m19696class(charSequence, i);
                    break;
                }
                iM19696class += (127 - cCharAt) >>> 31;
                i++;
            } else {
                break;
            }
        }
        if (iM19696class >= length) {
            return iM19696class;
        }
        long j = iM19696class + o3.f24027catch;
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(j);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: class, reason: not valid java name */
    private static int m19696class(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i) < 65536) {
                        throw new Cnew(i, length);
                    }
                    i++;
                }
            }
            i++;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public static int m19697const(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i2 - 7;
        int i4 = i;
        while (i4 < i3 && (byteBuffer.getLong(i4) & f16601if) == 0) {
            i4 += 8;
        }
        return i4 - i;
    }

    /* renamed from: else, reason: not valid java name */
    public static String m19699else(ByteBuffer byteBuffer, int i, int i2) throws n {
        return f16599do.m19746do(byteBuffer, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static int m19700final(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m19702goto(byte[] bArr, int i, int i2) throws n {
        return f16599do.mo19738if(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public static int m19704import(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m19700final(b);
        }
        if (i3 == 1) {
            return m19710super(b, bArr[i]);
        }
        if (i3 == 2) {
            return m19713throw(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m19705native(ByteBuffer byteBuffer) {
        return f16599do.m19750this(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m19707public(byte[] bArr) {
        return f16599do.m19743break(bArr, 0, bArr.length);
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m19708return(byte[] bArr, int i, int i2) {
        return f16599do.m19743break(bArr, i, i2);
    }

    /* renamed from: static, reason: not valid java name */
    public static int m19709static(int i, ByteBuffer byteBuffer, int i2, int i3) {
        return f16599do.m19745catch(i, byteBuffer, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public static int m19710super(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m19711switch(int i, byte[] bArr, int i2, int i3) {
        return f16599do.mo19736class(i, bArr, i2, i3);
    }

    /* renamed from: this, reason: not valid java name */
    public static int m19712this(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f16599do.mo19741try(charSequence, bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public static int m19713throw(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public static int m19715while(ByteBuffer byteBuffer, int i, int i2, int i3) {
        if (i3 == 0) {
            return m19700final(i);
        }
        if (i3 == 1) {
            return m19710super(i, byteBuffer.get(i2));
        }
        if (i3 == 2) {
            return m19713throw(i, byteBuffer.get(i2), byteBuffer.get(i2 + 1));
        }
        throw new AssertionError();
    }
}
