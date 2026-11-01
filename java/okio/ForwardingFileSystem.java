package okio;

import android.support.v4.dm1;
import android.support.v4.m41;
import android.support.v4.wp0;
import android.support.v4.yr0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Cwhile;
import kotlin.collections.Cpublic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Cclass;
import kotlin.sequences.Sequence;
import sun.security.util.SecurityConstants;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010&\u001a\u00020\u0001¢\u0006\u0004\b)\u0010*J \u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u0018\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u001e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0002H\u0016J \u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0010H\u0016J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0002H\u0016J\u0018\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0010H\u0016J\u0018\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0010H\u0016J\u0018\u0010 \u001a\u00020\u001f2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0010H\u0016J\u0018\u0010\"\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0002H\u0016J\u0018\u0010#\u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0010H\u0016J\u0018\u0010$\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0002H\u0016J\b\u0010%\u001a\u00020\u0004H\u0016R\u0019\u0010&\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b&\u0010(¨\u0006+"}, d2 = {"Lokio/ForwardingFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "path", "", "functionName", "parameterName", "onPathParameter", "onPathResult", "canonicalize", "Lokio/FileMetadata;", "metadataOrNull", "dir", "", "list", "listOrNull", "", "followSymlinks", "Lkotlin/sequences/Sequence;", "listRecursively", "file", "Lokio/FileHandle;", "openReadOnly", "mustCreate", "mustExist", "openReadWrite", "Lokio/Source;", "source", "Lokio/Sink;", "sink", "appendingSink", "Landroid/support/v4/ub2;", "createDirectory", TypedValues.Attributes.S_TARGET, "atomicMove", SecurityConstants.FILE_DELETE_ACTION, "createSymlink", "toString", "delegate", "Lokio/FileSystem;", "()Lokio/FileSystem;", "<init>", "(Lokio/FileSystem;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class ForwardingFileSystem extends FileSystem {

    @m41
    private final FileSystem delegate;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n"}, d2 = {"Lokio/Path;", "it", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: okio.ForwardingFileSystem$listRecursively$1, reason: invalid class name */
    public static final class AnonymousClass1 extends yr0 implements Function1<Path, Path> {
        public AnonymousClass1() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final Path invoke(@m41 Path it) {
            Csuper.m30700throw(it, "it");
            return ForwardingFileSystem.this.onPathResult(it, "listRecursively");
        }
    }

    public ForwardingFileSystem(@m41 FileSystem delegate) {
        Csuper.m30700throw(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okio.FileSystem
    @m41
    public Sink appendingSink(@m41 Path file, boolean z) throws IOException {
        Csuper.m30700throw(file, "file");
        return this.delegate.appendingSink(onPathParameter(file, "appendingSink", "file"), z);
    }

    @Override // okio.FileSystem
    public void atomicMove(@m41 Path source, @m41 Path target) throws IOException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        this.delegate.atomicMove(onPathParameter(source, "atomicMove", "source"), onPathParameter(target, "atomicMove", TypedValues.Attributes.S_TARGET));
    }

    @Override // okio.FileSystem
    @m41
    public Path canonicalize(@m41 Path path) throws IOException {
        Csuper.m30700throw(path, "path");
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", "path")), "canonicalize");
    }

    @Override // okio.FileSystem
    public void createDirectory(@m41 Path dir, boolean z) throws IOException {
        Csuper.m30700throw(dir, "dir");
        this.delegate.createDirectory(onPathParameter(dir, "createDirectory", "dir"), z);
    }

    @Override // okio.FileSystem
    public void createSymlink(@m41 Path source, @m41 Path target) throws IOException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        this.delegate.createSymlink(onPathParameter(source, "createSymlink", "source"), onPathParameter(target, "createSymlink", TypedValues.Attributes.S_TARGET));
    }

    @m41
    @wp0(name = "delegate")
    public final FileSystem delegate() {
        return this.delegate;
    }

    @Override // okio.FileSystem
    public void delete(@m41 Path path, boolean z) throws IOException {
        Csuper.m30700throw(path, "path");
        this.delegate.delete(onPathParameter(path, SecurityConstants.FILE_DELETE_ACTION, "path"), z);
    }

    @Override // okio.FileSystem
    @m41
    public List<Path> list(@m41 Path dir) throws IOException {
        Csuper.m30700throw(dir, "dir");
        List<Path> list = this.delegate.list(onPathParameter(dir, "list", "dir"));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "list"));
        }
        Cpublic.z(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    @z41
    public List<Path> listOrNull(@m41 Path dir) {
        Csuper.m30700throw(dir, "dir");
        List<Path> listListOrNull = this.delegate.listOrNull(onPathParameter(dir, "listOrNull", "dir"));
        if (listListOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listListOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "listOrNull"));
        }
        Cpublic.z(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    @m41
    public Sequence<Path> listRecursively(@m41 Path dir, boolean z) {
        Csuper.m30700throw(dir, "dir");
        return Cclass.q0(this.delegate.listRecursively(onPathParameter(dir, "listRecursively", "dir"), z), new AnonymousClass1());
    }

    @Override // okio.FileSystem
    @z41
    public FileMetadata metadataOrNull(@m41 Path path) throws IOException {
        Csuper.m30700throw(path, "path");
        FileMetadata fileMetadataMetadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", "path"));
        if (fileMetadataMetadataOrNull == null) {
            return null;
        }
        return fileMetadataMetadataOrNull.getSymlinkTarget() == null ? fileMetadataMetadataOrNull : fileMetadataMetadataOrNull.copy((251 & 1) != 0 ? fileMetadataMetadataOrNull.isRegularFile : false, (251 & 2) != 0 ? fileMetadataMetadataOrNull.isDirectory : false, (251 & 4) != 0 ? fileMetadataMetadataOrNull.symlinkTarget : onPathResult(fileMetadataMetadataOrNull.getSymlinkTarget(), "metadataOrNull"), (251 & 8) != 0 ? fileMetadataMetadataOrNull.size : null, (251 & 16) != 0 ? fileMetadataMetadataOrNull.createdAtMillis : null, (251 & 32) != 0 ? fileMetadataMetadataOrNull.lastModifiedAtMillis : null, (251 & 64) != 0 ? fileMetadataMetadataOrNull.lastAccessedAtMillis : null, (251 & 128) != 0 ? fileMetadataMetadataOrNull.extras : null);
    }

    @m41
    public Path onPathParameter(@m41 Path path, @m41 String functionName, @m41 String parameterName) {
        Csuper.m30700throw(path, "path");
        Csuper.m30700throw(functionName, "functionName");
        Csuper.m30700throw(parameterName, "parameterName");
        return path;
    }

    @m41
    public Path onPathResult(@m41 Path path, @m41 String functionName) {
        Csuper.m30700throw(path, "path");
        Csuper.m30700throw(functionName, "functionName");
        return path;
    }

    @Override // okio.FileSystem
    @m41
    public FileHandle openReadOnly(@m41 Path file) throws IOException {
        Csuper.m30700throw(file, "file");
        return this.delegate.openReadOnly(onPathParameter(file, "openReadOnly", "file"));
    }

    @Override // okio.FileSystem
    @m41
    public FileHandle openReadWrite(@m41 Path file, boolean z, boolean z2) throws IOException {
        Csuper.m30700throw(file, "file");
        return this.delegate.openReadWrite(onPathParameter(file, "openReadWrite", "file"), z, z2);
    }

    @Override // okio.FileSystem
    @m41
    public Sink sink(@m41 Path file, boolean z) throws IOException {
        Csuper.m30700throw(file, "file");
        return this.delegate.sink(onPathParameter(file, "sink", "file"), z);
    }

    @Override // okio.FileSystem
    @m41
    public Source source(@m41 Path file) throws IOException {
        Csuper.m30700throw(file, "file");
        return this.delegate.source(onPathParameter(file, "source", "file"));
    }

    @m41
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((Object) dm1.m1426new(getClass()).getSimpleName());
        sb.append('(');
        sb.append(this.delegate);
        sb.append(')');
        return sb.toString();
    }
}
