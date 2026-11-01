package okio.internal;

import android.support.v4.m41;
import android.support.v4.on0;
import android.support.v4.z41;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Cwhile;
import kotlin.collections.Cfinal;
import kotlin.jvm.internal.Csuper;
import okio.Buffer;
import okio.ByteString;
import okio.Path;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u0005\n\u0002\b\u0014\u001a\u000f\u0010\u0001\u001a\u0004\u0018\u00010\u0000*\u00020\u0000H\u0080\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002*\u00020\u0000H\u0080\b\u001a\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002*\u00020\u0000H\u0080\b\u001a\f\u0010\b\u001a\u00020\u0007*\u00020\u0000H\u0002\u001a\r\u0010\n\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\r\u0010\u000b\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\u0016\u0010\r\u001a\u0004\u0018\u00010\f*\u00020\u0000H\u0080\b¢\u0006\u0004\b\r\u0010\u000e\u001a\r\u0010\u000f\u001a\u00020\u0005*\u00020\u0000H\u0080\b\u001a\r\u0010\u0010\u001a\u00020\u0003*\u00020\u0000H\u0080\b\u001a\u000f\u0010\u0011\u001a\u0004\u0018\u00010\u0000*\u00020\u0000H\u0080\b\u001a\f\u0010\u0012\u001a\u00020\t*\u00020\u0000H\u0002\u001a\r\u0010\u0013\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\tH\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\tH\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\tH\u0080\b\u001a\u001c\u0010\u0016\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\tH\u0000\u001a\u0015\u0010\u0019\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0000H\u0080\b\u001a\r\u0010\u001a\u001a\u00020\u0000*\u00020\u0000H\u0080\b\u001a\u0015\u0010\u001b\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0000H\u0080\b\u001a\u0017\u0010\u001d\u001a\u00020\t*\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u001cH\u0080\b\u001a\r\u0010\u001e\u001a\u00020\u0007*\u00020\u0000H\u0080\b\u001a\r\u0010\u001f\u001a\u00020\u0003*\u00020\u0000H\u0080\b\u001a\u0012\u0010 \u001a\u00020\u0000*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\t\u001a\u0014\u0010!\u001a\u00020\u0000*\u00020\u00172\u0006\u0010\u0015\u001a\u00020\tH\u0000\u001a\f\u0010\"\u001a\u00020\u0005*\u00020\u0003H\u0002\u001a\f\u0010\"\u001a\u00020\u0005*\u00020#H\u0002\u001a\u0014\u0010%\u001a\u00020\t*\u00020\u00172\u0006\u0010$\u001a\u00020\u0005H\u0002\"\u001c\u0010&\u001a\u00020\u00058\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b&\u0010'\u0012\u0004\b(\u0010)\"\u001c\u0010*\u001a\u00020\u00058\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b*\u0010'\u0012\u0004\b+\u0010)\"\u001c\u0010,\u001a\u00020\u00058\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b,\u0010'\u0012\u0004\b-\u0010)\"\u001c\u0010.\u001a\u00020\u00058\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b.\u0010'\u0012\u0004\b/\u0010)\"\u001c\u00100\u001a\u00020\u00058\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b0\u0010'\u0012\u0004\b1\u0010)\"\u001a\u00104\u001a\u00020\u0007*\u00020\u00008B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b2\u00103\"\u001c\u0010$\u001a\u0004\u0018\u00010\u0005*\u00020\u00008B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b5\u00106¨\u00067"}, d2 = {"Lokio/Path;", "commonRoot", "", "", "commonSegments", "Lokio/ByteString;", "commonSegmentsBytes", "", "rootLength", "", "commonIsAbsolute", "commonIsRelative", "", "commonVolumeLetter", "(Lokio/Path;)Ljava/lang/Character;", "commonNameBytes", "commonName", "commonParent", "lastSegmentIsDotDot", "commonIsRoot", "child", "normalize", "commonResolve", "Lokio/Buffer;", "other", "commonRelativeTo", "commonNormalized", "commonCompareTo", "", "commonEquals", "commonHashCode", "commonToString", "commonToPath", "toPath", "toSlash", "", "slash", "startsWithVolumeLetterAndColon", "SLASH", "Lokio/ByteString;", "getSLASH$annotations", "()V", "BACKSLASH", "getBACKSLASH$annotations", "ANY_SLASH", "getANY_SLASH$annotations", "DOT", "getDOT$annotations", "DOT_DOT", "getDOT_DOT$annotations", "getIndexOfLastSlash", "(Lokio/Path;)I", "indexOfLastSlash", "getSlash", "(Lokio/Path;)Lokio/ByteString;", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class _PathKt {

    @m41
    private static final ByteString ANY_SLASH;

    @m41
    private static final ByteString BACKSLASH;

    @m41
    private static final ByteString DOT;

    @m41
    private static final ByteString DOT_DOT;

    @m41
    private static final ByteString SLASH;

    static {
        ByteString.Companion companion = ByteString.Companion;
        SLASH = companion.encodeUtf8(on0.f4694final);
        BACKSLASH = companion.encodeUtf8("\\");
        ANY_SLASH = companion.encodeUtf8("/\\");
        DOT = companion.encodeUtf8(".");
        DOT_DOT = companion.encodeUtf8("..");
    }

    public static final int commonCompareTo(@m41 Path path, @m41 Path other) {
        Csuper.m30700throw(path, "<this>");
        Csuper.m30700throw(other, "other");
        return path.getBytes$okio().compareTo(other.getBytes$okio());
    }

    public static final boolean commonEquals(@m41 Path path, @z41 Object obj) {
        Csuper.m30700throw(path, "<this>");
        return (obj instanceof Path) && Csuper.m30676else(((Path) obj).getBytes$okio(), path.getBytes$okio());
    }

    public static final int commonHashCode(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        return path.getBytes$okio().hashCode();
    }

    public static final boolean commonIsAbsolute(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        return rootLength(path) != -1;
    }

    public static final boolean commonIsRelative(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        return rootLength(path) == -1;
    }

    public static final boolean commonIsRoot(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        return rootLength(path) == path.getBytes$okio().size();
    }

    @m41
    public static final String commonName(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        return path.nameBytes().utf8();
    }

    @m41
    public static final ByteString commonNameBytes(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        int indexOfLastSlash = getIndexOfLastSlash(path);
        return indexOfLastSlash != -1 ? ByteString.substring$default(path.getBytes$okio(), indexOfLastSlash + 1, 0, 2, null) : (path.volumeLetter() == null || path.getBytes$okio().size() != 2) ? path.getBytes$okio() : ByteString.EMPTY;
    }

    @m41
    public static final Path commonNormalized(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        return Path.Companion.get(path.toString(), true);
    }

    @z41
    public static final Path commonParent(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        if (Csuper.m30676else(path.getBytes$okio(), DOT) || Csuper.m30676else(path.getBytes$okio(), SLASH) || Csuper.m30676else(path.getBytes$okio(), BACKSLASH) || lastSegmentIsDotDot(path)) {
            return null;
        }
        int indexOfLastSlash = getIndexOfLastSlash(path);
        if (indexOfLastSlash == 2 && path.volumeLetter() != null) {
            if (path.getBytes$okio().size() == 3) {
                return null;
            }
            return new Path(ByteString.substring$default(path.getBytes$okio(), 0, 3, 1, null));
        }
        if (indexOfLastSlash == 1 && path.getBytes$okio().startsWith(BACKSLASH)) {
            return null;
        }
        if (indexOfLastSlash != -1 || path.volumeLetter() == null) {
            return indexOfLastSlash == -1 ? new Path(DOT) : indexOfLastSlash == 0 ? new Path(ByteString.substring$default(path.getBytes$okio(), 0, 1, 1, null)) : new Path(ByteString.substring$default(path.getBytes$okio(), 0, indexOfLastSlash, 1, null));
        }
        if (path.getBytes$okio().size() == 2) {
            return null;
        }
        return new Path(ByteString.substring$default(path.getBytes$okio(), 0, 2, 1, null));
    }

    @m41
    public static final Path commonRelativeTo(@m41 Path path, @m41 Path other) {
        Csuper.m30700throw(path, "<this>");
        Csuper.m30700throw(other, "other");
        if (!Csuper.m30676else(path.getRoot(), other.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + path + " and " + other).toString());
        }
        List<ByteString> segmentsBytes = path.getSegmentsBytes();
        List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
        int iMin = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i = 0;
        while (i < iMin && Csuper.m30676else(segmentsBytes.get(i), segmentsBytes2.get(i))) {
            i++;
        }
        if (i == iMin && path.getBytes$okio().size() == other.getBytes$okio().size()) {
            return Path.Companion.get$default(Path.Companion, ".", false, 1, (Object) null);
        }
        if (!(segmentsBytes2.subList(i, segmentsBytes2.size()).indexOf(DOT_DOT) == -1)) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + path + " and " + other).toString());
        }
        Buffer buffer = new Buffer();
        ByteString slash = getSlash(other);
        if (slash == null && (slash = getSlash(path)) == null) {
            slash = toSlash(Path.DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        if (i < size) {
            int i2 = i;
            do {
                i2++;
                buffer.write(DOT_DOT);
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
        return toPath(buffer, false);
    }

    @m41
    public static final Path commonResolve(@m41 Path path, @m41 String child, boolean z) {
        Csuper.m30700throw(path, "<this>");
        Csuper.m30700throw(child, "child");
        return commonResolve(path, toPath(new Buffer().writeUtf8(child), false), z);
    }

    @z41
    public static final Path commonRoot(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        int iRootLength = rootLength(path);
        if (iRootLength == -1) {
            return null;
        }
        return new Path(path.getBytes$okio().substring(0, iRootLength));
    }

    @m41
    public static final List<String> commonSegments(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iRootLength = rootLength(path);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < path.getBytes$okio().size() && path.getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
            iRootLength++;
        }
        int size = path.getBytes$okio().size();
        if (iRootLength < size) {
            int i = iRootLength;
            while (true) {
                int i2 = iRootLength + 1;
                if (path.getBytes$okio().getByte(iRootLength) == ((byte) 47) || path.getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
                    arrayList.add(path.getBytes$okio().substring(i, iRootLength));
                    i = i2;
                }
                if (i2 >= size) {
                    break;
                }
                iRootLength = i2;
            }
            iRootLength = i;
        }
        if (iRootLength < path.getBytes$okio().size()) {
            arrayList.add(path.getBytes$okio().substring(iRootLength, path.getBytes$okio().size()));
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.Cwhile.l(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).utf8());
        }
        return arrayList2;
    }

    @m41
    public static final List<ByteString> commonSegmentsBytes(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iRootLength = rootLength(path);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < path.getBytes$okio().size() && path.getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
            iRootLength++;
        }
        int size = path.getBytes$okio().size();
        if (iRootLength < size) {
            int i = iRootLength;
            while (true) {
                int i2 = iRootLength + 1;
                if (path.getBytes$okio().getByte(iRootLength) == ((byte) 47) || path.getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
                    arrayList.add(path.getBytes$okio().substring(i, iRootLength));
                    i = i2;
                }
                if (i2 >= size) {
                    break;
                }
                iRootLength = i2;
            }
            iRootLength = i;
        }
        if (iRootLength < path.getBytes$okio().size()) {
            arrayList.add(path.getBytes$okio().substring(iRootLength, path.getBytes$okio().size()));
        }
        return arrayList;
    }

    @m41
    public static final Path commonToPath(@m41 String str, boolean z) {
        Csuper.m30700throw(str, "<this>");
        return toPath(new Buffer().writeUtf8(str), z);
    }

    @m41
    public static final String commonToString(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        return path.getBytes$okio().utf8();
    }

    @z41
    public static final Character commonVolumeLetter(@m41 Path path) {
        Csuper.m30700throw(path, "<this>");
        boolean z = false;
        if (ByteString.indexOf$default(path.getBytes$okio(), SLASH, 0, 2, (Object) null) != -1 || path.getBytes$okio().size() < 2 || path.getBytes$okio().getByte(1) != ((byte) 58)) {
            return null;
        }
        char c = (char) path.getBytes$okio().getByte(0);
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

    private static /* synthetic */ void getANY_SLASH$annotations() {
    }

    private static /* synthetic */ void getBACKSLASH$annotations() {
    }

    private static /* synthetic */ void getDOT$annotations() {
    }

    private static /* synthetic */ void getDOT_DOT$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getIndexOfLastSlash(Path path) {
        int iLastIndexOf$default = ByteString.lastIndexOf$default(path.getBytes$okio(), SLASH, 0, 2, (Object) null);
        return iLastIndexOf$default != -1 ? iLastIndexOf$default : ByteString.lastIndexOf$default(path.getBytes$okio(), BACKSLASH, 0, 2, (Object) null);
    }

    private static /* synthetic */ void getSLASH$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString getSlash(Path path) {
        ByteString bytes$okio = path.getBytes$okio();
        ByteString byteString = SLASH;
        if (ByteString.indexOf$default(bytes$okio, byteString, 0, 2, (Object) null) != -1) {
            return byteString;
        }
        ByteString bytes$okio2 = path.getBytes$okio();
        ByteString byteString2 = BACKSLASH;
        if (ByteString.indexOf$default(bytes$okio2, byteString2, 0, 2, (Object) null) != -1) {
            return byteString2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean lastSegmentIsDotDot(Path path) {
        return path.getBytes$okio().endsWith(DOT_DOT) && (path.getBytes$okio().size() == 2 || path.getBytes$okio().rangeEquals(path.getBytes$okio().size() + (-3), SLASH, 0, 1) || path.getBytes$okio().rangeEquals(path.getBytes$okio().size() + (-3), BACKSLASH, 0, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int rootLength(Path path) {
        if (path.getBytes$okio().size() == 0) {
            return -1;
        }
        boolean z = false;
        if (path.getBytes$okio().getByte(0) == ((byte) 47)) {
            return 1;
        }
        byte b = (byte) 92;
        if (path.getBytes$okio().getByte(0) == b) {
            if (path.getBytes$okio().size() <= 2 || path.getBytes$okio().getByte(1) != b) {
                return 1;
            }
            int iIndexOf = path.getBytes$okio().indexOf(BACKSLASH, 2);
            return iIndexOf == -1 ? path.getBytes$okio().size() : iIndexOf;
        }
        if (path.getBytes$okio().size() <= 2 || path.getBytes$okio().getByte(1) != ((byte) 58) || path.getBytes$okio().getByte(2) != b) {
            return -1;
        }
        char c = (char) path.getBytes$okio().getByte(0);
        if ('a' <= c && c <= 'z') {
            return 3;
        }
        if ('A' <= c && c <= 'Z') {
            z = true;
        }
        return !z ? -1 : 3;
    }

    private static final boolean startsWithVolumeLetterAndColon(Buffer buffer, ByteString byteString) {
        if (!Csuper.m30676else(byteString, BACKSLASH) || buffer.size() < 2 || buffer.getByte(1L) != ((byte) 58)) {
            return false;
        }
        char c = (char) buffer.getByte(0L);
        if (!('a' <= c && c <= 'z')) {
            if (!('A' <= c && c <= 'Z')) {
                return false;
            }
        }
        return true;
    }

    @m41
    public static final Path toPath(@m41 Buffer buffer, boolean z) throws EOFException {
        ByteString byteString;
        ByteString byteString2;
        Csuper.m30700throw(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        int i = 0;
        ByteString slash = null;
        int i2 = 0;
        while (true) {
            if (!buffer.rangeEquals(0L, SLASH)) {
                byteString = BACKSLASH;
                if (!buffer.rangeEquals(0L, byteString)) {
                    break;
                }
            }
            byte b = buffer.readByte();
            if (slash == null) {
                slash = toSlash(b);
            }
            i2++;
        }
        boolean z2 = i2 >= 2 && Csuper.m30676else(slash, byteString);
        if (z2) {
            Csuper.m30672const(slash);
            buffer2.write(slash);
            buffer2.write(slash);
        } else if (i2 > 0) {
            Csuper.m30672const(slash);
            buffer2.write(slash);
        } else {
            long jIndexOfElement = buffer.indexOfElement(ANY_SLASH);
            if (slash == null) {
                slash = jIndexOfElement == -1 ? toSlash(Path.DIRECTORY_SEPARATOR) : toSlash(buffer.getByte(jIndexOfElement));
            }
            if (startsWithVolumeLetterAndColon(buffer, slash)) {
                if (jIndexOfElement == 2) {
                    buffer2.write(buffer, 3L);
                } else {
                    buffer2.write(buffer, 2L);
                }
            }
        }
        boolean z3 = buffer2.size() > 0;
        ArrayList arrayList = new ArrayList();
        while (!buffer.exhausted()) {
            long jIndexOfElement2 = buffer.indexOfElement(ANY_SLASH);
            if (jIndexOfElement2 == -1) {
                byteString2 = buffer.readByteString();
            } else {
                byteString2 = buffer.readByteString(jIndexOfElement2);
                buffer.readByte();
            }
            ByteString byteString3 = DOT_DOT;
            if (Csuper.m30676else(byteString2, byteString3)) {
                if (!z3 || !arrayList.isEmpty()) {
                    if (!z || (!z3 && (arrayList.isEmpty() || Csuper.m30676else(Cfinal.p2(arrayList), byteString3)))) {
                        arrayList.add(byteString2);
                    } else if (!z2 || arrayList.size() != 1) {
                        Cfinal.b0(arrayList);
                    }
                }
            } else if (!Csuper.m30676else(byteString2, DOT) && !Csuper.m30676else(byteString2, ByteString.EMPTY)) {
                arrayList.add(byteString2);
            }
        }
        int size = arrayList.size();
        if (size > 0) {
            while (true) {
                int i3 = i + 1;
                if (i > 0) {
                    buffer2.write(slash);
                }
                buffer2.write((ByteString) arrayList.get(i));
                if (i3 >= size) {
                    break;
                }
                i = i3;
            }
        }
        if (buffer2.size() == 0) {
            buffer2.write(DOT);
        }
        return new Path(buffer2.readByteString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString toSlash(String str) {
        if (Csuper.m30676else(str, on0.f4694final)) {
            return SLASH;
        }
        if (Csuper.m30676else(str, "\\")) {
            return BACKSLASH;
        }
        throw new IllegalArgumentException(Csuper.m30690private("not a directory separator: ", str));
    }

    @m41
    public static final Path commonResolve(@m41 Path path, @m41 ByteString child, boolean z) {
        Csuper.m30700throw(path, "<this>");
        Csuper.m30700throw(child, "child");
        return commonResolve(path, toPath(new Buffer().write(child), false), z);
    }

    private static final ByteString toSlash(byte b) {
        if (b == 47) {
            return SLASH;
        }
        if (b == 92) {
            return BACKSLASH;
        }
        throw new IllegalArgumentException(Csuper.m30690private("not a directory separator: ", Byte.valueOf(b)));
    }

    @m41
    public static final Path commonResolve(@m41 Path path, @m41 Buffer child, boolean z) {
        Csuper.m30700throw(path, "<this>");
        Csuper.m30700throw(child, "child");
        return commonResolve(path, toPath(child, false), z);
    }

    @m41
    public static final Path commonResolve(@m41 Path path, @m41 Path child, boolean z) {
        Csuper.m30700throw(path, "<this>");
        Csuper.m30700throw(child, "child");
        if (child.isAbsolute() || child.volumeLetter() != null) {
            return child;
        }
        ByteString slash = getSlash(path);
        if (slash == null && (slash = getSlash(child)) == null) {
            slash = toSlash(Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.write(path.getBytes$okio());
        if (buffer.size() > 0) {
            buffer.write(slash);
        }
        buffer.write(child.getBytes$okio());
        return toPath(buffer, z);
    }
}
