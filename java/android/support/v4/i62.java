package android.support.v4;

import com.google.protobuf.ByteString;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class i62 {

    /* renamed from: try, reason: not valid java name */
    private static final int f2635try = 4096;

    /* renamed from: do, reason: not valid java name */
    private static final Pattern f2631do = Pattern.compile("-?inf(inity)?", 2);

    /* renamed from: if, reason: not valid java name */
    private static final Pattern f2633if = Pattern.compile("-?inf(inity)?f?", 2);

    /* renamed from: for, reason: not valid java name */
    private static final Pattern f2632for = Pattern.compile("nanf?", 2);

    /* renamed from: new, reason: not valid java name */
    private static final Pattern f2634new = Pattern.compile("[0-9]", 2);

    /* renamed from: break, reason: not valid java name */
    public static long m3281break(String str) throws NumberFormatException {
        return m3283catch(str, true, true);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m3282case(String str) throws IllegalArgumentException {
        if (str.equalsIgnoreCase(freemarker.core.b2.f23511if) || str.equalsIgnoreCase(com.umeng.analytics.pro.ak.aH) || str.equals("1")) {
            return true;
        }
        if (str.equalsIgnoreCase(freemarker.core.b2.f23510do) || str.equalsIgnoreCase("f") || str.equals("0")) {
            return false;
        }
        throw new IllegalArgumentException("Expected \"true\" or \"false\".");
    }

    /* renamed from: catch, reason: not valid java name */
    public static long m3283catch(String str, boolean z, boolean z2) throws NumberFormatException {
        int i = 0;
        boolean z3 = true;
        if (!str.startsWith("-", 0)) {
            z3 = false;
        } else {
            if (!z) {
                throw new NumberFormatException("Number must be positive: " + str);
            }
            i = 1;
        }
        int i2 = 10;
        if (str.startsWith("0x", i)) {
            i += 2;
            i2 = 16;
        } else if (str.startsWith("0", i)) {
            i2 = 8;
        }
        String strSubstring = str.substring(i);
        if (strSubstring.length() < 16) {
            long j = Long.parseLong(strSubstring, i2);
            if (z3) {
                j = -j;
            }
            if (z2) {
                return j;
            }
            if (z) {
                if (j <= 2147483647L && j >= -2147483648L) {
                    return j;
                }
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
            }
            if (j < freemarker.core.o3.f24027catch && j >= 0) {
                return j;
            }
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
        }
        BigInteger bigInteger = new BigInteger(strSubstring, i2);
        if (z3) {
            bigInteger = bigInteger.negate();
        }
        if (z2) {
            if (z) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: " + str);
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + str);
            }
        } else if (z) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
        }
        return bigInteger.longValue();
    }

    /* renamed from: class, reason: not valid java name */
    public static int m3284class(String str) throws NumberFormatException {
        return (int) m3283catch(str, false, false);
    }

    /* renamed from: const, reason: not valid java name */
    public static long m3285const(String str) throws NumberFormatException {
        return m3283catch(str, false, true);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m3286do(char c) {
        if ('0' > c || c > '9') {
            return (('a' > c || c > 'z') ? c - 'A' : c - 'a') + 10;
        }
        return c - '0';
    }

    /* renamed from: else, reason: not valid java name */
    public static double m3287else(String str) throws NumberFormatException {
        if (f2631do.matcher(str).matches()) {
            return str.startsWith("-") ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        }
        if (str.equalsIgnoreCase("nan")) {
            return Double.NaN;
        }
        return Double.parseDouble(str);
    }

    /* renamed from: final, reason: not valid java name */
    public static InputStream m3288final(String str) {
        return m3296super(str, Charset.defaultCharset());
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m3289for(String str) {
        return f2634new.matcher(str).matches();
    }

    /* renamed from: goto, reason: not valid java name */
    public static float m3290goto(String str) throws NumberFormatException {
        if (f2633if.matcher(str).matches()) {
            return str.startsWith("-") ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
        }
        if (f2632for.matcher(str).matches()) {
            return Float.NaN;
        }
        return Float.parseFloat(str);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m3291if(ByteString byteString) {
        StringBuilder sb = new StringBuilder(byteString.size());
        for (int i = 0; i < byteString.size(); i++) {
            byte bByteAt = byteString.byteAt(i);
            if (bByteAt == 34) {
                sb.append("\\\"");
            } else if (bByteAt == 39) {
                sb.append("\\'");
            } else if (bByteAt != 92) {
                switch (bByteAt) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bByteAt >= 32) {
                            sb.append((char) bByteAt);
                            break;
                        } else {
                            sb.append('\\');
                            sb.append((char) (((bByteAt >>> 6) & 3) + 48));
                            sb.append((char) (((bByteAt >>> 3) & 7) + 48));
                            sb.append((char) ((bByteAt & 7) + 48));
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: import, reason: not valid java name */
    public static BigInteger m3292import(long j) {
        return j < 0 ? BigInteger.valueOf(j & Long.MAX_VALUE).setBit(63) : BigInteger.valueOf(j);
    }

    /* renamed from: native, reason: not valid java name */
    public static String m3293native(int i) {
        return i >= 0 ? Integer.toString(i) : Long.toString(i & 4294967295L);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m3294new(char c) {
        return ('0' <= c && c <= '9') || ('a' <= c && c <= 'f') || ('A' <= c && c <= 'F');
    }

    /* renamed from: public, reason: not valid java name */
    public static String m3295public(long j) {
        return j >= 0 ? Long.toString(j) : BigInteger.valueOf(j & Long.MAX_VALUE).setBit(63).toString();
    }

    /* renamed from: super, reason: not valid java name */
    public static InputStream m3296super(String str, Charset charset) {
        return new ByteArrayInputStream(str.getBytes(charset));
    }

    /* renamed from: this, reason: not valid java name */
    public static int m3297this(String str) throws NumberFormatException {
        return (int) m3283catch(str, true, false);
    }

    /* renamed from: throw, reason: not valid java name */
    public static StringBuilder m3298throw(Readable readable) throws IOException {
        StringBuilder sb = new StringBuilder();
        CharBuffer charBufferAllocate = CharBuffer.allocate(4096);
        while (true) {
            int i = readable.read(charBufferAllocate);
            if (i == -1) {
                return sb;
            }
            charBufferAllocate.flip();
            sb.append((CharSequence) charBufferAllocate, 0, i);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m3299try(char c) {
        return '0' <= c && c <= '7';
    }

    /* renamed from: while, reason: not valid java name */
    public static ByteString m3300while(CharSequence charSequence) {
        int i;
        int i2;
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8(charSequence.toString());
        byte[] bArr = new byte[byteStringCopyFromUtf8.size()];
        int i3 = 0;
        int i4 = 0;
        while (i3 < byteStringCopyFromUtf8.size()) {
            byte bByteAt = byteStringCopyFromUtf8.byteAt(i3);
            if (bByteAt == 92) {
                i3++;
                if (i3 >= byteStringCopyFromUtf8.size()) {
                    throw new IllegalArgumentException("Invalid escape sequence: '\\' at end of string.");
                }
                byte bByteAt2 = byteStringCopyFromUtf8.byteAt(i3);
                char c = (char) bByteAt2;
                if (m3299try(c)) {
                    int iM3286do = m3286do(c);
                    int i5 = i3 + 1;
                    if (i5 < byteStringCopyFromUtf8.size() && m3299try((char) byteStringCopyFromUtf8.byteAt(i5))) {
                        iM3286do = (iM3286do * 8) + m3286do((char) byteStringCopyFromUtf8.byteAt(i5));
                        i3 = i5;
                    }
                    int i6 = i3 + 1;
                    if (i6 < byteStringCopyFromUtf8.size() && m3299try((char) byteStringCopyFromUtf8.byteAt(i6))) {
                        iM3286do = (iM3286do * 8) + m3286do((char) byteStringCopyFromUtf8.byteAt(i6));
                        i3 = i6;
                    }
                    i = i4 + 1;
                    bArr[i4] = (byte) iM3286do;
                } else {
                    if (bByteAt2 == 34) {
                        i2 = i4 + 1;
                        bArr[i4] = 34;
                    } else if (bByteAt2 == 39) {
                        i2 = i4 + 1;
                        bArr[i4] = 39;
                    } else if (bByteAt2 == 92) {
                        i2 = i4 + 1;
                        bArr[i4] = 92;
                    } else if (bByteAt2 == 102) {
                        i2 = i4 + 1;
                        bArr[i4] = 12;
                    } else if (bByteAt2 == 110) {
                        i2 = i4 + 1;
                        bArr[i4] = 10;
                    } else if (bByteAt2 == 114) {
                        i2 = i4 + 1;
                        bArr[i4] = 13;
                    } else if (bByteAt2 == 116) {
                        i2 = i4 + 1;
                        bArr[i4] = 9;
                    } else if (bByteAt2 == 118) {
                        i2 = i4 + 1;
                        bArr[i4] = 11;
                    } else if (bByteAt2 == 120) {
                        i3++;
                        if (i3 >= byteStringCopyFromUtf8.size() || !m3294new((char) byteStringCopyFromUtf8.byteAt(i3))) {
                            throw new IllegalArgumentException("Invalid escape sequence: '\\x' with no digits");
                        }
                        int iM3286do2 = m3286do((char) byteStringCopyFromUtf8.byteAt(i3));
                        int i7 = i3 + 1;
                        if (i7 < byteStringCopyFromUtf8.size() && m3294new((char) byteStringCopyFromUtf8.byteAt(i7))) {
                            iM3286do2 = (iM3286do2 * 16) + m3286do((char) byteStringCopyFromUtf8.byteAt(i7));
                            i3 = i7;
                        }
                        bArr[i4] = (byte) iM3286do2;
                        i2 = i4 + 1;
                    } else if (bByteAt2 == 97) {
                        i2 = i4 + 1;
                        bArr[i4] = 7;
                    } else {
                        if (bByteAt2 != 98) {
                            throw new IllegalArgumentException("Invalid escape sequence: '\\" + c + '\'');
                        }
                        i2 = i4 + 1;
                        bArr[i4] = 8;
                    }
                    i4 = i2;
                    i3++;
                }
            } else {
                i = i4 + 1;
                bArr[i4] = bByteAt;
            }
            i4 = i;
            i3++;
        }
        return ByteString.copyFrom(bArr, 0, i4);
    }
}
