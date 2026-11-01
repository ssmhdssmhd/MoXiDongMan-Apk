package com.google.common.graph;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fm0;
import android.support.v4.o8;
import com.google.common.base.Cthrow;
import com.google.common.collect.s1;
import java.util.Iterator;

@fm0(containerOf = {"N"})
@o8
/* renamed from: com.google.common.graph.import, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cimport<N> implements Iterable<N> {

    /* renamed from: do, reason: not valid java name */
    private final N f15043do;

    /* renamed from: if, reason: not valid java name */
    private final N f15044if;

    /* renamed from: com.google.common.graph.import$for, reason: invalid class name */
    public static final class Cfor<N> extends Cimport<N> {
        @Override // com.google.common.graph.Cimport
        /* renamed from: break */
        public N mo16769break() {
            throw new UnsupportedOperationException(Cthrows.f15106class);
        }

        @Override // com.google.common.graph.Cimport
        public boolean equals(@b51 Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cimport)) {
                return false;
            }
            Cimport cimport = (Cimport) obj;
            if (mo16772if() != cimport.mo16772if()) {
                return false;
            }
            return m16773new().equals(cimport.m16773new()) ? m16775try().equals(cimport.m16775try()) : m16773new().equals(cimport.m16775try()) && m16775try().equals(cimport.m16773new());
        }

        @Override // com.google.common.graph.Cimport
        public int hashCode() {
            return m16773new().hashCode() + m16775try().hashCode();
        }

        @Override // com.google.common.graph.Cimport
        /* renamed from: if */
        public boolean mo16772if() {
            return false;
        }

        @Override // com.google.common.graph.Cimport, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.graph.Cimport
        /* renamed from: this */
        public N mo16774this() {
            throw new UnsupportedOperationException(Cthrows.f15106class);
        }

        public String toString() {
            return "[" + m16773new() + ", " + m16775try() + "]";
        }

        private Cfor(N n, N n2) {
            super(n, n2);
        }
    }

    /* renamed from: com.google.common.graph.import$if, reason: invalid class name */
    public static final class Cif<N> extends Cimport<N> {
        @Override // com.google.common.graph.Cimport
        /* renamed from: break */
        public N mo16769break() {
            return m16775try();
        }

        @Override // com.google.common.graph.Cimport
        public boolean equals(@b51 Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cimport)) {
                return false;
            }
            Cimport cimport = (Cimport) obj;
            return mo16772if() == cimport.mo16772if() && mo16774this().equals(cimport.mo16774this()) && mo16769break().equals(cimport.mo16769break());
        }

        @Override // com.google.common.graph.Cimport
        public int hashCode() {
            return Cthrow.m15206if(mo16774this(), mo16769break());
        }

        @Override // com.google.common.graph.Cimport
        /* renamed from: if */
        public boolean mo16772if() {
            return true;
        }

        @Override // com.google.common.graph.Cimport, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.graph.Cimport
        /* renamed from: this */
        public N mo16774this() {
            return m16773new();
        }

        public String toString() {
            return "<" + mo16774this() + " -> " + mo16769break() + ">";
        }

        private Cif(N n, N n2) {
            super(n, n2);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static <N> Cimport<N> m16765case(Graph<?> graph, N n, N n2) {
        return graph.isDirected() ? m16768goto(n, n2) : m16766catch(n, n2);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <N> Cimport<N> m16766catch(N n, N n2) {
        return new Cfor(n2, n);
    }

    /* renamed from: else, reason: not valid java name */
    public static <N> Cimport<N> m16767else(Network<?, ?> network, N n, N n2) {
        return network.isDirected() ? m16768goto(n, n2) : m16766catch(n, n2);
    }

    /* renamed from: goto, reason: not valid java name */
    public static <N> Cimport<N> m16768goto(N n, N n2) {
        return new Cif(n, n2);
    }

    /* renamed from: break, reason: not valid java name */
    public abstract N mo16769break();

    /* renamed from: do, reason: not valid java name */
    public final N m16770do(Object obj) {
        if (obj.equals(this.f15043do)) {
            return this.f15044if;
        }
        if (obj.equals(this.f15044if)) {
            return this.f15043do;
        }
        throw new IllegalArgumentException("EndpointPair " + this + " does not contain node " + obj);
    }

    public abstract boolean equals(@b51 Object obj);

    @Override // java.lang.Iterable
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final ac2<N> iterator() {
        return s1.m16236package(this.f15043do, this.f15044if);
    }

    public abstract int hashCode();

    /* renamed from: if, reason: not valid java name */
    public abstract boolean mo16772if();

    /* renamed from: new, reason: not valid java name */
    public final N m16773new() {
        return this.f15043do;
    }

    /* renamed from: this, reason: not valid java name */
    public abstract N mo16774this();

    /* renamed from: try, reason: not valid java name */
    public final N m16775try() {
        return this.f15044if;
    }

    private Cimport(N n, N n2) {
        this.f15043do = (N) af1.m205continue(n);
        this.f15044if = (N) af1.m205continue(n2);
    }
}
