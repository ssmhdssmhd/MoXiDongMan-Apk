package okio.internal;

import android.support.v4.c92;
import android.support.v4.m41;
import android.support.v4.on0;
import android.support.v4.qb1;
import android.support.v4.rx;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Cfinal;
import kotlin.Cwhile;
import kotlin.Lazy;
import kotlin.collections.Cthrows;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import kotlin.text.Cstatic;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Path;
import okio.Sink;
import okio.Source;
import org.antlr.v4.runtime.tree.xpath.Cdo;
import org.jsoup.nodes.Attributes;
import org.slf4j.Logger;
import sun.security.util.SecurityConstants;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 +2\u00020\u0001:\u0001+B\u0019\b\u0000\u0012\u0006\u0010'\u001a\u00020&\u0012\u0006\u0010(\u001a\u00020\u000f¢\u0006\u0004\b)\u0010*J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t2\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0002H\u0016J \u0010\u0012\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000fH\u0016J\u0018\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0002H\u0016J\u0018\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000fH\u0016J\u0018\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0002H\u0016R/\u0010%\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020 0\t8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006,"}, d2 = {"Lokio/internal/ResourceFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "path", "canonicalizeInternal", "", "toRelativePath", "canonicalize", "dir", "", "list", "listOrNull", "file", "Lokio/FileHandle;", "openReadOnly", "", "mustCreate", "mustExist", "openReadWrite", "Lokio/FileMetadata;", "metadataOrNull", "Lokio/Source;", "source", "Lokio/Sink;", "sink", "appendingSink", "Landroid/support/v4/ub2;", "createDirectory", TypedValues.Attributes.S_TARGET, "atomicMove", SecurityConstants.FILE_DELETE_ACTION, "createSymlink", "Landroid/support/v4/qb1;", "roots$delegate", "Lkotlin/Lazy;", "getRoots", "()Ljava/util/List;", "roots", "Ljava/lang/ClassLoader;", "classLoader", "indexEagerly", "<init>", "(Ljava/lang/ClassLoader;Z)V", "Companion", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ResourceFileSystem extends FileSystem {

    @m41
    private static final Companion Companion = new Companion(null);

    @m41
    @Deprecated
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, on0.f4694final, false, 1, (Object) null);

    @m41
    private final Lazy roots$delegate;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0007\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002J\u001c\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00020\n0\t*\u00020\bJ\u0018\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n*\u00020\rJ\u0018\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n*\u00020\rR\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lokio/internal/ResourceFileSystem$Companion;", "", "Lokio/Path;", "path", "", "keepPath", "base", "removeBase", "Ljava/lang/ClassLoader;", "", "Landroid/support/v4/qb1;", "Lokio/FileSystem;", "toClasspathRoots", "Ljava/net/URL;", "toFileRoot", "toJarRoot", Logger.ROOT_LOGGER_NAME, "Lokio/Path;", "getROOT", "()Lokio/Path;", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean keepPath(Path path) {
            return !Creturn.V0(path.name(), ".class", true);
        }

        @m41
        public final Path getROOT() {
            return ResourceFileSystem.ROOT;
        }

        @m41
        public final Path removeBase(@m41 Path path, @m41 Path base) {
            Csuper.m30700throw(path, "<this>");
            Csuper.m30700throw(base, "base");
            return getROOT().resolve(Creturn.w1(Cstatic.p3(path.toString(), base.toString()), '\\', Attributes.InternalPrefix, false, 4, null));
        }

        @m41
        public final List<qb1<FileSystem, Path>> toClasspathRoots(@m41 ClassLoader classLoader) throws IOException {
            Csuper.m30700throw(classLoader, "<this>");
            Enumeration<URL> resources = classLoader.getResources("");
            Csuper.m30696super(resources, "getResources(\"\")");
            ArrayList<URL> list = Collections.list(resources);
            Csuper.m30696super(list, "java.util.Collections.list(this)");
            ArrayList arrayList = new ArrayList();
            for (URL it : list) {
                Companion companion = ResourceFileSystem.Companion;
                Csuper.m30696super(it, "it");
                qb1<FileSystem, Path> fileRoot = companion.toFileRoot(it);
                if (fileRoot != null) {
                    arrayList.add(fileRoot);
                }
            }
            Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
            Csuper.m30696super(resources2, "getResources(\"META-INF/MANIFEST.MF\")");
            ArrayList<URL> list2 = Collections.list(resources2);
            Csuper.m30696super(list2, "java.util.Collections.list(this)");
            ArrayList arrayList2 = new ArrayList();
            for (URL it2 : list2) {
                Companion companion2 = ResourceFileSystem.Companion;
                Csuper.m30696super(it2, "it");
                qb1<FileSystem, Path> jarRoot = companion2.toJarRoot(it2);
                if (jarRoot != null) {
                    arrayList2.add(jarRoot);
                }
            }
            return Cthrows.D3(arrayList, arrayList2);
        }

        @z41
        public final qb1<FileSystem, Path> toFileRoot(@m41 URL url) {
            Csuper.m30700throw(url, "<this>");
            if (Csuper.m30676else(url.getProtocol(), "file")) {
                return c92.m819do(FileSystem.SYSTEM, Path.Companion.get$default(Path.Companion, new File(url.toURI()), false, 1, (Object) null));
            }
            return null;
        }

        @z41
        public final qb1<FileSystem, Path> toJarRoot(@m41 URL url) {
            int iS2;
            Csuper.m30700throw(url, "<this>");
            String string = url.toString();
            Csuper.m30696super(string, "toString()");
            if (!Creturn.H1(string, "jar:file:", false, 2, null) || (iS2 = Cstatic.S2(string, Cdo.f28590try, 0, false, 6, null)) == -1) {
                return null;
            }
            Path.Companion companion = Path.Companion;
            String strSubstring = string.substring(4, iS2);
            Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return c92.m819do(ZipKt.openZip(Path.Companion.get$default(companion, new File(URI.create(strSubstring)), false, 1, (Object) null), FileSystem.SYSTEM, ResourceFileSystem$Companion$toJarRoot$zip$1.INSTANCE), getROOT());
        }
    }

    public ResourceFileSystem(@m41 ClassLoader classLoader, boolean z) {
        Csuper.m30700throw(classLoader, "classLoader");
        this.roots$delegate = Cfinal.m30446for(new ResourceFileSystem$roots$2(classLoader));
        if (z) {
            getRoots().size();
        }
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    private final List<qb1<FileSystem, Path>> getRoots() {
        return (List) this.roots$delegate.getValue();
    }

    private final String toRelativePath(Path path) {
        return canonicalizeInternal(path).relativeTo(ROOT).toString();
    }

    @Override // okio.FileSystem
    @m41
    public Sink appendingSink(@m41 Path file, boolean z) throws IOException {
        Csuper.m30700throw(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(@m41 Path source, @m41 Path target) throws IOException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @m41
    public Path canonicalize(@m41 Path path) {
        Csuper.m30700throw(path, "path");
        return canonicalizeInternal(path);
    }

    @Override // okio.FileSystem
    public void createDirectory(@m41 Path dir, boolean z) throws IOException {
        Csuper.m30700throw(dir, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(@m41 Path source, @m41 Path target) throws IOException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void delete(@m41 Path path, boolean z) throws IOException {
        Csuper.m30700throw(path, "path");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @m41
    public List<Path> list(@m41 Path dir) throws FileNotFoundException {
        Csuper.m30700throw(dir, "dir");
        String relativePath = toRelativePath(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (qb1<FileSystem, Path> qb1Var : getRoots()) {
            FileSystem fileSystemComponent1 = qb1Var.component1();
            Path pathComponent2 = qb1Var.component2();
            try {
                List<Path> list = fileSystemComponent1.list(pathComponent2.resolve(relativePath));
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(kotlin.collections.Cwhile.l(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(Companion.removeBase((Path) it.next(), pathComponent2));
                }
                kotlin.collections.Creturn.D(linkedHashSet, arrayList2);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return Cthrows.V4(linkedHashSet);
        }
        throw new FileNotFoundException(Csuper.m30690private("file not found: ", dir));
    }

    @Override // okio.FileSystem
    @z41
    public List<Path> listOrNull(@m41 Path dir) {
        Csuper.m30700throw(dir, "dir");
        String relativePath = toRelativePath(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<qb1<FileSystem, Path>> it = getRoots().iterator();
        boolean z = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            qb1<FileSystem, Path> next = it.next();
            FileSystem fileSystemComponent1 = next.component1();
            Path pathComponent2 = next.component2();
            List<Path> listListOrNull = fileSystemComponent1.listOrNull(pathComponent2.resolve(relativePath));
            if (listListOrNull != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listListOrNull) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(kotlin.collections.Cwhile.l(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(Companion.removeBase((Path) it2.next(), pathComponent2));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                kotlin.collections.Creturn.D(linkedHashSet, arrayList);
                z = true;
            }
        }
        if (z) {
            return Cthrows.V4(linkedHashSet);
        }
        return null;
    }

    @Override // okio.FileSystem
    @z41
    public FileMetadata metadataOrNull(@m41 Path path) throws IOException {
        Csuper.m30700throw(path, "path");
        if (!Companion.keepPath(path)) {
            return null;
        }
        String relativePath = toRelativePath(path);
        for (qb1<FileSystem, Path> qb1Var : getRoots()) {
            FileMetadata fileMetadataMetadataOrNull = qb1Var.component1().metadataOrNull(qb1Var.component2().resolve(relativePath));
            if (fileMetadataMetadataOrNull != null) {
                return fileMetadataMetadataOrNull;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    @m41
    public FileHandle openReadOnly(@m41 Path file) throws FileNotFoundException {
        Csuper.m30700throw(file, "file");
        if (!Companion.keepPath(file)) {
            throw new FileNotFoundException(Csuper.m30690private("file not found: ", file));
        }
        String relativePath = toRelativePath(file);
        for (qb1<FileSystem, Path> qb1Var : getRoots()) {
            try {
                return qb1Var.component1().openReadOnly(qb1Var.component2().resolve(relativePath));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException(Csuper.m30690private("file not found: ", file));
    }

    @Override // okio.FileSystem
    @m41
    public FileHandle openReadWrite(@m41 Path file, boolean z, boolean z2) throws IOException {
        Csuper.m30700throw(file, "file");
        throw new IOException("resources are not writable");
    }

    @Override // okio.FileSystem
    @m41
    public Sink sink(@m41 Path file, boolean z) throws IOException {
        Csuper.m30700throw(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @m41
    public Source source(@m41 Path file) throws FileNotFoundException {
        Csuper.m30700throw(file, "file");
        if (!Companion.keepPath(file)) {
            throw new FileNotFoundException(Csuper.m30690private("file not found: ", file));
        }
        String relativePath = toRelativePath(file);
        for (qb1<FileSystem, Path> qb1Var : getRoots()) {
            try {
                return qb1Var.component1().source(qb1Var.component2().resolve(relativePath));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException(Csuper.m30690private("file not found: ", file));
    }
}
