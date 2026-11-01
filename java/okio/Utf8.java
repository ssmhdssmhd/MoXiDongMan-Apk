package okio;

import android.support.v4.m41;
import android.support.v4.ub2;
import android.support.v4.wp0;
import android.support.v4.xp0;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

@wp0(name = "Utf8")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\f\n\u0002\b\u0010\u001a'\u0010\u0007\u001a\u00020\u0004*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0011\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0001H\u0080\b\u001a\u0011\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0080\b\u001a4\u0010\u0011\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0013\u001a\u00020\u000f*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0015\u001a\u00020\u000f*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0016\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0017\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\u001a4\u0010\u0018\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000f0\u000eH\u0080\bø\u0001\u0000\"\u0016\u0010\u0019\u001a\u00020\u000b8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a\"\u0016\u0010\u001b\u001a\u00020\u00148\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c\"\u0016\u0010\u001d\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e\"\u0016\u0010\u001f\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001e\"\u0016\u0010 \u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b \u0010\u001e\"\u0016\u0010!\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b!\u0010\u001e\"\u0016\u0010\"\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\"\u0010\u001e\"\u0016\u0010#\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b#\u0010\u001e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006$"}, d2 = {"", "", "beginIndex", "endIndex", "", "size", "(Ljava/lang/String;II)J", "utf8Size", "codePoint", "", "isIsoControl", "", "byte", "isUtf8Continuation", "Lkotlin/Function1;", "Landroid/support/v4/ub2;", "yield", "processUtf8Bytes", "", "processUtf8CodePoints", "", "processUtf16Chars", "process2Utf8Bytes", "process3Utf8Bytes", "process4Utf8Bytes", "REPLACEMENT_BYTE", "B", "REPLACEMENT_CHARACTER", "C", "REPLACEMENT_CODE_POINT", OptRuntime.GeneratorState.resumptionPoint_TYPE, "HIGH_SURROGATE_HEADER", "LOG_SURROGATE_HEADER", "MASK_2BYTES", "MASK_3BYTES", "MASK_4BYTES", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i) {
        if (i >= 0 && i <= 31) {
            return true;
        }
        return 127 <= i && i <= 159;
    }

    public static final boolean isUtf8Continuation(byte b) {
        return (b & 192) == 128;
    }

    public static final int process2Utf8Bytes(@m41 byte[] bArr, int i, int i2, @m41 Function1<? super Integer, ub2> yield) {
        Csuper.m30700throw(bArr, "<this>");
        Csuper.m30700throw(yield, "yield");
        int i3 = i + 1;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b = bArr[i];
        byte b2 = bArr[i3];
        if (!((b2 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 1;
        }
        int i4 = (b2 ^ 3968) ^ (b << 6);
        if (i4 < 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        yield.invoke(Integer.valueOf(i4));
        return 2;
    }

    public static final int process3Utf8Bytes(@m41 byte[] bArr, int i, int i2, @m41 Function1<? super Integer, ub2> yield) {
        Csuper.m30700throw(bArr, "<this>");
        Csuper.m30700throw(yield, "yield");
        int i3 = i + 2;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(numValueOf);
            int i4 = i + 1;
            if (i2 > i4) {
                if ((bArr[i4] & 192) == 128) {
                    return 2;
                }
            }
            return 1;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        if (!((b2 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b3 = bArr[i3];
        if (!((b3 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 2;
        }
        int i5 = ((b3 ^ (-123008)) ^ (b2 << 6)) ^ (b << 12);
        if (i5 < 2048) {
            yield.invoke(numValueOf);
            return 3;
        }
        if (55296 <= i5 && i5 <= 57343) {
            z = true;
        }
        if (z) {
            yield.invoke(numValueOf);
            return 3;
        }
        yield.invoke(Integer.valueOf(i5));
        return 3;
    }

    public static final int process4Utf8Bytes(@m41 byte[] bArr, int i, int i2, @m41 Function1<? super Integer, ub2> yield) {
        Csuper.m30700throw(bArr, "<this>");
        Csuper.m30700throw(yield, "yield");
        int i3 = i + 3;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(numValueOf);
            int i4 = i + 1;
            if (i2 > i4) {
                if ((bArr[i4] & 192) == 128) {
                    int i5 = i + 2;
                    if (i2 > i5) {
                        if ((bArr[i5] & 192) == 128) {
                            return 3;
                        }
                    }
                    return 2;
                }
            }
            return 1;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        if (!((b2 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b3 = bArr[i + 2];
        if (!((b3 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 2;
        }
        byte b4 = bArr[i3];
        if (!((b4 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 3;
        }
        int i6 = (((b4 ^ 3678080) ^ (b3 << 6)) ^ (b2 << 12)) ^ (b << 18);
        if (i6 > 1114111) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (55296 <= i6 && i6 <= 57343) {
            z = true;
        }
        if (z) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (i6 < 65536) {
            yield.invoke(numValueOf);
            return 4;
        }
        yield.invoke(Integer.valueOf(i6));
        return 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void processUtf16Chars(@m41 byte[] bArr, int i, int i2, @m41 Function1<? super Character, ub2> yield) {
        int i3;
        Csuper.m30700throw(bArr, "<this>");
        Csuper.m30700throw(yield, "yield");
        int i4 = i;
        while (i4 < i2) {
            byte b = bArr[i4];
            if (b >= 0) {
                yield.invoke(Character.valueOf((char) b));
                i4++;
                while (i4 < i2 && bArr[i4] >= 0) {
                    yield.invoke(Character.valueOf((char) bArr[i4]));
                    i4++;
                }
            } else {
                if ((b >> 5) == -2) {
                    int i5 = i4 + 1;
                    if (i2 > i5) {
                        byte b2 = bArr[i4];
                        byte b3 = bArr[i5];
                        if ((b3 & 192) == 128) {
                            int i6 = (b3 ^ 3968) ^ (b2 << 6);
                            yield.invoke(Character.valueOf(i6 < 128 ? (char) REPLACEMENT_CODE_POINT : (char) i6));
                            ub2 ub2Var = ub2.f6820do;
                            i3 = 2;
                        }
                    }
                    yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                    ub2 ub2Var2 = ub2.f6820do;
                    i3 = 1;
                } else if ((b >> 4) == -2) {
                    int i7 = i4 + 2;
                    if (i2 <= i7) {
                        yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                        ub2 ub2Var3 = ub2.f6820do;
                        int i8 = i4 + 1;
                        if (i2 > i8) {
                            if ((bArr[i8] & 192) == 128) {
                                i3 = 2;
                            }
                        }
                        i3 = 1;
                    } else {
                        byte b4 = bArr[i4];
                        byte b5 = bArr[i4 + 1];
                        if ((b5 & 192) == 128) {
                            byte b6 = bArr[i7];
                            if ((b6 & 192) == 128) {
                                int i9 = ((b6 ^ (-123008)) ^ (b5 << 6)) ^ (b4 << 12);
                                if (i9 >= 2048) {
                                    if (55296 <= i9 && i9 <= 57343) {
                                        z = true;
                                    }
                                    char c = z ? (char) REPLACEMENT_CODE_POINT : (char) i9;
                                    yield.invoke(Character.valueOf(c));
                                    ub2 ub2Var4 = ub2.f6820do;
                                    i3 = 3;
                                }
                            } else {
                                yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                                ub2 ub2Var5 = ub2.f6820do;
                                i3 = 2;
                            }
                        } else {
                            yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                            ub2 ub2Var6 = ub2.f6820do;
                            i3 = 1;
                        }
                    }
                } else if ((b >> 3) == -2) {
                    int i10 = i4 + 3;
                    if (i2 <= i10) {
                        yield.invoke((char) 65533);
                        ub2 ub2Var7 = ub2.f6820do;
                        int i11 = i4 + 1;
                        if (i2 > i11) {
                            if ((bArr[i11] & 192) == 128) {
                                int i12 = i4 + 2;
                                if (i2 > i12) {
                                    if ((bArr[i12] & 192) == 128) {
                                        i3 = 3;
                                    }
                                }
                                i3 = 2;
                            }
                        }
                        i3 = 1;
                    } else {
                        byte b7 = bArr[i4];
                        byte b8 = bArr[i4 + 1];
                        if ((b8 & 192) == 128) {
                            byte b9 = bArr[i4 + 2];
                            if ((b9 & 192) == 128) {
                                byte b10 = bArr[i10];
                                if ((b10 & 192) == 128) {
                                    int i13 = (((b10 ^ 3678080) ^ (b9 << 6)) ^ (b8 << 12)) ^ (b7 << 18);
                                    if (i13 <= 1114111) {
                                        if (55296 <= i13 && i13 <= 57343) {
                                            z = true;
                                        }
                                        if (z || i13 < 65536 || i13 == 65533) {
                                            yield.invoke((char) 65533);
                                        } else {
                                            yield.invoke(Character.valueOf((char) ((i13 >>> 10) + HIGH_SURROGATE_HEADER)));
                                            yield.invoke(Character.valueOf((char) ((i13 & 1023) + LOG_SURROGATE_HEADER)));
                                        }
                                        ub2 ub2Var8 = ub2.f6820do;
                                        i3 = 4;
                                    }
                                } else {
                                    yield.invoke((char) 65533);
                                    ub2 ub2Var9 = ub2.f6820do;
                                    i3 = 3;
                                }
                            } else {
                                yield.invoke((char) 65533);
                                ub2 ub2Var10 = ub2.f6820do;
                                i3 = 2;
                            }
                        } else {
                            yield.invoke((char) 65533);
                            ub2 ub2Var11 = ub2.f6820do;
                            i3 = 1;
                        }
                    }
                } else {
                    yield.invoke((char) 65533);
                    i4++;
                }
                i4 += i3;
            }
        }
    }

    public static final void processUtf8Bytes(@m41 String str, int i, int i2, @m41 Function1<? super Byte, ub2> yield) {
        int i3;
        Csuper.m30700throw(str, "<this>");
        Csuper.m30700throw(yield, "yield");
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (Csuper.m30692public(cCharAt, 128) < 0) {
                yield.invoke(Byte.valueOf((byte) cCharAt));
                i++;
                while (i < i2 && Csuper.m30692public(str.charAt(i), 128) < 0) {
                    yield.invoke(Byte.valueOf((byte) str.charAt(i)));
                    i++;
                }
            } else {
                if (Csuper.m30692public(cCharAt, 2048) < 0) {
                    yield.invoke(Byte.valueOf((byte) ((cCharAt >> 6) | 192)));
                    yield.invoke(Byte.valueOf((byte) ((cCharAt & '?') | 128)));
                } else {
                    boolean z = false;
                    if (55296 <= cCharAt && cCharAt <= 57343) {
                        if (Csuper.m30692public(cCharAt, 56319) <= 0 && i2 > (i3 = i + 1)) {
                            char cCharAt2 = str.charAt(i3);
                            if (56320 <= cCharAt2 && cCharAt2 <= 57343) {
                                z = true;
                            }
                            if (z) {
                                int iCharAt = ((cCharAt << '\n') + str.charAt(i3)) - 56613888;
                                yield.invoke(Byte.valueOf((byte) ((iCharAt >> 18) | MountainSceneView.f20267finally)));
                                yield.invoke(Byte.valueOf((byte) (((iCharAt >> 12) & 63) | 128)));
                                yield.invoke(Byte.valueOf((byte) (((iCharAt >> 6) & 63) | 128)));
                                yield.invoke(Byte.valueOf((byte) ((iCharAt & 63) | 128)));
                                i += 2;
                            }
                        }
                        yield.invoke(Byte.valueOf(REPLACEMENT_BYTE));
                    } else {
                        yield.invoke(Byte.valueOf((byte) ((cCharAt >> '\f') | 224)));
                        yield.invoke(Byte.valueOf((byte) (((cCharAt >> 6) & 63) | 128)));
                        yield.invoke(Byte.valueOf((byte) ((cCharAt & '?') | 128)));
                    }
                }
                i++;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void processUtf8CodePoints(@m41 byte[] bArr, int i, int i2, @m41 Function1<? super Integer, ub2> yield) {
        int i3;
        Csuper.m30700throw(bArr, "<this>");
        Csuper.m30700throw(yield, "yield");
        int i4 = i;
        while (i4 < i2) {
            byte b = bArr[i4];
            if (b >= 0) {
                yield.invoke(Integer.valueOf(b));
                i4++;
                while (i4 < i2 && bArr[i4] >= 0) {
                    yield.invoke(Integer.valueOf(bArr[i4]));
                    i4++;
                }
            } else {
                if ((b >> 5) == -2) {
                    int i5 = i4 + 1;
                    if (i2 > i5) {
                        byte b2 = bArr[i4];
                        byte b3 = bArr[i5];
                        if ((b3 & 192) == 128) {
                            int i6 = (b3 ^ 3968) ^ (b2 << 6);
                            yield.invoke(i6 < 128 ? Integer.valueOf(REPLACEMENT_CODE_POINT) : Integer.valueOf(i6));
                            ub2 ub2Var = ub2.f6820do;
                            i3 = 2;
                        }
                    }
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    ub2 ub2Var2 = ub2.f6820do;
                    i3 = 1;
                } else if ((b >> 4) == -2) {
                    int i7 = i4 + 2;
                    if (i2 <= i7) {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        ub2 ub2Var3 = ub2.f6820do;
                        int i8 = i4 + 1;
                        if (i2 > i8) {
                            if ((bArr[i8] & 192) == 128) {
                                i3 = 2;
                            }
                        }
                        i3 = 1;
                    } else {
                        byte b4 = bArr[i4];
                        byte b5 = bArr[i4 + 1];
                        if ((b5 & 192) == 128) {
                            byte b6 = bArr[i7];
                            if ((b6 & 192) == 128) {
                                int i9 = ((b6 ^ (-123008)) ^ (b5 << 6)) ^ (b4 << 12);
                                if (i9 >= 2048) {
                                    if (55296 <= i9 && i9 <= 57343) {
                                        z = true;
                                    }
                                    Integer numValueOf = z ? Integer.valueOf(REPLACEMENT_CODE_POINT) : Integer.valueOf(i9);
                                    yield.invoke(numValueOf);
                                    ub2 ub2Var4 = ub2.f6820do;
                                    i3 = 3;
                                }
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                ub2 ub2Var5 = ub2.f6820do;
                                i3 = 2;
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            ub2 ub2Var6 = ub2.f6820do;
                            i3 = 1;
                        }
                    }
                } else if ((b >> 3) == -2) {
                    int i10 = i4 + 3;
                    if (i2 <= i10) {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        ub2 ub2Var7 = ub2.f6820do;
                        int i11 = i4 + 1;
                        if (i2 > i11) {
                            if ((bArr[i11] & 192) == 128) {
                                int i12 = i4 + 2;
                                if (i2 > i12) {
                                    if ((bArr[i12] & 192) == 128) {
                                        i3 = 3;
                                    }
                                }
                                i3 = 2;
                            }
                        }
                        i3 = 1;
                    } else {
                        byte b7 = bArr[i4];
                        byte b8 = bArr[i4 + 1];
                        if ((b8 & 192) == 128) {
                            byte b9 = bArr[i4 + 2];
                            if ((b9 & 192) == 128) {
                                byte b10 = bArr[i10];
                                if ((b10 & 192) == 128) {
                                    int i13 = (((b10 ^ 3678080) ^ (b9 << 6)) ^ (b8 << 12)) ^ (b7 << 18);
                                    if (i13 <= 1114111) {
                                        if (55296 <= i13 && i13 <= 57343) {
                                            z = true;
                                        }
                                        Integer numValueOf2 = (!z && i13 >= 65536) ? Integer.valueOf(i13) : Integer.valueOf(REPLACEMENT_CODE_POINT);
                                        yield.invoke(numValueOf2);
                                        ub2 ub2Var8 = ub2.f6820do;
                                        i3 = 4;
                                    }
                                } else {
                                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                    ub2 ub2Var9 = ub2.f6820do;
                                    i3 = 3;
                                }
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                ub2 ub2Var10 = ub2.f6820do;
                                i3 = 2;
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            ub2 ub2Var11 = ub2.f6820do;
                            i3 = 1;
                        }
                    }
                } else {
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    i4++;
                }
                i4 += i3;
            }
        }
    }

    @wp0(name = "size")
    @xp0
    public static final long size(@m41 String str) {
        Csuper.m30700throw(str, "<this>");
        return size$default(str, 0, 0, 3, null);
    }

    @wp0(name = "size")
    @xp0
    public static final long size(@m41 String str, int i) {
        Csuper.m30700throw(str, "<this>");
        return size$default(str, i, 0, 2, null);
    }

    @wp0(name = "size")
    @xp0
    public static final long size(@m41 String str, int i, int i2) {
        int i3;
        Csuper.m30700throw(str, "<this>");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("beginIndex < 0: ", Integer.valueOf(i)).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= str.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + str.length()).toString());
        }
        long j = 0;
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 128) {
                j++;
            } else {
                if (cCharAt < 2048) {
                    i3 = 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    i3 = 3;
                } else {
                    int i4 = i + 1;
                    char cCharAt2 = i4 < i2 ? str.charAt(i4) : (char) 0;
                    if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                        j++;
                        i = i4;
                    } else {
                        j += 4;
                        i += 2;
                    }
                }
                j += i3;
            }
            i++;
        }
        return j;
    }

    public static /* synthetic */ long size$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return size(str, i, i2);
    }
}
