package android.support.v4;

import java.io.Serializable;

/* loaded from: classes3.dex */
public class ob1<A, B> implements Serializable {
    public final A a;
    public final B b;

    public ob1(A a, B b) {
        this.a = a;
        this.b = b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ob1)) {
            return false;
        }
        ob1 ob1Var = (ob1) obj;
        r51 r51Var = r51.f5664do;
        return r51Var.equals(this.a, ob1Var.a) && r51Var.equals(this.b, ob1Var.b);
    }

    public int hashCode() {
        return y01.m9664do(y01.m9663case(y01.m9663case(y01.m9665for(), this.a), this.b), 2);
    }

    public String toString() {
        return String.format("(%s, %s)", this.a, this.b);
    }
}
