package android.support.v4;

import com.google.common.escape.Ccase;
import net.lingala.zip4j.crypto.PBKDF2.Cdo;
import org.apache.commons.lang3.Cclass;

@ki0
@o8
/* loaded from: classes2.dex */
public final class cd1 extends Ccase {

    /* renamed from: for, reason: not valid java name */
    private final boolean f741for;

    /* renamed from: new, reason: not valid java name */
    private final boolean[] f742new;

    /* renamed from: try, reason: not valid java name */
    private static final char[] f740try = {hy1.f2562if};

    /* renamed from: case, reason: not valid java name */
    private static final char[] f739case = Cdo.f28079do.toCharArray();

    public cd1(String str, boolean z) {
        af1.m205continue(str);
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        String str2 = str + "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        if (z && str2.contains(Cclass.f28652do)) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        }
        this.f741for = z;
        this.f742new = m850goto(str2);
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean[] m850goto(String str) {
        char[] charArray = str.toCharArray();
        int iMax = -1;
        for (char c : charArray) {
            iMax = Math.max((int) c, iMax);
        }
        boolean[] zArr = new boolean[iMax + 1];
        for (char c2 : charArray) {
            zArr[c2] = true;
        }
        return zArr;
    }

    @Override // com.google.common.escape.Ccase
    /* renamed from: else, reason: not valid java name */
    public int mo851else(CharSequence charSequence, int i, int i2) {
        af1.m205continue(charSequence);
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            boolean[] zArr = this.f742new;
            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                break;
            }
            i++;
        }
        return i;
    }

    @Override // com.google.common.escape.Ccase, com.google.common.escape.Cfor
    /* renamed from: if, reason: not valid java name */
    public String mo852if(String str) {
        af1.m205continue(str);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            boolean[] zArr = this.f742new;
            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                return m16594try(str, i);
            }
        }
        return str;
    }

    @Override // com.google.common.escape.Ccase
    /* renamed from: new, reason: not valid java name */
    public char[] mo853new(int i) {
        boolean[] zArr = this.f742new;
        if (i < zArr.length && zArr[i]) {
            return null;
        }
        if (i == 32 && this.f741for) {
            return f740try;
        }
        if (i <= 127) {
            char[] cArr = f739case;
            return new char[]{'%', cArr[i >>> 4], cArr[i & 15]};
        }
        if (i <= 2047) {
            char[] cArr2 = f739case;
            char[] cArr3 = {'%', cArr2[(i >>> 4) | 12], cArr2[i & 15], '%', cArr2[(i & 3) | 8], cArr2[i & 15]};
            int i2 = i >>> 4;
            int i3 = i2 >>> 2;
            return cArr3;
        }
        if (i <= 65535) {
            char[] cArr4 = f739case;
            char[] cArr5 = {'%', 'E', cArr4[i >>> 2], '%', cArr4[(i & 3) | 8], cArr4[i & 15], '%', cArr4[(i & 3) | 8], cArr4[i & 15]};
            int i4 = i >>> 4;
            int i5 = i4 >>> 2;
            int i6 = i5 >>> 4;
            return cArr5;
        }
        if (i > 1114111) {
            throw new IllegalArgumentException("Invalid unicode character value " + i);
        }
        char[] cArr6 = f739case;
        char[] cArr7 = {'%', 'F', cArr6[(i >>> 2) & 7], '%', cArr6[(i & 3) | 8], cArr6[i & 15], '%', cArr6[(i & 3) | 8], cArr6[i & 15], '%', cArr6[(i & 3) | 8], cArr6[i & 15]};
        int i7 = i >>> 4;
        int i8 = i7 >>> 2;
        int i9 = i8 >>> 4;
        int i10 = i9 >>> 2;
        int i11 = i10 >>> 4;
        return cArr7;
    }
}
