package android.support.v4;

import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class vz0<T> {

    /* renamed from: do, reason: not valid java name */
    public final ArrayList<T> f7364do = new ArrayList<>();

    /* renamed from: do, reason: not valid java name */
    private void m9004do(T t) {
        Objects.requireNonNull(t);
    }

    /* renamed from: for, reason: not valid java name */
    public void m9005for(T t) {
        m9004do(t);
        this.f7364do.add(t);
    }

    /* renamed from: if */
    public abstract void mo970if(Object... objArr);

    /* renamed from: new, reason: not valid java name */
    public void m9006new(T t) {
        m9004do(t);
        this.f7364do.remove(t);
    }

    /* renamed from: try, reason: not valid java name */
    public void m9007try() {
        ArrayList<T> arrayList = this.f7364do;
        if (arrayList != null) {
            arrayList.clear();
        }
    }
}
