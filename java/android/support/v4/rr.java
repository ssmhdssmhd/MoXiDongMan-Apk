package android.support.v4;

import java.util.UUID;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes3.dex */
public class rr {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ boolean f5906do = false;

    public static byte[] a(short s, int i, byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return bArr;
        }
        if (((i3 - 1) * 8) + i >= 16) {
            throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greather or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i2 + i4] = (byte) ((s >> ((i4 * 8) + i)) & 255);
        }
        return bArr;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static char m7082abstract(int i) {
        switch (i) {
            case 0:
                return '0';
            case 1:
                return '8';
            case 2:
                return '4';
            case 3:
                return 'c';
            case 4:
                return '2';
            case 5:
                return 'a';
            case 6:
                return '6';
            case 7:
                return 'e';
            case 8:
                return '1';
            case 9:
                return '9';
            case 10:
                return '5';
            case 11:
                return 'd';
            case 12:
                return '3';
            case 13:
                return 'b';
            case 14:
                return '7';
            case 15:
                return 'f';
            default:
                throw new IllegalArgumentException("nibble value not between 0 and 15: " + i);
        }
    }

    public static String b(short s, int i, String str, int i2, int i3) {
        if (i3 == 0) {
            return str;
        }
        if (((i3 - 1) * 4) + i >= 16) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 16");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (s >> ((i4 * 4) + i)) & 15;
            int i6 = i2 + i4;
            if (i6 == length) {
                length++;
                sb.append(m7105private(i5));
            } else {
                sb.setCharAt(i6, m7105private(i5));
            }
        }
        return sb.toString();
    }

    /* renamed from: break, reason: not valid java name */
    public static short m7083break(boolean[] zArr, int i, short s, int i2, int i3) {
        if ((zArr.length == 0 && i == 0) || i3 == 0) {
            return s;
        }
        if ((i3 - 1) + i2 >= 16) {
            throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 1) + i2;
            s = (short) ((s & ((1 << i5) ^ (-1))) | ((zArr[i4 + i] ? 1 : 0) << i5));
        }
        return s;
    }

    public static byte[] c(UUID uuid, byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return bArr;
        }
        if (i2 > 16) {
            throw new IllegalArgumentException("nBytes is greather than 16");
        }
        m7119volatile(uuid.getMostSignificantBits(), 0, bArr, i, i2 > 8 ? 8 : i2);
        if (i2 >= 8) {
            m7119volatile(uuid.getLeastSignificantBits(), 0, bArr, i + 8, i2 - 8);
        }
        return bArr;
    }

    /* renamed from: case, reason: not valid java name */
    public static char m7084case(boolean[] zArr) {
        return m7091else(zArr, 0);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m7085catch(byte[] bArr, int i, int i2, int i3, int i4) {
        if ((bArr.length == 0 && i == 0) || i4 == 0) {
            return i2;
        }
        if (((i4 - 1) * 8) + i3 >= 32) {
            throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greather or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i5 * 8) + i3;
            i2 = (i2 & ((255 << i6) ^ (-1))) | ((bArr[i5 + i] & 255) << i6);
        }
        return i2;
    }

    /* renamed from: class, reason: not valid java name */
    public static long m7086class(byte[] bArr, int i, long j, int i2, int i3) {
        if ((bArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if (((i3 - 1) * 8) + i2 >= 64) {
            throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greather or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 8) + i2;
            j = (j & ((255 << i5) ^ (-1))) | ((bArr[i4 + i] & 255) << i5);
        }
        return j;
    }

    /* renamed from: const, reason: not valid java name */
    public static short m7087const(byte[] bArr, int i, short s, int i2, int i3) {
        if ((bArr.length == 0 && i == 0) || i3 == 0) {
            return s;
        }
        if (((i3 - 1) * 8) + i2 >= 16) {
            throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greather or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 8) + i2;
            s = (short) ((s & ((255 << i5) ^ (-1))) | ((bArr[i4 + i] & 255) << i5));
        }
        return s;
    }

    /* renamed from: continue, reason: not valid java name */
    public static short[] m7088continue(int i, int i2, short[] sArr, int i3, int i4) {
        if (i4 == 0) {
            return sArr;
        }
        if (((i4 - 1) * 16) + i2 >= 32) {
            throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greather or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            sArr[i3 + i5] = (short) ((i >> ((i5 * 16) + i2)) & 65535);
        }
        return sArr;
    }

    /* renamed from: default, reason: not valid java name */
    public static long m7089default(int[] iArr, int i, long j, int i2, int i3) {
        if ((iArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if (((i3 - 1) * 32) + i2 >= 64) {
            throw new IllegalArgumentException("(nInts-1)*32+dstPos is greather or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 32) + i2;
            j = (j & ((4294967295 << i5) ^ (-1))) | ((iArr[i4 + i] & 4294967295L) << i5);
        }
        return j;
    }

    /* renamed from: do, reason: not valid java name */
    public static char m7090do(boolean[] zArr) {
        return m7097if(zArr, 0);
    }

    /* renamed from: else, reason: not valid java name */
    public static char m7091else(boolean[] zArr, int i) {
        if (zArr.length > 8) {
            throw new IllegalArgumentException("src.length>8: src.length=" + zArr.length);
        }
        if (zArr.length - i >= 4) {
            return zArr[i + 3] ? zArr[i + 2] ? zArr[i + 1] ? zArr[i] ? 'f' : '7' : zArr[i] ? 'b' : '3' : zArr[i + 1] ? zArr[i] ? 'd' : '5' : zArr[i] ? '9' : '1' : zArr[i + 2] ? zArr[i + 1] ? zArr[i] ? 'e' : '6' : zArr[i] ? 'a' : '2' : zArr[i + 1] ? zArr[i] ? 'c' : '4' : zArr[i] ? '8' : '0';
        }
        throw new IllegalArgumentException("src.length-srcPos<4: src.length=" + zArr.length + ", srcPos=" + i);
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean[] m7092extends(int i, int i2, boolean[] zArr, int i3, int i4) {
        if (i4 == 0) {
            return zArr;
        }
        if ((i4 - 1) + i2 >= 32) {
            throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i3 + i5;
            boolean z = true;
            if (((i >> ((i5 * 1) + i2)) & 1) == 0) {
                z = false;
            }
            zArr[i6] = z;
        }
        return zArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static UUID m7093final(byte[] bArr, int i) {
        if (bArr.length - i >= 16) {
            return new UUID(m7086class(bArr, i, 0L, 0, 8), m7086class(bArr, i + 8, 0L, 0, 8));
        }
        throw new IllegalArgumentException("Need at least 16 bytes for UUID");
    }

    /* renamed from: finally, reason: not valid java name */
    public static byte[] m7094finally(int i, int i2, byte[] bArr, int i3, int i4) {
        if (i4 == 0) {
            return bArr;
        }
        if (((i4 - 1) * 8) + i2 >= 32) {
            throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greather or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            bArr[i3 + i5] = (byte) ((i >> ((i5 * 8) + i2)) & 255);
        }
        return bArr;
    }

    /* renamed from: for, reason: not valid java name */
    public static byte m7095for(boolean[] zArr, int i, byte b, int i2, int i3) {
        if ((zArr.length == 0 && i == 0) || i3 == 0) {
            return b;
        }
        if ((i3 - 1) + i2 >= 8) {
            throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 8");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 1) + i2;
            b = (byte) ((b & ((1 << i5) ^ (-1))) | ((zArr[i4 + i] ? 1 : 0) << i5));
        }
        return b;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m7096goto(boolean[] zArr, int i, int i2, int i3, int i4) {
        if ((zArr.length == 0 && i == 0) || i4 == 0) {
            return i2;
        }
        if ((i4 - 1) + i3 >= 32) {
            throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i5 * 1) + i3;
            i2 = (i2 & ((1 << i6) ^ (-1))) | ((zArr[i5 + i] ? 1 : 0) << i6);
        }
        return i2;
    }

    /* renamed from: if, reason: not valid java name */
    public static char m7097if(boolean[] zArr, int i) {
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Cannot convert an empty array.");
        }
        int length = ((zArr.length - 1) - i) + 1;
        int iMin = Math.min(4, length);
        boolean[] zArr2 = new boolean[4];
        System.arraycopy(zArr, length - iMin, zArr2, 4 - iMin, iMin);
        return zArr2[0] ? zArr2[1] ? zArr2[2] ? zArr2[3] ? 'f' : 'e' : zArr2[3] ? 'd' : 'c' : zArr2[2] ? zArr2[3] ? 'b' : 'a' : zArr2[3] ? '9' : '8' : zArr2[1] ? zArr2[2] ? zArr2[3] ? '7' : '6' : zArr2[3] ? '5' : '4' : zArr2[2] ? zArr2[3] ? '3' : '2' : zArr2[3] ? '1' : '0';
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m7098implements(short[] sArr, int i, int i2, int i3, int i4) {
        if ((sArr.length == 0 && i == 0) || i4 == 0) {
            return i2;
        }
        if (((i4 - 1) * 16) + i3 >= 32) {
            throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greather or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i5 * 16) + i3;
            i2 = (i2 & ((65535 << i6) ^ (-1))) | ((sArr[i5 + i] & ab2.f80for) << i6);
        }
        return i2;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m7099import(char c) {
        switch (c) {
            case '0':
                return 0;
            case '1':
                return 8;
            case '2':
                return 4;
            case '3':
                return 12;
            case '4':
                return 2;
            case '5':
                return 10;
            case '6':
                return 6;
            case '7':
                return 14;
            case '8':
                return 1;
            case '9':
                return 9;
            default:
                switch (c) {
                    case 'A':
                        return 5;
                    case 'B':
                        return 13;
                    case 'C':
                        return 3;
                    case 'D':
                        return 11;
                    case 'E':
                        return 7;
                    case 'F':
                        return 15;
                    default:
                        switch (c) {
                            case 'a':
                                return 5;
                            case 'b':
                                return 13;
                            case 'c':
                                return 3;
                            case 'd':
                                return 11;
                            case 'e':
                                return 7;
                            case 'f':
                                return 15;
                            default:
                                throw new IllegalArgumentException("Cannot interpret '" + c + "' as a hexadecimal digit");
                        }
                }
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static long m7100instanceof(short[] sArr, int i, long j, int i2, int i3) {
        if ((sArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if (((i3 - 1) * 16) + i2 >= 64) {
            throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greather or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 16) + i2;
            j = (j & ((WebSocketProtocol.PAYLOAD_SHORT_MAX << i5) ^ (-1))) | ((sArr[i4 + i] & WebSocketProtocol.PAYLOAD_SHORT_MAX) << i5);
        }
        return j;
    }

    /* renamed from: interface, reason: not valid java name */
    public static String m7101interface(long j, int i, String str, int i2, int i3) {
        if (i3 == 0) {
            return str;
        }
        if (((i3 - 1) * 4) + i >= 64) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 64");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (int) (15 & (j >> ((i4 * 4) + i)));
            int i6 = i2 + i4;
            if (i6 == length) {
                length++;
                sb.append(m7105private(i5));
            } else {
                sb.setCharAt(i6, m7105private(i5));
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* renamed from: native, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean[] m7102native(char c) {
        switch (c) {
            case '0':
                return new boolean[]{false, false, false, false};
            case '1':
                return new boolean[]{true, false, false, false};
            case '2':
                return new boolean[]{false, true, false, false};
            case '3':
                return new boolean[]{true, true, false, false};
            case '4':
                return new boolean[]{false, false, true, false};
            case '5':
                return new boolean[]{true, false, true, false};
            case '6':
                return new boolean[]{false, true, true, false};
            case '7':
                return new boolean[]{true, true, true, false};
            case '8':
                return new boolean[]{false, false, false, true};
            case '9':
                return new boolean[]{true, false, false, true};
            default:
                switch (c) {
                    case 'A':
                        return new boolean[]{false, true, false, true};
                    case 'B':
                        return new boolean[]{true, true, false, true};
                    case 'C':
                        return new boolean[]{false, false, true, true};
                    case 'D':
                        return new boolean[]{true, false, true, true};
                    case 'E':
                        return new boolean[]{false, true, true, true};
                    case 'F':
                        return new boolean[]{true, true, true, true};
                    default:
                        switch (c) {
                            case 'a':
                                break;
                            case 'b':
                                break;
                            case 'c':
                                break;
                            case 'd':
                                break;
                            case 'e':
                                break;
                            case 'f':
                                break;
                            default:
                                throw new IllegalArgumentException("Cannot interpret '" + c + "' as a hexadecimal digit");
                        }
                }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static char m7103new(boolean[] zArr) {
        return m7118try(zArr, 0);
    }

    /* renamed from: package, reason: not valid java name */
    public static String m7104package(int i, int i2, String str, int i3, int i4) {
        if (i4 == 0) {
            return str;
        }
        if (((i4 - 1) * 4) + i2 >= 32) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 32");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i >> ((i5 * 4) + i2)) & 15;
            int i7 = i3 + i5;
            if (i7 == length) {
                length++;
                sb.append(m7105private(i6));
            } else {
                sb.setCharAt(i7, m7105private(i6));
            }
        }
        return sb.toString();
    }

    /* renamed from: private, reason: not valid java name */
    public static char m7105private(int i) {
        char cForDigit = Character.forDigit(i, 16);
        if (cForDigit != 0) {
            return cForDigit;
        }
        throw new IllegalArgumentException("nibble value not between 0 and 15: " + i);
    }

    /* renamed from: protected, reason: not valid java name */
    public static int[] m7106protected(long j, int i, int[] iArr, int i2, int i3) {
        if (i3 == 0) {
            return iArr;
        }
        if (((i3 - 1) * 32) + i >= 64) {
            throw new IllegalArgumentException("(nInts-1)*32+srcPos is greather or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i2 + i4] = (int) ((-1) & (j >> ((i4 * 32) + i)));
        }
        return iArr;
    }

    /* renamed from: public, reason: not valid java name */
    public static int m7107public(char c) {
        int iDigit = Character.digit(c, 16);
        if (iDigit >= 0) {
            return iDigit;
        }
        throw new IllegalArgumentException("Cannot interpret '" + c + "' as a hexadecimal digit");
    }

    /* renamed from: return, reason: not valid java name */
    public static byte m7108return(String str, int i, byte b, int i2, int i3) {
        if (i3 == 0) {
            return b;
        }
        if (((i3 - 1) * 4) + i2 >= 8) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 8");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 4) + i2;
            b = (byte) ((b & ((15 << i5) ^ (-1))) | ((m7107public(str.charAt(i4 + i)) & 15) << i5));
        }
        return b;
    }

    /* renamed from: static, reason: not valid java name */
    public static int m7109static(String str, int i, int i2, int i3, int i4) {
        if (i4 == 0) {
            return i2;
        }
        if (((i4 - 1) * 4) + i3 >= 32) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i5 * 4) + i3;
            i2 = (i2 & ((15 << i6) ^ (-1))) | ((m7107public(str.charAt(i5 + i)) & 15) << i6);
        }
        return i2;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean[] m7110strictfp(long j, int i, boolean[] zArr, int i2, int i3) {
        if (i3 == 0) {
            return zArr;
        }
        if ((i3 - 1) + i >= 64) {
            throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            zArr[i2 + i4] = (1 & (j >> ((i4 * 1) + i))) != 0;
        }
        return zArr;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean[] m7111super(byte b, int i, boolean[] zArr, int i2, int i3) {
        if (i3 == 0) {
            return zArr;
        }
        if ((i3 - 1) + i >= 8) {
            throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 8");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            boolean z = true;
            if (((b >> ((i4 * 1) + i)) & 1) == 0) {
                z = false;
            }
            zArr[i5] = z;
        }
        return zArr;
    }

    /* renamed from: switch, reason: not valid java name */
    public static long m7112switch(String str, int i, long j, int i2, int i3) {
        if (i3 == 0) {
            return j;
        }
        if (((i3 - 1) * 4) + i2 >= 64) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 4) + i2;
            j = (j & ((15 << i5) ^ (-1))) | ((m7107public(str.charAt(i4 + i)) & 15) << i5);
        }
        return j;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static boolean[] m7113synchronized(short s, int i, boolean[] zArr, int i2, int i3) {
        if (i3 == 0) {
            return zArr;
        }
        if ((i3 - 1) + i >= 16) {
            throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            boolean z = true;
            if (((s >> ((i4 * 1) + i)) & 1) == 0) {
                z = false;
            }
            zArr[i5] = z;
        }
        return zArr;
    }

    /* renamed from: this, reason: not valid java name */
    public static long m7114this(boolean[] zArr, int i, long j, int i2, int i3) {
        if ((zArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if ((i3 - 1) + i2 >= 64) {
            throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 1) + i2;
            j = (j & ((1 << i5) ^ (-1))) | ((zArr[i4 + i] ? 1L : 0L) << i5);
        }
        return j;
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m7115throw(byte b, int i, String str, int i2, int i3) {
        if (i3 == 0) {
            return str;
        }
        if (((i3 - 1) * 4) + i >= 8) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 8");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (b >> ((i4 * 4) + i)) & 15;
            int i6 = i2 + i4;
            if (i6 == length) {
                length++;
                sb.append(m7105private(i5));
            } else {
                sb.setCharAt(i6, m7105private(i5));
            }
        }
        return sb.toString();
    }

    /* renamed from: throws, reason: not valid java name */
    public static short m7116throws(String str, int i, short s, int i2, int i3) {
        if (i3 == 0) {
            return s;
        }
        if (((i3 - 1) * 4) + i2 >= 16) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 4) + i2;
            s = (short) ((s & ((15 << i5) ^ (-1))) | ((m7107public(str.charAt(i4 + i)) & 15) << i5));
        }
        return s;
    }

    /* renamed from: transient, reason: not valid java name */
    public static short[] m7117transient(long j, int i, short[] sArr, int i2, int i3) {
        if (i3 == 0) {
            return sArr;
        }
        if (((i3 - 1) * 16) + i >= 64) {
            throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greather or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            sArr[i2 + i4] = (short) (WebSocketProtocol.PAYLOAD_SHORT_MAX & (j >> ((i4 * 16) + i)));
        }
        return sArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static char m7118try(boolean[] zArr, int i) {
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Cannot convert an empty array.");
        }
        int i2 = i + 3;
        if (zArr.length <= i2 || !zArr[i2]) {
            int i3 = i + 2;
            if (zArr.length <= i3 || !zArr[i3]) {
                int i4 = i + 1;
                return (zArr.length <= i4 || !zArr[i4]) ? zArr[i] ? '1' : '0' : zArr[i] ? '3' : '2';
            }
            int i5 = i + 1;
            return (zArr.length <= i5 || !zArr[i5]) ? zArr[i] ? '5' : '4' : zArr[i] ? '7' : '6';
        }
        int i6 = i + 2;
        if (zArr.length <= i6 || !zArr[i6]) {
            int i7 = i + 1;
            return (zArr.length <= i7 || !zArr[i7]) ? zArr[i] ? '9' : '8' : zArr[i] ? 'b' : 'a';
        }
        int i8 = i + 1;
        return (zArr.length <= i8 || !zArr[i8]) ? zArr[i] ? 'd' : 'c' : zArr[i] ? 'f' : 'e';
    }

    /* renamed from: volatile, reason: not valid java name */
    public static byte[] m7119volatile(long j, int i, byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return bArr;
        }
        if (((i3 - 1) * 8) + i >= 64) {
            throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greather or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i2 + i4] = (byte) (255 & (j >> ((i4 * 8) + i)));
        }
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* renamed from: while, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean[] m7120while(char c) {
        switch (c) {
            case '0':
                return new boolean[]{false, false, false, false};
            case '1':
                return new boolean[]{false, false, false, true};
            case '2':
                return new boolean[]{false, false, true, false};
            case '3':
                return new boolean[]{false, false, true, true};
            case '4':
                return new boolean[]{false, true, false, false};
            case '5':
                return new boolean[]{false, true, false, true};
            case '6':
                return new boolean[]{false, true, true, false};
            case '7':
                return new boolean[]{false, true, true, true};
            case '8':
                return new boolean[]{true, false, false, false};
            case '9':
                return new boolean[]{true, false, false, true};
            default:
                switch (c) {
                    case 'A':
                        return new boolean[]{true, false, true, false};
                    case 'B':
                        return new boolean[]{true, false, true, true};
                    case 'C':
                        return new boolean[]{true, true, false, false};
                    case 'D':
                        return new boolean[]{true, true, false, true};
                    case 'E':
                        return new boolean[]{true, true, true, false};
                    case 'F':
                        return new boolean[]{true, true, true, true};
                    default:
                        switch (c) {
                            case 'a':
                                break;
                            case 'b':
                                break;
                            case 'c':
                                break;
                            case 'd':
                                break;
                            case 'e':
                                break;
                            case 'f':
                                break;
                            default:
                                throw new IllegalArgumentException("Cannot interpret '" + c + "' as a hexadecimal digit");
                        }
                }
        }
    }
}
