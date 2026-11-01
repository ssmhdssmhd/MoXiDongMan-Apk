package io.reactivex.internal.operators.single;

import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;

/* renamed from: io.reactivex.internal.operators.single.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cabstract {

    /* renamed from: io.reactivex.internal.operators.single.abstract$do, reason: invalid class name */
    public enum Cdo implements Callable<NoSuchElementException> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        public NoSuchElementException call() throws Exception {
            return new NoSuchElementException();
        }
    }

    /* renamed from: io.reactivex.internal.operators.single.abstract$for, reason: invalid class name */
    public static final class Cfor<T> implements Iterable<io.reactivex.Cfor<T>> {

        /* renamed from: do, reason: not valid java name */
        private final Iterable<? extends SingleSource<? extends T>> f27119do;

        public Cfor(Iterable<? extends SingleSource<? extends T>> iterable) {
            this.f27119do = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<io.reactivex.Cfor<T>> iterator() {
            return new Cnew(this.f27119do.iterator());
        }
    }

    /* renamed from: io.reactivex.internal.operators.single.abstract$if, reason: invalid class name */
    public enum Cif implements Function<SingleSource, Publisher> {
        INSTANCE;

        @Override // io.reactivex.functions.Function
        public Publisher apply(SingleSource singleSource) {
            return new Csynchronized(singleSource);
        }
    }

    /* renamed from: io.reactivex.internal.operators.single.abstract$new, reason: invalid class name */
    public static final class Cnew<T> implements Iterator<io.reactivex.Cfor<T>> {

        /* renamed from: do, reason: not valid java name */
        private final Iterator<? extends SingleSource<? extends T>> f27121do;

        public Cnew(Iterator<? extends SingleSource<? extends T>> it) {
            this.f27121do = it;
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public io.reactivex.Cfor<T> next() {
            return new Csynchronized(this.f27121do.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f27121do.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: io.reactivex.internal.operators.single.abstract$try, reason: invalid class name */
    public enum Ctry implements Function<SingleSource, io.reactivex.Cnew> {
        INSTANCE;

        @Override // io.reactivex.functions.Function
        public io.reactivex.Cnew apply(SingleSource singleSource) {
            return new a(singleSource);
        }
    }

    private Cabstract() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Callable<NoSuchElementException> m29654do() {
        return Cdo.INSTANCE;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Function<SingleSource<? extends T>, Publisher<? extends T>> m29655for() {
        return Cif.INSTANCE;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Iterable<? extends io.reactivex.Cfor<T>> m29656if(Iterable<? extends SingleSource<? extends T>> iterable) {
        return new Cfor(iterable);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Function<SingleSource<? extends T>, io.reactivex.Cnew<? extends T>> m29657new() {
        return Ctry.INSTANCE;
    }
}
