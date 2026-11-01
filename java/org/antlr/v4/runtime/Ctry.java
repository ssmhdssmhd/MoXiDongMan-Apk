package org.antlr.v4.runtime;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.IntBuffer;

/* renamed from: org.antlr.v4.runtime.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: try, reason: not valid java name */
    public static final /* synthetic */ boolean f28594try = false;

    /* renamed from: do, reason: not valid java name */
    private final Cfor f28595do;

    /* renamed from: for, reason: not valid java name */
    private final CharBuffer f28596for;

    /* renamed from: if, reason: not valid java name */
    private final ByteBuffer f28597if;

    /* renamed from: new, reason: not valid java name */
    private final IntBuffer f28598new;

    /* renamed from: org.antlr.v4.runtime.try$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f28599do;

        static {
            int[] iArr = new int[Cfor.values().length];
            f28599do = iArr;
            try {
                iArr[Cfor.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28599do[Cfor.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28599do[Cfor.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: org.antlr.v4.runtime.try$for, reason: invalid class name */
    public enum Cfor {
        BYTE,
        CHAR,
        INT
    }

    /* renamed from: org.antlr.v4.runtime.try$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: case, reason: not valid java name */
        public static final /* synthetic */ boolean f28601case = false;

        /* renamed from: do, reason: not valid java name */
        private Cfor f28602do;

        /* renamed from: for, reason: not valid java name */
        private CharBuffer f28603for;

        /* renamed from: if, reason: not valid java name */
        private ByteBuffer f28604if;

        /* renamed from: new, reason: not valid java name */
        private IntBuffer f28605new;

        /* renamed from: try, reason: not valid java name */
        private int f28606try;

        public /* synthetic */ Cif(int i, Cdo cdo) {
            this(i);
        }

        /* renamed from: else, reason: not valid java name */
        private void m32117else(int i) {
            this.f28604if.flip();
            CharBuffer charBufferAllocate = CharBuffer.allocate(Math.max(this.f28604if.remaining() + i, this.f28604if.capacity() / 2));
            while (this.f28604if.hasRemaining()) {
                charBufferAllocate.put((char) (this.f28604if.get() & 255));
            }
            this.f28602do = Cfor.CHAR;
            this.f28604if = null;
            this.f28603for = charBufferAllocate;
        }

        /* renamed from: for, reason: not valid java name */
        private void m32118for(CharBuffer charBuffer) {
            char[] cArrArray = charBuffer.array();
            int iArrayOffset = charBuffer.arrayOffset() + charBuffer.position();
            int iArrayOffset2 = charBuffer.arrayOffset() + charBuffer.limit();
            byte[] bArrArray = this.f28604if.array();
            int iArrayOffset3 = this.f28604if.arrayOffset() + this.f28604if.position();
            while (iArrayOffset < iArrayOffset2) {
                char c = cArrArray[iArrayOffset];
                if (c > 255) {
                    charBuffer.position(iArrayOffset - charBuffer.arrayOffset());
                    ByteBuffer byteBuffer = this.f28604if;
                    byteBuffer.position(iArrayOffset3 - byteBuffer.arrayOffset());
                    if (Character.isHighSurrogate(c)) {
                        m32119goto(charBuffer.remaining());
                        m32124try(charBuffer);
                        return;
                    } else {
                        m32117else(charBuffer.remaining());
                        m32121new(charBuffer);
                        return;
                    }
                }
                bArrArray[iArrayOffset3] = (byte) (c & 255);
                iArrayOffset++;
                iArrayOffset3++;
            }
            charBuffer.position(iArrayOffset - charBuffer.arrayOffset());
            ByteBuffer byteBuffer2 = this.f28604if;
            byteBuffer2.position(iArrayOffset3 - byteBuffer2.arrayOffset());
        }

        /* renamed from: goto, reason: not valid java name */
        private void m32119goto(int i) {
            this.f28604if.flip();
            IntBuffer intBufferAllocate = IntBuffer.allocate(Math.max(this.f28604if.remaining() + i, this.f28604if.capacity() / 4));
            while (this.f28604if.hasRemaining()) {
                intBufferAllocate.put(this.f28604if.get() & 255);
            }
            this.f28602do = Cfor.INT;
            this.f28604if = null;
            this.f28605new = intBufferAllocate;
        }

        /* renamed from: if, reason: not valid java name */
        private void m32120if(CharBuffer charBuffer) {
            int i = Cdo.f28599do[this.f28602do.ordinal()];
            if (i == 1) {
                m32118for(charBuffer);
            } else if (i == 2) {
                m32121new(charBuffer);
            } else {
                if (i != 3) {
                    return;
                }
                m32124try(charBuffer);
            }
        }

        /* renamed from: new, reason: not valid java name */
        private void m32121new(CharBuffer charBuffer) {
            char[] cArrArray = charBuffer.array();
            int iArrayOffset = charBuffer.arrayOffset() + charBuffer.position();
            int iArrayOffset2 = charBuffer.arrayOffset() + charBuffer.limit();
            char[] cArrArray2 = this.f28603for.array();
            int iArrayOffset3 = this.f28603for.arrayOffset() + this.f28603for.position();
            while (iArrayOffset < iArrayOffset2) {
                char c = cArrArray[iArrayOffset];
                if (Character.isHighSurrogate(c)) {
                    charBuffer.position(iArrayOffset - charBuffer.arrayOffset());
                    CharBuffer charBuffer2 = this.f28603for;
                    charBuffer2.position(iArrayOffset3 - charBuffer2.arrayOffset());
                    m32123this(charBuffer.remaining());
                    m32124try(charBuffer);
                    return;
                }
                cArrArray2[iArrayOffset3] = c;
                iArrayOffset++;
                iArrayOffset3++;
            }
            charBuffer.position(iArrayOffset - charBuffer.arrayOffset());
            CharBuffer charBuffer3 = this.f28603for;
            charBuffer3.position(iArrayOffset3 - charBuffer3.arrayOffset());
        }

        /* renamed from: super, reason: not valid java name */
        private static int m32122super(int i) {
            return (int) Math.pow(2.0d, 32 - Integer.numberOfLeadingZeros(i - 1));
        }

        /* renamed from: this, reason: not valid java name */
        private void m32123this(int i) {
            this.f28603for.flip();
            IntBuffer intBufferAllocate = IntBuffer.allocate(Math.max(this.f28603for.remaining() + i, this.f28603for.capacity() / 2));
            while (this.f28603for.hasRemaining()) {
                intBufferAllocate.put(this.f28603for.get() & 65535);
            }
            this.f28602do = Cfor.INT;
            this.f28603for = null;
            this.f28605new = intBufferAllocate;
        }

        /* renamed from: try, reason: not valid java name */
        private void m32124try(CharBuffer charBuffer) {
            char[] cArrArray = charBuffer.array();
            int iArrayOffset = charBuffer.arrayOffset() + charBuffer.position();
            int iArrayOffset2 = charBuffer.arrayOffset() + charBuffer.limit();
            int[] iArrArray = this.f28605new.array();
            int iArrayOffset3 = this.f28605new.arrayOffset() + this.f28605new.position();
            while (iArrayOffset < iArrayOffset2) {
                char c = cArrArray[iArrayOffset];
                iArrayOffset++;
                if (this.f28606try != -1) {
                    if (Character.isLowSurrogate(c)) {
                        iArrArray[iArrayOffset3] = Character.toCodePoint((char) this.f28606try, c);
                        iArrayOffset3++;
                        this.f28606try = -1;
                    } else {
                        iArrArray[iArrayOffset3] = this.f28606try;
                        iArrayOffset3++;
                        if (Character.isHighSurrogate(c)) {
                            this.f28606try = c & 65535;
                        } else {
                            iArrArray[iArrayOffset3] = 65535 & c;
                            iArrayOffset3++;
                            this.f28606try = -1;
                        }
                    }
                } else if (Character.isHighSurrogate(c)) {
                    this.f28606try = c & 65535;
                } else {
                    iArrArray[iArrayOffset3] = c & 65535;
                    iArrayOffset3++;
                }
            }
            int i = this.f28606try;
            if (i != -1) {
                iArrArray[iArrayOffset3] = i & 65535;
                iArrayOffset3++;
            }
            charBuffer.position(iArrayOffset - charBuffer.arrayOffset());
            IntBuffer intBuffer = this.f28605new;
            intBuffer.position(iArrayOffset3 - intBuffer.arrayOffset());
        }

        /* renamed from: break, reason: not valid java name */
        public void m32125break(int i) {
            int i2 = Cdo.f28599do[this.f28602do.ordinal()];
            if (i2 == 1) {
                if (this.f28604if.remaining() < i) {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(m32122super(this.f28604if.capacity() + i));
                    this.f28604if.flip();
                    byteBufferAllocate.put(this.f28604if);
                    this.f28604if = byteBufferAllocate;
                    return;
                }
                return;
            }
            if (i2 == 2) {
                if (this.f28603for.remaining() < i) {
                    CharBuffer charBufferAllocate = CharBuffer.allocate(m32122super(this.f28603for.capacity() + i));
                    this.f28603for.flip();
                    charBufferAllocate.put(this.f28603for);
                    this.f28603for = charBufferAllocate;
                    return;
                }
                return;
            }
            if (i2 == 3 && this.f28605new.remaining() < i) {
                IntBuffer intBufferAllocate = IntBuffer.allocate(m32122super(this.f28605new.capacity() + i));
                this.f28605new.flip();
                intBufferAllocate.put(this.f28605new);
                this.f28605new = intBufferAllocate;
            }
        }

        /* renamed from: case, reason: not valid java name */
        public Ctry m32126case() {
            int i = Cdo.f28599do[this.f28602do.ordinal()];
            if (i == 1) {
                this.f28604if.flip();
            } else if (i == 2) {
                this.f28603for.flip();
            } else if (i == 3) {
                this.f28605new.flip();
            }
            return new Ctry(this.f28602do, this.f28604if, this.f28603for, this.f28605new, null);
        }

        /* renamed from: catch, reason: not valid java name */
        public ByteBuffer m32127catch() {
            return this.f28604if;
        }

        /* renamed from: class, reason: not valid java name */
        public CharBuffer m32128class() {
            return this.f28603for;
        }

        /* renamed from: const, reason: not valid java name */
        public IntBuffer m32129const() {
            return this.f28605new;
        }

        /* renamed from: do, reason: not valid java name */
        public void m32130do(CharBuffer charBuffer) {
            m32125break(charBuffer.remaining());
            if (!charBuffer.hasArray()) {
                throw new UnsupportedOperationException("TODO");
            }
            m32120if(charBuffer);
        }

        /* renamed from: final, reason: not valid java name */
        public Cfor m32131final() {
            return this.f28602do;
        }

        private Cif(int i) {
            this.f28602do = Cfor.BYTE;
            this.f28604if = ByteBuffer.allocate(i);
            this.f28603for = null;
            this.f28605new = null;
            this.f28606try = -1;
        }
    }

    public /* synthetic */ Ctry(Cfor cfor, ByteBuffer byteBuffer, CharBuffer charBuffer, IntBuffer intBuffer, Cdo cdo) {
        this(cfor, byteBuffer, charBuffer, intBuffer);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Ctry m32104catch(ByteBuffer byteBuffer) {
        return new Ctry(Cfor.BYTE, byteBuffer, null, null);
    }

    /* renamed from: class, reason: not valid java name */
    public static Ctry m32105class(CharBuffer charBuffer) {
        return new Ctry(Cfor.CHAR, null, charBuffer, null);
    }

    /* renamed from: const, reason: not valid java name */
    public static Ctry m32106const(IntBuffer intBuffer) {
        return new Ctry(Cfor.INT, null, null, intBuffer);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m32107if(int i) {
        return new Cif(i, null);
    }

    /* renamed from: break, reason: not valid java name */
    public int m32108break() {
        int i = Cdo.f28599do[this.f28595do.ordinal()];
        if (i == 1) {
            return this.f28597if.remaining();
        }
        if (i == 2) {
            return this.f28596for.remaining();
        }
        if (i == 3) {
            return this.f28598new.remaining();
        }
        throw new UnsupportedOperationException("Not reached");
    }

    /* renamed from: case, reason: not valid java name */
    public Cfor m32109case() {
        return this.f28595do;
    }

    /* renamed from: do, reason: not valid java name */
    public int m32110do() {
        int i = Cdo.f28599do[this.f28595do.ordinal()];
        if (i == 1) {
            return this.f28597if.arrayOffset();
        }
        if (i == 2) {
            return this.f28596for.arrayOffset();
        }
        if (i == 3) {
            return this.f28598new.arrayOffset();
        }
        throw new UnsupportedOperationException("Not reached");
    }

    /* renamed from: else, reason: not valid java name */
    public int[] m32111else() {
        return this.f28598new.array();
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m32112for() {
        return this.f28597if.array();
    }

    /* renamed from: goto, reason: not valid java name */
    public int m32113goto() {
        int i = Cdo.f28599do[this.f28595do.ordinal()];
        if (i == 1) {
            return this.f28597if.position();
        }
        if (i == 2) {
            return this.f28596for.position();
        }
        if (i == 3) {
            return this.f28598new.position();
        }
        throw new UnsupportedOperationException("Not reached");
    }

    /* renamed from: new, reason: not valid java name */
    public char[] m32114new() {
        return this.f28596for.array();
    }

    /* renamed from: this, reason: not valid java name */
    public void m32115this(int i) {
        int i2 = Cdo.f28599do[this.f28595do.ordinal()];
        if (i2 == 1) {
            this.f28597if.position(i);
        } else if (i2 == 2) {
            this.f28596for.position(i);
        } else {
            if (i2 != 3) {
                return;
            }
            this.f28598new.position(i);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public int m32116try(int i) {
        int i2 = Cdo.f28599do[this.f28595do.ordinal()];
        if (i2 == 1) {
            return this.f28597if.get(i);
        }
        if (i2 == 2) {
            return this.f28596for.get(i);
        }
        if (i2 == 3) {
            return this.f28598new.get(i);
        }
        throw new UnsupportedOperationException("Not reached");
    }

    private Ctry(Cfor cfor, ByteBuffer byteBuffer, CharBuffer charBuffer, IntBuffer intBuffer) {
        this.f28595do = cfor;
        this.f28597if = byteBuffer;
        this.f28596for = charBuffer;
        this.f28598new = intBuffer;
    }
}
