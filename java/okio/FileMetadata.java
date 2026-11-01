package okio;

import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.z41;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Cwhile;
import kotlin.collections.Cinterface;
import kotlin.collections.Cthrows;
import kotlin.jvm.internal.Csuper;
import kotlin.reflect.Cif;
import kotlin.reflect.KClass;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0012\u0018\u00002\u00020\u0001Bq\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f\u0012\u0018\b\u0002\u0010\u0012\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0004\b%\u0010&J)\u0010\u0005\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006Jw\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f2\u0018\b\u0002\u0010\u0012\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0016\u001a\u00020\u0015H\u0016R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0017\u001a\u0004\b\b\u0010\u0018R\u0019\u0010\t\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\t\u0010\u0018R\u001b\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001c\u001a\u0004\b\u001f\u0010\u001eR\u001b\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b \u0010\u001eR\u001b\u0010\u0010\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001c\u001a\u0004\b!\u0010\u001eR)\u0010\u0012\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00010\u00118\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\"\u001a\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lokio/FileMetadata;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/reflect/KClass;", "type", "extra", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "", "isRegularFile", "isDirectory", "Lokio/Path;", "symlinkTarget", "", "size", "createdAtMillis", "lastModifiedAtMillis", "lastAccessedAtMillis", "", NotificationCompat.MessagingStyle.Message.KEY_EXTRAS_BUNDLE, "copy", "(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Lokio/FileMetadata;", "", "toString", "Z", "()Z", "Lokio/Path;", "getSymlinkTarget", "()Lokio/Path;", "Ljava/lang/Long;", "getSize", "()Ljava/lang/Long;", "getCreatedAtMillis", "getLastModifiedAtMillis", "getLastAccessedAtMillis", "Ljava/util/Map;", "getExtras", "()Ljava/util/Map;", "<init>", "(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class FileMetadata {

    @z41
    private final Long createdAtMillis;

    @m41
    private final Map<KClass<?>, Object> extras;
    private final boolean isDirectory;
    private final boolean isRegularFile;

    @z41
    private final Long lastAccessedAtMillis;

    @z41
    private final Long lastModifiedAtMillis;

    @z41
    private final Long size;

    @z41
    private final Path symlinkTarget;

    public FileMetadata() {
        this(false, false, null, null, null, null, null, null, 255, null);
    }

    public FileMetadata(boolean z, boolean z2, @z41 Path path, @z41 Long l, @z41 Long l2, @z41 Long l3, @z41 Long l4, @m41 Map<KClass<?>, ? extends Object> extras) {
        Csuper.m30700throw(extras, "extras");
        this.isRegularFile = z;
        this.isDirectory = z2;
        this.symlinkTarget = path;
        this.size = l;
        this.createdAtMillis = l2;
        this.lastModifiedAtMillis = l3;
        this.lastAccessedAtMillis = l4;
        this.extras = Cinterface.Q(extras);
    }

    @m41
    public final FileMetadata copy(boolean z, boolean z2, @z41 Path path, @z41 Long l, @z41 Long l2, @z41 Long l3, @z41 Long l4, @m41 Map<KClass<?>, ? extends Object> extras) {
        Csuper.m30700throw(extras, "extras");
        return new FileMetadata(z, z2, path, l, l2, l3, l4, extras);
    }

    @z41
    public final <T> T extra(@m41 KClass<? extends T> type) {
        Csuper.m30700throw(type, "type");
        Object obj = this.extras.get(type);
        if (obj == null) {
            return null;
        }
        return (T) Cif.m31008do(type, obj);
    }

    @z41
    public final Long getCreatedAtMillis() {
        return this.createdAtMillis;
    }

    @m41
    public final Map<KClass<?>, Object> getExtras() {
        return this.extras;
    }

    @z41
    public final Long getLastAccessedAtMillis() {
        return this.lastAccessedAtMillis;
    }

    @z41
    public final Long getLastModifiedAtMillis() {
        return this.lastModifiedAtMillis;
    }

    @z41
    public final Long getSize() {
        return this.size;
    }

    @z41
    public final Path getSymlinkTarget() {
        return this.symlinkTarget;
    }

    public final boolean isDirectory() {
        return this.isDirectory;
    }

    public final boolean isRegularFile() {
        return this.isRegularFile;
    }

    @m41
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.isRegularFile) {
            arrayList.add("isRegularFile");
        }
        if (this.isDirectory) {
            arrayList.add("isDirectory");
        }
        Long l = this.size;
        if (l != null) {
            arrayList.add(Csuper.m30690private("byteCount=", l));
        }
        Long l2 = this.createdAtMillis;
        if (l2 != null) {
            arrayList.add(Csuper.m30690private("createdAt=", l2));
        }
        Long l3 = this.lastModifiedAtMillis;
        if (l3 != null) {
            arrayList.add(Csuper.m30690private("lastModifiedAt=", l3));
        }
        Long l4 = this.lastAccessedAtMillis;
        if (l4 != null) {
            arrayList.add(Csuper.m30690private("lastAccessedAt=", l4));
        }
        if (!this.extras.isEmpty()) {
            arrayList.add(Csuper.m30690private("extras=", this.extras));
        }
        return Cthrows.m2(arrayList, ", ", "FileMetadata(", ")", 0, null, null, 56, null);
    }

    public /* synthetic */ FileMetadata(boolean z, boolean z2, Path path, Long l, Long l2, Long l3, Long l4, Map map, int i, rx rxVar) {
        this((i & 1) != 0 ? false : z, (i & 2) == 0 ? z2 : false, (i & 4) != 0 ? null : path, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : l2, (i & 32) != 0 ? null : l3, (i & 64) == 0 ? l4 : null, (i & 128) != 0 ? Cinterface.m30101extends() : map);
    }
}
