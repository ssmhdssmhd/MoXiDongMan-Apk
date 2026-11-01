package android.support.v4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.Subscription;

/* loaded from: classes4.dex */
public final class d32 implements Subscription {

    /* renamed from: do, reason: not valid java name */
    private List<Subscription> f927do;

    /* renamed from: if, reason: not valid java name */
    private volatile boolean f928if;

    public d32() {
    }

    /* renamed from: try, reason: not valid java name */
    private static void m1131try(Collection<Subscription> collection) {
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
    public void m1132do(Subscription subscription) {
        if (subscription.isUnsubscribed()) {
            return;
        }
        if (!this.f928if) {
            synchronized (this) {
                if (!this.f928if) {
                    List linkedList = this.f927do;
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                        this.f927do = linkedList;
                    }
                    linkedList.add(subscription);
                    return;
                }
            }
        }
        subscription.unsubscribe();
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m1133for() {
        List<Subscription> list;
        boolean z = false;
        if (this.f928if) {
            return false;
        }
        synchronized (this) {
            if (!this.f928if && (list = this.f927do) != null && !list.isEmpty()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: if, reason: not valid java name */
    public void m1134if() {
        List<Subscription> list;
        if (this.f928if) {
            return;
        }
        synchronized (this) {
            list = this.f927do;
            this.f927do = null;
        }
        m1131try(list);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f928if;
    }

    /* renamed from: new, reason: not valid java name */
    public void m1135new(Subscription subscription) {
        if (this.f928if) {
            return;
        }
        synchronized (this) {
            List<Subscription> list = this.f927do;
            if (!this.f928if && list != null) {
                boolean zRemove = list.remove(subscription);
                if (zRemove) {
                    subscription.unsubscribe();
                }
            }
        }
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        if (this.f928if) {
            return;
        }
        synchronized (this) {
            if (this.f928if) {
                return;
            }
            this.f928if = true;
            List<Subscription> list = this.f927do;
            this.f927do = null;
            m1131try(list);
        }
    }

    public d32(Subscription... subscriptionArr) {
        this.f927do = new LinkedList(Arrays.asList(subscriptionArr));
    }

    public d32(Subscription subscription) {
        LinkedList linkedList = new LinkedList();
        this.f927do = linkedList;
        linkedList.add(subscription);
    }
}
