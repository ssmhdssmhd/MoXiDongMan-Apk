package okio.internal;

import android.support.v4.m41;
import android.support.v4.ub2;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.umeng.analytics.pro.ak;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import okio.Buffer;
import okio.ByteString;
import okio._Base64Kt;
import okio._JvmPlatformKt;
import okio._UtilKt;
import org.apache.commons.lang3.Cclass;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0006\n\u0002\u0010\u0019\n\u0002\b\u0007\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0080\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0000H\u0080\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0080\b\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u0080\b\u001a\r\u0010\u0006\u001a\u00020\u0000*\u00020\u0000H\u0080\b\u001a\r\u0010\u0007\u001a\u00020\u0000*\u00020\u0000H\u0080\b\u001a\u001d\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0080\b\u001a\u0015\u0010\u000e\u001a\u00020\r*\u00020\u00002\u0006\u0010\f\u001a\u00020\bH\u0080\b\u001a\r\u0010\u000f\u001a\u00020\b*\u00020\u0000H\u0080\b\u001a\r\u0010\u0011\u001a\u00020\u0010*\u00020\u0000H\u0080\b\u001a\r\u0010\u0012\u001a\u00020\u0010*\u00020\u0000H\u0080\b\u001a-\u0010\u0018\u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\bH\u0080\b\u001a-\u0010\u0018\u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\bH\u0080\b\u001a-\u0010\u001c\u001a\u00020\u001b*\u00020\u00002\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\bH\u0080\b\u001a\u0015\u0010\u001e\u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0000H\u0080\b\u001a\u0015\u0010\u001e\u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0010H\u0080\b\u001a\u0015\u0010 \u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0000H\u0080\b\u001a\u0015\u0010 \u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0010H\u0080\b\u001a\u001d\u0010\"\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\bH\u0080\b\u001a\u001d\u0010#\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\bH\u0080\b\u001a\u001d\u0010#\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\bH\u0080\b\u001a\u0017\u0010%\u001a\u00020\u0017*\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010$H\u0080\b\u001a\r\u0010&\u001a\u00020\b*\u00020\u0000H\u0080\b\u001a\u0015\u0010'\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0000H\u0080\b\u001a\u0011\u0010)\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0010H\u0080\b\u001a\u001d\u0010*\u001a\u00020\u0000*\u00020\u00102\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\bH\u0080\b\u001a\r\u0010+\u001a\u00020\u0000*\u00020\u0001H\u0080\b\u001a\u000f\u0010,\u001a\u0004\u0018\u00010\u0000*\u00020\u0001H\u0080\b\u001a\r\u0010-\u001a\u00020\u0000*\u00020\u0001H\u0080\b\u001a$\u00100\u001a\u00020\u001b*\u00020\u00002\u0006\u0010/\u001a\u00020.2\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\bH\u0000\u001a\u0010\u00103\u001a\u00020\b2\u0006\u00102\u001a\u000201H\u0002\u001a\r\u00104\u001a\u00020\u0001*\u00020\u0000H\u0080\b\u001a\u0018\u00107\u001a\u00020\b2\u0006\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\bH\u0002\"\"\u00109\u001a\u0002088\u0000@\u0001X\u0081\u0004¢\u0006\u0012\n\u0004\b9\u0010:\u0012\u0004\b=\u0010>\u001a\u0004\b;\u0010<¨\u0006?"}, d2 = {"Lokio/ByteString;", "", "commonUtf8", "commonBase64", "commonBase64Url", "commonHex", "commonToAsciiLowercase", "commonToAsciiUppercase", "", "beginIndex", "endIndex", "commonSubstring", "pos", "", "commonGetByte", "commonGetSize", "", "commonToByteArray", "commonInternalArray", TypedValues.Cycle.S_WAVE_OFFSET, "other", "otherOffset", "byteCount", "", "commonRangeEquals", TypedValues.Attributes.S_TARGET, "targetOffset", "Landroid/support/v4/ub2;", "commonCopyInto", "prefix", "commonStartsWith", "suffix", "commonEndsWith", "fromIndex", "commonIndexOf", "commonLastIndexOf", "", "commonEquals", "commonHashCode", "commonCompareTo", "data", "commonOf", "commonToByteString", "commonEncodeUtf8", "commonDecodeBase64", "commonDecodeHex", "Lokio/Buffer;", "buffer", "commonWrite", "", "c", "decodeHexDigit", "commonToString", ak.aB, "codePointCount", "codePointIndexToCharIndex", "", "HEX_DIGIT_CHARS", "[C", "getHEX_DIGIT_CHARS", "()[C", "getHEX_DIGIT_CHARS$annotations", "()V", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class _ByteStringKt {

    @m41
    private static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x007c A[EDGE_INSN: B:261:0x007c->B:55:0x007c BREAK  A[LOOP:1: B:31:0x004d->B:59:0x0082, LOOP_LABEL: LOOP:0: B:3:0x0008->B:289:0x0008], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0205 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int codePointIndexToCharIndex(byte[] bArr, int i) {
        boolean z;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        boolean z5;
        int length = bArr.length;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        loop0: while (i3 < length) {
            byte b = bArr[i3];
            if (b >= 0) {
                int i6 = i5 + 1;
                if (i5 == i) {
                    return i4;
                }
                if (b != 10 && b != 13) {
                    if (!(b >= 0 && b <= 31)) {
                        if (!(Byte.MAX_VALUE <= b && b <= 159)) {
                            z2 = false;
                        }
                        if (z2) {
                        }
                        return -1;
                    }
                    z2 = true;
                    if (z2) {
                    }
                    return -1;
                }
                if (b == 65533) {
                    return -1;
                }
                i4 += b < 65536 ? 1 : 2;
                i3++;
                while (true) {
                    i5 = i6;
                    if (i3 >= length || bArr[i3] < 0) {
                        break;
                    }
                    int i7 = i3 + 1;
                    byte b2 = bArr[i3];
                    i6 = i5 + 1;
                    if (i5 == i) {
                        return i4;
                    }
                    if (b2 != 10 && b2 != 13) {
                        if (b2 >= 0 && b2 <= 31) {
                            z = true;
                            if (!z) {
                                break loop0;
                            }
                        } else {
                            if (!(Byte.MAX_VALUE <= b2 && b2 <= 159)) {
                                z = false;
                            }
                            if (!z) {
                            }
                        }
                    } else {
                        if (b2 == 65533) {
                            break loop0;
                        }
                        i4 += b2 < 65536 ? 1 : 2;
                        i3 = i7;
                    }
                }
                return -1;
            }
            if ((b >> 5) == -2) {
                int i8 = i3 + 1;
                if (length <= i8) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                byte b3 = bArr[i3];
                byte b4 = bArr[i8];
                if (!((b4 & 192) == 128)) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                int i9 = (b4 ^ 3968) ^ (b3 << 6);
                if (i9 < 128) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                i2 = i5 + 1;
                if (i5 == i) {
                    return i4;
                }
                if (i9 != 10 && i9 != 13) {
                    if (i9 >= 0 && i9 <= 31) {
                        z5 = true;
                        if (z5) {
                        }
                        return -1;
                    }
                    if (!(127 <= i9 && i9 <= 159)) {
                        z5 = false;
                    }
                    if (z5) {
                    }
                    return -1;
                }
                if (i9 == 65533) {
                    return -1;
                }
                i4 += i9 < 65536 ? 1 : 2;
                ub2 ub2Var = ub2.f6820do;
                i3 += 2;
            } else if ((b >> 4) == -2) {
                int i10 = i3 + 2;
                if (length <= i10) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                byte b5 = bArr[i3];
                byte b6 = bArr[i3 + 1];
                if (!((b6 & 192) == 128)) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                byte b7 = bArr[i10];
                if (!((b7 & 192) == 128)) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                int i11 = ((b7 ^ (-123008)) ^ (b6 << 6)) ^ (b5 << 12);
                if (i11 < 2048) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                if (55296 <= i11 && i11 <= 57343) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                i2 = i5 + 1;
                if (i5 == i) {
                    return i4;
                }
                if (i11 != 10 && i11 != 13) {
                    if (i11 >= 0 && i11 <= 31) {
                        z4 = true;
                        if (z4) {
                        }
                        return -1;
                    }
                    if (!(127 <= i11 && i11 <= 159)) {
                        z4 = false;
                    }
                    if (z4) {
                    }
                    return -1;
                }
                if (i11 == 65533) {
                    return -1;
                }
                i4 += i11 < 65536 ? 1 : 2;
                ub2 ub2Var2 = ub2.f6820do;
                i3 += 3;
            } else {
                if ((b >> 3) != -2) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                int i12 = i3 + 3;
                if (length <= i12) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                byte b8 = bArr[i3];
                byte b9 = bArr[i3 + 1];
                if (!((b9 & 192) == 128)) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                byte b10 = bArr[i3 + 2];
                if (!((b10 & 192) == 128)) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                byte b11 = bArr[i12];
                if (!((b11 & 192) == 128)) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                int i13 = (((b11 ^ 3678080) ^ (b10 << 6)) ^ (b9 << 12)) ^ (b8 << 18);
                if (i13 > 1114111) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                if (55296 <= i13 && i13 <= 57343) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                if (i13 < 65536) {
                    if (i5 == i) {
                        return i4;
                    }
                    return -1;
                }
                i2 = i5 + 1;
                if (i5 == i) {
                    return i4;
                }
                if (i13 != 10 && i13 != 13) {
                    if (i13 >= 0 && i13 <= 31) {
                        z3 = true;
                        if (z3) {
                        }
                        return -1;
                    }
                    if (!(127 <= i13 && i13 <= 159)) {
                        z3 = false;
                    }
                    if (z3) {
                    }
                    return -1;
                }
                if (i13 == 65533) {
                    return -1;
                }
                i4 += i13 < 65536 ? 1 : 2;
                ub2 ub2Var3 = ub2.f6820do;
                i3 += 4;
            }
            i5 = i2;
        }
        return i4;
    }

    @m41
    public static final String commonBase64(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "<this>");
        return _Base64Kt.encodeBase64$default(byteString.getData$okio(), null, 1, null);
    }

    @m41
    public static final String commonBase64Url(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "<this>");
        return _Base64Kt.encodeBase64(byteString.getData$okio(), _Base64Kt.getBASE64_URL_SAFE());
    }

    public static final int commonCompareTo(@m41 ByteString byteString, @m41 ByteString other) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(other, "other");
        int size = byteString.size();
        int size2 = other.size();
        int iMin = Math.min(size, size2);
        for (int i = 0; i < iMin; i++) {
            int i2 = byteString.getByte(i) & 255;
            int i3 = other.getByte(i) & 255;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public static final void commonCopyInto(@m41 ByteString byteString, int i, @m41 byte[] target, int i2, int i3) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(target, "target");
        Ccatch.j0(byteString.getData$okio(), target, i2, i, i3 + i);
    }

    @z41
    public static final ByteString commonDecodeBase64(@m41 String str) {
        Csuper.m30700throw(str, "<this>");
        byte[] bArrDecodeBase64ToArray = _Base64Kt.decodeBase64ToArray(str);
        if (bArrDecodeBase64ToArray != null) {
            return new ByteString(bArrDecodeBase64ToArray);
        }
        return null;
    }

    @m41
    public static final ByteString commonDecodeHex(@m41 String str) {
        Csuper.m30700throw(str, "<this>");
        int i = 0;
        if (!(str.length() % 2 == 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("Unexpected hex string: ", str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        int i2 = length - 1;
        if (i2 >= 0) {
            while (true) {
                int i3 = i + 1;
                int i4 = i * 2;
                bArr[i] = (byte) ((decodeHexDigit(str.charAt(i4)) << 4) + decodeHexDigit(str.charAt(i4 + 1)));
                if (i3 > i2) {
                    break;
                }
                i = i3;
            }
        }
        return new ByteString(bArr);
    }

    @m41
    public static final ByteString commonEncodeUtf8(@m41 String str) {
        Csuper.m30700throw(str, "<this>");
        ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
        byteString.setUtf8$okio(str);
        return byteString;
    }

    public static final boolean commonEndsWith(@m41 ByteString byteString, @m41 ByteString suffix) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.size(), suffix, 0, suffix.size());
    }

    public static final boolean commonEquals(@m41 ByteString byteString, @z41 Object obj) {
        Csuper.m30700throw(byteString, "<this>");
        if (obj == byteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString2 = (ByteString) obj;
            if (byteString2.size() == byteString.getData$okio().length && byteString2.rangeEquals(0, byteString.getData$okio(), 0, byteString.getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte commonGetByte(@m41 ByteString byteString, int i) {
        Csuper.m30700throw(byteString, "<this>");
        return byteString.getData$okio()[i];
    }

    public static final int commonGetSize(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "<this>");
        return byteString.getData$okio().length;
    }

    public static final int commonHashCode(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "<this>");
        int hashCode$okio = byteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int iHashCode = Arrays.hashCode(byteString.getData$okio());
        byteString.setHashCode$okio(iHashCode);
        return iHashCode;
    }

    @m41
    public static final String commonHex(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "<this>");
        char[] cArr = new char[byteString.getData$okio().length * 2];
        byte[] data$okio = byteString.getData$okio();
        int length = data$okio.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = data$okio[i];
            i++;
            int i3 = i2 + 1;
            cArr[i2] = getHEX_DIGIT_CHARS()[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = getHEX_DIGIT_CHARS()[b & 15];
        }
        return Creturn.G0(cArr);
    }

    public static final int commonIndexOf(@m41 ByteString byteString, @m41 byte[] other, int i) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(other, "other");
        int length = byteString.getData$okio().length - other.length;
        int iMax = Math.max(i, 0);
        if (iMax > length) {
            return -1;
        }
        while (true) {
            int i2 = iMax + 1;
            if (_UtilKt.arrayRangeEquals(byteString.getData$okio(), iMax, other, 0, other.length)) {
                return iMax;
            }
            if (iMax == length) {
                return -1;
            }
            iMax = i2;
        }
    }

    @m41
    public static final byte[] commonInternalArray(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "<this>");
        return byteString.getData$okio();
    }

    public static final int commonLastIndexOf(@m41 ByteString byteString, @m41 ByteString other, int i) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(other, "other");
        return byteString.lastIndexOf(other.internalArray$okio(), i);
    }

    @m41
    public static final ByteString commonOf(@m41 byte[] data) {
        Csuper.m30700throw(data, "data");
        byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
        Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return new ByteString(bArrCopyOf);
    }

    public static final boolean commonRangeEquals(@m41 ByteString byteString, int i, @m41 ByteString other, int i2, int i3) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(other, "other");
        return other.rangeEquals(i2, byteString.getData$okio(), i, i3);
    }

    public static final boolean commonStartsWith(@m41 ByteString byteString, @m41 ByteString prefix) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.size());
    }

    @m41
    public static final ByteString commonSubstring(@m41 ByteString byteString, int i, int i2) {
        Csuper.m30700throw(byteString, "<this>");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(byteString, i2);
        if (!(i >= 0)) {
            throw new IllegalArgumentException("beginIndex < 0".toString());
        }
        if (iResolveDefaultParameter <= byteString.getData$okio().length) {
            if (iResolveDefaultParameter - i >= 0) {
                return (i == 0 && iResolveDefaultParameter == byteString.getData$okio().length) ? byteString : new ByteString(Ccatch.T0(byteString.getData$okio(), i, iResolveDefaultParameter));
            }
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
    }

    @m41
    public static final ByteString commonToAsciiLowercase(@m41 ByteString byteString) {
        byte b;
        Csuper.m30700throw(byteString, "<this>");
        for (int i = 0; i < byteString.getData$okio().length; i++) {
            byte b2 = byteString.getData$okio()[i];
            byte b3 = (byte) 65;
            if (b2 >= b3 && b2 <= (b = (byte) 90)) {
                byte[] data$okio = byteString.getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b4 = bArrCopyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        bArrCopyOf[i2] = (byte) (b4 + 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    @m41
    public static final ByteString commonToAsciiUppercase(@m41 ByteString byteString) {
        byte b;
        Csuper.m30700throw(byteString, "<this>");
        for (int i = 0; i < byteString.getData$okio().length; i++) {
            byte b2 = byteString.getData$okio()[i];
            byte b3 = (byte) 97;
            if (b2 >= b3 && b2 <= (b = (byte) 122)) {
                byte[] data$okio = byteString.getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i] = (byte) (b2 - 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b4 = bArrCopyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        bArrCopyOf[i2] = (byte) (b4 - 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    @m41
    public static final byte[] commonToByteArray(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "<this>");
        byte[] data$okio = byteString.getData$okio();
        byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
        Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return bArrCopyOf;
    }

    @m41
    public static final ByteString commonToByteString(@m41 byte[] bArr, int i, int i2) {
        Csuper.m30700throw(bArr, "<this>");
        _UtilKt.checkOffsetAndCount(bArr.length, i, i2);
        return new ByteString(Ccatch.T0(bArr, i, i2 + i));
    }

    @m41
    public static final String commonToString(@m41 ByteString byteString) {
        ByteString byteString2 = byteString;
        Csuper.m30700throw(byteString2, "<this>");
        if (byteString.getData$okio().length == 0) {
            return "[size=0]";
        }
        int iCodePointIndexToCharIndex = codePointIndexToCharIndex(byteString.getData$okio(), 64);
        if (iCodePointIndexToCharIndex != -1) {
            String strUtf8 = byteString.utf8();
            Objects.requireNonNull(strUtf8, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = strUtf8.substring(0, iCodePointIndexToCharIndex);
            Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            String strX1 = Creturn.x1(Creturn.x1(Creturn.x1(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), Cclass.f28656new, "\\r", false, 4, null);
            if (iCodePointIndexToCharIndex >= strUtf8.length()) {
                return "[text=" + strX1 + ']';
            }
            return "[size=" + byteString.getData$okio().length + " text=" + strX1 + "…]";
        }
        if (byteString.getData$okio().length <= 64) {
            return "[hex=" + byteString.hex() + ']';
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[size=");
        sb.append(byteString.getData$okio().length);
        sb.append(" hex=");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(byteString2, 64);
        if (!(iResolveDefaultParameter <= byteString.getData$okio().length)) {
            throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
        }
        if (!(iResolveDefaultParameter + 0 >= 0)) {
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        if (iResolveDefaultParameter != byteString.getData$okio().length) {
            byteString2 = new ByteString(Ccatch.T0(byteString.getData$okio(), 0, iResolveDefaultParameter));
        }
        sb.append(byteString2.hex());
        sb.append("…]");
        return sb.toString();
    }

    @m41
    public static final String commonUtf8(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "<this>");
        String utf8$okio = byteString.getUtf8$okio();
        if (utf8$okio != null) {
            return utf8$okio;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(byteString.internalArray$okio());
        byteString.setUtf8$okio(utf8String);
        return utf8String;
    }

    public static final void commonWrite(@m41 ByteString byteString, @m41 Buffer buffer, int i, int i2) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(buffer, "buffer");
        buffer.write(byteString.getData$okio(), i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int decodeHexDigit(char c) {
        if ('0' <= c && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (!('a' <= c && c <= 'f')) {
            c2 = 'A';
            if (!('A' <= c && c <= 'F')) {
                throw new IllegalArgumentException(Csuper.m30690private("Unexpected hex digit: ", Character.valueOf(c)));
            }
        }
        return (c - c2) + 10;
    }

    @m41
    public static final char[] getHEX_DIGIT_CHARS() {
        return HEX_DIGIT_CHARS;
    }

    public static /* synthetic */ void getHEX_DIGIT_CHARS$annotations() {
    }

    public static final boolean commonEndsWith(@m41 ByteString byteString, @m41 byte[] suffix) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.length, suffix, 0, suffix.length);
    }

    public static final int commonLastIndexOf(@m41 ByteString byteString, @m41 byte[] other, int i) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(other, "other");
        int iMin = Math.min(_UtilKt.resolveDefaultParameter(byteString, i), byteString.getData$okio().length - other.length);
        if (iMin < 0) {
            return -1;
        }
        while (true) {
            int i2 = iMin - 1;
            if (_UtilKt.arrayRangeEquals(byteString.getData$okio(), iMin, other, 0, other.length)) {
                return iMin;
            }
            if (i2 < 0) {
                return -1;
            }
            iMin = i2;
        }
    }

    public static final boolean commonRangeEquals(@m41 ByteString byteString, int i, @m41 byte[] other, int i2, int i3) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(other, "other");
        return i >= 0 && i <= byteString.getData$okio().length - i3 && i2 >= 0 && i2 <= other.length - i3 && _UtilKt.arrayRangeEquals(byteString.getData$okio(), i, other, i2, i3);
    }

    public static final boolean commonStartsWith(@m41 ByteString byteString, @m41 byte[] prefix) {
        Csuper.m30700throw(byteString, "<this>");
        Csuper.m30700throw(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.length);
    }
}
