package okio.internal;

import android.support.v4.m41;
import android.support.v4.ub2;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import java.util.Arrays;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import okio.Utf8;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0010\u0012\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001e\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001\u001a\n\u0010\u0006\u001a\u00020\u0000*\u00020\u0004¨\u0006\u0007"}, d2 = {"", "", "beginIndex", "endIndex", "", "commonToUtf8String", "commonAsUtf8ToByteArray", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class _Utf8Kt {
    @m41
    public static final byte[] commonAsUtf8ToByteArray(@m41 String str) {
        int i;
        int i2;
        Csuper.m30700throw(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        if (length > 0) {
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                char cCharAt = str.charAt(i3);
                if (Csuper.m30692public(cCharAt, 128) >= 0) {
                    int length2 = str.length();
                    int i5 = i3;
                    while (i3 < length2) {
                        char cCharAt2 = str.charAt(i3);
                        if (Csuper.m30692public(cCharAt2, 128) < 0) {
                            int i6 = i5 + 1;
                            bArr[i5] = (byte) cCharAt2;
                            i3++;
                            while (true) {
                                i5 = i6;
                                if (i3 >= length2 || Csuper.m30692public(str.charAt(i3), 128) >= 0) {
                                    break;
                                }
                                i6 = i5 + 1;
                                bArr[i5] = (byte) str.charAt(i3);
                                i3++;
                            }
                        } else {
                            if (Csuper.m30692public(cCharAt2, 2048) < 0) {
                                int i7 = i5 + 1;
                                bArr[i5] = (byte) ((cCharAt2 >> 6) | 192);
                                byte b = (byte) ((cCharAt2 & '?') | 128);
                                i = i7 + 1;
                                bArr[i7] = b;
                            } else {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                                    if (Csuper.m30692public(cCharAt2, 56319) <= 0 && length2 > (i2 = i3 + 1)) {
                                        char cCharAt3 = str.charAt(i2);
                                        if (56320 <= cCharAt3 && cCharAt3 <= 57343) {
                                            int iCharAt = ((cCharAt2 << '\n') + str.charAt(i2)) - 56613888;
                                            int i8 = i5 + 1;
                                            bArr[i5] = (byte) ((iCharAt >> 18) | MountainSceneView.f20267finally);
                                            int i9 = i8 + 1;
                                            bArr[i8] = (byte) (((iCharAt >> 12) & 63) | 128);
                                            int i10 = i9 + 1;
                                            bArr[i9] = (byte) (((iCharAt >> 6) & 63) | 128);
                                            byte b2 = (byte) ((iCharAt & 63) | 128);
                                            i = i10 + 1;
                                            bArr[i10] = b2;
                                            i3 += 2;
                                            i5 = i;
                                        }
                                    }
                                    i = i5 + 1;
                                    bArr[i5] = Utf8.REPLACEMENT_BYTE;
                                } else {
                                    int i11 = i5 + 1;
                                    bArr[i5] = (byte) ((cCharAt2 >> '\f') | 224);
                                    int i12 = i11 + 1;
                                    bArr[i11] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                                    byte b3 = (byte) ((cCharAt2 & '?') | 128);
                                    i = i12 + 1;
                                    bArr[i12] = b3;
                                }
                            }
                            i3++;
                            i5 = i;
                        }
                    }
                    byte[] bArrCopyOf = Arrays.copyOf(bArr, i5);
                    Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
                    return bArrCopyOf;
                }
                bArr[i3] = (byte) cCharAt;
                if (i4 >= length) {
                    break;
                }
                i3 = i4;
            }
        }
        byte[] bArrCopyOf2 = Arrays.copyOf(bArr, str.length());
        Csuper.m30696super(bArrCopyOf2, "java.util.Arrays.copyOf(this, newSize)");
        return bArrCopyOf2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x009d, code lost:
    
        if (((r16[r5] & 192) == 128) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0123, code lost:
    
        if (((r16[r5] & 192) == 128) == false) goto L97;
     */
    @m41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String commonToUtf8String(@m41 byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = i;
        Csuper.m30700throw(bArr, "<this>");
        if (i8 < 0 || i2 > bArr.length || i8 > i2) {
            throw new ArrayIndexOutOfBoundsException("size=" + bArr.length + " beginIndex=" + i8 + " endIndex=" + i2);
        }
        char[] cArr = new char[i2 - i8];
        int i9 = 0;
        while (i8 < i2) {
            byte b = bArr[i8];
            if (b >= 0) {
                int i10 = i9 + 1;
                cArr[i9] = (char) b;
                i8++;
                while (true) {
                    i9 = i10;
                    if (i8 >= i2 || bArr[i8] < 0) {
                        break;
                    }
                    i10 = i9 + 1;
                    cArr[i9] = (char) bArr[i8];
                    i8++;
                }
            } else {
                if ((b >> 5) == -2) {
                    int i11 = i8 + 1;
                    if (i2 <= i11) {
                        i3 = i9 + 1;
                        cArr[i9] = (char) Utf8.REPLACEMENT_CODE_POINT;
                    } else {
                        byte b2 = bArr[i8];
                        byte b3 = bArr[i11];
                        if ((b3 & 192) == 128) {
                            int i12 = (b3 ^ 3968) ^ (b2 << 6);
                            if (i12 < 128) {
                                i3 = i9 + 1;
                                cArr[i9] = (char) Utf8.REPLACEMENT_CODE_POINT;
                            } else {
                                i3 = i9 + 1;
                                cArr[i9] = (char) i12;
                            }
                            ub2 ub2Var = ub2.f6820do;
                            i9 = i3;
                            i4 = 2;
                        } else {
                            i3 = i9 + 1;
                            cArr[i9] = (char) Utf8.REPLACEMENT_CODE_POINT;
                        }
                    }
                    ub2 ub2Var2 = ub2.f6820do;
                    i9 = i3;
                    i4 = 1;
                } else {
                    if ((b >> 4) == -2) {
                        int i13 = i8 + 2;
                        if (i2 <= i13) {
                            i3 = i9 + 1;
                            cArr[i9] = (char) Utf8.REPLACEMENT_CODE_POINT;
                            ub2 ub2Var3 = ub2.f6820do;
                            int i14 = i8 + 1;
                            if (i2 > i14) {
                            }
                            i9 = i3;
                            i4 = 1;
                        } else {
                            byte b4 = bArr[i8];
                            byte b5 = bArr[i8 + 1];
                            if ((b5 & 192) == 128) {
                                byte b6 = bArr[i13];
                                if ((b6 & 192) == 128) {
                                    int i15 = ((b6 ^ (-123008)) ^ (b5 << 6)) ^ (b4 << 12);
                                    if (i15 < 2048) {
                                        i5 = i9 + 1;
                                        cArr[i9] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                    } else {
                                        if (55296 <= i15 && i15 <= 57343) {
                                            i5 = i9 + 1;
                                            cArr[i9] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                        } else {
                                            i5 = i9 + 1;
                                            cArr[i9] = (char) i15;
                                        }
                                    }
                                    ub2 ub2Var4 = ub2.f6820do;
                                    i9 = i5;
                                } else {
                                    i3 = i9 + 1;
                                    cArr[i9] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                    ub2 ub2Var5 = ub2.f6820do;
                                    i9 = i3;
                                    i4 = 2;
                                }
                            } else {
                                i3 = i9 + 1;
                                cArr[i9] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                ub2 ub2Var6 = ub2.f6820do;
                                i9 = i3;
                                i4 = 1;
                            }
                        }
                    } else if ((b >> 3) == -2) {
                        int i16 = i8 + 3;
                        if (i2 <= i16) {
                            i7 = i9 + 1;
                            cArr[i9] = 65533;
                            ub2 ub2Var7 = ub2.f6820do;
                            int i17 = i8 + 1;
                            if (i2 > i17) {
                                if ((bArr[i17] & 192) == 128) {
                                    int i18 = i8 + 2;
                                    if (i2 > i18) {
                                    }
                                    i9 = i7;
                                    i4 = 2;
                                }
                            }
                            i9 = i7;
                            i4 = 1;
                        } else {
                            byte b7 = bArr[i8];
                            byte b8 = bArr[i8 + 1];
                            if ((b8 & 192) == 128) {
                                byte b9 = bArr[i8 + 2];
                                if ((b9 & 192) == 128) {
                                    byte b10 = bArr[i16];
                                    if ((b10 & 192) == 128) {
                                        int i19 = (((b10 ^ 3678080) ^ (b9 << 6)) ^ (b8 << 12)) ^ (b7 << 18);
                                        if (i19 > 1114111) {
                                            i6 = i9 + 1;
                                            cArr[i9] = 65533;
                                        } else {
                                            if ((55296 <= i19 && i19 <= 57343) || i19 < 65536 || i19 == 65533) {
                                                i6 = i9 + 1;
                                                cArr[i9] = 65533;
                                            } else {
                                                int i20 = i9 + 1;
                                                cArr[i9] = (char) ((i19 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                                                char c = (char) ((i19 & 1023) + Utf8.LOG_SURROGATE_HEADER);
                                                i6 = i20 + 1;
                                                cArr[i20] = c;
                                            }
                                        }
                                        ub2 ub2Var8 = ub2.f6820do;
                                        i4 = 4;
                                        i9 = i6;
                                    } else {
                                        i7 = i9 + 1;
                                        cArr[i9] = 65533;
                                        ub2 ub2Var9 = ub2.f6820do;
                                        i9 = i7;
                                    }
                                } else {
                                    i7 = i9 + 1;
                                    cArr[i9] = 65533;
                                    ub2 ub2Var10 = ub2.f6820do;
                                    i9 = i7;
                                    i4 = 2;
                                }
                            } else {
                                i7 = i9 + 1;
                                cArr[i9] = 65533;
                                ub2 ub2Var11 = ub2.f6820do;
                                i9 = i7;
                                i4 = 1;
                            }
                        }
                    } else {
                        cArr[i9] = 65533;
                        i8++;
                        i9++;
                    }
                    i4 = 3;
                }
                i8 += i4;
            }
        }
        return Creturn.H0(cArr, 0, i9);
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        return commonToUtf8String(bArr, i, i2);
    }
}
