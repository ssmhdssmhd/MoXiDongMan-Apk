package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.time.Cnew;
import org.mozilla.javascript.ES6Iterator;

@l90
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u001a\u0012\u0006\u0010\b\u001a\u00028\u0000\u0012\u0006\u0010\t\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00028\u0000HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0006\u001a\u00020\u0005HÆ\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\b\u001a\u00028\u00002\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÖ\u0003R\u0019\u0010\b\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0013\u001a\u0004\b\u0014\u0010\u0004R\u001f\u0010\t\u001a\u00020\u00058\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\u0016\u0010\u0007\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0019"}, d2 = {"Landroid/support/v4/f72;", ExifInterface.GPS_DIRECTION_TRUE, "", "do", "()Ljava/lang/Object;", "Lkotlin/time/new;", "if", "()J", ES6Iterator.VALUE_PROPERTY, "duration", "for", "(Ljava/lang/Object;J)Landroid/support/v4/f72;", "", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/Object;", "case", "J", "try", "<init>", "(Ljava/lang/Object;JLandroid/support/v4/rx;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class f72<T> {

    /* renamed from: do, reason: not valid java name */
    private final T f1710do;

    /* renamed from: if, reason: not valid java name */
    private final long f1711if;

    private f72(T t, long j) {
        this.f1710do = t;
        this.f1711if = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ f72 m2188new(f72 f72Var, Object obj, long j, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = f72Var.f1710do;
        }
        if ((i & 2) != 0) {
            j = f72Var.f1711if;
        }
        return f72Var.m2191for(obj, j);
    }

    /* renamed from: case, reason: not valid java name */
    public final T m2189case() {
        return this.f1710do;
    }

    /* renamed from: do, reason: not valid java name */
    public final T m2190do() {
        return this.f1710do;
    }

    public boolean equals(@z41 Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f72)) {
            return false;
        }
        f72 f72Var = (f72) obj;
        return Csuper.m30676else(this.f1710do, f72Var.f1710do) && this.f1711if == f72Var.f1711if;
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public final f72<T> m2191for(T t, long j) {
        return new f72<>(t, j);
    }

    public int hashCode() {
        T t = this.f1710do;
        int iHashCode = t != null ? t.hashCode() : 0;
        long j = this.f1711if;
        return (iHashCode * 31) + ((int) (j ^ (j >>> 32)));
    }

    /* renamed from: if, reason: not valid java name */
    public final long m2192if() {
        return this.f1711if;
    }

    @m41
    public String toString() {
        return "TimedValue(value=" + this.f1710do + ", duration=" + Cnew.K(this.f1711if) + ")";
    }

    /* renamed from: try, reason: not valid java name */
    public final long m2193try() {
        return this.f1711if;
    }

    public /* synthetic */ f72(Object obj, long j, rx rxVar) {
        this(obj, j);
    }
}
