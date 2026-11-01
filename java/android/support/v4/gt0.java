package android.support.v4;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public class gt0 {

    /* renamed from: do, reason: not valid java name */
    public final int f2239do;

    /* renamed from: for, reason: not valid java name */
    public Object[] f2240for;

    /* renamed from: if, reason: not valid java name */
    public Object[] f2241if;

    /* renamed from: new, reason: not valid java name */
    public volatile int f2242new;

    /* renamed from: try, reason: not valid java name */
    public int f2243try;

    public gt0(int i) {
        this.f2239do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public void m2782do(Object obj) {
        if (this.f2242new == 0) {
            Object[] objArr = new Object[this.f2239do + 1];
            this.f2241if = objArr;
            this.f2240for = objArr;
            objArr[0] = obj;
            this.f2243try = 1;
            this.f2242new = 1;
            return;
        }
        int i = this.f2243try;
        int i2 = this.f2239do;
        if (i != i2) {
            this.f2240for[i] = obj;
            this.f2243try = i + 1;
            this.f2242new++;
        } else {
            Object[] objArr2 = new Object[i2 + 1];
            objArr2[0] = obj;
            this.f2240for[i2] = objArr2;
            this.f2240for = objArr2;
            this.f2243try = 1;
            this.f2242new++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public int m2783for() {
        return this.f2242new;
    }

    /* renamed from: if, reason: not valid java name */
    public Object[] m2784if() {
        return this.f2241if;
    }

    public String toString() {
        int i = this.f2239do;
        int i2 = this.f2242new;
        ArrayList arrayList = new ArrayList(i2 + 1);
        Object[] objArrM2784if = m2784if();
        int i3 = 0;
        while (true) {
            int i4 = 0;
            while (i3 < i2) {
                arrayList.add(objArrM2784if[i4]);
                i3++;
                i4++;
                if (i4 == i) {
                    break;
                }
            }
            return arrayList.toString();
            objArrM2784if = objArrM2784if[i];
        }
    }
}
