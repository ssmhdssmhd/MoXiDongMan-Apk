package android.support.v4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import rx.Subscription;

/* loaded from: classes4.dex */
public final class dq implements Subscription {

    /* renamed from: do, reason: not valid java name */
    private Set<Subscription> f1104do;

    /* renamed from: if, reason: not valid java name */
    private volatile boolean f1105if;

    public dq() {
    }

    /* renamed from: case, reason: not valid java name */
    private static void m1487case(Collection<Subscription> collection) {
        if (collection == null) {
            return;
        }
        ArrayList arrayList = null;
        Iterator<Subscription> it = collection.iterator();
        while (it.hasNext()) {
            try {
                it.next().unsubscribe();
            } catch (Throwable th) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
            }
        }
        s80.m7299new(arrayList);
    }

    /* renamed from: do, reason: not valid java name */
    public void m1488do(Subscription subscription) {
        if (subscription.isUnsubscribed()) {
            return;
        }
        if (!this.f1105if) {
            synchronized (this) {
                if (!this.f1105if) {
                    if (this.f1104do == null) {
                        this.f1104do = new HashSet(4);
                    }
                    this.f1104do.add(subscription);
                    return;
                }
            }
        }
        subscription.unsubscribe();
    }

    /* renamed from: for, reason: not valid java name */
    public void m1489for() {
        Set<Subscription> set;
        if (this.f1105if) {
            return;
        }
        synchronized (this) {
            if (!this.f1105if && (set = this.f1104do) != null) {
                this.f1104do = null;
                m1487case(set);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m1490if(Subscription... subscriptionArr) {
        int i = 0;
        if (!this.f1105if) {
            synchronized (this) {
                if (!this.f1105if) {
                    if (this.f1104do == null) {
                        this.f1104do = new HashSet(subscriptionArr.length);
                    }
                    int length = subscriptionArr.length;
                    while (i < length) {
                        Subscription subscription = subscriptionArr[i];
                        if (!subscription.isUnsubscribed()) {
                            this.f1104do.add(subscription);
                        }
                        i++;
                    }
                    return;
                }
            }
        }
        int length2 = subscriptionArr.length;
        while (i < length2) {
            subscriptionArr[i].unsubscribe();
            i++;
        }
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f1105if;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m1491new() {
        Set<Subscription> set;
        boolean z = false;
        if (this.f1105if) {
            return false;
        }
        synchronized (this) {
            if (!this.f1105if && (set = this.f1104do) != null && !set.isEmpty()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: try, reason: not valid java name */
    public void m1492try(Subscription subscription) {
        Set<Subscription> set;
        if (this.f1105if) {
            return;
        }
        synchronized (this) {
            if (!this.f1105if && (set = this.f1104do) != null) {
                boolean zRemove = set.remove(subscription);
                if (zRemove) {
                    subscription.unsubscribe();
                }
            }
        }
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        if (this.f1105if) {
            return;
        }
        synchronized (this) {
            if (this.f1105if) {
                return;
            }
            this.f1105if = true;
            Set<Subscription> set = this.f1104do;
            this.f1104do = null;
            m1487case(set);
        }
    }

    public dq(Subscription... subscriptionArr) {
        this.f1104do = new HashSet(Arrays.asList(subscriptionArr));
    }
}
