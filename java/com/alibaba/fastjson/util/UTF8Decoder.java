package com.alibaba.fastjson.util;

import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import okio.Utf8;

/* loaded from: classes.dex */
public class UTF8Decoder extends CharsetDecoder {
    private static final Charset charset = Charset.forName("UTF-8");

    public UTF8Decoder() {
        super(charset, 1.0f, 1.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0093, code lost:
    
        return xflow(r13, r5, r6, r14, r8, 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ca, code lost:
    
        return xflow(r13, r5, r6, r14, r8, 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012f, code lost:
    
        return xflow(r13, r5, r6, r14, r8, 4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CoderResult decodeArrayLoop(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        int i;
        int i2;
        byte[] bArrArray = byteBuffer.array();
        int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
        int iArrayOffset2 = byteBuffer.arrayOffset() + byteBuffer.limit();
        char[] cArrArray = charBuffer.array();
        int iArrayOffset3 = charBuffer.arrayOffset() + charBuffer.position();
        int iArrayOffset4 = charBuffer.arrayOffset() + charBuffer.limit();
        int iMin = Math.min(iArrayOffset2 - iArrayOffset, iArrayOffset4 - iArrayOffset3) + iArrayOffset3;
        while (iArrayOffset3 < iMin && bArrArray[iArrayOffset] >= 0) {
            cArrArray[iArrayOffset3] = (char) bArrArray[iArrayOffset];
            iArrayOffset3++;
            iArrayOffset++;
        }
        int i3 = iArrayOffset;
        loop1: while (true) {
            i = iArrayOffset3;
            while (i3 < iArrayOffset2) {
                byte b = bArrArray[i3];
                if (b < 0) {
                    if ((b >> 5) == -2) {
                        if (iArrayOffset2 - i3 < 2 || i >= iArrayOffset4) {
                            break loop1;
                        }
                        byte b2 = bArrArray[i3 + 1];
                        if (isMalformed2(b, b2)) {
                            return malformed(byteBuffer, i3, charBuffer, i, 2);
                        }
                        i2 = i + 1;
                        cArrArray[i] = (char) (((b << 6) ^ b2) ^ Utf8.MASK_2BYTES);
                        i3 += 2;
                    } else if ((b >> 4) == -2) {
                        if (iArrayOffset2 - i3 < 3 || i >= iArrayOffset4) {
                            break loop1;
                        }
                        byte b3 = bArrArray[i3 + 1];
                        byte b4 = bArrArray[i3 + 2];
                        if (isMalformed3(b, b3, b4)) {
                            return malformed(byteBuffer, i3, charBuffer, i, 3);
                        }
                        i2 = i + 1;
                        cArrArray[i] = (char) ((((b << 12) ^ (b3 << 6)) ^ b4) ^ 8064);
                        i3 += 3;
                    } else {
                        if ((b >> 3) != -2) {
                            return malformed(byteBuffer, i3, charBuffer, i, 1);
                        }
                        if (iArrayOffset2 - i3 < 4 || iArrayOffset4 - i < 2) {
                            break;
                        }
                        byte b5 = bArrArray[i3 + 1];
                        byte b6 = bArrArray[i3 + 2];
                        byte b7 = bArrArray[i3 + 3];
                        int i4 = ((b & 7) << 18) | ((b5 & Utf8.REPLACEMENT_BYTE) << 12) | ((b6 & Utf8.REPLACEMENT_BYTE) << 6) | (b7 & Utf8.REPLACEMENT_BYTE);
                        if (isMalformed4(b5, b6, b7) || i4 < 65536 || i4 > 1114111) {
                            break;
                        }
                        int i5 = i + 1;
                        int i6 = i4 - 65536;
                        cArrArray[i] = (char) (((i6 >> 10) & 1023) | 55296);
                        iArrayOffset3 = i5 + 1;
                        cArrArray[i5] = (char) ((i6 & 1023) | Utf8.LOG_SURROGATE_HEADER);
                        i3 += 4;
                    }
                    i = i2;
                } else {
                    if (i >= iArrayOffset4) {
                        return xflow(byteBuffer, i3, iArrayOffset2, charBuffer, i, 1);
                    }
                    iArrayOffset3 = i + 1;
                    cArrArray[i] = (char) b;
                    i3++;
                }
            }
            return xflow(byteBuffer, i3, iArrayOffset2, charBuffer, i, 0);
        }
        return malformed(byteBuffer, i3, charBuffer, i, 4);
    }

    private static boolean isMalformed2(int i, int i2) {
        return (i & 30) == 0 || (i2 & 192) != 128;
    }

    private static boolean isMalformed3(int i, int i2, int i3) {
        return ((i != -32 || (i2 & 224) != 128) && (i2 & 192) == 128 && (i3 & 192) == 128) ? false : true;
    }

    private static boolean isMalformed4(int i, int i2, int i3) {
        return ((i & 192) == 128 && (i2 & 192) == 128 && (i3 & 192) == 128) ? false : true;
    }

    private static boolean isNotContinuation(int i) {
        return (i & 192) != 128;
    }

    private static CoderResult lookupN(ByteBuffer byteBuffer, int i) {
        for (int i2 = 1; i2 < i; i2++) {
            if (isNotContinuation(byteBuffer.get())) {
                return CoderResult.malformedForLength(i2);
            }
        }
        return CoderResult.malformedForLength(i);
    }

    private static CoderResult malformed(ByteBuffer byteBuffer, int i, CharBuffer charBuffer, int i2, int i3) {
        byteBuffer.position(i - byteBuffer.arrayOffset());
        CoderResult coderResultMalformedN = malformedN(byteBuffer, i3);
        byteBuffer.position(i);
        charBuffer.position(i2);
        return coderResultMalformedN;
    }

    public static CoderResult malformedN(ByteBuffer byteBuffer, int i) {
        int i2 = 1;
        if (i == 1) {
            byte b = byteBuffer.get();
            return (b >> 2) == -2 ? byteBuffer.remaining() < 4 ? CoderResult.UNDERFLOW : lookupN(byteBuffer, 5) : (b >> 1) == -2 ? byteBuffer.remaining() < 5 ? CoderResult.UNDERFLOW : lookupN(byteBuffer, 6) : CoderResult.malformedForLength(1);
        }
        if (i == 2) {
            return CoderResult.malformedForLength(1);
        }
        if (i != 3) {
            if (i != 4) {
                throw new IllegalStateException();
            }
            int i3 = byteBuffer.get() & 255;
            int i4 = byteBuffer.get() & 255;
            return (i3 > 244 || (i3 == 240 && (i4 < 144 || i4 > 191)) || ((i3 == 244 && (i4 & MountainSceneView.f20267finally) != 128) || isNotContinuation(i4))) ? CoderResult.malformedForLength(1) : isNotContinuation(byteBuffer.get()) ? CoderResult.malformedForLength(2) : CoderResult.malformedForLength(3);
        }
        byte b2 = byteBuffer.get();
        byte b3 = byteBuffer.get();
        if ((b2 != -32 || (b3 & 224) != 128) && !isNotContinuation(b3)) {
            i2 = 2;
        }
        return CoderResult.malformedForLength(i2);
    }

    private static CoderResult xflow(Buffer buffer, int i, int i2, Buffer buffer2, int i3, int i4) {
        buffer.position(i);
        buffer2.position(i3);
        return (i4 == 0 || i2 - i < i4) ? CoderResult.UNDERFLOW : CoderResult.OVERFLOW;
    }

    @Override // java.nio.charset.CharsetDecoder
    public CoderResult decodeLoop(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        return decodeArrayLoop(byteBuffer, charBuffer);
    }
}
