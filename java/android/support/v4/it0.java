package android.support.v4;

import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Cdo;
import io.reactivex.internal.disposables.DisposableContainer;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.util.Ccase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public final class it0 implements Disposable, DisposableContainer {

    /* renamed from: do, reason: not valid java name */
    public List<Disposable> f2876do;

    /* renamed from: if, reason: not valid java name */
    public volatile boolean f2877if;

    public it0() {
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public boolean add(Disposable disposable) {
        Cif.m29468else(disposable, "d is null");
        if (!this.f2877if) {
            synchronized (this) {
                if (!this.f2877if) {
                    List linkedList = this.f2876do;
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                        this.f2876do = linkedList;
                    }
                    linkedList.add(disposable);
                    return true;
                }
            }
        }
        disposable.dispose();
        return false;
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public boolean delete(Disposable disposable) {
        Cif.m29468else(disposable, "Disposable item is null");
        if (this.f2877if) {
            return false;
        }
        synchronized (this) {
            if (this.f2877if) {
                return false;
            }
            List<Disposable> list = this.f2876do;
            if (list != null && list.remove(disposable)) {
                return true;
            }
            return false;
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        if (this.f2877if) {
            return;
        }
        synchronized (this) {
            if (this.f2877if) {
                return;
            }
            this.f2877if = true;
            List<Disposable> list = this.f2876do;
            this.f2876do = null;
            m3574for(list);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m3573do(Disposable... disposableArr) {
        Cif.m29468else(disposableArr, "ds is null");
        if (!this.f2877if) {
            synchronized (this) {
                if (!this.f2877if) {
                    List linkedList = this.f2876do;
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                        this.f2876do = linkedList;
                    }
                    for (Disposable disposable : disposableArr) {
                        Cif.m29468else(disposable, "d is null");
                        linkedList.add(disposable);
                    }
                    return true;
                }
            }
        }
        for (Disposable disposable2 : disposableArr) {
            disposable2.dispose();
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public void m3574for(List<Disposable> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = null;
        Iterator<Disposable> it = list.iterator();
        while (it.hasNext()) {
            try {
                it.next().dispose();
            } catch (Throwable th) {
                t80.m7781if(th);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new Cdo(arrayList);
            }
            throw Ccase.m29712case((Throwable) arrayList.get(0));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m3575if() {
        if (this.f2877if) {
            return;
        }
        synchronized (this) {
            if (this.f2877if) {
                return;
            }
            List<Disposable> list = this.f2876do;
            this.f2876do = null;
            m3574for(list);
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f2877if;
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public boolean remove(Disposable disposable) {
        if (!delete(disposable)) {
            return false;
        }
        disposable.dispose();
        return true;
    }

    public it0(Disposable... disposableArr) {
        Cif.m29468else(disposableArr, "resources is null");
        this.f2876do = new LinkedList();
        for (Disposable disposable : disposableArr) {
            Cif.m29468else(disposable, "Disposable item is null");
            this.f2876do.add(disposable);
        }
    }

    public it0(Iterable<? extends Disposable> iterable) {
        Cif.m29468else(iterable, "resources is null");
        this.f2876do = new LinkedList();
        for (Disposable disposable : iterable) {
            Cif.m29468else(disposable, "Disposable item is null");
            this.f2876do.add(disposable);
        }
    }
}
