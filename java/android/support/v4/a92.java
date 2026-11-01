package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0001*\u0006\b\u0001\u0010\u0002 \u0001*\u0006\b\u0002\u0010\u0003 \u00012\u00060\u0004j\u0002`\u0005B\u001f\u0012\u0006\u0010\f\u001a\u00028\u0000\u0012\u0006\u0010\r\u001a\u00028\u0001\u0012\u0006\u0010\u000e\u001a\u00028\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00028\u0000HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00028\u0001HÆ\u0003¢\u0006\u0004\b\n\u0010\tJ\u0010\u0010\u000b\u001a\u00028\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\tJ@\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\b\b\u0002\u0010\f\u001a\u00028\u00002\b\b\u0002\u0010\r\u001a\u00028\u00012\b\b\u0002\u0010\u000e\u001a\u00028\u0002HÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0012\u001a\u00020\u0011HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013HÖ\u0003R\u0019\u0010\f\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u0018\u0010\tR\u0019\u0010\r\u001a\u00028\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0017\u001a\u0004\b\u0019\u0010\tR\u0019\u0010\u000e\u001a\u00028\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0017\u001a\u0004\b\u001a\u0010\t¨\u0006\u001d"}, d2 = {"Landroid/support/v4/a92;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "toString", "component1", "()Ljava/lang/Object;", "component2", "component3", "first", "second", "third", "copy", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/a92;", "", "hashCode", "", "other", "", "equals", "Ljava/lang/Object;", "getFirst", "getSecond", "getThird", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class a92<A, B, C> implements Serializable {
    private final A first;
    private final B second;
    private final C third;

    public a92(A a, B b, C c) {
        this.first = a;
        this.second = b;
        this.third = c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ a92 copy$default(a92 a92Var, Object obj, Object obj2, Object obj3, int i, Object obj4) {
        if ((i & 1) != 0) {
            obj = a92Var.first;
        }
        if ((i & 2) != 0) {
            obj2 = a92Var.second;
        }
        if ((i & 4) != 0) {
            obj3 = a92Var.third;
        }
        return a92Var.copy(obj, obj2, obj3);
    }

    public final A component1() {
        return this.first;
    }

    public final B component2() {
        return this.second;
    }

    public final C component3() {
        return this.third;
    }

    @m41
    public final a92<A, B, C> copy(A a, B b, C c) {
        return new a92<>(a, b, c);
    }

    public boolean equals(@z41 Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a92)) {
            return false;
        }
        a92 a92Var = (a92) obj;
        return Csuper.m30676else(this.first, a92Var.first) && Csuper.m30676else(this.second, a92Var.second) && Csuper.m30676else(this.third, a92Var.third);
    }

    public final A getFirst() {
        return this.first;
    }

    public final B getSecond() {
        return this.second;
    }

    public final C getThird() {
        return this.third;
    }

    public int hashCode() {
        A a = this.first;
        int iHashCode = (a != null ? a.hashCode() : 0) * 31;
        B b = this.second;
        int iHashCode2 = (iHashCode + (b != null ? b.hashCode() : 0)) * 31;
        C c = this.third;
        return iHashCode2 + (c != null ? c.hashCode() : 0);
    }

    @m41
    public String toString() {
        return '(' + this.first + ", " + this.second + ", " + this.third + ')';
    }
}
