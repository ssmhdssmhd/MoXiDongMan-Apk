package kotlin.io;

import android.support.v4.ae1;
import android.support.v4.al;
import android.support.v4.ce;
import android.support.v4.m41;
import android.support.v4.qm;
import android.support.v4.tm0;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.wp0;
import android.support.v4.yr0;
import androidx.exifinterface.media.ExifInterface;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Cbreak;
import kotlin.sequences.Sequence;

@wp0(name = "TextStreamsKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\u001a\u0017\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0017\u0010\u0007\u001a\u00020\u0006*\u00020\u00052\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u001e\u0010\f\u001a\u00020\n*\u00020\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u001a\u0010\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\r*\u00020\u0000\u001a:\u0010\u0013\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000f*\u00020\u00002\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0010\u0012\u0004\u0012\u00028\u00000\bH\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u0014\u001a\r\u0010\u0016\u001a\u00020\u0015*\u00020\tH\u0087\b\u001a\u0010\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\u0010*\u00020\u0003\u001a\n\u0010\u0018\u001a\u00020\t*\u00020\u0000\u001a\u001c\u0010\u001b\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00052\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u0017\u0010\u001f\u001a\u00020\t*\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u001dH\u0087\b\u001a\n\u0010!\u001a\u00020 *\u00020\u001c\u0082\u0002\u000f\n\u0006\b\u0011(\u00120\u0001\n\u0005\b\u009920\u0001¨\u0006\""}, d2 = {"Ljava/io/Reader;", "", "bufferSize", "Ljava/io/BufferedReader;", "do", "Ljava/io/Writer;", "Ljava/io/BufferedWriter;", "if", "Lkotlin/Function1;", "", "Landroid/support/v4/ub2;", "action", "else", "", "break", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "block", "Requires newer compiler version to be inlined correctly.", "super", "(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Ljava/io/StringReader;", "final", "goto", "catch", "out", "", "try", "Ljava/net/URL;", "Ljava/nio/charset/Charset;", "charset", "class", "", "this", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.io.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "Landroid/support/v4/ub2;", "invoke", "(Ljava/lang/String;)V", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.io.final$do, reason: invalid class name */
    public static final class Cdo extends yr0 implements Function1<String, ub2> {
        public final /* synthetic */ ArrayList $result;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(ArrayList arrayList) {
            super(1);
            this.$result = arrayList;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ ub2 invoke(String str) {
            invoke2(str);
            return ub2.f6820do;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@m41 String it) {
            Csuper.m30700throw(it, "it");
            this.$result.add(it);
        }
    }

    @m41
    /* renamed from: break, reason: not valid java name */
    public static final List<String> m30567break(@m41 Reader readLines) {
        Csuper.m30700throw(readLines, "$this$readLines");
        ArrayList arrayList = new ArrayList();
        m30573else(readLines, new Cdo(arrayList));
        return arrayList;
    }

    /* renamed from: case, reason: not valid java name */
    public static /* synthetic */ long m30568case(Reader reader, Writer writer, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return m30581try(reader, writer, i);
    }

    @m41
    /* renamed from: catch, reason: not valid java name */
    public static final String m30569catch(@m41 Reader readText) {
        Csuper.m30700throw(readText, "$this$readText");
        StringWriter stringWriter = new StringWriter();
        m30568case(readText, stringWriter, 0, 2, null);
        String string = stringWriter.toString();
        Csuper.m30696super(string, "buffer.toString()");
        return string;
    }

    @um0
    /* renamed from: class, reason: not valid java name */
    private static final String m30570class(URL url, Charset charset) {
        return new String(m30580this(url), charset);
    }

    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ String m30571const(URL url, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return new String(m30580this(url), charset);
    }

    @um0
    /* renamed from: do, reason: not valid java name */
    private static final BufferedReader m30572do(Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    /* renamed from: else, reason: not valid java name */
    public static final void m30573else(@m41 Reader forEachLine, @m41 Function1<? super String, ub2> action) {
        Csuper.m30700throw(forEachLine, "$this$forEachLine");
        Csuper.m30700throw(action, "action");
        BufferedReader bufferedReader = forEachLine instanceof BufferedReader ? (BufferedReader) forEachLine : new BufferedReader(forEachLine, 8192);
        try {
            Iterator<String> it = m30576goto(bufferedReader).iterator();
            while (it.hasNext()) {
                action.invoke(it.next());
            }
            ub2 ub2Var = ub2.f6820do;
            qm.m6624do(bufferedReader, null);
        } finally {
        }
    }

    @um0
    /* renamed from: final, reason: not valid java name */
    private static final StringReader m30574final(String str) {
        return new StringReader(str);
    }

    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ BufferedReader m30575for(Reader reader, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    @m41
    /* renamed from: goto, reason: not valid java name */
    public static final Sequence<String> m30576goto(@m41 BufferedReader lineSequence) {
        Csuper.m30700throw(lineSequence, "$this$lineSequence");
        return Cbreak.m31028this(new Ccatch(lineSequence));
    }

    @um0
    /* renamed from: if, reason: not valid java name */
    private static final BufferedWriter m30577if(Writer writer, int i) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ BufferedWriter m30578new(Writer writer, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    /* renamed from: super, reason: not valid java name */
    public static final <T> T m30579super(@m41 Reader useLines, @m41 Function1<? super Sequence<String>, ? extends T> block) throws IOException {
        Csuper.m30700throw(useLines, "$this$useLines");
        Csuper.m30700throw(block, "block");
        BufferedReader bufferedReader = useLines instanceof BufferedReader ? (BufferedReader) useLines : new BufferedReader(useLines, 8192);
        try {
            T tInvoke = block.invoke(m30576goto(bufferedReader));
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(bufferedReader, null);
            } else {
                bufferedReader.close();
            }
            tm0.m7994for(1);
            return tInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    qm.m6624do(bufferedReader, th);
                } else {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }

    @m41
    /* renamed from: this, reason: not valid java name */
    public static final byte[] m30580this(@m41 URL readBytes) throws IOException {
        Csuper.m30700throw(readBytes, "$this$readBytes");
        InputStream it = readBytes.openStream();
        try {
            Csuper.m30696super(it, "it");
            byte[] bArrM877throw = ce.m877throw(it);
            qm.m6624do(it, null);
            return bArrM877throw;
        } finally {
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static final long m30581try(@m41 Reader copyTo, @m41 Writer out, int i) throws IOException {
        Csuper.m30700throw(copyTo, "$this$copyTo");
        Csuper.m30700throw(out, "out");
        char[] cArr = new char[i];
        int i2 = copyTo.read(cArr);
        long j = 0;
        while (i2 >= 0) {
            out.write(cArr, 0, i2);
            j += i2;
            i2 = copyTo.read(cArr);
        }
        return j;
    }
}
