package android.support.v4;

import java.io.File;
import java.util.List;
import kotlin.Cwhile;
import kotlin.collections.Cthrows;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\b\u0000\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\b¢\u0006\u0004\b\"\u0010#J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\t\u0010\u0007\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\bHÆ\u0003J#\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00052\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\bHÆ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0013\u0010\u0015\u001a\u00020\r8F@\u0006¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0018\u001a\u00020\u00118F@\u0006¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u001b\u001a\u00020\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\n\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Landroid/support/v4/ra0;", "", "", "beginIndex", "endIndex", "Ljava/io/File;", "break", "do", "", "if", "root", "segments", "for", "", "toString", "hashCode", "other", "", "equals", "case", "()Ljava/lang/String;", "rootName", "this", "()Z", "isRooted", "goto", "()I", "size", "Ljava/io/File;", "try", "()Ljava/io/File;", "Ljava/util/List;", "else", "()Ljava/util/List;", "<init>", "(Ljava/io/File;Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ra0 {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final File f5724do;

    /* renamed from: if, reason: not valid java name */
    @m41
    private final List<File> f5725if;

    /* JADX WARN: Multi-variable type inference failed */
    public ra0(@m41 File root, @m41 List<? extends File> segments) {
        Csuper.m30700throw(root, "root");
        Csuper.m30700throw(segments, "segments");
        this.f5724do = root;
        this.f5725if = segments;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ ra0 m6860new(ra0 ra0Var, File file, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            file = ra0Var.f5724do;
        }
        if ((i & 2) != 0) {
            list = ra0Var.f5725if;
        }
        return ra0Var.m6865for(file, list);
    }

    @m41
    /* renamed from: break, reason: not valid java name */
    public final File m6861break(int i, int i2) {
        if (i < 0 || i > i2 || i2 > m6866goto()) {
            throw new IllegalArgumentException();
        }
        List<File> listSubList = this.f5725if.subList(i, i2);
        String str = File.separator;
        Csuper.m30696super(str, "File.separator");
        return new File(Cthrows.m2(listSubList, str, null, null, 0, null, null, 62, null));
    }

    @m41
    /* renamed from: case, reason: not valid java name */
    public final String m6862case() {
        String path = this.f5724do.getPath();
        Csuper.m30696super(path, "root.path");
        return path;
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public final File m6863do() {
        return this.f5724do;
    }

    @m41
    /* renamed from: else, reason: not valid java name */
    public final List<File> m6864else() {
        return this.f5725if;
    }

    public boolean equals(@z41 Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ra0)) {
            return false;
        }
        ra0 ra0Var = (ra0) obj;
        return Csuper.m30676else(this.f5724do, ra0Var.f5724do) && Csuper.m30676else(this.f5725if, ra0Var.f5725if);
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public final ra0 m6865for(@m41 File root, @m41 List<? extends File> segments) {
        Csuper.m30700throw(root, "root");
        Csuper.m30700throw(segments, "segments");
        return new ra0(root, segments);
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m6866goto() {
        return this.f5725if.size();
    }

    public int hashCode() {
        File file = this.f5724do;
        int iHashCode = (file != null ? file.hashCode() : 0) * 31;
        List<File> list = this.f5725if;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public final List<File> m6867if() {
        return this.f5725if;
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m6868this() {
        String path = this.f5724do.getPath();
        Csuper.m30696super(path, "root.path");
        return path.length() > 0;
    }

    @m41
    public String toString() {
        return "FilePathComponents(root=" + this.f5724do + ", segments=" + this.f5725if + ")";
    }

    @m41
    /* renamed from: try, reason: not valid java name */
    public final File m6869try() {
        return this.f5724do;
    }
}
