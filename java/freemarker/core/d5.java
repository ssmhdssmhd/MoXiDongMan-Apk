package freemarker.core;

import android.support.v4.xl2;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class d5<E> extends xl2<E> {

    /* renamed from: do, reason: not valid java name */
    private final Set<E> f23606do;

    /* renamed from: if, reason: not valid java name */
    private final Set<E> f23607if;

    /* renamed from: freemarker.core.d5$if, reason: invalid class name */
    public class Cif implements Iterator<E> {

        /* renamed from: do, reason: not valid java name */
        private Iterator<E> f23608do;

        /* renamed from: for, reason: not valid java name */
        private boolean f23609for;

        /* renamed from: if, reason: not valid java name */
        private Iterator<E> f23610if;

        private Cif() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!this.f23609for) {
                if (this.f23608do == null) {
                    this.f23608do = d5.this.f23606do.iterator();
                }
                if (this.f23608do.hasNext()) {
                    return true;
                }
                this.f23610if = d5.this.f23607if.iterator();
                this.f23608do = null;
                this.f23609for = true;
            }
            return this.f23610if.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (!this.f23609for) {
                if (this.f23608do == null) {
                    this.f23608do = d5.this.f23606do.iterator();
                }
                if (this.f23608do.hasNext()) {
                    return this.f23608do.next();
                }
                this.f23610if = d5.this.f23607if.iterator();
                this.f23608do = null;
                this.f23609for = true;
            }
            return this.f23610if.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public d5(Set<E> set, Set<E> set2) {
        this.f23606do = set;
        this.f23607if = set2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f23606do.contains(obj) || this.f23607if.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new Cif();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f23606do.size() + this.f23607if.size();
    }
}
