package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.o8;
import com.google.common.base.Function;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.Queue;

@ki0
@o8
@Deprecated
/* loaded from: classes2.dex */
public abstract class v3<T> {

    /* renamed from: com.google.common.collect.v3$case, reason: invalid class name */
    public final class Ccase extends com.google.common.collect.Cfor<T> {

        /* renamed from: for, reason: not valid java name */
        private final ArrayDeque<Celse<T>> f14784for;

        public Ccase(T t) {
            ArrayDeque<Celse<T>> arrayDeque = new ArrayDeque<>();
            this.f14784for = arrayDeque;
            arrayDeque.addLast(m16456new(t));
        }

        /* renamed from: new, reason: not valid java name */
        private Celse<T> m16456new(T t) {
            return new Celse<>(t, v3.this.mo16453if(t).iterator());
        }

        @Override // com.google.common.collect.Cfor
        /* renamed from: do */
        public T mo15521do() {
            while (!this.f14784for.isEmpty()) {
                Celse<T> last = this.f14784for.getLast();
                if (!last.f14788if.hasNext()) {
                    this.f14784for.removeLast();
                    return last.f14787do;
                }
                this.f14784for.addLast(m16456new(last.f14788if.next()));
            }
            return m15805if();
        }
    }

    /* renamed from: com.google.common.collect.v3$do, reason: invalid class name */
    public static class Cdo extends v3<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function f14786do;

        public Cdo(Function function) {
            this.f14786do = function;
        }

        @Override // com.google.common.collect.v3
        /* renamed from: if */
        public Iterable<T> mo16453if(T t) {
            return (Iterable) this.f14786do.apply(t);
        }
    }

    /* renamed from: com.google.common.collect.v3$else, reason: invalid class name */
    public static final class Celse<T> {

        /* renamed from: do, reason: not valid java name */
        public final T f14787do;

        /* renamed from: if, reason: not valid java name */
        public final Iterator<T> f14788if;

        public Celse(T t, Iterator<T> it) {
            this.f14787do = (T) af1.m205continue(t);
            this.f14788if = (Iterator) af1.m205continue(it);
        }
    }

    /* renamed from: com.google.common.collect.v3$for, reason: invalid class name */
    public class Cfor extends t<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f14790if;

        public Cfor(Object obj) {
            this.f14790if = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Iterable
        /* renamed from: instanceof, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<T> iterator() {
            return v3.this.m16452for(this.f14790if);
        }
    }

    /* renamed from: com.google.common.collect.v3$goto, reason: invalid class name */
    public final class Cgoto extends ac2<T> {

        /* renamed from: do, reason: not valid java name */
        private final Deque<Iterator<T>> f14791do;

        public Cgoto(T t) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f14791do = arrayDeque;
            arrayDeque.addLast(s1.l(af1.m205continue(t)));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f14791do.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            Iterator<T> last = this.f14791do.getLast();
            T t = (T) af1.m205continue(last.next());
            if (!last.hasNext()) {
                this.f14791do.removeLast();
            }
            Iterator<T> it = v3.this.mo16453if(t).iterator();
            if (it.hasNext()) {
                this.f14791do.addLast(it);
            }
            return t;
        }
    }

    /* renamed from: com.google.common.collect.v3$if, reason: invalid class name */
    public class Cif extends t<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f14794if;

        public Cif(Object obj) {
            this.f14794if = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Iterable
        /* renamed from: instanceof, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<T> iterator() {
            return v3.this.m16455try(this.f14794if);
        }
    }

    /* renamed from: com.google.common.collect.v3$new, reason: invalid class name */
    public class Cnew extends t<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f14796if;

        public Cnew(Object obj) {
            this.f14796if = obj;
        }

        @Override // java.lang.Iterable
        /* renamed from: instanceof, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<T> iterator() {
            return new Ctry(this.f14796if);
        }
    }

    /* renamed from: com.google.common.collect.v3$try, reason: invalid class name */
    public final class Ctry extends ac2<T> implements PeekingIterator<T> {

        /* renamed from: do, reason: not valid java name */
        private final Queue<T> f14797do;

        public Ctry(T t) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f14797do = arrayDeque;
            arrayDeque.add(t);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f14797do.isEmpty();
        }

        @Override // java.util.Iterator, com.google.common.collect.PeekingIterator
        public T next() {
            T tRemove = this.f14797do.remove();
            r1.m16182do(this.f14797do, v3.this.mo16453if(tRemove));
            return tRemove;
        }

        @Override // com.google.common.collect.PeekingIterator
        public T peek() {
            return this.f14797do.element();
        }
    }

    @Deprecated
    /* renamed from: else, reason: not valid java name */
    public static <T> v3<T> m16449else(Function<T, ? extends Iterable<T>> function) {
        af1.m205continue(function);
        return new Cdo(function);
    }

    @Deprecated
    /* renamed from: case, reason: not valid java name */
    public final t<T> m16450case(T t) {
        af1.m205continue(t);
        return new Cif(t);
    }

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public final t<T> m16451do(T t) {
        af1.m205continue(t);
        return new Cnew(t);
    }

    /* renamed from: for, reason: not valid java name */
    public ac2<T> m16452for(T t) {
        return new Ccase(t);
    }

    /* renamed from: if, reason: not valid java name */
    public abstract Iterable<T> mo16453if(T t);

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public final t<T> m16454new(T t) {
        af1.m205continue(t);
        return new Cfor(t);
    }

    /* renamed from: try, reason: not valid java name */
    public ac2<T> m16455try(T t) {
        return new Cgoto(t);
    }
}
