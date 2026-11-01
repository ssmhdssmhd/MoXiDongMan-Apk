package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.jp1;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.Cbreak;

/* renamed from: io.reactivex.subjects.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase<T> extends Cgoto<T> implements AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {

    /* renamed from: do, reason: not valid java name */
    public final Cgoto<T> f27561do;

    /* renamed from: for, reason: not valid java name */
    public AppendOnlyLinkedArrayList<Object> f27562for;

    /* renamed from: if, reason: not valid java name */
    public boolean f27563if;

    /* renamed from: new, reason: not valid java name */
    public volatile boolean f27564new;

    public Ccase(Cgoto<T> cgoto) {
        this.f27561do = cgoto;
    }

    /* renamed from: case, reason: not valid java name */
    public void m29806case() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        while (true) {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f27562for;
                if (appendOnlyLinkedArrayList == null) {
                    this.f27563if = false;
                    return;
                }
                this.f27562for = null;
            }
            appendOnlyLinkedArrayList.m29710new(this);
        }
    }

    @Override // io.reactivex.subjects.Cgoto
    @a51
    /* renamed from: do */
    public Throwable mo29793do() {
        return this.f27561do.mo29793do();
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: for */
    public boolean mo29796for() {
        return this.f27561do.mo29796for();
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: if */
    public boolean mo29797if() {
        return this.f27561do.mo29797if();
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: new */
    public boolean mo29800new() {
        return this.f27561do.mo29800new();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.f27564new) {
            return;
        }
        synchronized (this) {
            if (this.f27564new) {
                return;
            }
            this.f27564new = true;
            if (!this.f27563if) {
                this.f27563if = true;
                this.f27561do.onComplete();
                return;
            }
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f27562for;
            if (appendOnlyLinkedArrayList == null) {
                appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                this.f27562for = appendOnlyLinkedArrayList;
            }
            appendOnlyLinkedArrayList.m29708for(Cbreak.complete());
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (this.f27564new) {
            jp1.l(th);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f27564new) {
                this.f27564new = true;
                if (this.f27563if) {
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f27562for;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                        this.f27562for = appendOnlyLinkedArrayList;
                    }
                    appendOnlyLinkedArrayList.m29706case(Cbreak.error(th));
                    return;
                }
                this.f27563if = true;
                z = false;
            }
            if (z) {
                jp1.l(th);
            } else {
                this.f27561do.onError(th);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (this.f27564new) {
            return;
        }
        synchronized (this) {
            if (this.f27564new) {
                return;
            }
            if (!this.f27563if) {
                this.f27563if = true;
                this.f27561do.onNext(t);
                m29806case();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f27562for;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f27562for = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.m29708for(Cbreak.next(t));
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        boolean z = true;
        if (!this.f27564new) {
            synchronized (this) {
                if (!this.f27564new) {
                    if (this.f27563if) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f27562for;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                            this.f27562for = appendOnlyLinkedArrayList;
                        }
                        appendOnlyLinkedArrayList.m29708for(Cbreak.disposable(disposable));
                        return;
                    }
                    this.f27563if = true;
                    z = false;
                }
            }
        }
        if (z) {
            disposable.dispose();
        } else {
            this.f27561do.onSubscribe(disposable);
            m29806case();
        }
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f27561do.subscribe(observer);
    }

    @Override // io.reactivex.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate, io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        return Cbreak.acceptFull(obj, this.f27561do);
    }
}
