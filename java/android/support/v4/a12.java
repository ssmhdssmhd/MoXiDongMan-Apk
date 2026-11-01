package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class a12 {

    /* renamed from: do, reason: not valid java name */
    private final ArrayList<Object> f14do;

    public a12(int i) {
        this.f14do = new ArrayList<>(i);
    }

    /* renamed from: do, reason: not valid java name */
    public void m13do(Object obj) {
        this.f14do.add(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public int m14for() {
        return this.f14do.size();
    }

    /* renamed from: if, reason: not valid java name */
    public void m15if(Object obj) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length > 0) {
                ArrayList<Object> arrayList = this.f14do;
                arrayList.ensureCapacity(arrayList.size() + objArr.length);
                Collections.addAll(this.f14do, objArr);
                return;
            }
            return;
        }
        if (obj instanceof Collection) {
            this.f14do.addAll((Collection) obj);
            return;
        }
        if (obj instanceof Iterable) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                this.f14do.add(it.next());
            }
            return;
        }
        if (obj instanceof Iterator) {
            Iterator it2 = (Iterator) obj;
            while (it2.hasNext()) {
                this.f14do.add(it2.next());
            }
        } else {
            throw new UnsupportedOperationException("Don't know how to spread " + obj.getClass());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Object[] m16new(Object[] objArr) {
        return this.f14do.toArray(objArr);
    }
}
