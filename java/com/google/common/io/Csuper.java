package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.on0;
import com.google.common.base.Cfinal;
import com.google.common.base.Cwhile;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.g1;
import com.google.common.collect.v3;
import com.google.common.collect.x1;
import com.google.common.graph.Cinterface;
import com.google.common.graph.SuccessorsFunction;
import com.google.common.hash.Cclass;
import com.google.common.hash.HashFunction;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.jsoup.nodes.Attributes;

@li0
/* renamed from: com.google.common.io.super, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Csuper {

    /* renamed from: do, reason: not valid java name */
    private static final int f15335do = 10000;

    /* renamed from: if, reason: not valid java name */
    private static final v3<File> f15337if = new Cif();

    /* renamed from: for, reason: not valid java name */
    private static final SuccessorsFunction<File> f15336for = new Cfor();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.io.super$case, reason: invalid class name */
    public static abstract class Ccase implements Predicate<File> {
        public static final Ccase IS_DIRECTORY;
        public static final Ccase IS_FILE;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Ccase[] f15338do;

        /* renamed from: com.google.common.io.super$case$do, reason: invalid class name */
        public enum Cdo extends Ccase {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isDirectory()";
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isDirectory();
            }
        }

        /* renamed from: com.google.common.io.super$case$if, reason: invalid class name */
        public enum Cif extends Ccase {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isFile()";
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isFile();
            }
        }

        static {
            Cdo cdo = new Cdo("IS_DIRECTORY", 0);
            IS_DIRECTORY = cdo;
            Cif cif = new Cif("IS_FILE", 1);
            IS_FILE = cif;
            f15338do = new Ccase[]{cdo, cif};
        }

        private Ccase(String str, int i) {
        }

        public static Ccase valueOf(String str) {
            return (Ccase) Enum.valueOf(Ccase.class, str);
        }

        public static Ccase[] values() {
            return (Ccase[]) f15338do.clone();
        }

        public /* synthetic */ Ccase(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    /* renamed from: com.google.common.io.super$do, reason: invalid class name */
    public static class Cdo implements LineProcessor<List<String>> {

        /* renamed from: do, reason: not valid java name */
        public final List<String> f15339do = x1.m16520while();

        @Override // com.google.common.io.LineProcessor
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<String> getResult() {
            return this.f15339do;
        }

        @Override // com.google.common.io.LineProcessor
        public boolean processLine(String str) {
            this.f15339do.add(str);
            return true;
        }
    }

    /* renamed from: com.google.common.io.super$for, reason: invalid class name */
    public static class Cfor implements SuccessorsFunction<File> {
        @Override // com.google.common.graph.SuccessorsFunction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Iterable<File> successors(File file) {
            return Csuper.m17108final(file);
        }
    }

    /* renamed from: com.google.common.io.super$if, reason: invalid class name */
    public static class Cif extends v3<File> {
        @Override // com.google.common.collect.v3
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Iterable<File> mo16453if(File file) {
            return Csuper.m17108final(file);
        }

        public String toString() {
            return "Files.fileTreeTraverser()";
        }
    }

    /* renamed from: com.google.common.io.super$new, reason: invalid class name */
    public static final class Cnew extends com.google.common.io.Cfor {

        /* renamed from: do, reason: not valid java name */
        private final File f15340do;

        /* renamed from: if, reason: not valid java name */
        private final g1<Cfinal> f15341if;

        public /* synthetic */ Cnew(File file, Cfinal[] cfinalArr, Cdo cdo) {
            this(file, cfinalArr);
        }

        @Override // com.google.common.io.Cfor
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public FileOutputStream mo17006for() throws IOException {
            return new FileOutputStream(this.f15340do, this.f15341if.contains(Cfinal.APPEND));
        }

        public String toString() {
            return "Files.asByteSink(" + this.f15340do + ", " + this.f15341if + ")";
        }

        private Cnew(File file, Cfinal... cfinalArr) {
            this.f15340do = (File) af1.m205continue(file);
            this.f15341if = g1.copyOf(cfinalArr);
        }
    }

    /* renamed from: com.google.common.io.super$try, reason: invalid class name */
    public static final class Ctry extends com.google.common.io.Cnew {

        /* renamed from: do, reason: not valid java name */
        private final File f15342do;

        public /* synthetic */ Ctry(File file, Cdo cdo) {
            this(file);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        public FileInputStream mo16996const() throws IOException {
            return new FileInputStream(this.f15342do);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: super */
        public byte[] mo17090super() throws Throwable {
            try {
                FileInputStream fileInputStream = (FileInputStream) Closer.m16975do().m16977if(mo16996const());
                return com.google.common.io.Ctry.m17185static(fileInputStream, fileInputStream.getChannel().size());
            } finally {
            }
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: throw */
        public long mo17091throw() throws IOException {
            if (this.f15342do.isFile()) {
                return this.f15342do.length();
            }
            throw new FileNotFoundException(this.f15342do.toString());
        }

        public String toString() {
            return "Files.asByteSource(" + this.f15342do + ")";
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: while */
        public Cwhile<Long> mo17093while() {
            return this.f15342do.isFile() ? Cwhile.of(Long.valueOf(this.f15342do.length())) : Cwhile.absent();
        }

        private Ctry(File file) {
            this.f15342do = (File) af1.m205continue(file);
        }
    }

    private Csuper() {
    }

    @lf
    @o8
    @Deprecated
    /* renamed from: abstract, reason: not valid java name */
    public static <T> T m17097abstract(File file, Charset charset, LineProcessor<T> lineProcessor) throws IOException {
        return (T) m17099case(file, charset).mo17027while(lineProcessor);
    }

    @o8
    /* renamed from: break, reason: not valid java name */
    public static void m17098break(File file) throws IOException {
        af1.m205continue(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        throw new IOException("Unable to create parent directories of " + file);
    }

    /* renamed from: case, reason: not valid java name */
    public static Cgoto m17099case(File file, Charset charset) {
        return m17117new(file).mo17028do(charset);
    }

    @o8
    /* renamed from: catch, reason: not valid java name */
    public static File m17100catch() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        String str = System.currentTimeMillis() + "-";
        for (int i = 0; i < 10000; i++) {
            File file2 = new File(file, str + i);
            if (file2.mkdir()) {
                return file2;
            }
        }
        throw new IllegalStateException("Failed to create directory within 10000 attempts (tried " + str + "0 to " + str + "9999)");
    }

    @o8
    /* renamed from: class, reason: not valid java name */
    public static boolean m17101class(File file, File file2) throws IOException {
        af1.m205continue(file);
        af1.m205continue(file2);
        if (file == file2 || file.equals(file2)) {
            return true;
        }
        long length = file.length();
        long length2 = file2.length();
        if (length == 0 || length2 == 0 || length == length2) {
            return m17117new(file).m17092try(m17117new(file2));
        }
        return false;
    }

    @o8
    /* renamed from: const, reason: not valid java name */
    public static Cinterface<File> m17102const() {
        return Cinterface.m16786goto(f15336for);
    }

    @o8
    /* renamed from: continue, reason: not valid java name */
    public static List<String> m17103continue(File file, Charset charset) throws IOException {
        return (List) m17099case(file, charset).mo17027while(new Cdo());
    }

    @o8
    /* renamed from: default, reason: not valid java name */
    public static void m17104default(File file, File file2) throws Throwable {
        af1.m205continue(file);
        af1.m205continue(file2);
        af1.m206default(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        if (file.renameTo(file2)) {
            return;
        }
        m17106else(file, file2);
        if (file.delete()) {
            return;
        }
        if (file2.delete()) {
            throw new IOException("Unable to delete " + file);
        }
        throw new IOException("Unable to delete " + file2);
    }

    @o8
    /* renamed from: else, reason: not valid java name */
    public static void m17106else(File file, File file2) throws Throwable {
        af1.m206default(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        m17117new(file).m17084case(m17110for(file2, new Cfinal[0]));
    }

    @o8
    /* renamed from: extends, reason: not valid java name */
    public static BufferedReader m17107extends(File file, Charset charset) throws FileNotFoundException {
        af1.m205continue(file);
        af1.m205continue(charset);
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static Iterable<File> m17108final(File file) {
        File[] fileArrListFiles;
        return (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) ? Collections.emptyList() : Collections.unmodifiableList(Arrays.asList(fileArrListFiles));
    }

    @o8
    /* renamed from: finally, reason: not valid java name */
    public static BufferedWriter m17109finally(File file, Charset charset) throws FileNotFoundException {
        af1.m205continue(file);
        af1.m205continue(charset);
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
    }

    /* renamed from: for, reason: not valid java name */
    public static com.google.common.io.Cfor m17110for(File file, Cfinal... cfinalArr) {
        return new Cnew(file, cfinalArr, null);
    }

    @o8
    /* renamed from: goto, reason: not valid java name */
    public static void m17111goto(File file, OutputStream outputStream) throws Throwable {
        m17117new(file).mo17087else(outputStream);
    }

    @o8
    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public static void m17112if(CharSequence charSequence, File file, Charset charset) throws Throwable {
        m17131try(file, charset, Cfinal.APPEND).m17001for(charSequence);
    }

    @o8
    /* renamed from: implements, reason: not valid java name */
    public static void m17113implements(byte[] bArr, File file) throws Throwable {
        m17110for(file, new Cfinal[0]).m17008new(bArr);
    }

    @o8
    @Deprecated
    /* renamed from: import, reason: not valid java name */
    public static Cclass m17114import(File file, HashFunction hashFunction) throws IOException {
        return m17117new(file).mo17083break(hashFunction);
    }

    @o8
    @Deprecated
    /* renamed from: interface, reason: not valid java name */
    public static String m17115interface(File file, Charset charset) throws IOException {
        return m17099case(file, charset).mo17022final();
    }

    @o8
    /* renamed from: native, reason: not valid java name */
    public static Predicate<File> m17116native() {
        return Ccase.IS_DIRECTORY;
    }

    /* renamed from: new, reason: not valid java name */
    public static com.google.common.io.Cnew m17117new(File file) {
        return new Ctry(file, null);
    }

    @lf
    @o8
    @Deprecated
    /* renamed from: package, reason: not valid java name */
    public static <T> T m17118package(File file, ByteProcessor<T> byteProcessor) throws IOException {
        return (T) m17117new(file).mo17088final(byteProcessor);
    }

    @o8
    @Deprecated
    /* renamed from: private, reason: not valid java name */
    public static String m17119private(File file, Charset charset) throws IOException {
        return m17099case(file, charset).mo17023super();
    }

    @o8
    /* renamed from: protected, reason: not valid java name */
    public static void m17120protected(File file) throws IOException {
        af1.m205continue(file);
        if (file.createNewFile() || file.setLastModified(System.currentTimeMillis())) {
            return;
        }
        throw new IOException("Unable to update modification time of " + file);
    }

    @o8
    /* renamed from: public, reason: not valid java name */
    public static Predicate<File> m17121public() {
        return Ccase.IS_FILE;
    }

    @o8
    /* renamed from: return, reason: not valid java name */
    public static MappedByteBuffer m17122return(File file) throws IOException {
        af1.m205continue(file);
        return m17123static(file, FileChannel.MapMode.READ_ONLY);
    }

    @o8
    /* renamed from: static, reason: not valid java name */
    public static MappedByteBuffer m17123static(File file, FileChannel.MapMode mapMode) throws IOException {
        return m17129throws(file, mapMode, -1L);
    }

    @o8
    /* renamed from: strictfp, reason: not valid java name */
    public static String m17124strictfp(String str) {
        af1.m205continue(str);
        if (str.length() == 0) {
            return ".";
        }
        Iterable<String> iterableM14997final = Splitter.m14989goto(Attributes.InternalPrefix).m14996else().m14997final(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : iterableM14997final) {
            str2.hashCode();
            if (!str2.equals(".")) {
                if (!str2.equals("..")) {
                    arrayList.add(str2);
                } else if (arrayList.size() <= 0 || ((String) arrayList.get(arrayList.size() - 1)).equals("..")) {
                    arrayList.add("..");
                } else {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }
        String strM15073catch = Cfinal.m15070super(Attributes.InternalPrefix).m15073catch(arrayList);
        if (str.charAt(0) == '/') {
            strM15073catch = on0.f4694final + strM15073catch;
        }
        while (strM15073catch.startsWith("/../")) {
            strM15073catch = strM15073catch.substring(3);
        }
        return strM15073catch.equals("/..") ? on0.f4694final : "".equals(strM15073catch) ? "." : strM15073catch;
    }

    @Deprecated
    /* renamed from: super, reason: not valid java name */
    public static v3<File> m17125super() {
        return f15337if;
    }

    @o8
    /* renamed from: switch, reason: not valid java name */
    public static MappedByteBuffer m17126switch(File file, FileChannel.MapMode mapMode, long j) throws IOException {
        af1.m232throw(j >= 0, "size (%s) may not be negative", j);
        return m17129throws(file, mapMode, j);
    }

    @o8
    @Deprecated
    /* renamed from: this, reason: not valid java name */
    public static void m17127this(File file, Charset charset, Appendable appendable) throws Throwable {
        m17099case(file, charset).mo17017case(appendable);
    }

    @o8
    /* renamed from: throw, reason: not valid java name */
    public static String m17128throw(String str) {
        af1.m205continue(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? "" : name.substring(iLastIndexOf + 1);
    }

    /* renamed from: throws, reason: not valid java name */
    private static MappedByteBuffer m17129throws(File file, FileChannel.MapMode mapMode, long j) throws Throwable {
        af1.m205continue(file);
        af1.m205continue(mapMode);
        Closer closerM16975do = Closer.m16975do();
        try {
            FileChannel fileChannel = (FileChannel) closerM16975do.m16977if(((RandomAccessFile) closerM16975do.m16977if(new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? "r" : "rw"))).getChannel());
            if (j == -1) {
                j = fileChannel.size();
            }
            return fileChannel.map(mapMode, 0L, j);
        } finally {
        }
    }

    @o8
    @Deprecated
    /* renamed from: transient, reason: not valid java name */
    public static void m17130transient(CharSequence charSequence, File file, Charset charset) throws Throwable {
        m17131try(file, charset, new Cfinal[0]).m17001for(charSequence);
    }

    /* renamed from: try, reason: not valid java name */
    public static Celse m17131try(File file, Charset charset, Cfinal... cfinalArr) {
        return m17110for(file, cfinalArr).m17005do(charset);
    }

    @o8
    /* renamed from: volatile, reason: not valid java name */
    public static byte[] m17132volatile(File file) throws IOException {
        return m17117new(file).mo17090super();
    }

    @o8
    /* renamed from: while, reason: not valid java name */
    public static String m17133while(String str) {
        af1.m205continue(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? name : name.substring(0, iLastIndexOf);
    }
}
