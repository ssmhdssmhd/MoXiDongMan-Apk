package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00028\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0004\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0005\u001a\u00028\u0000HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J*\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00028\u0000HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÖ\u0003R\u0019\u0010\u0007\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0006¨\u0006\u0018"}, d2 = {"Landroid/support/v4/km0;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "do", "if", "()Ljava/lang/Object;", "index", ES6Iterator.VALUE_PROPERTY, "for", "(ILjava/lang/Object;)Landroid/support/v4/km0;", "", "toString", "hashCode", "other", "", "equals", OptRuntime.GeneratorState.resumptionPoint_TYPE, "try", "()I", "Ljava/lang/Object;", "case", "<init>", "(ILjava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class km0<T> {

    /* renamed from: do, reason: not valid java name */
    private final int f3420do;

    /* renamed from: if, reason: not valid java name */
    private final T f3421if;

    public km0(int i, T t) {
        this.f3420do = i;
        this.f3421if = t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ km0 m4436new(km0 km0Var, int i, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            i = km0Var.f3420do;
        }
        if ((i2 & 2) != 0) {
            obj = km0Var.f3421if;
        }
        return km0Var.m4439for(i, obj);
    }

    /* renamed from: case, reason: not valid java name */
    public final T m4437case() {
        return this.f3421if;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m4438do() {
        return this.f3420do;
    }

    public boolean equals(@z41 Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof km0)) {
            return false;
        }
        km0 km0Var = (km0) obj;
        return this.f3420do == km0Var.f3420do && Csuper.m30676else(this.f3421if, km0Var.f3421if);
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public final km0<T> m4439for(int i, T t) {
        return new km0<>(i, t);
    }

    public int hashCode() {
        int i = this.f3420do * 31;
        T t = this.f3421if;
        return i + (t != null ? t.hashCode() : 0);
    }

    /* renamed from: if, reason: not valid java name */
    public final T m4440if() {
        return this.f3421if;
    }

    @m41
    public String toString() {
        return "IndexedValue(index=" + this.f3420do + ", value=" + this.f3421if + ")";
    }

    /* renamed from: try, reason: not valid java name */
    public final int m4441try() {
        return this.f3420do;
    }
}
