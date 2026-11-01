package kotlin.io.path;

import android.support.v4.ae1;
import android.support.v4.al;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.k90;
import android.support.v4.m41;
import android.support.v4.qm;
import android.support.v4.tm0;
import android.support.v4.ub2;
import android.support.v4.um0;
import androidx.exifinterface.media.ExifInterface;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Cwhile;
import kotlin.io.Cfinal;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Cclass;
import kotlin.sequences.Sequence;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0002\b\b\u001a2\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0007\u0010\b\u001a<\u0010\f\u001a\u00020\u000b*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\t2\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\f\u0010\r\u001a2\u0010\u000f\u001a\u00020\u000e*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a<\u0010\u0012\u001a\u00020\u0011*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\t2\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a\r\u0010\u0015\u001a\u00020\u0014*\u00020\u0000H\u0087\b\u001a0\u0010\u0018\u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00142\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0015\u0010\u001a\u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0014H\u0087\b\u001a\u0016\u0010\u001c\u001a\u00020\u001b*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007\u001a9\u0010\u001f\u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001d2\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0007¢\u0006\u0004\b\u001f\u0010 \u001a\u001e\u0010!\u001a\u00020\u0017*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001d2\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0007\u001a=\u0010'\u001a\u00020\u0017*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012!\u0010&\u001a\u001d\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00170\"H\u0087\bø\u0001\u0000\u001a(\u0010)\u001a\u00020(*\u00020\u00002\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b)\u0010*\u001a(\u0010,\u001a\u00020+*\u00020\u00002\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b,\u0010-\u001a\u001d\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001b0.*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001aA\u00103\u001a\u00028\u0000\"\u0004\b\u0000\u00100*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0018\u00102\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b01\u0012\u0004\u0012\u00028\u00000\"H\u0087\bø\u0001\u0000¢\u0006\u0004\b3\u00104\u001a@\u00107\u001a\u00020\u0000*\u00020\u00002\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001d052\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b7\u00108\u001a@\u00109\u001a\u00020\u0000*\u00020\u00002\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001d012\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004H\u0087\b¢\u0006\u0004\b9\u0010:\u001a%\u0010;\u001a\u00020\u0000*\u00020\u00002\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001d052\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a%\u0010<\u001a\u00020\u0000*\u00020\u00002\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u001d012\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006="}, d2 = {"Ljava/nio/file/Path;", "Ljava/nio/charset/Charset;", "charset", "", "Ljava/nio/file/OpenOption;", "options", "Ljava/io/InputStreamReader;", "return", "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/InputStreamReader;", "", "bufferSize", "Ljava/io/BufferedReader;", "goto", "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;I[Ljava/nio/file/OpenOption;)Ljava/io/BufferedReader;", "Ljava/io/OutputStreamWriter;", "strictfp", "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStreamWriter;", "Ljava/io/BufferedWriter;", "break", "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;I[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;", "", "throw", "array", "Landroid/support/v4/ub2;", "default", "(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)V", "do", "", "native", "", "text", "abstract", "(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)V", "case", "Lkotlin/Function1;", "Landroid/support/v4/xb1;", "name", "line", "action", "class", "Ljava/io/InputStream;", "final", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;", "Ljava/io/OutputStream;", "super", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;", "", "while", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "block", "switch", "(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "", "lines", "extends", "(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;", "finally", "(Ljava/nio/file/Path;Lkotlin/sequences/Sequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;", "if", "for", "kotlin-stdlib-jdk7"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/io/path/PathsKt")
/* renamed from: kotlin.io.path.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor {
    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    /* renamed from: abstract, reason: not valid java name */
    public static final void m30597abstract(@m41 Path writeText, @m41 CharSequence text, @m41 Charset charset, @m41 OpenOption... options) throws IOException {
        Csuper.m30700throw(writeText, "$this$writeText");
        Csuper.m30700throw(text, "text");
        Csuper.m30700throw(charset, "charset");
        Csuper.m30700throw(options, "options");
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(writeText, (OpenOption[]) Arrays.copyOf(options, options.length));
        Csuper.m30696super(outputStreamNewOutputStream, "Files.newOutputStream(this, *options)");
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStreamNewOutputStream, charset);
        try {
            outputStreamWriter.append(text);
            qm.m6624do(outputStreamWriter, null);
        } finally {
        }
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: break, reason: not valid java name */
    private static final BufferedWriter m30598break(Path path, Charset charset, int i, OpenOption... openOptionArr) throws IOException {
        return new BufferedWriter(new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset), i);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    /* renamed from: case, reason: not valid java name */
    public static final void m30599case(@m41 Path appendText, @m41 CharSequence text, @m41 Charset charset) throws IOException {
        Csuper.m30700throw(appendText, "$this$appendText");
        Csuper.m30700throw(text, "text");
        Csuper.m30700throw(charset, "charset");
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(appendText, StandardOpenOption.APPEND);
        Csuper.m30696super(outputStreamNewOutputStream, "Files.newOutputStream(th…tandardOpenOption.APPEND)");
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStreamNewOutputStream, charset);
        try {
            outputStreamWriter.append(text);
            qm.m6624do(outputStreamWriter, null);
        } finally {
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ BufferedWriter m30600catch(Path path, Charset charset, int i, OpenOption[] openOptionArr, int i2, Object obj) throws IOException {
        if ((i2 & 1) != 0) {
            charset = al.f191do;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return new BufferedWriter(new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset), i);
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    /* renamed from: class, reason: not valid java name */
    private static final void m30601class(Path path, Charset charset, Function1<? super String, ub2> function1) throws IOException {
        BufferedReader bufferedReaderNewBufferedReader = Files.newBufferedReader(path, charset);
        Csuper.m30696super(bufferedReaderNewBufferedReader, "Files.newBufferedReader(this, charset)");
        if (!(bufferedReaderNewBufferedReader instanceof BufferedReader)) {
            bufferedReaderNewBufferedReader = new BufferedReader(bufferedReaderNewBufferedReader, 8192);
        }
        try {
            Iterator<String> it = Cfinal.m30576goto(bufferedReaderNewBufferedReader).iterator();
            while (it.hasNext()) {
                function1.invoke(it.next());
            }
            ub2 ub2Var = ub2.f6820do;
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(bufferedReaderNewBufferedReader, null);
            } else {
                bufferedReaderNewBufferedReader.close();
            }
            tm0.m7994for(1);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    qm.m6624do(bufferedReaderNewBufferedReader, th);
                } else {
                    try {
                        bufferedReaderNewBufferedReader.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ void m30602const(Path path, Charset charset, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        BufferedReader bufferedReaderNewBufferedReader = Files.newBufferedReader(path, charset);
        Csuper.m30696super(bufferedReaderNewBufferedReader, "Files.newBufferedReader(this, charset)");
        if (!(bufferedReaderNewBufferedReader instanceof BufferedReader)) {
            bufferedReaderNewBufferedReader = new BufferedReader(bufferedReaderNewBufferedReader, 8192);
        }
        try {
            Iterator<String> it = Cfinal.m30576goto(bufferedReaderNewBufferedReader).iterator();
            while (it.hasNext()) {
                function1.invoke(it.next());
            }
            ub2 ub2Var = ub2.f6820do;
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(bufferedReaderNewBufferedReader, null);
            } else {
                bufferedReaderNewBufferedReader.close();
            }
            tm0.m7994for(1);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    qm.m6624do(bufferedReaderNewBufferedReader, th);
                } else {
                    try {
                        bufferedReaderNewBufferedReader.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static /* synthetic */ void m30603continue(Path path, CharSequence charSequence, Charset charset, OpenOption[] openOptionArr, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            charset = al.f191do;
        }
        m30597abstract(path, charSequence, charset, openOptionArr);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: default, reason: not valid java name */
    private static final void m30604default(Path path, byte[] bArr, OpenOption... openOptionArr) throws IOException {
        Files.write(path, bArr, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final void m30605do(Path path, byte[] bArr) throws IOException {
        Files.write(path, bArr, StandardOpenOption.APPEND);
    }

    /* renamed from: else, reason: not valid java name */
    public static /* synthetic */ void m30606else(Path path, CharSequence charSequence, Charset charset, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            charset = al.f191do;
        }
        m30599case(path, charSequence, charset);
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    /* renamed from: extends, reason: not valid java name */
    private static final Path m30607extends(Path path, Iterable<? extends CharSequence> iterable, Charset charset, OpenOption... openOptionArr) throws IOException {
        Path pathWrite = Files.write(path, iterable, charset, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        Csuper.m30696super(pathWrite, "Files.write(this, lines, charset, *options)");
        return pathWrite;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: final, reason: not valid java name */
    private static final InputStream m30608final(Path path, OpenOption... openOptionArr) throws IOException {
        InputStream inputStreamNewInputStream = Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        Csuper.m30696super(inputStreamNewInputStream, "Files.newInputStream(this, *options)");
        return inputStreamNewInputStream;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    /* renamed from: finally, reason: not valid java name */
    private static final Path m30609finally(Path path, Sequence<? extends CharSequence> sequence, Charset charset, OpenOption... openOptionArr) throws IOException {
        Path pathWrite = Files.write(path, Cclass.m31050volatile(sequence), charset, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        Csuper.m30696super(pathWrite, "Files.write(this, lines.…ble(), charset, *options)");
        return pathWrite;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    /* renamed from: for, reason: not valid java name */
    private static final Path m30610for(Path path, Sequence<? extends CharSequence> sequence, Charset charset) throws IOException {
        Path pathWrite = Files.write(path, Cclass.m31050volatile(sequence), charset, StandardOpenOption.APPEND);
        Csuper.m30696super(pathWrite, "Files.write(this, lines.…tandardOpenOption.APPEND)");
        return pathWrite;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: goto, reason: not valid java name */
    private static final BufferedReader m30611goto(Path path, Charset charset, int i, OpenOption... openOptionArr) throws IOException {
        return new BufferedReader(new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset), i);
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    /* renamed from: if, reason: not valid java name */
    private static final Path m30612if(Path path, Iterable<? extends CharSequence> iterable, Charset charset) throws IOException {
        Path pathWrite = Files.write(path, iterable, charset, StandardOpenOption.APPEND);
        Csuper.m30696super(pathWrite, "Files.write(this, lines,…tandardOpenOption.APPEND)");
        return pathWrite;
    }

    /* renamed from: import, reason: not valid java name */
    public static /* synthetic */ List m30613import(Path path, Charset charset, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        List<String> allLines = Files.readAllLines(path, charset);
        Csuper.m30696super(allLines, "Files.readAllLines(this, charset)");
        return allLines;
    }

    @m41
    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    /* renamed from: native, reason: not valid java name */
    public static final String m30614native(@m41 Path readText, @m41 Charset charset) throws IOException {
        Csuper.m30700throw(readText, "$this$readText");
        Csuper.m30700throw(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(Files.newInputStream(readText, (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0)), charset);
        try {
            String strM30569catch = Cfinal.m30569catch(inputStreamReader);
            qm.m6624do(inputStreamReader, null);
            return strM30569catch;
        } finally {
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ Path m30615new(Path path, Iterable iterable, Charset charset, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            charset = al.f191do;
        }
        Path pathWrite = Files.write(path, iterable, charset, StandardOpenOption.APPEND);
        Csuper.m30696super(pathWrite, "Files.write(this, lines,…tandardOpenOption.APPEND)");
        return pathWrite;
    }

    /* renamed from: package, reason: not valid java name */
    public static /* synthetic */ Path m30616package(Path path, Iterable iterable, Charset charset, OpenOption[] openOptionArr, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            charset = al.f191do;
        }
        Path pathWrite = Files.write(path, iterable, charset, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        Csuper.m30696super(pathWrite, "Files.write(this, lines, charset, *options)");
        return pathWrite;
    }

    /* renamed from: private, reason: not valid java name */
    public static /* synthetic */ Path m30617private(Path path, Sequence sequence, Charset charset, OpenOption[] openOptionArr, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            charset = al.f191do;
        }
        Path pathWrite = Files.write(path, Cclass.m31050volatile(sequence), charset, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        Csuper.m30696super(pathWrite, "Files.write(this, lines.…ble(), charset, *options)");
        return pathWrite;
    }

    /* renamed from: public, reason: not valid java name */
    public static /* synthetic */ String m30618public(Path path, Charset charset, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return m30614native(path, charset);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: return, reason: not valid java name */
    private static final InputStreamReader m30619return(Path path, Charset charset, OpenOption... openOptionArr) throws IOException {
        return new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset);
    }

    /* renamed from: static, reason: not valid java name */
    public static /* synthetic */ InputStreamReader m30620static(Path path, Charset charset, OpenOption[] openOptionArr, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: strictfp, reason: not valid java name */
    private static final OutputStreamWriter m30621strictfp(Path path, Charset charset, OpenOption... openOptionArr) throws IOException {
        return new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: super, reason: not valid java name */
    private static final OutputStream m30622super(Path path, OpenOption... openOptionArr) throws IOException {
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        Csuper.m30696super(outputStreamNewOutputStream, "Files.newOutputStream(this, *options)");
        return outputStreamNewOutputStream;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    /* renamed from: switch, reason: not valid java name */
    private static final <T> T m30623switch(Path path, Charset charset, Function1<? super Sequence<String>, ? extends T> function1) throws IOException {
        BufferedReader it = Files.newBufferedReader(path, charset);
        try {
            Csuper.m30696super(it, "it");
            T tInvoke = function1.invoke(Cfinal.m30576goto(it));
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(it, null);
            } else if (it != null) {
                it.close();
            }
            tm0.m7994for(1);
            return tInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    qm.m6624do(it, th);
                } else if (it != null) {
                    try {
                        it.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ BufferedReader m30624this(Path path, Charset charset, int i, OpenOption[] openOptionArr, int i2, Object obj) throws IOException {
        if ((i2 & 1) != 0) {
            charset = al.f191do;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return new BufferedReader(new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset), i);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final byte[] m30625throw(Path path) throws IOException {
        byte[] allBytes = Files.readAllBytes(path);
        Csuper.m30696super(allBytes, "Files.readAllBytes(this)");
        return allBytes;
    }

    /* renamed from: throws, reason: not valid java name */
    public static /* synthetic */ Object m30626throws(Path path, Charset charset, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        BufferedReader it = Files.newBufferedReader(path, charset);
        try {
            Csuper.m30696super(it, "it");
            Object objInvoke = function1.invoke(Cfinal.m30576goto(it));
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(it, null);
            } else if (it != null) {
                it.close();
            }
            tm0.m7994for(1);
            return objInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    qm.m6624do(it, th);
                } else if (it != null) {
                    try {
                        it.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static /* synthetic */ Path m30627try(Path path, Sequence sequence, Charset charset, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            charset = al.f191do;
        }
        Path pathWrite = Files.write(path, Cclass.m31050volatile(sequence), charset, StandardOpenOption.APPEND);
        Csuper.m30696super(pathWrite, "Files.write(this, lines.…tandardOpenOption.APPEND)");
        return pathWrite;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static /* synthetic */ OutputStreamWriter m30628volatile(Path path, Charset charset, OpenOption[] openOptionArr, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return new OutputStreamWriter(Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length)), charset);
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    /* renamed from: while, reason: not valid java name */
    private static final List<String> m30629while(Path path, Charset charset) throws IOException {
        List<String> allLines = Files.readAllLines(path, charset);
        Csuper.m30696super(allLines, "Files.readAllLines(this, charset)");
        return allLines;
    }
}
