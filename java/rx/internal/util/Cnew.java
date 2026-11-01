package rx.internal.util;

import java.util.ArrayList;
import java.util.List;

/* renamed from: rx.internal.util.new, reason: invalid class name */
/* loaded from: classes4.dex */
public class Cnew {

    /* renamed from: do, reason: not valid java name */
    public final int f35860do;

    /* renamed from: for, reason: not valid java name */
    public Object[] f35861for;

    /* renamed from: if, reason: not valid java name */
    public Object[] f35862if;

    /* renamed from: new, reason: not valid java name */
    public volatile int f35863new;

    /* renamed from: try, reason: not valid java name */
    public int f35864try;

    public Cnew(int i) {
        this.f35860do = i;
    }

    /* renamed from: case, reason: not valid java name */
    public Object[] m38921case() {
        return this.f35861for;
    }

    /* renamed from: do, reason: not valid java name */
    public void m38922do(Object obj) {
        if (this.f35863new == 0) {
            Object[] objArr = new Object[this.f35860do + 1];
            this.f35862if = objArr;
            this.f35861for = objArr;
            objArr[0] = obj;
            this.f35864try = 1;
            this.f35863new = 1;
            return;
        }
        int i = this.f35864try;
        int i2 = this.f35860do;
        if (i != i2) {
            this.f35861for[i] = obj;
            this.f35864try = i + 1;
            this.f35863new++;
        } else {
            Object[] objArr2 = new Object[i2 + 1];
            objArr2[0] = obj;
            this.f35861for[i2] = objArr2;
            this.f35861for = objArr2;
            this.f35864try = 1;
            this.f35863new++;
        }
    }

    /* renamed from: else, reason: not valid java name */
    List<Object> m38923else() {
        int i = this.f35860do;
        int i2 = this.f35863new;
        ArrayList arrayList = new ArrayList(i2 + 1);
        Object[] objArrM38924for = m38924for();
        int i3 = 0;
        while (true) {
            int i4 = 0;
            while (i3 < i2) {
                arrayList.add(objArrM38924for[i4]);
                i3++;
                i4++;
                if (i4 == i) {
                    break;
                }
            }
            return arrayList;
            objArrM38924for = objArrM38924for[i];
        }
    }

    /* renamed from: for, reason: not valid java name */
    public Object[] m38924for() {
        return this.f35862if;
    }

    /* renamed from: if, reason: not valid java name */
    public int m38925if() {
        return this.f35860do;
    }

    /* renamed from: new, reason: not valid java name */
    public int m38926new() {
        return this.f35864try;
    }

    public String toString() {
        return m38923else().toString();
    }

    /* renamed from: try, reason: not valid java name */
    public int m38927try() {
        return this.f35863new;
    }
}
