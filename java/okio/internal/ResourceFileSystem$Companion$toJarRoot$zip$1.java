package okio.internal;

import android.support.v4.m41;
import android.support.v4.yr0;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"}, d2 = {"Lokio/internal/ZipEntry;", "entry", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ResourceFileSystem$Companion$toJarRoot$zip$1 extends yr0 implements Function1<ZipEntry, Boolean> {
    public static final ResourceFileSystem$Companion$toJarRoot$zip$1 INSTANCE = new ResourceFileSystem$Companion$toJarRoot$zip$1();

    public ResourceFileSystem$Companion$toJarRoot$zip$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @m41
    public final Boolean invoke(@m41 ZipEntry entry) {
        Csuper.m30700throw(entry, "entry");
        return Boolean.valueOf(ResourceFileSystem.Companion.keepPath(entry.getCanonicalPath()));
    }
}
