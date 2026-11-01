package android.support.v4;

import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Cdo;
import io.reactivex.internal.disposables.DisposableContainer;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.util.Ccase;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class cq implements Disposable, DisposableContainer {

    /* renamed from: do, reason: not valid java name */
    public r71<Disposable> f845do;

    /* renamed from: if, reason: not valid java name */
    public volatile boolean f846if;

    public cq() {
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public boolean add(@b41 Disposable disposable) {
        Cif.m29468else(disposable, "disposable is null");
        if (!this.f846if) {
            synchronized (this) {
                if (!this.f846if) {
                    r71<Disposable> r71Var = this.f845do;
                    if (r71Var == null) {
                        r71Var = new r71<>();
                        this.f845do = r71Var;
                    }
                    r71Var.m6800do(disposable);
                    return true;
                }
            }
        }
        disposable.dispose();
        return false;
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public boolean delete(@b41 Disposable disposable) {
        Cif.m29468else(disposable, "disposables is null");
        if (this.f846if) {
            return false;
        }
        synchronized (this) {
            if (this.f846if) {
                return false;
            }
            r71<Disposable> r71Var = this.f845do;
            if (r71Var != null && r71Var.m6804try(disposable)) {
                return true;
            }
            return false;
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        if (this.f846if) {
            return;
        }
        synchronized (this) {
            if (this.f846if) {
                return;
            }
            this.f846if = true;
            r71<Disposable> r71Var = this.f845do;
            this.f845do = null;
            m994for(r71Var);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m993do(@b41 Disposable... disposableArr) {
        Cif.m29468else(disposableArr, "disposables is null");
        if (!this.f846if) {
            synchronized (this) {
                if (!this.f846if) {
                    r71<Disposable> r71Var = this.f845do;
                    if (r71Var == null) {
                        r71Var = new r71<>(disposableArr.length + 1);
                        this.f845do = r71Var;
                    }
                    for (Disposable disposable : disposableArr) {
                        Cif.m29468else(disposable, "A Disposable in the disposables array is null");
                        r71Var.m6800do(disposable);
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
    public void m994for(r71<Disposable> r71Var) {
        if (r71Var == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : r71Var.m6802if()) {
            if (obj instanceof Disposable) {
                try {
                    ((Disposable) obj).dispose();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
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
    public void m995if() {
        if (this.f846if) {
            return;
        }
        synchronized (this) {
            if (this.f846if) {
                return;
            }
            r71<Disposable> r71Var = this.f845do;
            this.f845do = null;
            m994for(r71Var);
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f846if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m996new() {
        if (this.f846if) {
            return 0;
        }
        synchronized (this) {
            if (this.f846if) {
                return 0;
            }
            r71<Disposable> r71Var = this.f845do;
            return r71Var != null ? r71Var.m6801else() : 0;
        }
    }

    @Override // io.reactivex.internal.disposables.DisposableContainer
    public boolean remove(@b41 Disposable disposable) {
        if (!delete(disposable)) {
            return false;
        }
        disposable.dispose();
        return true;
    }

    public cq(@b41 Disposable... disposableArr) {
        Cif.m29468else(disposableArr, "disposables is null");
        this.f845do = new r71<>(disposableArr.length + 1);
        for (Disposable disposable : disposableArr) {
            Cif.m29468else(disposable, "A Disposable in the disposables array is null");
            this.f845do.m6800do(disposable);
        }
    }

    public cq(@b41 Iterable<? extends Disposable> iterable) {
        Cif.m29468else(iterable, "disposables is null");
        this.f845do = new r71<>();
        for (Disposable disposable : iterable) {
            Cif.m29468else(disposable, "A Disposable item in the disposables sequence is null");
            this.f845do.m6800do(disposable);
        }
    }
}
