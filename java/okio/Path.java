package okio;

import android.support.v4.aq0;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.tp0;
import android.support.v4.wp0;
import android.support.v4.xp0;
import android.support.v4.z41;
import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okio.internal._PathKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import sun.security.util.SecurityConstants;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\f\n\u0002\b\u000b\u0018\u0000 32\b\u0012\u0004\u0012\u00020\u00000\u0001:\u00013B\u0011\b\u0000\u0012\u0006\u0010\u0019\u001a\u00020\u0007¢\u0006\u0004\b1\u00102J\u0018\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0004\b\u0004\u0010\bJ\u0018\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0087\u0002¢\u0006\u0004\b\u0004\u0010\tJ\u0018\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\nJ\u0018\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\nJ\u0018\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0000J\u0006\u0010\u000e\u001a\u00020\u0000J\u0006\u0010\u0010\u001a\u00020\u000fJ\b\u0010\u0012\u001a\u00020\u0011H\u0007J\u0011\u0010\u0014\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u0016\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0013H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016R\u001c\u0010\u0019\u001a\u00020\u00078\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0019\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00020 8F@\u0006¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0019\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00070 8F@\u0006¢\u0006\u0006\u001a\u0004\b$\u0010\"R\u0013\u0010&\u001a\u00020\n8F@\u0006¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0013\u0010(\u001a\u00020\n8F@\u0006¢\u0006\u0006\u001a\u0004\b(\u0010'R\u0015\u0010*\u001a\u0004\u0018\u00010)8G@\u0006¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0013\u0010,\u001a\u00020\u00078G@\u0006¢\u0006\u0006\u001a\u0004\b,\u0010\u001cR\u0013\u0010-\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0015\u0010/\u001a\u0004\u0018\u00010\u00008G@\u0006¢\u0006\u0006\u001a\u0004\b/\u0010\u001eR\u0013\u00100\u001a\u00020\n8F@\u0006¢\u0006\u0006\u001a\u0004\b0\u0010'¨\u00064"}, d2 = {"Lokio/Path;", "", "", "child", SecurityConstants.SOCKET_RESOLVE_ACTION, "(Ljava/lang/String;)Lokio/Path;", "div", "Lokio/ByteString;", "(Lokio/ByteString;)Lokio/Path;", "(Lokio/Path;)Lokio/Path;", "", "normalize", "other", "relativeTo", "normalized", "Ljava/io/File;", "toFile", "Ljava/nio/file/Path;", "toNioPath", "", "compareTo", "", "equals", "hashCode", "toString", "bytes", "Lokio/ByteString;", "getBytes$okio", "()Lokio/ByteString;", "getRoot", "()Lokio/Path;", "root", "", "getSegments", "()Ljava/util/List;", "segments", "getSegmentsBytes", "segmentsBytes", "isAbsolute", "()Z", "isRelative", "", "volumeLetter", "()Ljava/lang/Character;", "nameBytes", "name", "()Ljava/lang/String;", "parent", "isRoot", "<init>", "(Lokio/ByteString;)V", "Companion", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class Path implements Comparable<Path> {

    @m41
    public static final Companion Companion = new Companion(null);

    @m41
    @tp0
    public static final String DIRECTORY_SEPARATOR;

    @m41
    private final ByteString bytes;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\b\u001a\u00020\u0005*\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\u0005*\u00020\t2\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u0005*\u00020\f2\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lokio/Path$Companion;", "", "", "", "normalize", "Lokio/Path;", "get", "(Ljava/lang/String;Z)Lokio/Path;", "toPath", "Ljava/io/File;", "(Ljava/io/File;Z)Lokio/Path;", "toOkioPath", "Ljava/nio/file/Path;", "(Ljava/nio/file/Path;Z)Lokio/Path;", "DIRECTORY_SEPARATOR", "Ljava/lang/String;", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        public static /* synthetic */ Path get$default(Companion companion, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.get(str, z);
        }

        @m41
        @aq0
        @wp0(name = "get")
        @xp0
        public final Path get(@m41 File file) {
            Csuper.m30700throw(file, "<this>");
            return get$default(this, file, false, 1, (Object) null);
        }

        @m41
        @aq0
        @wp0(name = "get")
        @xp0
        public final Path get(@m41 String str) {
            Csuper.m30700throw(str, "<this>");
            return get$default(this, str, false, 1, (Object) null);
        }

        @m41
        @aq0
        @wp0(name = "get")
        @xp0
        public final Path get(@m41 String str, boolean z) {
            Csuper.m30700throw(str, "<this>");
            return _PathKt.commonToPath(str, z);
        }

        @m41
        @aq0
        @wp0(name = "get")
        @xp0
        @IgnoreJRERequirement
        public final Path get(@m41 java.nio.file.Path path) {
            Csuper.m30700throw(path, "<this>");
            return get$default(this, path, false, 1, (Object) null);
        }

        public static /* synthetic */ Path get$default(Companion companion, File file, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.get(file, z);
        }

        @m41
        @aq0
        @wp0(name = "get")
        @xp0
        public final Path get(@m41 File file, boolean z) {
            Csuper.m30700throw(file, "<this>");
            String string = file.toString();
            Csuper.m30696super(string, "toString()");
            return get(string, z);
        }

        public static /* synthetic */ Path get$default(Companion companion, java.nio.file.Path path, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.get(path, z);
        }

        @m41
        @aq0
        @wp0(name = "get")
        @xp0
        @IgnoreJRERequirement
        public final Path get(@m41 java.nio.file.Path path, boolean z) {
            Csuper.m30700throw(path, "<this>");
            return get(path.toString(), z);
        }
    }

    static {
        String separator = File.separator;
        Csuper.m30696super(separator, "separator");
        DIRECTORY_SEPARATOR = separator;
    }

    public Path(@m41 ByteString bytes) {
        Csuper.m30700throw(bytes, "bytes");
        this.bytes = bytes;
    }

    @m41
    @aq0
    @wp0(name = "get")
    @xp0
    public static final Path get(@m41 File file) {
        return Companion.get(file);
    }

    @m41
    @aq0
    @wp0(name = "get")
    @xp0
    public static final Path get(@m41 File file, boolean z) {
        return Companion.get(file, z);
    }

    @m41
    @aq0
    @wp0(name = "get")
    @xp0
    public static final Path get(@m41 String str) {
        return Companion.get(str);
    }

    @m41
    @aq0
    @wp0(name = "get")
    @xp0
    public static final Path get(@m41 String str, boolean z) {
        return Companion.get(str, z);
    }

    @m41
    @aq0
    @wp0(name = "get")
    @xp0
    @IgnoreJRERequirement
    public static final Path get(@m41 java.nio.file.Path path) {
        return Companion.get(path);
    }

    @m41
    @aq0
    @wp0(name = "get")
    @xp0
    @IgnoreJRERequirement
    public static final Path get(@m41 java.nio.file.Path path, boolean z) {
        return Companion.get(path, z);
    }

    public static /* synthetic */ Path resolve$default(Path path, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return path.resolve(str, z);
    }

    public boolean equals(@z41 Object obj) {
        return (obj instanceof Path) && Csuper.m30676else(((Path) obj).getBytes$okio(), getBytes$okio());
    }

    @m41
    public final ByteString getBytes$okio() {
        return this.bytes;
    }

    @z41
    public final Path getRoot() {
        int iRootLength = _PathKt.rootLength(this);
        if (iRootLength == -1) {
            return null;
        }
        return new Path(getBytes$okio().substring(0, iRootLength));
    }

    @m41
    public final List<String> getSegments() {
        ArrayList arrayList = new ArrayList();
        int iRootLength = _PathKt.rootLength(this);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < getBytes$okio().size() && getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
            iRootLength++;
        }
        int size = getBytes$okio().size();
        if (iRootLength < size) {
            int i = iRootLength;
            while (true) {
                int i2 = iRootLength + 1;
                if (getBytes$okio().getByte(iRootLength) == ((byte) 47) || getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
                    arrayList.add(getBytes$okio().substring(i, iRootLength));
                    i = i2;
                }
                if (i2 >= size) {
                    break;
                }
                iRootLength = i2;
            }
            iRootLength = i;
        }
        if (iRootLength < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(iRootLength, getBytes$okio().size()));
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.Cwhile.l(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).utf8());
        }
        return arrayList2;
    }

    @m41
    public final List<ByteString> getSegmentsBytes() {
        ArrayList arrayList = new ArrayList();
        int iRootLength = _PathKt.rootLength(this);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < getBytes$okio().size() && getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
            iRootLength++;
        }
        int size = getBytes$okio().size();
        if (iRootLength < size) {
            int i = iRootLength;
            while (true) {
                int i2 = iRootLength + 1;
                if (getBytes$okio().getByte(iRootLength) == ((byte) 47) || getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
                    arrayList.add(getBytes$okio().substring(i, iRootLength));
                    i = i2;
                }
                if (i2 >= size) {
                    break;
                }
                iRootLength = i2;
            }
            iRootLength = i;
        }
        if (iRootLength < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(iRootLength, getBytes$okio().size()));
        }
        return arrayList;
    }

    public int hashCode() {
        return getBytes$okio().hashCode();
    }

    public final boolean isAbsolute() {
        return _PathKt.rootLength(this) != -1;
    }

    public final boolean isRelative() {
        return _PathKt.rootLength(this) == -1;
    }

    public final boolean isRoot() {
        return _PathKt.rootLength(this) == getBytes$okio().size();
    }

    @m41
    @wp0(name = "name")
    public final String name() {
        return nameBytes().utf8();
    }

    @m41
    @wp0(name = "nameBytes")
    public final ByteString nameBytes() {
        int indexOfLastSlash = _PathKt.getIndexOfLastSlash(this);
        return indexOfLastSlash != -1 ? ByteString.substring$default(getBytes$okio(), indexOfLastSlash + 1, 0, 2, null) : (volumeLetter() == null || getBytes$okio().size() != 2) ? getBytes$okio() : ByteString.EMPTY;
    }

    @m41
    public final Path normalized() {
        return Companion.get(toString(), true);
    }

    @wp0(name = "parent")
    @z41
    public final Path parent() {
        Path path;
        if (Csuper.m30676else(getBytes$okio(), _PathKt.DOT) || Csuper.m30676else(getBytes$okio(), _PathKt.SLASH) || Csuper.m30676else(getBytes$okio(), _PathKt.BACKSLASH) || _PathKt.lastSegmentIsDotDot(this)) {
            return null;
        }
        int indexOfLastSlash = _PathKt.getIndexOfLastSlash(this);
        if (indexOfLastSlash != 2 || volumeLetter() == null) {
            if (indexOfLastSlash == 1 && getBytes$okio().startsWith(_PathKt.BACKSLASH)) {
                return null;
            }
            if (indexOfLastSlash != -1 || volumeLetter() == null) {
                if (indexOfLastSlash == -1) {
                    return new Path(_PathKt.DOT);
                }
                if (indexOfLastSlash != 0) {
                    return new Path(ByteString.substring$default(getBytes$okio(), 0, indexOfLastSlash, 1, null));
                }
                path = new Path(ByteString.substring$default(getBytes$okio(), 0, 1, 1, null));
            } else {
                if (getBytes$okio().size() == 2) {
                    return null;
                }
                path = new Path(ByteString.substring$default(getBytes$okio(), 0, 2, 1, null));
            }
        } else {
            if (getBytes$okio().size() == 3) {
                return null;
            }
            path = new Path(ByteString.substring$default(getBytes$okio(), 0, 3, 1, null));
        }
        return path;
    }

    @m41
    public final Path relativeTo(@m41 Path other) {
        Csuper.m30700throw(other, "other");
        if (!Csuper.m30676else(getRoot(), other.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + other).toString());
        }
        List<ByteString> segmentsBytes = getSegmentsBytes();
        List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
        int iMin = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i = 0;
        while (i < iMin && Csuper.m30676else(segmentsBytes.get(i), segmentsBytes2.get(i))) {
            i++;
        }
        if (i == iMin && getBytes$okio().size() == other.getBytes$okio().size()) {
            return Companion.get$default(Companion, ".", false, 1, (Object) null);
        }
        if (!(segmentsBytes2.subList(i, segmentsBytes2.size()).indexOf(_PathKt.DOT_DOT) == -1)) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + other).toString());
        }
        Buffer buffer = new Buffer();
        ByteString slash = _PathKt.getSlash(other);
        if (slash == null && (slash = _PathKt.getSlash(this)) == null) {
            slash = _PathKt.toSlash(DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        if (i < size) {
            int i2 = i;
            do {
                i2++;
                buffer.write(_PathKt.DOT_DOT);
                buffer.write(slash);
            } while (i2 < size);
        }
        int size2 = segmentsBytes.size();
        if (i < size2) {
            while (true) {
                int i3 = i + 1;
                buffer.write(segmentsBytes.get(i));
                buffer.write(slash);
                if (i3 >= size2) {
                    break;
                }
                i = i3;
            }
        }
        return _PathKt.toPath(buffer, false);
    }

    @m41
    @wp0(name = SecurityConstants.SOCKET_RESOLVE_ACTION)
    public final Path resolve(@m41 Path child) {
        Csuper.m30700throw(child, "child");
        return _PathKt.commonResolve(this, child, false);
    }

    @m41
    public final File toFile() {
        return new File(toString());
    }

    @m41
    @IgnoreJRERequirement
    public final java.nio.file.Path toNioPath() {
        java.nio.file.Path path = Paths.get(toString(), new String[0]);
        Csuper.m30696super(path, "get(toString())");
        return path;
    }

    @m41
    public String toString() {
        return getBytes$okio().utf8();
    }

    @wp0(name = "volumeLetter")
    @z41
    public final Character volumeLetter() {
        boolean z = false;
        if (ByteString.indexOf$default(getBytes$okio(), _PathKt.SLASH, 0, 2, (Object) null) != -1 || getBytes$okio().size() < 2 || getBytes$okio().getByte(1) != ((byte) 58)) {
            return null;
        }
        char c = (char) getBytes$okio().getByte(0);
        if (!('a' <= c && c <= 'z')) {
            if ('A' <= c && c <= 'Z') {
                z = true;
            }
            if (!z) {
                return null;
            }
        }
        return Character.valueOf(c);
    }

    public static /* synthetic */ Path resolve$default(Path path, ByteString byteString, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return path.resolve(byteString, z);
    }

    @Override // java.lang.Comparable
    public int compareTo(@m41 Path other) {
        Csuper.m30700throw(other, "other");
        return getBytes$okio().compareTo(other.getBytes$okio());
    }

    @m41
    public final Path resolve(@m41 Path child, boolean z) {
        Csuper.m30700throw(child, "child");
        return _PathKt.commonResolve(this, child, z);
    }

    public static /* synthetic */ Path resolve$default(Path path, Path path2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return path.resolve(path2, z);
    }

    @m41
    @wp0(name = SecurityConstants.SOCKET_RESOLVE_ACTION)
    public final Path resolve(@m41 String child) {
        Csuper.m30700throw(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().writeUtf8(child), false), false);
    }

    @m41
    @wp0(name = SecurityConstants.SOCKET_RESOLVE_ACTION)
    public final Path resolve(@m41 ByteString child) {
        Csuper.m30700throw(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().write(child), false), false);
    }

    @m41
    public final Path resolve(@m41 String child, boolean z) {
        Csuper.m30700throw(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().writeUtf8(child), false), z);
    }

    @m41
    public final Path resolve(@m41 ByteString child, boolean z) {
        Csuper.m30700throw(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().write(child), false), z);
    }
}
