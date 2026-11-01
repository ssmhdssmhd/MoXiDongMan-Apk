package kotlin.io;

import android.support.v4.m41;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0096\u0002R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lkotlin/io/catch;", "Lkotlin/sequences/Sequence;", "", "", "iterator", "Ljava/io/BufferedReader;", "do", "Ljava/io/BufferedReader;", "reader", "<init>", "(Ljava/io/BufferedReader;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.io.catch, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccatch implements Sequence<String> {

    /* renamed from: do, reason: not valid java name */
    private final BufferedReader f27836do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\b\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\t\u0010\u0005\u001a\u00020\u0002H\u0096\u0002R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"kotlin/io/catch$do", "", "", "", "hasNext", "do", "Ljava/lang/String;", "nextValue", "if", "Z", ES6Iterator.DONE_PROPERTY, "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.io.catch$do, reason: invalid class name */
    public static final class Cdo implements Iterator<String>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        private String f27837do;

        /* renamed from: if, reason: not valid java name */
        private boolean f27839if;

        public Cdo() {
        }

        @Override // java.util.Iterator
        @m41
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.f27837do;
            this.f27837do = null;
            Csuper.m30672const(str);
            return str;
        }

        @Override // java.util.Iterator
        public boolean hasNext() throws IOException {
            if (this.f27837do == null && !this.f27839if) {
                String line = Ccatch.this.f27836do.readLine();
                this.f27837do = line;
                if (line == null) {
                    this.f27839if = true;
                }
            }
            return this.f27837do != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public Ccatch(@m41 BufferedReader reader) {
        Csuper.m30700throw(reader, "reader");
        this.f27836do = reader;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<String> iterator() {
        return new Cdo();
    }
}
