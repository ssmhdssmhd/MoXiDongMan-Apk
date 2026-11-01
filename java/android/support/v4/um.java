package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.bouncycastle.util.Iterable;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;

/* loaded from: classes3.dex */
public class um<T> implements Store<T>, Iterable<T> {

    /* renamed from: do, reason: not valid java name */
    private Collection<T> f6940do;

    public um(Collection<T> collection) {
        this.f6940do = new ArrayList(collection);
    }

    @Override // org.bouncycastle.util.Store
    public Collection<T> getMatches(Selector<T> selector) {
        if (selector == null) {
            return new ArrayList(this.f6940do);
        }
        ArrayList arrayList = new ArrayList();
        for (T t : this.f6940do) {
            if (selector.match(t)) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
    public Iterator<T> iterator() {
        return getMatches(null).iterator();
    }
}
