package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0001*\u0006\b\u0001\u0010\u0002 \u00012\u00060\u0003j\u0002`\u0004B\u0017\u0012\u0006\u0010\n\u001a\u00028\u0000\u0012\u0006\u0010\u000b\u001a\u00028\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00028\u0000HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00028\u0001HÆ\u0003¢\u0006\u0004\b\t\u0010\bJ0\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\n\u001a\u00028\u00002\b\b\u0002\u0010\u000b\u001a\u00028\u0001HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003R\u0019\u0010\n\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\u0015\u0010\bR\u0019\u0010\u000b\u001a\u00028\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0016\u0010\b¨\u0006\u0019"}, d2 = {"Landroid/support/v4/qb1;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "toString", "component1", "()Ljava/lang/Object;", "component2", "first", "second", "copy", "(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/qb1;", "", "hashCode", "", "other", "", "equals", "Ljava/lang/Object;", "getFirst", "getSecond", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class qb1<A, B> implements Serializable {
    private final A first;
    private final B second;

    public qb1(A a, B b) {
        this.first = a;
        this.second = b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ qb1 copy$default(qb1 qb1Var, Object obj, Object obj2, int i, Object obj3) {
        if ((i & 1) != 0) {
            obj = qb1Var.first;
        }
        if ((i & 2) != 0) {
            obj2 = qb1Var.second;
        }
        return qb1Var.copy(obj, obj2);
    }

    public final A component1() {
        return this.first;
    }

    public final B component2() {
        return this.second;
    }

    @m41
    public final qb1<A, B> copy(A a, B b) {
        return new qb1<>(a, b);
    }

    public boolean equals(@z41 Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qb1)) {
            return false;
        }
        qb1 qb1Var = (qb1) obj;
        return Csuper.m30676else(this.first, qb1Var.first) && Csuper.m30676else(this.second, qb1Var.second);
    }

    public final A getFirst() {
        return this.first;
    }

    public final B getSecond() {
        return this.second;
    }

    public int hashCode() {
        A a = this.first;
        int iHashCode = (a != null ? a.hashCode() : 0) * 31;
        B b = this.second;
        return iHashCode + (b != null ? b.hashCode() : 0);
    }

    @m41
    public String toString() {
        return '(' + this.first + ", " + this.second + ')';
    }
}
