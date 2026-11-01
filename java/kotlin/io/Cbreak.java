package kotlin.io;

import android.support.v4.m41;
import android.support.v4.z41;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b-\u0010.J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\fH\u0002J\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\nR\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001eR\u0016\u0010\"\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010!R\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010$R\u0016\u0010(\u001a\u00020&8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010'R\u001a\u0010,\u001a\u00060)j\u0002`*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010+¨\u0006/"}, d2 = {"Lkotlin/io/break;", "", "", "endOfInput", "", "new", "for", "nBytes", "nChars", "try", "Ljava/nio/charset/Charset;", "charset", "Landroid/support/v4/ub2;", "this", "else", "goto", "Ljava/io/InputStream;", "inputStream", "", "case", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "BUFFER_SIZE", "Ljava/nio/charset/CharsetDecoder;", "if", "Ljava/nio/charset/CharsetDecoder;", "decoder", "Z", "directEOL", "", "[B", "bytes", "", "[C", "chars", "Ljava/nio/ByteBuffer;", "Ljava/nio/ByteBuffer;", "byteBuf", "Ljava/nio/CharBuffer;", "Ljava/nio/CharBuffer;", "charBuf", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "Ljava/lang/StringBuilder;", "sb", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.io.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak {

    /* renamed from: case, reason: not valid java name */
    private static final ByteBuffer f27827case;

    /* renamed from: do, reason: not valid java name */
    private static final int f27828do = 32;

    /* renamed from: else, reason: not valid java name */
    private static final CharBuffer f27829else;

    /* renamed from: for, reason: not valid java name */
    private static boolean f27830for;

    /* renamed from: goto, reason: not valid java name */
    private static final StringBuilder f27831goto;

    /* renamed from: if, reason: not valid java name */
    private static CharsetDecoder f27832if;

    /* renamed from: new, reason: not valid java name */
    private static final byte[] f27833new;

    /* renamed from: this, reason: not valid java name */
    @m41
    public static final Cbreak f27834this = new Cbreak();

    /* renamed from: try, reason: not valid java name */
    private static final char[] f27835try;

    static {
        byte[] bArr = new byte[32];
        f27833new = bArr;
        char[] cArr = new char[32];
        f27835try = cArr;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        Csuper.m30696super(byteBufferWrap, "ByteBuffer.wrap(bytes)");
        f27827case = byteBufferWrap;
        CharBuffer charBufferWrap = CharBuffer.wrap(cArr);
        Csuper.m30696super(charBufferWrap, "CharBuffer.wrap(chars)");
        f27829else = charBufferWrap;
        f27831goto = new StringBuilder();
    }

    private Cbreak() {
    }

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ CharsetDecoder m30522do(Cbreak cbreak) {
        CharsetDecoder charsetDecoder = f27832if;
        if (charsetDecoder == null) {
            Csuper.f("decoder");
        }
        return charsetDecoder;
    }

    /* renamed from: else, reason: not valid java name */
    private final void m30523else() {
        CharsetDecoder charsetDecoder = f27832if;
        if (charsetDecoder == null) {
            Csuper.f("decoder");
        }
        charsetDecoder.reset();
        f27827case.position(0);
        f27831goto.setLength(0);
    }

    /* renamed from: for, reason: not valid java name */
    private final int m30524for() {
        ByteBuffer byteBuffer = f27827case;
        byteBuffer.compact();
        int iPosition = byteBuffer.position();
        byteBuffer.position(0);
        return iPosition;
    }

    /* renamed from: goto, reason: not valid java name */
    private final void m30525goto() {
        StringBuilder sb = f27831goto;
        sb.setLength(32);
        sb.trimToSize();
    }

    /* renamed from: new, reason: not valid java name */
    private final int m30527new(boolean z) throws CharacterCodingException {
        while (true) {
            CharsetDecoder charsetDecoder = f27832if;
            if (charsetDecoder == null) {
                Csuper.f("decoder");
            }
            ByteBuffer byteBuffer = f27827case;
            CharBuffer charBuffer = f27829else;
            CoderResult coderResultDecode = charsetDecoder.decode(byteBuffer, charBuffer, z);
            Csuper.m30696super(coderResultDecode, "decoder.decode(byteBuf, charBuf, endOfInput)");
            if (coderResultDecode.isError()) {
                m30523else();
                coderResultDecode.throwException();
            }
            int iPosition = charBuffer.position();
            if (!coderResultDecode.isOverflow()) {
                return iPosition;
            }
            StringBuilder sb = f27831goto;
            char[] cArr = f27835try;
            int i = iPosition - 1;
            sb.append(cArr, 0, i);
            charBuffer.position(0);
            charBuffer.limit(32);
            charBuffer.put(cArr[i]);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private final void m30528this(Charset charset) {
        CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
        Csuper.m30696super(charsetDecoderNewDecoder, "charset.newDecoder()");
        f27832if = charsetDecoderNewDecoder;
        ByteBuffer byteBuffer = f27827case;
        byteBuffer.clear();
        CharBuffer charBuffer = f27829else;
        charBuffer.clear();
        byteBuffer.put((byte) 10);
        byteBuffer.flip();
        CharsetDecoder charsetDecoder = f27832if;
        if (charsetDecoder == null) {
            Csuper.f("decoder");
        }
        boolean z = false;
        charsetDecoder.decode(byteBuffer, charBuffer, false);
        if (charBuffer.position() == 1 && charBuffer.get(0) == '\n') {
            z = true;
        }
        f27830for = z;
        m30523else();
    }

    /* renamed from: try, reason: not valid java name */
    private final int m30529try(int i, int i2) throws CharacterCodingException {
        ByteBuffer byteBuffer = f27827case;
        byteBuffer.limit(i);
        f27829else.position(i2);
        int iM30527new = m30527new(true);
        CharsetDecoder charsetDecoder = f27832if;
        if (charsetDecoder == null) {
            Csuper.f("decoder");
        }
        charsetDecoder.reset();
        byteBuffer.position(0);
        return iM30527new;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x007a, code lost:
    
        if (r10 <= 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
    
        r0 = kotlin.io.Cbreak.f27835try;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0082, code lost:
    
        if (r0[r10 - 1] != '\n') goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0084, code lost:
    
        r10 = r10 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0086, code lost:
    
        if (r10 <= 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008e, code lost:
    
        if (r0[r10 - 1] != '\r') goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0090, code lost:
    
        r10 = r10 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0092, code lost:
    
        r0 = kotlin.io.Cbreak.f27831goto;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0098, code lost:
    
        if (r0.length() != 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009b, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009c, code lost:
    
        if (r1 == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a6, code lost:
    
        return new java.lang.String(kotlin.io.Cbreak.f27835try, 0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a7, code lost:
    
        r0.append(kotlin.io.Cbreak.f27835try, 0, r10);
        r10 = r0.toString();
        kotlin.jvm.internal.Csuper.m30696super(r10, "sb.toString()");
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b9, code lost:
    
        if (r0.length() <= 32) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00bb, code lost:
    
        m30525goto();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00be, code lost:
    
        r0.setLength(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c2, code lost:
    
        return r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022 A[Catch: all -> 0x00c9, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0012, B:7:0x0017, B:11:0x0028, B:13:0x0033, B:23:0x0047, B:37:0x007c, B:39:0x0084, B:41:0x0088, B:43:0x0090, B:44:0x0092, B:49:0x009e, B:52:0x00a7, B:54:0x00bb, B:55:0x00be, B:24:0x004c, B:27:0x0057, B:31:0x005e, B:33:0x006e, B:35:0x0076, B:58:0x00c3, B:9:0x0022), top: B:65:0x0001 }] */
    @z41
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized String m30530case(@m41 InputStream inputStream, @m41 Charset charset) {
        int iM30529try;
        Csuper.m30700throw(inputStream, "inputStream");
        Csuper.m30700throw(charset, "charset");
        CharsetDecoder charsetDecoder = f27832if;
        boolean z = true;
        if (charsetDecoder == null) {
            m30528this(charset);
        } else {
            if (charsetDecoder == null) {
                Csuper.f("decoder");
            }
            if (!Csuper.m30676else(charsetDecoder.charset(), charset)) {
            }
        }
        int iM30524for = 0;
        int iM30527new = 0;
        while (true) {
            int i = inputStream.read();
            if (i == -1) {
                if ((f27831goto.length() == 0) && iM30524for == 0 && iM30527new == 0) {
                    return null;
                }
                iM30529try = m30529try(iM30524for, iM30527new);
            } else {
                int i2 = iM30524for + 1;
                f27833new[iM30524for] = (byte) i;
                if (i == 10 || i2 == 32 || !f27830for) {
                    ByteBuffer byteBuffer = f27827case;
                    byteBuffer.limit(i2);
                    f27829else.position(iM30527new);
                    iM30527new = m30527new(false);
                    if (iM30527new > 0 && f27835try[iM30527new - 1] == '\n') {
                        byteBuffer.position(0);
                        iM30529try = iM30527new;
                        break;
                    }
                    iM30524for = m30524for();
                } else {
                    iM30524for = i2;
                }
            }
        }
    }
}
