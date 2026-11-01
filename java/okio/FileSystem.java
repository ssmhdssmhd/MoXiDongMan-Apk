package okio;

import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.tp0;
import android.support.v4.wp0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.util.List;
import kotlin.Celse;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Sequence;
import okio.Path;
import okio.internal.ResourceFileSystem;
import okio.internal._FileSystemKt;
import org.jsoup.nodes.DocumentType;
import sun.security.util.SecurityConstants;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\b&\u0018\u0000 52\u00020\u0001:\u00015B\u0007¢\u0006\u0004\b3\u00104J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H&J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0003\u001a\u00020\u0002H&J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H&J\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\u0002H&J \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\bH\u0016J\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H&J$\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\bH&J\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0002H&J:\u0010 \u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00192\u0006\u0010\u0011\u001a\u00020\u00022\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00028\u00000\u001a¢\u0006\u0002\b\u001cH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ\u001a\u0010\"\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\bH&J\u000e\u0010\"\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020\u0002JD\u0010'\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00192\u0006\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\b2\u0017\u0010$\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00028\u00000\u001a¢\u0006\u0002\b\u001cH\u0087\bø\u0001\u0000¢\u0006\u0004\b%\u0010&J\u001a\u0010(\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\bH&J\u000e\u0010(\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020\u0002J\u001a\u0010*\u001a\u00020)2\u0006\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\bH&J\u000e\u0010*\u001a\u00020)2\u0006\u0010\n\u001a\u00020\u0002J\u0018\u0010+\u001a\u00020)2\u0006\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\bJ\u000e\u0010+\u001a\u00020)2\u0006\u0010\n\u001a\u00020\u0002J\u0018\u0010-\u001a\u00020)2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u0002H&J\u0018\u0010.\u001a\u00020)2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u0002H\u0016J\u001a\u0010/\u001a\u00020)2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\bH&J\u000e\u0010/\u001a\u00020)2\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u00101\u001a\u00020)2\u0006\u00100\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\bH\u0016J\u000e\u00101\u001a\u00020)2\u0006\u00100\u001a\u00020\u0002J\u0018\u00102\u001a\u00020)2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u0002H&\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00066"}, d2 = {"Lokio/FileSystem;", "", "Lokio/Path;", "path", "canonicalize", "Lokio/FileMetadata;", "metadata", "metadataOrNull", "", "exists", "dir", "", "list", "listOrNull", "followSymlinks", "Lkotlin/sequences/Sequence;", "listRecursively", "file", "Lokio/FileHandle;", "openReadOnly", "mustCreate", "mustExist", "openReadWrite", "Lokio/Source;", "source", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function1;", "Lokio/BufferedSource;", "Landroid/support/v4/w90;", "readerAction", "-read", "(Lokio/Path;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "read", "Lokio/Sink;", "sink", "Lokio/BufferedSink;", "writerAction", "-write", "(Lokio/Path;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "write", "appendingSink", "Landroid/support/v4/ub2;", "createDirectory", "createDirectories", TypedValues.Attributes.S_TARGET, "atomicMove", "copy", SecurityConstants.FILE_DELETE_ACTION, "fileOrDirectory", "deleteRecursively", "createSymlink", "<init>", "()V", "Companion", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class FileSystem {

    @m41
    public static final Companion Companion = new Companion(null);

    @m41
    @tp0
    public static final FileSystem RESOURCES;

    @m41
    @tp0
    public static final FileSystem SYSTEM;

    @m41
    @tp0
    public static final Path SYSTEM_TEMPORARY_DIRECTORY;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lokio/FileSystem$Companion;", "", "Lokio/FileSystem;", "RESOURCES", "Lokio/FileSystem;", DocumentType.SYSTEM_KEY, "Lokio/Path;", "SYSTEM_TEMPORARY_DIRECTORY", "Lokio/Path;", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }
    }

    static {
        FileSystem jvmSystemFileSystem;
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        SYSTEM = jvmSystemFileSystem;
        Path.Companion companion = Path.Companion;
        String property = System.getProperty("java.io.tmpdir");
        Csuper.m30696super(property, "getProperty(\"java.io.tmpdir\")");
        SYSTEM_TEMPORARY_DIRECTORY = Path.Companion.get$default(companion, property, false, 1, (Object) null);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        Csuper.m30696super(classLoader, "ResourceFileSystem::class.java.classLoader");
        RESOURCES = new ResourceFileSystem(classLoader, false);
    }

    public static /* synthetic */ Object a(FileSystem fileSystem, Path file, boolean z, Function1 writerAction, int i, Object obj) throws Throwable {
        Object objInvoke;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        Csuper.m30700throw(file, "file");
        Csuper.m30700throw(writerAction, "writerAction");
        BufferedSink bufferedSinkBuffer = Okio.buffer(fileSystem.sink(file, z));
        Throwable th = null;
        try {
            objInvoke = writerAction.invoke(bufferedSinkBuffer);
        } catch (Throwable th2) {
            objInvoke = null;
            th = th2;
        }
        if (bufferedSinkBuffer != null) {
            try {
                bufferedSinkBuffer.close();
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
        Csuper.m30672const(objInvoke);
        return objInvoke;
    }

    public static /* synthetic */ Sink appendingSink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: appendingSink");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.appendingSink(path, z);
    }

    public static /* synthetic */ void createDirectories$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectories");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.createDirectories(path, z);
    }

    public static /* synthetic */ void createDirectory$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectory");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.createDirectory(path, z);
    }

    public static /* synthetic */ void delete$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.delete(path, z);
    }

    public static /* synthetic */ void deleteRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteRecursively");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.deleteRecursively(path, z);
    }

    public static /* synthetic */ Sequence listRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: listRecursively");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.listRecursively(path, z);
    }

    public static /* synthetic */ FileHandle openReadWrite$default(FileSystem fileSystem, Path path, boolean z, boolean z2, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openReadWrite");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return fileSystem.openReadWrite(path, z, z2);
    }

    public static /* synthetic */ Sink sink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.sink(path, z);
    }

    @m41
    public final Sink appendingSink(@m41 Path file) throws IOException {
        Csuper.m30700throw(file, "file");
        return appendingSink(file, false);
    }

    @m41
    public abstract Sink appendingSink(@m41 Path path, boolean z) throws IOException;

    public abstract void atomicMove(@m41 Path path, @m41 Path path2) throws IOException;

    @wp0(name = "-read")
    public final <T> T b(@m41 Path file, @m41 Function1<? super BufferedSource, ? extends T> readerAction) throws Throwable {
        T tInvoke;
        Csuper.m30700throw(file, "file");
        Csuper.m30700throw(readerAction, "readerAction");
        BufferedSource bufferedSourceBuffer = Okio.buffer(source(file));
        Throwable th = null;
        try {
            tInvoke = readerAction.invoke(bufferedSourceBuffer);
        } catch (Throwable th2) {
            th = th2;
            tInvoke = null;
        }
        if (bufferedSourceBuffer != null) {
            try {
                bufferedSourceBuffer.close();
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
        Csuper.m30672const(tInvoke);
        return tInvoke;
    }

    @wp0(name = "-write")
    public final <T> T c(@m41 Path file, boolean z, @m41 Function1<? super BufferedSink, ? extends T> writerAction) throws Throwable {
        T tInvoke;
        Csuper.m30700throw(file, "file");
        Csuper.m30700throw(writerAction, "writerAction");
        BufferedSink bufferedSinkBuffer = Okio.buffer(sink(file, z));
        Throwable th = null;
        try {
            tInvoke = writerAction.invoke(bufferedSinkBuffer);
        } catch (Throwable th2) {
            tInvoke = null;
            th = th2;
        }
        if (bufferedSinkBuffer != null) {
            try {
                bufferedSinkBuffer.close();
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
        Csuper.m30672const(tInvoke);
        return tInvoke;
    }

    @m41
    public abstract Path canonicalize(@m41 Path path) throws IOException;

    public void copy(@m41 Path source, @m41 Path target) throws IOException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        _FileSystemKt.commonCopy(this, source, target);
    }

    public final void createDirectories(@m41 Path dir, boolean z) throws IOException {
        Csuper.m30700throw(dir, "dir");
        _FileSystemKt.commonCreateDirectories(this, dir, z);
    }

    public final void createDirectory(@m41 Path dir) throws IOException {
        Csuper.m30700throw(dir, "dir");
        createDirectory(dir, false);
    }

    public abstract void createDirectory(@m41 Path path, boolean z) throws IOException;

    public abstract void createSymlink(@m41 Path path, @m41 Path path2) throws IOException;

    public final void delete(@m41 Path path) throws IOException {
        Csuper.m30700throw(path, "path");
        delete(path, false);
    }

    public abstract void delete(@m41 Path path, boolean z) throws IOException;

    public void deleteRecursively(@m41 Path fileOrDirectory, boolean z) throws IOException {
        Csuper.m30700throw(fileOrDirectory, "fileOrDirectory");
        _FileSystemKt.commonDeleteRecursively(this, fileOrDirectory, z);
    }

    public final boolean exists(@m41 Path path) throws IOException {
        Csuper.m30700throw(path, "path");
        return _FileSystemKt.commonExists(this, path);
    }

    @m41
    public abstract List<Path> list(@m41 Path path) throws IOException;

    @z41
    public abstract List<Path> listOrNull(@m41 Path path);

    @m41
    public Sequence<Path> listRecursively(@m41 Path dir, boolean z) {
        Csuper.m30700throw(dir, "dir");
        return _FileSystemKt.commonListRecursively(this, dir, z);
    }

    @m41
    public final FileMetadata metadata(@m41 Path path) throws IOException {
        Csuper.m30700throw(path, "path");
        return _FileSystemKt.commonMetadata(this, path);
    }

    @z41
    public abstract FileMetadata metadataOrNull(@m41 Path path) throws IOException;

    @m41
    public abstract FileHandle openReadOnly(@m41 Path path) throws IOException;

    @m41
    public final FileHandle openReadWrite(@m41 Path file) throws IOException {
        Csuper.m30700throw(file, "file");
        return openReadWrite(file, false, false);
    }

    @m41
    public abstract FileHandle openReadWrite(@m41 Path path, boolean z, boolean z2) throws IOException;

    @m41
    public final Sink sink(@m41 Path file) throws IOException {
        Csuper.m30700throw(file, "file");
        return sink(file, false);
    }

    @m41
    public abstract Sink sink(@m41 Path path, boolean z) throws IOException;

    @m41
    public abstract Source source(@m41 Path path) throws IOException;

    public final void createDirectories(@m41 Path dir) throws IOException {
        Csuper.m30700throw(dir, "dir");
        createDirectories(dir, false);
    }

    public final void deleteRecursively(@m41 Path fileOrDirectory) throws IOException {
        Csuper.m30700throw(fileOrDirectory, "fileOrDirectory");
        deleteRecursively(fileOrDirectory, false);
    }

    @m41
    public final Sequence<Path> listRecursively(@m41 Path dir) {
        Csuper.m30700throw(dir, "dir");
        return listRecursively(dir, false);
    }
}
