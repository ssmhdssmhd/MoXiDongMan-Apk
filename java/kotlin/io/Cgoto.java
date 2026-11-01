package kotlin.io;

import android.support.v4.ce;
import android.support.v4.m41;
import android.support.v4.ma0;
import android.support.v4.qm;
import android.support.v4.r31;
import android.support.v4.ra0;
import android.support.v4.ub2;
import android.support.v4.ya0;
import android.support.v4.yr0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Cfor;
import kotlin.Cwhile;
import kotlin.collections.Cfinal;
import kotlin.collections.Cthrows;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import kotlin.text.Cstatic;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000f\u001a*\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007\u001a*\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007\u001a\u0012\u0010\b\u001a\u00020\u0000*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u0012\u0010\t\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u0012\u0010\n\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u0003*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u001d\u0010\f\u001a\u0004\u0018\u00010\u0000*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\f\u0010\r\u001a&\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u001a8\u0010\u0018\u001a\u00020\u000f*\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\u001a\b\u0002\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014\u001a\n\u0010\u0019\u001a\u00020\u000f*\u00020\u0003\u001a\u0012\u0010\u001b\u001a\u00020\u000f*\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0003\u001a\u0012\u0010\u001c\u001a\u00020\u000f*\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0000\u001a\u0012\u0010\u001d\u001a\u00020\u000f*\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0003\u001a\u0012\u0010\u001e\u001a\u00020\u000f*\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0000\u001a\n\u0010\u001f\u001a\u00020\u0003*\u00020\u0003\u001a\u0013\u0010!\u001a\u00020 *\u00020 H\u0002¢\u0006\u0004\b!\u0010\"\u001a\u001f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00030#*\b\u0012\u0004\u0012\u00020\u00030#H\u0002¢\u0006\u0004\b$\u0010%\u001a\u0012\u0010'\u001a\u00020\u0003*\u00020\u00032\u0006\u0010&\u001a\u00020\u0003\u001a\u0012\u0010(\u001a\u00020\u0003*\u00020\u00032\u0006\u0010&\u001a\u00020\u0000\u001a\u0012\u0010)\u001a\u00020\u0003*\u00020\u00032\u0006\u0010&\u001a\u00020\u0003\u001a\u0012\u0010*\u001a\u00020\u0003*\u00020\u00032\u0006\u0010&\u001a\u00020\u0000\"\u0017\u0010-\u001a\u00020\u0000*\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b+\u0010,\"\u0017\u0010/\u001a\u00020\u0000*\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b.\u0010,\"\u0017\u00101\u001a\u00020\u0000*\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b0\u0010,¨\u00062"}, d2 = {"", "prefix", "suffix", "Ljava/io/File;", "directory", "e", "g", "base", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "r", ak.aH, ak.aB, "B", "(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;", TypedValues.Attributes.S_TARGET, "", "overwrite", "", "bufferSize", "c", "Lkotlin/Function2;", "Ljava/io/IOException;", "Lkotlin/io/class;", "onError", ak.av, ak.aC, "other", "y", ak.aD, "j", "k", "o", "Landroid/support/v4/ra0;", ak.ax, "(Landroid/support/v4/ra0;)Landroid/support/v4/ra0;", "", "q", "(Ljava/util/List;)Ljava/util/List;", "relative", ak.aG, "v", "w", "x", "l", "(Ljava/io/File;)Ljava/lang/String;", "extension", "m", "invariantSeparatorsPath", "n", "nameWithoutExtension", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/io/FilesKt")
/* renamed from: kotlin.io.goto, reason: invalid class name */
/* loaded from: classes.dex */
class Cgoto extends Celse {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Ljava/io/File;", "<anonymous parameter 0>", "Ljava/io/IOException;", "exception", "", "invoke", "(Ljava/io/File;Ljava/io/IOException;)Ljava/lang/Void;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.io.goto$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cdo extends yr0 implements Function2 {
        public static final Cdo INSTANCE = new Cdo();

        public Cdo() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m41
        public final Void invoke(@m41 File file, @m41 IOException exception) throws IOException {
            Csuper.m30700throw(file, "<anonymous parameter 0>");
            Csuper.m30700throw(exception, "exception");
            throw exception;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Ljava/io/File;", "f", "Ljava/io/IOException;", "e", "Landroid/support/v4/ub2;", "invoke", "(Ljava/io/File;Ljava/io/IOException;)V", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.io.goto$if, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cif extends yr0 implements Function2<File, IOException, ub2> {
        public final /* synthetic */ Function2 $onError;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(Function2 function2) {
            super(2);
            this.$onError = function2;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ ub2 invoke(File file, IOException iOException) throws Cconst {
            invoke2(file, iOException);
            return ub2.f6820do;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@m41 File f, @m41 IOException e) throws Cconst {
            Csuper.m30700throw(f, "f");
            Csuper.m30700throw(e, "e");
            if (((Cclass) this.$onError.invoke(f, e)) == Cclass.TERMINATE) {
                throw new Cconst(f);
            }
        }
    }

    @m41
    public static final String A(@m41 File toRelativeString, @m41 File base) throws IOException {
        Csuper.m30700throw(toRelativeString, "$this$toRelativeString");
        Csuper.m30700throw(base, "base");
        String strB = B(toRelativeString, base);
        if (strB != null) {
            return strB;
        }
        throw new IllegalArgumentException("this and base files have different roots: " + toRelativeString + " and " + base + Ctry.f28883do);
    }

    private static final String B(File file, File file2) throws IOException {
        ra0 ra0VarP = p(Ctry.m30636case(file));
        ra0 ra0VarP2 = p(Ctry.m30636case(file2));
        if (!Csuper.m30676else(ra0VarP.m6869try(), ra0VarP2.m6869try())) {
            return null;
        }
        int iM6866goto = ra0VarP2.m6866goto();
        int iM6866goto2 = ra0VarP.m6866goto();
        int i = 0;
        int iMin = Math.min(iM6866goto2, iM6866goto);
        while (i < iMin && Csuper.m30676else(ra0VarP.m6864else().get(i), ra0VarP2.m6864else().get(i))) {
            i++;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = iM6866goto - 1;
        if (i2 >= i) {
            while (!Csuper.m30676else(ra0VarP2.m6864else().get(i2).getName(), "..")) {
                sb.append("..");
                if (i2 != i) {
                    sb.append(File.separatorChar);
                }
                if (i2 != i) {
                    i2--;
                }
            }
            return null;
        }
        if (i < iM6866goto2) {
            if (i < iM6866goto) {
                sb.append(File.separatorChar);
            }
            List listC1 = Cthrows.c1(ra0VarP.m6864else(), i);
            String str = File.separator;
            Csuper.m30696super(str, "File.separator");
            Cthrows.j2(listC1, sb, (124 & 2) != 0 ? ", " : str, (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean a(@m41 File copyRecursively, @m41 File target, boolean z, @m41 Function2<? super File, ? super IOException, ? extends Cclass> onError) {
        boolean z2;
        Csuper.m30700throw(copyRecursively, "$this$copyRecursively");
        Csuper.m30700throw(target, "target");
        Csuper.m30700throw(onError, "onError");
        if (!copyRecursively.exists()) {
            return onError.invoke(copyRecursively, new r31(copyRecursively, null, "The source file doesn't exist.", 2, null)) != Cclass.TERMINATE;
        }
        try {
            Iterator<File> it = Celse.m30565synchronized(copyRecursively).m30591this(new Cif(onError)).iterator();
            while (it.hasNext()) {
                File next = it.next();
                if (next.exists()) {
                    File file = new File(target, A(next, copyRecursively));
                    if (file.exists() && (!next.isDirectory() || !file.isDirectory())) {
                        if (z) {
                            if (file.isDirectory()) {
                                z2 = i(file) ? false : true;
                            } else {
                                if (!file.delete()) {
                                }
                            }
                            if (!z2) {
                                if (onError.invoke(file, new ma0(next, file, "The destination file already exists.")) == Cclass.TERMINATE) {
                                    return false;
                                }
                            }
                        } else {
                            if (!z2) {
                            }
                        }
                    }
                    if (next.isDirectory()) {
                        file.mkdirs();
                    } else if (d(next, file, z, 0, 4, null).length() != next.length() && onError.invoke(next, new IOException("Source file wasn't copied completely, length of destination file differs.")) == Cclass.TERMINATE) {
                        return false;
                    }
                } else if (onError.invoke(next, new r31(next, null, "The source file doesn't exist.", 2, null)) == Cclass.TERMINATE) {
                    return false;
                }
            }
            return true;
        } catch (Cconst unused) {
            return false;
        }
    }

    public static /* synthetic */ boolean b(File file, File file2, boolean z, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            function2 = Cdo.INSTANCE;
        }
        return a(file, file2, z, function2);
    }

    @m41
    public static final File c(@m41 File copyTo, @m41 File target, boolean z, int i) throws ya0 {
        Csuper.m30700throw(copyTo, "$this$copyTo");
        Csuper.m30700throw(target, "target");
        if (!copyTo.exists()) {
            throw new r31(copyTo, null, "The source file doesn't exist.", 2, null);
        }
        if (target.exists()) {
            if (!z) {
                throw new ma0(copyTo, target, "The destination file already exists.");
            }
            if (!target.delete()) {
                throw new ma0(copyTo, target, "Tried to overwrite the destination, but failed to delete it.");
            }
        }
        if (!copyTo.isDirectory()) {
            File parentFile = target.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(copyTo);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(target);
                try {
                    ce.m860catch(fileInputStream, fileOutputStream, i);
                    qm.m6624do(fileOutputStream, null);
                    qm.m6624do(fileInputStream, null);
                } finally {
                }
            } finally {
            }
        } else if (!target.mkdirs()) {
            throw new ya0(copyTo, target, "Failed to create target directory.");
        }
        return target;
    }

    public static /* synthetic */ File d(File file, File file2, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 8192;
        }
        return c(file, file2, z, i);
    }

    @m41
    @Cfor(message = "Avoid creating temporary directories in the default temp location with this function due to too wide permissions on the newly created directory. Use kotlin.io.path.createTempDirectory instead.")
    public static final File e(@m41 String prefix, @z41 String str, @z41 File file) throws IOException {
        Csuper.m30700throw(prefix, "prefix");
        File dir = File.createTempFile(prefix, str, file);
        dir.delete();
        if (dir.mkdir()) {
            Csuper.m30696super(dir, "dir");
            return dir;
        }
        throw new IOException("Unable to create temporary directory " + dir + Ctry.f28883do);
    }

    public static /* synthetic */ File f(String str, String str2, File file, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "tmp";
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            file = null;
        }
        return e(str, str2, file);
    }

    @m41
    @Cfor(message = "Avoid creating temporary files in the default temp location with this function due to too wide permissions on the newly created file. Use kotlin.io.path.createTempFile instead or resort to java.io.File.createTempFile.")
    public static final File g(@m41 String prefix, @z41 String str, @z41 File file) throws IOException {
        Csuper.m30700throw(prefix, "prefix");
        File fileCreateTempFile = File.createTempFile(prefix, str, file);
        Csuper.m30696super(fileCreateTempFile, "File.createTempFile(prefix, suffix, directory)");
        return fileCreateTempFile;
    }

    public static /* synthetic */ File h(String str, String str2, File file, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "tmp";
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            file = null;
        }
        return g(str, str2, file);
    }

    public static final boolean i(@m41 File deleteRecursively) {
        Csuper.m30700throw(deleteRecursively, "$this$deleteRecursively");
        while (true) {
            boolean z = true;
            for (File file : Celse.m30564instanceof(deleteRecursively)) {
                if (!file.delete() && file.exists()) {
                    z = false;
                } else {
                    if (z) {
                        break;
                    }
                    z = false;
                }
            }
            return z;
        }
    }

    public static final boolean j(@m41 File endsWith, @m41 File other) {
        Csuper.m30700throw(endsWith, "$this$endsWith");
        Csuper.m30700throw(other, "other");
        ra0 ra0VarM30636case = Ctry.m30636case(endsWith);
        ra0 ra0VarM30636case2 = Ctry.m30636case(other);
        if (ra0VarM30636case2.m6868this()) {
            return Csuper.m30676else(endsWith, other);
        }
        int iM6866goto = ra0VarM30636case.m6866goto() - ra0VarM30636case2.m6866goto();
        if (iM6866goto < 0) {
            return false;
        }
        return ra0VarM30636case.m6864else().subList(iM6866goto, ra0VarM30636case.m6866goto()).equals(ra0VarM30636case2.m6864else());
    }

    public static final boolean k(@m41 File endsWith, @m41 String other) {
        Csuper.m30700throw(endsWith, "$this$endsWith");
        Csuper.m30700throw(other, "other");
        return j(endsWith, new File(other));
    }

    @m41
    public static final String l(@m41 File extension) {
        Csuper.m30700throw(extension, "$this$extension");
        String name = extension.getName();
        Csuper.m30696super(name, "name");
        return Cstatic.D4(name, Ctry.f28883do, "");
    }

    @m41
    public static final String m(@m41 File invariantSeparatorsPath) {
        Csuper.m30700throw(invariantSeparatorsPath, "$this$invariantSeparatorsPath");
        if (File.separatorChar != '/') {
            String path = invariantSeparatorsPath.getPath();
            Csuper.m30696super(path, "path");
            return Creturn.w1(path, File.separatorChar, Attributes.InternalPrefix, false, 4, null);
        }
        String path2 = invariantSeparatorsPath.getPath();
        Csuper.m30696super(path2, "path");
        return path2;
    }

    @m41
    public static final String n(@m41 File nameWithoutExtension) {
        Csuper.m30700throw(nameWithoutExtension, "$this$nameWithoutExtension");
        String name = nameWithoutExtension.getName();
        Csuper.m30696super(name, "name");
        return Cstatic.O4(name, ".", null, 2, null);
    }

    @m41
    public static final File o(@m41 File normalize) {
        Csuper.m30700throw(normalize, "$this$normalize");
        ra0 ra0VarM30636case = Ctry.m30636case(normalize);
        File fileM6869try = ra0VarM30636case.m6869try();
        List<File> listQ = q(ra0VarM30636case.m6864else());
        String str = File.separator;
        Csuper.m30696super(str, "File.separator");
        return v(fileM6869try, Cthrows.m2(listQ, str, null, null, 0, null, null, 62, null));
    }

    private static final ra0 p(ra0 ra0Var) {
        return new ra0(ra0Var.m6869try(), q(ra0Var.m6864else()));
    }

    private static final List<File> q(List<? extends File> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (File file : list) {
            String name = file.getName();
            if (name != null) {
                int iHashCode = name.hashCode();
                if (iHashCode != 46) {
                    if (iHashCode == 1472 && name.equals("..")) {
                        if (arrayList.isEmpty() || !(!Csuper.m30676else(((File) Cfinal.p2(arrayList)).getName(), ".."))) {
                            arrayList.add(file);
                        } else {
                            arrayList.remove(arrayList.size() - 1);
                        }
                    }
                } else if (name.equals(".")) {
                }
            }
            arrayList.add(file);
        }
        return arrayList;
    }

    @m41
    public static final File r(@m41 File relativeTo, @m41 File base) {
        Csuper.m30700throw(relativeTo, "$this$relativeTo");
        Csuper.m30700throw(base, "base");
        return new File(A(relativeTo, base));
    }

    @z41
    public static final File s(@m41 File relativeToOrNull, @m41 File base) throws IOException {
        Csuper.m30700throw(relativeToOrNull, "$this$relativeToOrNull");
        Csuper.m30700throw(base, "base");
        String strB = B(relativeToOrNull, base);
        if (strB != null) {
            return new File(strB);
        }
        return null;
    }

    @m41
    public static final File t(@m41 File relativeToOrSelf, @m41 File base) throws IOException {
        Csuper.m30700throw(relativeToOrSelf, "$this$relativeToOrSelf");
        Csuper.m30700throw(base, "base");
        String strB = B(relativeToOrSelf, base);
        return strB != null ? new File(strB) : relativeToOrSelf;
    }

    @m41
    public static final File u(@m41 File resolve, @m41 File relative) {
        Csuper.m30700throw(resolve, "$this$resolve");
        Csuper.m30700throw(relative, "relative");
        if (Ctry.m30640new(relative)) {
            return relative;
        }
        String string = resolve.toString();
        Csuper.m30696super(string, "this.toString()");
        if ((string.length() == 0) || Cstatic.n2(string, File.separatorChar, false, 2, null)) {
            return new File(string + relative);
        }
        return new File(string + File.separatorChar + relative);
    }

    @m41
    public static final File v(@m41 File resolve, @m41 String relative) {
        Csuper.m30700throw(resolve, "$this$resolve");
        Csuper.m30700throw(relative, "relative");
        return u(resolve, new File(relative));
    }

    @m41
    public static final File w(@m41 File resolveSibling, @m41 File relative) {
        Csuper.m30700throw(resolveSibling, "$this$resolveSibling");
        Csuper.m30700throw(relative, "relative");
        ra0 ra0VarM30636case = Ctry.m30636case(resolveSibling);
        return u(u(ra0VarM30636case.m6869try(), ra0VarM30636case.m6866goto() == 0 ? new File("..") : ra0VarM30636case.m6861break(0, ra0VarM30636case.m6866goto() - 1)), relative);
    }

    @m41
    public static final File x(@m41 File resolveSibling, @m41 String relative) {
        Csuper.m30700throw(resolveSibling, "$this$resolveSibling");
        Csuper.m30700throw(relative, "relative");
        return w(resolveSibling, new File(relative));
    }

    public static final boolean y(@m41 File startsWith, @m41 File other) {
        Csuper.m30700throw(startsWith, "$this$startsWith");
        Csuper.m30700throw(other, "other");
        ra0 ra0VarM30636case = Ctry.m30636case(startsWith);
        ra0 ra0VarM30636case2 = Ctry.m30636case(other);
        if (!(!Csuper.m30676else(ra0VarM30636case.m6869try(), ra0VarM30636case2.m6869try())) && ra0VarM30636case.m6866goto() >= ra0VarM30636case2.m6866goto()) {
            return ra0VarM30636case.m6864else().subList(0, ra0VarM30636case2.m6866goto()).equals(ra0VarM30636case2.m6864else());
        }
        return false;
    }

    public static final boolean z(@m41 File startsWith, @m41 String other) {
        Csuper.m30700throw(startsWith, "$this$startsWith");
        Csuper.m30700throw(other, "other");
        return y(startsWith, new File(other));
    }
}
