package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Cfor;
import kotlin.Cnew;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

@wp0(name = "ByteStreamsKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0086\u0002\u001a\u0017\u0010\u0007\u001a\u00020\u0006*\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\r\u0010\t\u001a\u00020\u0006*\u00020\bH\u0087\b\u001a\u001d\u0010\r\u001a\u00020\u0006*\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0087\b\u001a\u0017\u0010\u0010\u001a\u00020\u0000*\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\nH\u0087\b\u001a\u0017\u0010\u0012\u001a\u00020\u0011*\u00020\u000e2\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\u0017\u0010\u0014\u001a\u00020\u0013*\u00020\u000e2\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\u0017\u0010\u0017\u001a\u00020\u0016*\u00020\u00152\b\b\u0002\u0010\u000f\u001a\u00020\nH\u0087\b\u001a\u0017\u0010\u0019\u001a\u00020\u0018*\u00020\u00152\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\u0017\u0010\u001b\u001a\u00020\u001a*\u00020\u00152\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0087\b\u001a\u001c\u0010\u001e\u001a\u00020\u001d*\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00152\b\b\u0002\u0010\u000f\u001a\u00020\n\u001a\u0016\u0010 \u001a\u00020\b*\u00020\u000e2\b\b\u0002\u0010\u001f\u001a\u00020\nH\u0007\u001a\f\u0010!\u001a\u00020\b*\u00020\u000eH\u0007¨\u0006\""}, d2 = {"Ljava/io/BufferedInputStream;", "Landroid/support/v4/yd;", "super", "", "Ljava/nio/charset/Charset;", "charset", "Ljava/io/ByteArrayInputStream;", "this", "", "const", "", TypedValues.Cycle.S_WAVE_OFFSET, "length", "final", "Ljava/io/InputStream;", "bufferSize", "do", "Ljava/io/InputStreamReader;", "native", "Ljava/io/BufferedReader;", "try", "Ljava/io/OutputStream;", "Ljava/io/BufferedOutputStream;", "if", "Ljava/io/OutputStreamWriter;", "return", "Ljava/io/BufferedWriter;", "else", "out", "", "catch", "estimatedSize", "while", "throw", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class ce {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\"\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0014\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013¨\u0006\u0017"}, d2 = {"android/support/v4/ce$do", "Landroid/support/v4/yd;", "Landroid/support/v4/ub2;", "try", "", "hasNext", "", "nextByte", "", OptRuntime.GeneratorState.resumptionPoint_TYPE, "for", "()I", "else", "(I)V", "nextPrepared", "Z", "new", "()Z", "goto", "(Z)V", "finished", "if", "case", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.ce$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cdo extends yd {

        /* renamed from: do, reason: not valid java name */
        private int f744do = -1;

        /* renamed from: for, reason: not valid java name */
        private boolean f745for;

        /* renamed from: if, reason: not valid java name */
        private boolean f746if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ BufferedInputStream f747new;

        public Cdo(BufferedInputStream bufferedInputStream) {
            this.f747new = bufferedInputStream;
        }

        /* renamed from: try, reason: not valid java name */
        private final void m880try() throws IOException {
            if (this.f746if || this.f745for) {
                return;
            }
            int i = this.f747new.read();
            this.f744do = i;
            this.f746if = true;
            this.f745for = i == -1;
        }

        /* renamed from: case, reason: not valid java name */
        public final void m881case(boolean z) {
            this.f745for = z;
        }

        /* renamed from: else, reason: not valid java name */
        public final void m882else(int i) {
            this.f744do = i;
        }

        /* renamed from: for, reason: not valid java name */
        public final int m883for() {
            return this.f744do;
        }

        /* renamed from: goto, reason: not valid java name */
        public final void m884goto(boolean z) {
            this.f746if = z;
        }

        @Override // java.util.Iterator
        public boolean hasNext() throws IOException {
            m880try();
            return !this.f745for;
        }

        /* renamed from: if, reason: not valid java name */
        public final boolean m885if() {
            return this.f745for;
        }

        /* renamed from: new, reason: not valid java name */
        public final boolean m886new() {
            return this.f746if;
        }

        @Override // android.support.v4.yd
        public byte nextByte() throws IOException {
            m880try();
            if (this.f745for) {
                throw new NoSuchElementException("Input stream is over.");
            }
            byte b = (byte) this.f744do;
            this.f746if = false;
            return b;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ ByteArrayInputStream m858break(String str, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str.getBytes(charset);
        Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
        return new ByteArrayInputStream(bytes);
    }

    /* renamed from: case, reason: not valid java name */
    public static /* synthetic */ BufferedReader m859case(InputStream inputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        Reader inputStreamReader = new InputStreamReader(inputStream, charset);
        return inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
    }

    /* renamed from: catch, reason: not valid java name */
    public static final long m860catch(@m41 InputStream copyTo, @m41 OutputStream out, int i) throws IOException {
        Csuper.m30700throw(copyTo, "$this$copyTo");
        Csuper.m30700throw(out, "out");
        byte[] bArr = new byte[i];
        int i2 = copyTo.read(bArr);
        long j = 0;
        while (i2 >= 0) {
            out.write(bArr, 0, i2);
            j += i2;
            i2 = copyTo.read(bArr);
        }
        return j;
    }

    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ long m861class(InputStream inputStream, OutputStream outputStream, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return m860catch(inputStream, outputStream, i);
    }

    @um0
    /* renamed from: const, reason: not valid java name */
    private static final ByteArrayInputStream m862const(byte[] bArr) {
        return new ByteArrayInputStream(bArr);
    }

    @um0
    /* renamed from: do, reason: not valid java name */
    private static final BufferedInputStream m863do(InputStream inputStream, int i) {
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i);
    }

    @um0
    /* renamed from: else, reason: not valid java name */
    private static final BufferedWriter m864else(OutputStream outputStream, Charset charset) {
        Writer outputStreamWriter = new OutputStreamWriter(outputStream, charset);
        return outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192);
    }

    @um0
    /* renamed from: final, reason: not valid java name */
    private static final ByteArrayInputStream m865final(byte[] bArr, int i, int i2) {
        return new ByteArrayInputStream(bArr, i, i2);
    }

    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ BufferedInputStream m866for(InputStream inputStream, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i);
    }

    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ BufferedWriter m867goto(OutputStream outputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        Writer outputStreamWriter = new OutputStreamWriter(outputStream, charset);
        return outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192);
    }

    @um0
    /* renamed from: if, reason: not valid java name */
    private static final BufferedOutputStream m868if(OutputStream outputStream, int i) {
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i);
    }

    /* renamed from: import, reason: not valid java name */
    public static /* synthetic */ byte[] m869import(InputStream inputStream, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return m879while(inputStream, i);
    }

    @um0
    /* renamed from: native, reason: not valid java name */
    private static final InputStreamReader m870native(InputStream inputStream, Charset charset) {
        return new InputStreamReader(inputStream, charset);
    }

    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ BufferedOutputStream m871new(OutputStream outputStream, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i);
    }

    /* renamed from: public, reason: not valid java name */
    public static /* synthetic */ InputStreamReader m872public(InputStream inputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return new InputStreamReader(inputStream, charset);
    }

    @um0
    /* renamed from: return, reason: not valid java name */
    private static final OutputStreamWriter m873return(OutputStream outputStream, Charset charset) {
        return new OutputStreamWriter(outputStream, charset);
    }

    /* renamed from: static, reason: not valid java name */
    public static /* synthetic */ OutputStreamWriter m874static(OutputStream outputStream, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return new OutputStreamWriter(outputStream, charset);
    }

    @m41
    /* renamed from: super, reason: not valid java name */
    public static final yd m875super(@m41 BufferedInputStream iterator) {
        Csuper.m30700throw(iterator, "$this$iterator");
        return new Cdo(iterator);
    }

    @um0
    /* renamed from: this, reason: not valid java name */
    private static final ByteArrayInputStream m876this(String str, Charset charset) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str.getBytes(charset);
        Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
        return new ByteArrayInputStream(bytes);
    }

    @m41
    @iz1(version = "1.3")
    /* renamed from: throw, reason: not valid java name */
    public static final byte[] m877throw(@m41 InputStream readBytes) {
        Csuper.m30700throw(readBytes, "$this$readBytes");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, readBytes.available()));
        m861class(readBytes, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Csuper.m30696super(byteArray, "buffer.toByteArray()");
        return byteArray;
    }

    @um0
    /* renamed from: try, reason: not valid java name */
    private static final BufferedReader m878try(InputStream inputStream, Charset charset) {
        Reader inputStreamReader = new InputStreamReader(inputStream, charset);
        return inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
    }

    @m41
    @Cfor(message = "Use readBytes() overload without estimatedSize parameter", replaceWith = @an1(expression = "readBytes()", imports = {}))
    @Cnew(errorSince = "1.5", warningSince = "1.3")
    /* renamed from: while, reason: not valid java name */
    public static final byte[] m879while(@m41 InputStream readBytes, int i) {
        Csuper.m30700throw(readBytes, "$this$readBytes");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(i, readBytes.available()));
        m861class(readBytes, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Csuper.m30696super(byteArray, "buffer.toByteArray()");
        return byteArray;
    }
}
