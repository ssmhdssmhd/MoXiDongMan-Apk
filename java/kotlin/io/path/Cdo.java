package kotlin.io.path;

import android.support.v4.m41;
import java.nio.file.FileSystem;
import java.nio.file.Path;
import java.nio.file.Paths;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import kotlin.text.Cthrows;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002R\u001e\u0010\b\u001a\n \u0006*\u0004\u0018\u00010\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007R\u001e\u0010\n\u001a\n \u0006*\u0004\u0018\u00010\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0007¨\u0006\r"}, d2 = {"Lkotlin/io/path/do;", "", "Ljava/nio/file/Path;", "path", "base", "do", "kotlin.jvm.PlatformType", "Ljava/nio/file/Path;", "emptyPath", "if", "parentPath", "<init>", "()V", "kotlin-stdlib-jdk7"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.io.path.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo {

    /* renamed from: for, reason: not valid java name */
    @m41
    public static final Cdo f27863for = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private static final Path f27862do = Paths.get("", new String[0]);

    /* renamed from: if, reason: not valid java name */
    private static final Path f27864if = Paths.get("..", new String[0]);

    private Cdo() {
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public final Path m30596do(@m41 Path path, @m41 Path base) {
        Csuper.m30700throw(path, "path");
        Csuper.m30700throw(base, "base");
        Path bn = base.normalize();
        Path r = path.normalize();
        Path rn = bn.relativize(r);
        Csuper.m30696super(bn, "bn");
        int nameCount = bn.getNameCount();
        Csuper.m30696super(r, "pn");
        int iMin = Math.min(nameCount, r.getNameCount());
        for (int i = 0; i < iMin; i++) {
            Path name = bn.getName(i);
            Path path2 = f27864if;
            if (!Csuper.m30676else(name, path2)) {
                break;
            }
            if (!Csuper.m30676else(r.getName(i), path2)) {
                throw new IllegalArgumentException("Unable to compute relative path");
            }
        }
        if (!(!Csuper.m30676else(r, bn)) || !Csuper.m30676else(bn, f27862do)) {
            String string = rn.toString();
            Csuper.m30696super(rn, "rn");
            FileSystem fileSystem = rn.getFileSystem();
            Csuper.m30696super(fileSystem, "rn.fileSystem");
            String separator = fileSystem.getSeparator();
            Csuper.m30696super(separator, "rn.fileSystem.separator");
            if (Creturn.W0(string, separator, false, 2, null)) {
                FileSystem fileSystem2 = rn.getFileSystem();
                FileSystem fileSystem3 = rn.getFileSystem();
                Csuper.m30696super(fileSystem3, "rn.fileSystem");
                r = fileSystem2.getPath(Cthrows.J5(string, fileSystem3.getSeparator().length()), new String[0]);
            } else {
                r = rn;
            }
        }
        Csuper.m30696super(r, "r");
        return r;
    }
}
