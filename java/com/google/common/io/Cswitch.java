package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.li0;
import com.google.common.primitives.Csuper;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;

@li0
/* renamed from: com.google.common.io.switch, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cswitch extends InputStream {

    /* renamed from: case, reason: not valid java name */
    private boolean f15343case;

    /* renamed from: do, reason: not valid java name */
    private final Reader f15344do;

    /* renamed from: else, reason: not valid java name */
    private boolean f15345else;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f15346for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f15347goto;

    /* renamed from: if, reason: not valid java name */
    private final CharsetEncoder f15348if;

    /* renamed from: new, reason: not valid java name */
    private CharBuffer f15349new;

    /* renamed from: try, reason: not valid java name */
    private ByteBuffer f15350try;

    public Cswitch(Reader reader, Charset charset, int i) {
        this(reader, charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE), i);
    }

    /* renamed from: do, reason: not valid java name */
    private static int m17139do(Buffer buffer) {
        return buffer.capacity() - buffer.limit();
    }

    /* renamed from: for, reason: not valid java name */
    private static CharBuffer m17140for(CharBuffer charBuffer) {
        CharBuffer charBufferWrap = CharBuffer.wrap(Arrays.copyOf(charBuffer.array(), charBuffer.capacity() * 2));
        charBufferWrap.position(charBuffer.position());
        charBufferWrap.limit(charBuffer.limit());
        return charBufferWrap;
    }

    /* renamed from: if, reason: not valid java name */
    private int m17141if(byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, this.f15350try.remaining());
        this.f15350try.get(bArr, i, iMin);
        return iMin;
    }

    /* renamed from: new, reason: not valid java name */
    private void m17142new() throws IOException {
        if (m17139do(this.f15349new) == 0) {
            if (this.f15349new.position() > 0) {
                this.f15349new.compact().flip();
            } else {
                this.f15349new = m17140for(this.f15349new);
            }
        }
        int iLimit = this.f15349new.limit();
        int i = this.f15344do.read(this.f15349new.array(), iLimit, m17139do(this.f15349new));
        if (i == -1) {
            this.f15343case = true;
        } else {
            this.f15349new.limit(iLimit + i);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m17143try(boolean z) {
        this.f15350try.flip();
        if (z && this.f15350try.remaining() == 0) {
            this.f15350try = ByteBuffer.allocate(this.f15350try.capacity() * 2);
        } else {
            this.f15345else = true;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15344do.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f15346for) == 1) {
            return Csuper.m17670throw(this.f15346for[0]);
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
    
        if (r2 <= 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
    
        return r2;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int read(byte[] bArr, int i, int i2) throws IOException {
        af1.s(i, i + i2, bArr.length);
        if (i2 == 0) {
            return 0;
        }
        boolean z = this.f15343case;
        int iM17141if = 0;
        while (true) {
            if (this.f15345else) {
                iM17141if += m17141if(bArr, i + iM17141if, i2 - iM17141if);
                if (iM17141if == i2 || this.f15347goto) {
                    break;
                }
                this.f15345else = false;
                this.f15350try.clear();
            }
            while (true) {
                CoderResult coderResultFlush = this.f15347goto ? CoderResult.UNDERFLOW : z ? this.f15348if.flush(this.f15350try) : this.f15348if.encode(this.f15349new, this.f15350try, this.f15343case);
                if (coderResultFlush.isOverflow()) {
                    m17143try(true);
                    break;
                }
                if (coderResultFlush.isUnderflow()) {
                    if (z) {
                        this.f15347goto = true;
                        m17143try(false);
                        break;
                    }
                    if (this.f15343case) {
                        z = true;
                    } else {
                        m17142new();
                    }
                } else if (coderResultFlush.isError()) {
                    coderResultFlush.throwException();
                    return 0;
                }
            }
        }
    }

    public Cswitch(Reader reader, CharsetEncoder charsetEncoder, int i) {
        this.f15346for = new byte[1];
        this.f15344do = (Reader) af1.m205continue(reader);
        this.f15348if = (CharsetEncoder) af1.m205continue(charsetEncoder);
        af1.m202catch(i > 0, "bufferSize must be positive: %s", i);
        charsetEncoder.reset();
        CharBuffer charBufferAllocate = CharBuffer.allocate(i);
        this.f15349new = charBufferAllocate;
        charBufferAllocate.flip();
        this.f15350try = ByteBuffer.allocate(i);
    }
}
