package okio;

import android.support.v4.m41;
import android.support.v4.on0;
import android.support.v4.rx;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.Celse;
import kotlin.Cwhile;
import kotlin.collections.Cthrows;
import kotlin.jvm.internal.Csuper;
import okio.Path;
import okio.internal.FixedLengthSource;
import okio.internal.ZipEntry;
import okio.internal.ZipKt;
import org.slf4j.Logger;
import sun.security.util.SecurityConstants;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0000\u0018\u0000 ,2\u00020\u0001:\u0001,B7\b\u0000\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0001\u0012\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020$0#\u0012\b\u0010(\u001a\u0004\u0018\u00010'¢\u0006\u0004\b*\u0010+J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0002H\u0016J \u0010\u0012\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0002H\u0016J\u0018\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J\u0018\u0010\u0018\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0018\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J\u0018\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0016J\u0018\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0018\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0016R\u0016\u0010\u001f\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\"\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020$0#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010(\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lokio/ZipFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "path", "canonicalizeInternal", "dir", "", "throwOnFailure", "", "list", "canonicalize", "Lokio/FileMetadata;", "metadataOrNull", "file", "Lokio/FileHandle;", "openReadOnly", "mustCreate", "mustExist", "openReadWrite", "listOrNull", "Lokio/Source;", "source", "Lokio/Sink;", "sink", "appendingSink", "Landroid/support/v4/ub2;", "createDirectory", TypedValues.Attributes.S_TARGET, "atomicMove", SecurityConstants.FILE_DELETE_ACTION, "createSymlink", "zipPath", "Lokio/Path;", "fileSystem", "Lokio/FileSystem;", "", "Lokio/internal/ZipEntry;", "entries", "Ljava/util/Map;", "", "comment", "Ljava/lang/String;", "<init>", "(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V", "Companion", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ZipFileSystem extends FileSystem {

    @m41
    private static final Companion Companion = new Companion(null);

    @m41
    @Deprecated
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, on0.f4694final, false, 1, (Object) null);

    @z41
    private final String comment;

    @m41
    private final Map<Path, ZipEntry> entries;

    @m41
    private final FileSystem fileSystem;

    @m41
    private final Path zipPath;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lokio/ZipFileSystem$Companion;", "", "Lokio/Path;", Logger.ROOT_LOGGER_NAME, "Lokio/Path;", "getROOT", "()Lokio/Path;", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        @m41
        public final Path getROOT() {
            return ZipFileSystem.ROOT;
        }
    }

    public ZipFileSystem(@m41 Path zipPath, @m41 FileSystem fileSystem, @m41 Map<Path, ZipEntry> entries, @z41 String str) {
        Csuper.m30700throw(zipPath, "zipPath");
        Csuper.m30700throw(fileSystem, "fileSystem");
        Csuper.m30700throw(entries, "entries");
        this.zipPath = zipPath;
        this.fileSystem = fileSystem;
        this.entries = entries;
        this.comment = str;
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    @Override // okio.FileSystem
    @m41
    public Sink appendingSink(@m41 Path file, boolean z) throws IOException {
        Csuper.m30700throw(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(@m41 Path source, @m41 Path target) throws IOException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        throw new IOException("zip file systems are read-only");
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
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(@m41 Path source, @m41 Path target) throws IOException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void delete(@m41 Path path, boolean z) throws IOException {
        Csuper.m30700throw(path, "path");
        throw new IOException("zip file systems are read-only");
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
    public FileMetadata metadataOrNull(@m41 Path path) throws Throwable {
        BufferedSource bufferedSourceBuffer;
        Csuper.m30700throw(path, "path");
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        Throwable th = null;
        if (zipEntry == null) {
            return null;
        }
        FileMetadata fileMetadata = new FileMetadata(!zipEntry.isDirectory(), zipEntry.isDirectory(), null, zipEntry.isDirectory() ? null : Long.valueOf(zipEntry.getSize()), null, zipEntry.getLastModifiedAtMillis(), null, null, 128, null);
        if (zipEntry.getOffset() == -1) {
            return fileMetadata;
        }
        FileHandle fileHandleOpenReadOnly = this.fileSystem.openReadOnly(this.zipPath);
        try {
            bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(zipEntry.getOffset()));
        } catch (Throwable th2) {
            th = th2;
            bufferedSourceBuffer = null;
        }
        if (fileHandleOpenReadOnly != null) {
            try {
                fileHandleOpenReadOnly.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    Celse.m30428do(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        Csuper.m30672const(bufferedSourceBuffer);
        return ZipKt.readLocalHeader(bufferedSourceBuffer, fileMetadata);
    }

    @Override // okio.FileSystem
    @m41
    public FileHandle openReadOnly(@m41 Path file) {
        Csuper.m30700throw(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    @m41
    public FileHandle openReadWrite(@m41 Path file, boolean z, boolean z2) throws IOException {
        Csuper.m30700throw(file, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // okio.FileSystem
    @m41
    public Sink sink(@m41 Path file, boolean z) throws IOException {
        Csuper.m30700throw(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    @m41
    public Source source(@m41 Path path) throws Throwable {
        BufferedSource bufferedSourceBuffer;
        Csuper.m30700throw(path, "path");
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        if (zipEntry == null) {
            throw new FileNotFoundException(Csuper.m30690private("no such file: ", path));
        }
        FileHandle fileHandleOpenReadOnly = this.fileSystem.openReadOnly(this.zipPath);
        Throwable th = null;
        try {
            bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(zipEntry.getOffset()));
        } catch (Throwable th2) {
            bufferedSourceBuffer = null;
            th = th2;
        }
        if (fileHandleOpenReadOnly != null) {
            try {
                fileHandleOpenReadOnly.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    Celse.m30428do(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        Csuper.m30672const(bufferedSourceBuffer);
        ZipKt.skipLocalHeader(bufferedSourceBuffer);
        return zipEntry.getCompressionMethod() == 0 ? new FixedLengthSource(bufferedSourceBuffer, zipEntry.getSize(), true) : new FixedLengthSource(new InflaterSource(new FixedLengthSource(bufferedSourceBuffer, zipEntry.getCompressedSize(), true), new Inflater(true)), zipEntry.getSize(), false);
    }

    private final List<Path> list(Path path, boolean z) throws IOException {
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        if (zipEntry != null) {
            return Cthrows.V4(zipEntry.getChildren());
        }
        if (z) {
            throw new IOException(Csuper.m30690private("not a directory: ", path));
        }
        return null;
    }
}
