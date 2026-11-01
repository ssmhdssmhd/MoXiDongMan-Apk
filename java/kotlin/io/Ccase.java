package kotlin.io;

import android.support.v4.ae1;
import android.support.v4.al;
import android.support.v4.ce;
import android.support.v4.m41;
import android.support.v4.qm;
import android.support.v4.tm0;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.yr0;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.o;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Sequence;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0017\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a!\u0010\b\u001a\u00020\u0007*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\u0017\u0010\n\u001a\u00020\t*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a!\u0010\f\u001a\u00020\u000b*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\u0017\u0010\u000e\u001a\u00020\r*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\n\u0010\u0010\u001a\u00020\u000f*\u00020\u0000\u001a\u0012\u0010\u0013\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000f\u001a\u0012\u0010\u0014\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000f\u001a\u0014\u0010\u0016\u001a\u00020\u0015*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u001c\u0010\u0018\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00152\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u001c\u0010\u0019\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00152\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001aB\u0010 \u001a\u00020\u0012*\u00020\u000026\u0010\u001f\u001a2\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00120\u001a\u001aJ\u0010\"\u001a\u00020\u0012*\u00020\u00002\u0006\u0010!\u001a\u00020\u000526\u0010\u001f\u001a2\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00120\u001a\u001a7\u0010%\u001a\u00020\u0012*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012!\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00120#\u001a\r\u0010'\u001a\u00020&*\u00020\u0000H\u0087\b\u001a\r\u0010)\u001a\u00020(*\u00020\u0000H\u0087\b\u001a\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00150**\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001aD\u00100\u001a\u00028\u0000\"\u0004\b\u0000\u0010,*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0018\u0010.\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150-\u0012\u0004\u0012\u00028\u00000#H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101\u0082\u0002\u000f\n\u0006\b\u0011(/0\u0001\n\u0005\b\u009920\u0001¨\u00062"}, d2 = {"Ljava/io/File;", "Ljava/nio/charset/Charset;", "charset", "Ljava/io/InputStreamReader;", "finally", "", "bufferSize", "Ljava/io/BufferedReader;", "break", "Ljava/io/OutputStreamWriter;", "interface", "Ljava/io/BufferedWriter;", "class", "Ljava/io/PrintWriter;", "public", "", "static", "array", "Landroid/support/v4/ub2;", "continue", "else", "", "default", "text", "strictfp", "goto", "Lkotlin/Function2;", "Landroid/support/v4/xb1;", "name", "buffer", "bytesRead", "action", "super", "blockSize", "final", "Lkotlin/Function1;", "line", "throw", "Ljava/io/FileInputStream;", "import", "Ljava/io/FileOutputStream;", "native", "", "switch", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "block", "Requires newer compiler version to be inlined correctly.", "private", "(Ljava/io/File;Ljava/nio/charset/Charset;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/io/FilesKt")
/* renamed from: kotlin.io.case, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccase extends Ctry {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "Landroid/support/v4/ub2;", "invoke", "(Ljava/lang/String;)V", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.io.case$do, reason: invalid class name */
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

    /* renamed from: abstract, reason: not valid java name */
    public static /* synthetic */ Object m30531abstract(File useLines, Charset charset, Function1 block, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        Csuper.m30700throw(useLines, "$this$useLines");
        Csuper.m30700throw(charset, "charset");
        Csuper.m30700throw(block, "block");
        Reader inputStreamReader = new InputStreamReader(new FileInputStream(useLines), charset);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            Object objInvoke = block.invoke(Cfinal.m30576goto(bufferedReader));
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(bufferedReader, null);
            } else {
                bufferedReader.close();
            }
            tm0.m7994for(1);
            return objInvoke;
        } finally {
        }
    }

    @um0
    /* renamed from: break, reason: not valid java name */
    private static final BufferedReader m30532break(File file, Charset charset, int i) {
        Reader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        return inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, i);
    }

    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ BufferedReader m30533catch(File file, Charset charset, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = al.f191do;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        Reader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        return inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, i);
    }

    @um0
    /* renamed from: class, reason: not valid java name */
    private static final BufferedWriter m30534class(File file, Charset charset, int i) {
        Writer outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), charset);
        return outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, i);
    }

    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ BufferedWriter m30535const(File file, Charset charset, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = al.f191do;
        }
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        Writer outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), charset);
        return outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, i);
    }

    /* renamed from: continue, reason: not valid java name */
    public static final void m30536continue(@m41 File writeBytes, @m41 byte[] array) {
        Csuper.m30700throw(writeBytes, "$this$writeBytes");
        Csuper.m30700throw(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(writeBytes);
        try {
            fileOutputStream.write(array);
            ub2 ub2Var = ub2.f6820do;
            qm.m6624do(fileOutputStream, null);
        } finally {
        }
    }

    @m41
    /* renamed from: default, reason: not valid java name */
    public static final String m30537default(@m41 File readText, @m41 Charset charset) {
        Csuper.m30700throw(readText, "$this$readText");
        Csuper.m30700throw(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(readText), charset);
        try {
            String strM30569catch = Cfinal.m30569catch(inputStreamReader);
            qm.m6624do(inputStreamReader, null);
            return strM30569catch;
        } finally {
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static final void m30538else(@m41 File appendBytes, @m41 byte[] array) {
        Csuper.m30700throw(appendBytes, "$this$appendBytes");
        Csuper.m30700throw(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(appendBytes, true);
        try {
            fileOutputStream.write(array);
            ub2 ub2Var = ub2.f6820do;
            qm.m6624do(fileOutputStream, null);
        } finally {
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static /* synthetic */ String m30539extends(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return m30537default(file, charset);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [byte[], java.lang.Object] */
    /* renamed from: final, reason: not valid java name */
    public static final void m30540final(@m41 File forEachBlock, int i, @m41 Function2<? super byte[], ? super Integer, ub2> action) {
        Csuper.m30700throw(forEachBlock, "$this$forEachBlock");
        Csuper.m30700throw(action, "action");
        ?? r2 = new byte[kotlin.ranges.Ccase.m30873final(i, 512)];
        FileInputStream fileInputStream = new FileInputStream(forEachBlock);
        while (true) {
            try {
                int i2 = fileInputStream.read(r2);
                if (i2 <= 0) {
                    ub2 ub2Var = ub2.f6820do;
                    qm.m6624do(fileInputStream, null);
                    return;
                }
                action.invoke(r2, Integer.valueOf(i2));
            } finally {
            }
        }
    }

    @um0
    /* renamed from: finally, reason: not valid java name */
    private static final InputStreamReader m30541finally(File file, Charset charset) {
        return new InputStreamReader(new FileInputStream(file), charset);
    }

    /* renamed from: goto, reason: not valid java name */
    public static final void m30542goto(@m41 File appendText, @m41 String text, @m41 Charset charset) {
        Csuper.m30700throw(appendText, "$this$appendText");
        Csuper.m30700throw(text, "text");
        Csuper.m30700throw(charset, "charset");
        byte[] bytes = text.getBytes(charset);
        Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
        m30538else(appendText, bytes);
    }

    @um0
    /* renamed from: import, reason: not valid java name */
    private static final FileInputStream m30543import(File file) {
        return new FileInputStream(file);
    }

    @um0
    /* renamed from: interface, reason: not valid java name */
    private static final OutputStreamWriter m30544interface(File file, Charset charset) {
        return new OutputStreamWriter(new FileOutputStream(file), charset);
    }

    @um0
    /* renamed from: native, reason: not valid java name */
    private static final FileOutputStream m30545native(File file) {
        return new FileOutputStream(file);
    }

    /* renamed from: package, reason: not valid java name */
    public static /* synthetic */ InputStreamReader m30546package(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return new InputStreamReader(new FileInputStream(file), charset);
    }

    /* renamed from: private, reason: not valid java name */
    public static final <T> T m30547private(@m41 File useLines, @m41 Charset charset, @m41 Function1<? super Sequence<String>, ? extends T> block) throws IOException {
        Csuper.m30700throw(useLines, "$this$useLines");
        Csuper.m30700throw(charset, "charset");
        Csuper.m30700throw(block, "block");
        Reader inputStreamReader = new InputStreamReader(new FileInputStream(useLines), charset);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            T tInvoke = block.invoke(Cfinal.m30576goto(bufferedReader));
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

    /* renamed from: protected, reason: not valid java name */
    public static /* synthetic */ OutputStreamWriter m30548protected(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return new OutputStreamWriter(new FileOutputStream(file), charset);
    }

    @um0
    /* renamed from: public, reason: not valid java name */
    private static final PrintWriter m30549public(File file, Charset charset) {
        Writer outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), charset);
        return new PrintWriter(outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192));
    }

    /* renamed from: return, reason: not valid java name */
    public static /* synthetic */ PrintWriter m30550return(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        Writer outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), charset);
        return new PrintWriter(outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192));
    }

    @m41
    /* renamed from: static, reason: not valid java name */
    public static final byte[] m30551static(@m41 File readBytes) {
        Csuper.m30700throw(readBytes, "$this$readBytes");
        FileInputStream fileInputStream = new FileInputStream(readBytes);
        try {
            long length = readBytes.length();
            if (length > Integer.MAX_VALUE) {
                throw new OutOfMemoryError("File " + readBytes + " is too big (" + length + " bytes) to fit in memory.");
            }
            int i = (int) length;
            byte[] bArrJ0 = new byte[i];
            int i2 = i;
            int i3 = 0;
            while (i2 > 0) {
                int i4 = fileInputStream.read(bArrJ0, i3, i2);
                if (i4 < 0) {
                    break;
                }
                i2 -= i4;
                i3 += i4;
            }
            if (i2 > 0) {
                bArrJ0 = Arrays.copyOf(bArrJ0, i3);
                Csuper.m30696super(bArrJ0, "java.util.Arrays.copyOf(this, newSize)");
            } else {
                int i5 = fileInputStream.read();
                if (i5 != -1) {
                    kotlin.io.Cdo cdo = new kotlin.io.Cdo(o.a.p);
                    cdo.write(i5);
                    ce.m861class(fileInputStream, cdo, 0, 2, null);
                    int size = cdo.size() + i;
                    if (size < 0) {
                        throw new OutOfMemoryError("File " + readBytes + " is too big to fit in memory.");
                    }
                    byte[] bArrM30562do = cdo.m30562do();
                    byte[] bArrCopyOf = Arrays.copyOf(bArrJ0, size);
                    Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
                    bArrJ0 = Ccatch.j0(bArrM30562do, bArrCopyOf, i, 0, cdo.size());
                }
            }
            qm.m6624do(fileInputStream, null);
            return bArrJ0;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                qm.m6624do(fileInputStream, th);
                throw th2;
            }
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static final void m30552strictfp(@m41 File writeText, @m41 String text, @m41 Charset charset) {
        Csuper.m30700throw(writeText, "$this$writeText");
        Csuper.m30700throw(text, "text");
        Csuper.m30700throw(charset, "charset");
        byte[] bytes = text.getBytes(charset);
        Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
        m30536continue(writeText, bytes);
    }

    /* renamed from: super, reason: not valid java name */
    public static final void m30553super(@m41 File forEachBlock, @m41 Function2<? super byte[], ? super Integer, ub2> action) {
        Csuper.m30700throw(forEachBlock, "$this$forEachBlock");
        Csuper.m30700throw(action, "action");
        m30540final(forEachBlock, 4096, action);
    }

    @m41
    /* renamed from: switch, reason: not valid java name */
    public static final List<String> m30554switch(@m41 File readLines, @m41 Charset charset) {
        Csuper.m30700throw(readLines, "$this$readLines");
        Csuper.m30700throw(charset, "charset");
        ArrayList arrayList = new ArrayList();
        m30556throw(readLines, charset, new Cdo(arrayList));
        return arrayList;
    }

    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ void m30555this(File file, String str, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = al.f191do;
        }
        m30542goto(file, str, charset);
    }

    /* renamed from: throw, reason: not valid java name */
    public static final void m30556throw(@m41 File forEachLine, @m41 Charset charset, @m41 Function1<? super String, ub2> action) {
        Csuper.m30700throw(forEachLine, "$this$forEachLine");
        Csuper.m30700throw(charset, "charset");
        Csuper.m30700throw(action, "action");
        Cfinal.m30573else(new BufferedReader(new InputStreamReader(new FileInputStream(forEachLine), charset)), action);
    }

    /* renamed from: throws, reason: not valid java name */
    public static /* synthetic */ List m30557throws(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        return m30554switch(file, charset);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static /* synthetic */ void m30558volatile(File file, String str, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = al.f191do;
        }
        m30552strictfp(file, str, charset);
    }

    /* renamed from: while, reason: not valid java name */
    public static /* synthetic */ void m30559while(File file, Charset charset, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        m30556throw(file, charset, function1);
    }
}
