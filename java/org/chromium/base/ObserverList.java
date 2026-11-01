package org.chromium.base;

import android.support.v4.p41;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

@p41
/* loaded from: classes3.dex */
public class ObserverList<E> implements Iterable<E> {

    /* renamed from: try, reason: not valid java name */
    public static final /* synthetic */ boolean f33037try = false;

    /* renamed from: do, reason: not valid java name */
    public final List<E> f33038do = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    private int f33039for;

    /* renamed from: if, reason: not valid java name */
    private int f33040if;

    /* renamed from: new, reason: not valid java name */
    private boolean f33041new;

    public interface RewindableIterator<E> extends Iterator<E> {
        void rewind();
    }

    /* renamed from: org.chromium.base.ObserverList$if, reason: invalid class name */
    public class Cif implements RewindableIterator<E> {

        /* renamed from: do, reason: not valid java name */
        private int f33042do;

        /* renamed from: for, reason: not valid java name */
        private boolean f33043for;

        /* renamed from: if, reason: not valid java name */
        private int f33044if;

        /* renamed from: do, reason: not valid java name */
        private void m36879do() {
            if (this.f33043for) {
                return;
            }
            this.f33043for = true;
            ObserverList.this.m36871goto();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i = this.f33044if;
            while (i < this.f33042do && ObserverList.this.m36874this(i) == null) {
                i++;
            }
            if (i < this.f33042do) {
                return true;
            }
            m36879do();
            return false;
        }

        @Override // java.util.Iterator
        public E next() {
            while (true) {
                int i = this.f33044if;
                if (i >= this.f33042do || ObserverList.this.m36874this(i) != null) {
                    break;
                }
                this.f33044if++;
            }
            int i2 = this.f33044if;
            if (i2 >= this.f33042do) {
                m36879do();
                throw new NoSuchElementException();
            }
            ObserverList observerList = ObserverList.this;
            this.f33044if = i2 + 1;
            return (E) observerList.m36874this(i2);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // org.chromium.base.ObserverList.RewindableIterator
        public void rewind() {
            m36879do();
            ObserverList.this.m36867catch();
            this.f33042do = ObserverList.this.m36866case();
            this.f33043for = false;
            this.f33044if = 0;
        }

        private Cif() {
            ObserverList.this.m36867catch();
            this.f33042do = ObserverList.this.m36866case();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public int m36866case() {
        return this.f33038do.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public void m36867catch() {
        this.f33040if++;
    }

    /* renamed from: else, reason: not valid java name */
    private void m36869else() {
        for (int size = this.f33038do.size() - 1; size >= 0; size--) {
            if (this.f33038do.get(size) == null) {
                this.f33038do.remove(size);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public void m36871goto() {
        int i = this.f33040if - 1;
        this.f33040if = i;
        if (i <= 0 && this.f33041new) {
            this.f33041new = false;
            m36869else();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public E m36874this(int i) {
        return this.f33038do.get(i);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m36875break(E e) {
        return this.f33038do.contains(e);
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m36876class(E e) {
        int iIndexOf;
        if (e == null || (iIndexOf = this.f33038do.indexOf(e)) == -1) {
            return false;
        }
        if (this.f33040if == 0) {
            this.f33038do.remove(iIndexOf);
        } else {
            this.f33041new = true;
            this.f33038do.set(iIndexOf, null);
        }
        this.f33039for--;
        return true;
    }

    public void clear() {
        this.f33039for = 0;
        if (this.f33040if == 0) {
            this.f33038do.clear();
            return;
        }
        int size = this.f33038do.size();
        this.f33041new |= size != 0;
        for (int i = 0; i < size; i++) {
            this.f33038do.set(i, null);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public RewindableIterator<E> m36877const() {
        return new Cif();
    }

    public boolean isEmpty() {
        return this.f33039for == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        return new Cif();
    }

    public int size() {
        return this.f33039for;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m36878try(E e) {
        if (e == null || this.f33038do.contains(e)) {
            return false;
        }
        this.f33038do.add(e);
        this.f33039for++;
        return true;
    }
}
