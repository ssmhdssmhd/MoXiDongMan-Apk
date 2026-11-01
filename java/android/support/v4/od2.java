package android.support.v4;

@ki0(emulated = true)
@o8
/* loaded from: classes.dex */
public final class od2 {
    private od2() {
    }

    /* renamed from: case, reason: not valid java name */
    private static String m5567case(int i) {
        return "Unpaired surrogate at index " + i;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m5568do(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int iM5570if = length;
        while (true) {
            if (i < length) {
                char cCharAt = charSequence.charAt(i);
                if (cCharAt >= 2048) {
                    iM5570if += m5570if(charSequence, i);
                    break;
                }
                iM5570if += (127 - cCharAt) >>> 31;
                i++;
            } else {
                break;
            }
        }
        if (iM5570if >= length) {
            return iM5570if;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (iM5570if + freemarker.core.o3.f24027catch));
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m5569for(byte[] bArr) {
        return m5571new(bArr, 0, bArr.length);
    }

    /* renamed from: if, reason: not valid java name */
    private static int m5570if(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i) == cCharAt) {
                        throw new IllegalArgumentException(m5567case(i));
                    }
                    i++;
                }
            }
            i++;
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m5571new(byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        af1.s(i, i3, bArr.length);
        while (i < i3) {
            if (bArr[i] < 0) {
                return m5572try(bArr, i, i3);
            }
            i++;
        }
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    private static boolean m5572try(byte[] bArr, int i, int i2) {
        byte b;
        while (i < i2) {
            int i3 = i + 1;
            byte b2 = bArr[i];
            if (b2 < 0) {
                if (b2 < -32) {
                    if (i3 != i2 && b2 >= -62) {
                        i = i3 + 1;
                        if (bArr[i3] > -65) {
                        }
                    }
                    return false;
                }
                if (b2 < -16) {
                    int i4 = i3 + 1;
                    if (i4 < i2 && (b = bArr[i3]) <= -65 && ((b2 != -32 || b >= -96) && (b2 != -19 || -96 > b))) {
                        i = i4 + 1;
                        if (bArr[i4] > -65) {
                        }
                    }
                    return false;
                }
                if (i3 + 2 >= i2) {
                    return false;
                }
                int i5 = i3 + 1;
                byte b3 = bArr[i3];
                if (b3 <= -65 && (((b2 << t3.f6403strictfp) + (b3 + 112)) >> 30) == 0) {
                    int i6 = i5 + 1;
                    if (bArr[i5] <= -65) {
                        i3 = i6 + 1;
                        if (bArr[i6] > -65) {
                        }
                    }
                }
                return false;
            }
            i = i3;
        }
        return true;
    }
}
