package okio.internal;

import android.support.v4.m41;
import android.support.v4.qb1;
import android.support.v4.yr0;
import java.util.List;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function0;
import okio.FileSystem;
import okio.Path;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00010\u0000H\n"}, d2 = {"", "Landroid/support/v4/qb1;", "Lokio/FileSystem;", "Lokio/Path;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ResourceFileSystem$roots$2 extends yr0 implements Function0<List<? extends qb1<? extends FileSystem, ? extends Path>>> {
    public final /* synthetic */ ClassLoader $classLoader;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceFileSystem$roots$2(ClassLoader classLoader) {
        super(0);
        this.$classLoader = classLoader;
    }

    @Override // kotlin.jvm.functions.Function0
    @m41
    public final List<? extends qb1<? extends FileSystem, ? extends Path>> invoke() {
        return ResourceFileSystem.Companion.toClasspathRoots(this.$classLoader);
    }
}
