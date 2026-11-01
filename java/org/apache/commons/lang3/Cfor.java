package org.apache.commons.lang3;

import android.support.v4.hy1;
import java.io.Serializable;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: org.apache.commons.lang3.for, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cfor implements Iterable<Character>, Serializable {
    private static final long serialVersionUID = 8270183163158333422L;

    /* renamed from: do, reason: not valid java name */
    private transient String f28711do;
    private final char end;
    private final boolean negated;
    private final char start;

    /* renamed from: org.apache.commons.lang3.for$if, reason: invalid class name */
    public static class Cif implements Iterator<Character> {

        /* renamed from: do, reason: not valid java name */
        private char f28712do;

        /* renamed from: for, reason: not valid java name */
        private boolean f28713for;

        /* renamed from: if, reason: not valid java name */
        private final Cfor f28714if;

        /* renamed from: if, reason: not valid java name */
        private void m32370if() {
            if (!this.f28714if.negated) {
                if (this.f28712do < this.f28714if.end) {
                    this.f28712do = (char) (this.f28712do + 1);
                    return;
                } else {
                    this.f28713for = false;
                    return;
                }
            }
            char c = this.f28712do;
            if (c == 65535) {
                this.f28713for = false;
                return;
            }
            if (c + 1 != this.f28714if.start) {
                this.f28712do = (char) (this.f28712do + 1);
            } else if (this.f28714if.end == 65535) {
                this.f28713for = false;
            } else {
                this.f28712do = (char) (this.f28714if.end + 1);
            }
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Character next() {
            if (!this.f28713for) {
                throw new NoSuchElementException();
            }
            char c = this.f28712do;
            m32370if();
            return Character.valueOf(c);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f28713for;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private Cif(Cfor cfor) {
            this.f28714if = cfor;
            this.f28713for = true;
            if (!cfor.negated) {
                this.f28712do = cfor.start;
                return;
            }
            if (cfor.start != 0) {
                this.f28712do = (char) 0;
            } else if (cfor.end == 65535) {
                this.f28713for = false;
            } else {
                this.f28712do = (char) (cfor.end + 1);
            }
        }
    }

    private Cfor(char c, char c2, boolean z) {
        if (c > c2) {
            c2 = c;
            c = c2;
        }
        this.start = c;
        this.end = c2;
        this.negated = z;
    }

    public static Cfor is(char c) {
        return new Cfor(c, c, false);
    }

    public static Cfor isIn(char c, char c2) {
        return new Cfor(c, c2, false);
    }

    public static Cfor isNot(char c) {
        return new Cfor(c, c, true);
    }

    public static Cfor isNotIn(char c, char c2) {
        return new Cfor(c, c2, true);
    }

    public boolean contains(char c) {
        return (c >= this.start && c <= this.end) != this.negated;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cfor)) {
            return false;
        }
        Cfor cfor = (Cfor) obj;
        return this.start == cfor.start && this.end == cfor.end && this.negated == cfor.negated;
    }

    public char getEnd() {
        return this.end;
    }

    public char getStart() {
        return this.start;
    }

    public int hashCode() {
        return this.start + 'S' + (this.end * 7) + (this.negated ? 1 : 0);
    }

    public boolean isNegated() {
        return this.negated;
    }

    @Override // java.lang.Iterable
    public Iterator<Character> iterator() {
        return new Cif();
    }

    public String toString() {
        if (this.f28711do == null) {
            StringBuilder sb = new StringBuilder(4);
            if (isNegated()) {
                sb.append('^');
            }
            sb.append(this.start);
            if (this.start != this.end) {
                sb.append(hy1.f2561for);
                sb.append(this.end);
            }
            this.f28711do = sb.toString();
        }
        return this.f28711do;
    }

    public boolean contains(Cfor cfor) {
        if (cfor != null) {
            return this.negated ? cfor.negated ? this.start >= cfor.start && this.end <= cfor.end : cfor.end < this.start || cfor.start > this.end : cfor.negated ? this.start == 0 && this.end == 65535 : this.start <= cfor.start && this.end >= cfor.end;
        }
        throw new IllegalArgumentException("The Range must not be null");
    }
}
