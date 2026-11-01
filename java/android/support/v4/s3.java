package android.support.v4;

import java.util.Comparator;

/* loaded from: classes3.dex */
public class s3 implements Comparator<vy1> {
    @Override // java.util.Comparator
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public int compare(vy1 vy1Var, vy1 vy1Var2) {
        double dM9003if = vy1Var.m9003if();
        double dM9003if2 = vy1Var2.m9003if();
        if (dM9003if == dM9003if2) {
            return 0;
        }
        return dM9003if < dM9003if2 ? -1 : 1;
    }
}
