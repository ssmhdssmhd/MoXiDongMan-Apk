package okio;

import android.support.v4.m41;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import kotlin.Cwhile;
import kotlin.collections.Cpublic;
import kotlin.jvm.internal.Csuper;
import okio.Path;
import sun.security.util.SecurityConstants;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J \u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\f\u0010\t\u001a\u00020\b*\u00020\u0002H\u0002J\f\u0010\n\u001a\u00020\b*\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J \u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0004H\u0016J\u0018\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0018\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0004H\u0016J\u0018\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0002H\u0016J\u0018\u0010\u001e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0018\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010!\u001a\u00020 H\u0016¨\u0006$"}, d2 = {"Lokio/JvmSystemFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "dir", "", "throwOnFailure", "", "list", "Landroid/support/v4/ub2;", "requireExist", "requireCreate", "path", "canonicalize", "Lokio/FileMetadata;", "metadataOrNull", "listOrNull", "file", "Lokio/FileHandle;", "openReadOnly", "mustCreate", "mustExist", "openReadWrite", "Lokio/Source;", "source", "Lokio/Sink;", "sink", "appendingSink", "createDirectory", TypedValues.Attributes.S_TARGET, "atomicMove", SecurityConstants.FILE_DELETE_ACTION, "createSymlink", "", "toString", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public class JvmSystemFileSystem extends FileSystem {
    private final void requireCreate(Path path) throws IOException {
        if (exists(path)) {
            throw new IOException(path + " already exists.");
        }
    }

    private final void requireExist(Path path) throws IOException {
        if (exists(path)) {
            return;
        }
        throw new IOException(path + " doesn't exist.");
    }

    @Override // okio.FileSystem
    @m41
    public Sink appendingSink(@m41 Path file, boolean z) throws IOException {
        Csuper.m30700throw(file, "file");
        if (z) {
            requireExist(file);
        }
        return Okio.sink(file.toFile(), true);
    }

    @Override // okio.FileSystem
    public void atomicMove(@m41 Path source, @m41 Path target) throws IOException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        if (source.toFile().renameTo(target.toFile())) {
            return;
        }
        throw new IOException("failed to move " + source + " to " + target);
    }

    @Override // okio.FileSystem
    @m41
    public Path canonicalize(@m41 Path path) throws IOException {
        Csuper.m30700throw(path, "path");
        File canonicalFile = path.toFile().getCanonicalFile();
        if (!canonicalFile.exists()) {
            throw new FileNotFoundException("no such file");
        }
        Path.Companion companion = Path.Companion;
        Csuper.m30696super(canonicalFile, "canonicalFile");
        return Path.Companion.get$default(companion, canonicalFile, false, 1, (Object) null);
    }

    @Override // okio.FileSystem
    public void createDirectory(@m41 Path dir, boolean z) throws IOException {
        Csuper.m30700throw(dir, "dir");
        if (dir.toFile().mkdir()) {
            return;
        }
        FileMetadata fileMetadataMetadataOrNull = metadataOrNull(dir);
        boolean z2 = false;
        if (fileMetadataMetadataOrNull != null && fileMetadataMetadataOrNull.isDirectory()) {
            z2 = true;
        }
        if (!z2) {
            throw new IOException(Csuper.m30690private("failed to create directory: ", dir));
        }
        if (z) {
            throw new IOException(dir + " already exist.");
        }
    }

    @Override // okio.FileSystem
    public void createSymlink(@m41 Path source, @m41 Path target) throws IOException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        throw new IOException("unsupported");
    }

    @Override // okio.FileSystem
    public void delete(@m41 Path path, boolean z) throws IOException {
        Csuper.m30700throw(path, "path");
        File file = path.toFile();
        if (file.delete()) {
            return;
        }
        if (file.exists()) {
            throw new IOException(Csuper.m30690private("failed to delete ", path));
        }
        if (z) {
            throw new FileNotFoundException(Csuper.m30690private("no such file: ", path));
        }
    }

    @Override // okio.FileSystem
    @m41
    public List<Path> list(@m41 Path dir) throws IOException {
        Csuper.m30700throw(dir, "dir");
        List<Path> list = list(dir, true);
        Csuper.m30672const(list);
        return list;
    }

    @Override // okio.FileSystem
    @z41
    public List<Path> listOrNull(@m41 Path dir) {
        Csuper.m30700throw(dir, "dir");
        return list(dir, false);
    }

    @Override // okio.FileSystem
    @z41
    public FileMetadata metadataOrNull(@m41 Path path) {
        Csuper.m30700throw(path, "path");
        File file = path.toFile();
        boolean zIsFile = file.isFile();
        boolean zIsDirectory = file.isDirectory();
        long jLastModified = file.lastModified();
        long length = file.length();
        if (zIsFile || zIsDirectory || jLastModified != 0 || length != 0 || file.exists()) {
            return new FileMetadata(zIsFile, zIsDirectory, null, Long.valueOf(length), null, Long.valueOf(jLastModified), null, null, 128, null);
        }
        return null;
    }

    @Override // okio.FileSystem
    @m41
    public FileHandle openReadOnly(@m41 Path file) {
        Csuper.m30700throw(file, "file");
        return new JvmFileHandle(false, new RandomAccessFile(file.toFile(), "r"));
    }

    @Override // okio.FileSystem
    @m41
    public FileHandle openReadWrite(@m41 Path file, boolean z, boolean z2) throws IOException {
        Csuper.m30700throw(file, "file");
        if (!((z && z2) ? false : true)) {
            throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.".toString());
        }
        if (z) {
            requireCreate(file);
        }
        if (z2) {
            requireExist(file);
        }
        return new JvmFileHandle(true, new RandomAccessFile(file.toFile(), "rw"));
    }

    @Override // okio.FileSystem
    @m41
    public Sink sink(@m41 Path file, boolean z) throws IOException {
        Csuper.m30700throw(file, "file");
        if (z) {
            requireCreate(file);
        }
        return Okio__JvmOkioKt.sink$default(file.toFile(), false, 1, null);
    }

    @Override // okio.FileSystem
    @m41
    public Source source(@m41 Path file) {
        Csuper.m30700throw(file, "file");
        return Okio.source(file.toFile());
    }

    @m41
    public String toString() {
        return "JvmSystemFileSystem";
    }

    private final List<Path> list(Path path, boolean z) throws IOException {
        File file = path.toFile();
        String[] list = file.list();
        if (list == null) {
            if (!z) {
                return null;
            }
            if (file.exists()) {
                throw new IOException(Csuper.m30690private("failed to list ", path));
            }
            throw new FileNotFoundException(Csuper.m30690private("no such file: ", path));
        }
        ArrayList arrayList = new ArrayList();
        for (String it : list) {
            Csuper.m30696super(it, "it");
            arrayList.add(path.resolve(it));
        }
        Cpublic.z(arrayList);
        return arrayList;
    }
}
