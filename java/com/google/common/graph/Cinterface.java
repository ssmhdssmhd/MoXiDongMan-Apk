package com.google.common.graph;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.o8;
import com.google.common.collect.g1;
import com.google.common.collect.r1;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;

@o8
/* renamed from: com.google.common.graph.interface, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cinterface<N> {

    /* renamed from: com.google.common.graph.interface$for, reason: invalid class name */
    public enum Cfor {
        PREORDER,
        POSTORDER
    }

    /* renamed from: com.google.common.graph.interface$if, reason: invalid class name */
    public static final class Cif<N> extends Cinterface<N> {

        /* renamed from: do, reason: not valid java name */
        private final SuccessorsFunction<N> f15046do;

        /* renamed from: com.google.common.graph.interface$if$do, reason: invalid class name */
        public class Cdo implements Iterable<N> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Iterable f15047do;

            public Cdo(Iterable iterable) {
                this.f15047do = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new Cnew(this.f15047do);
            }
        }

        /* renamed from: com.google.common.graph.interface$if$for, reason: invalid class name */
        public class Cfor implements Iterable<N> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Iterable f15049do;

            public Cfor(Iterable iterable) {
                this.f15049do = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new Ctry(this.f15049do, Cfor.POSTORDER);
            }
        }

        /* renamed from: com.google.common.graph.interface$if$if, reason: invalid class name and collision with other inner class name */
        public class C0121if implements Iterable<N> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Iterable f15051do;

            public C0121if(Iterable iterable) {
                this.f15051do = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new Ctry(this.f15051do, Cfor.PREORDER);
            }
        }

        /* renamed from: com.google.common.graph.interface$if$new, reason: invalid class name */
        public final class Cnew extends ac2<N> {

            /* renamed from: do, reason: not valid java name */
            private final Queue<N> f15053do = new ArrayDeque();

            /* renamed from: if, reason: not valid java name */
            private final Set<N> f15055if = new HashSet();

            public Cnew(Iterable<? extends N> iterable) {
                for (N n : iterable) {
                    if (this.f15055if.add(n)) {
                        this.f15053do.add(n);
                    }
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f15053do.isEmpty();
            }

            @Override // java.util.Iterator
            public N next() {
                N nRemove = this.f15053do.remove();
                for (N n : Cif.this.f15046do.successors(nRemove)) {
                    if (this.f15055if.add(n)) {
                        this.f15053do.add(n);
                    }
                }
                return nRemove;
            }
        }

        /* renamed from: com.google.common.graph.interface$if$try, reason: invalid class name */
        public final class Ctry extends com.google.common.collect.Cfor<N> {

            /* renamed from: for, reason: not valid java name */
            private final Deque<Cif<N>.Ctry.Cdo> f15057for;

            /* renamed from: new, reason: not valid java name */
            private final Set<N> f15058new;

            /* renamed from: try, reason: not valid java name */
            private final Cfor f15059try;

            /* renamed from: com.google.common.graph.interface$if$try$do, reason: invalid class name */
            public final class Cdo {

                /* renamed from: do, reason: not valid java name */
                @b51
                public final N f15060do;

                /* renamed from: if, reason: not valid java name */
                public final Iterator<? extends N> f15062if;

                public Cdo(@b51 N n, Iterable<? extends N> iterable) {
                    this.f15060do = n;
                    this.f15062if = iterable.iterator();
                }
            }

            public Ctry(Iterable<? extends N> iterable, Cfor cfor) {
                ArrayDeque arrayDeque = new ArrayDeque();
                this.f15057for = arrayDeque;
                this.f15058new = new HashSet();
                arrayDeque.push(new Cdo(null, iterable));
                this.f15059try = cfor;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public N mo15521do() {
                N n;
                while (!this.f15057for.isEmpty()) {
                    Cif<N>.Ctry.Cdo first = this.f15057for.getFirst();
                    boolean zAdd = this.f15058new.add(first.f15060do);
                    boolean z = true;
                    boolean z2 = !first.f15062if.hasNext();
                    if ((!zAdd || this.f15059try != Cfor.PREORDER) && (!z2 || this.f15059try != Cfor.POSTORDER)) {
                        z = false;
                    }
                    if (z2) {
                        this.f15057for.pop();
                    } else {
                        N next = first.f15062if.next();
                        if (!this.f15058new.contains(next)) {
                            this.f15057for.push(m16795new(next));
                        }
                    }
                    if (z && (n = first.f15060do) != null) {
                        return n;
                    }
                }
                return (N) m15805if();
            }

            /* renamed from: new, reason: not valid java name */
            public Cif<N>.Ctry.Cdo m16795new(N n) {
                return new Cdo(n, Cif.this.f15046do.successors(n));
            }
        }

        public Cif(SuccessorsFunction<N> successorsFunction) {
            super();
            this.f15046do = (SuccessorsFunction) af1.m205continue(successorsFunction);
        }

        /* renamed from: break, reason: not valid java name */
        private void m16793break(N n) {
            this.f15046do.successors(n);
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: case */
        public Iterable<N> mo16787case(N n) {
            af1.m205continue(n);
            return mo16792try(g1.of(n));
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: do */
        public Iterable<N> mo16788do(Iterable<? extends N> iterable) {
            af1.m205continue(iterable);
            if (r1.m16197private(iterable)) {
                return g1.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                m16793break(it.next());
            }
            return new Cdo(iterable);
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: for */
        public Iterable<N> mo16789for(Iterable<? extends N> iterable) {
            af1.m205continue(iterable);
            if (r1.m16197private(iterable)) {
                return g1.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                m16793break(it.next());
            }
            return new Cfor(iterable);
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: if */
        public Iterable<N> mo16790if(N n) {
            af1.m205continue(n);
            return mo16788do(g1.of(n));
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: new */
        public Iterable<N> mo16791new(N n) {
            af1.m205continue(n);
            return mo16789for(g1.of(n));
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: try */
        public Iterable<N> mo16792try(Iterable<? extends N> iterable) {
            af1.m205continue(iterable);
            if (r1.m16197private(iterable)) {
                return g1.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                m16793break(it.next());
            }
            return new C0121if(iterable);
        }
    }

    /* renamed from: com.google.common.graph.interface$new, reason: invalid class name */
    public static final class Cnew<N> extends Cinterface<N> {

        /* renamed from: do, reason: not valid java name */
        private final SuccessorsFunction<N> f15063do;

        /* renamed from: com.google.common.graph.interface$new$case, reason: invalid class name */
        public final class Ccase extends ac2<N> {

            /* renamed from: do, reason: not valid java name */
            private final Deque<Iterator<? extends N>> f15064do;

            public Ccase(Iterable<? extends N> iterable) {
                ArrayDeque arrayDeque = new ArrayDeque();
                this.f15064do = arrayDeque;
                arrayDeque.addLast(iterable.iterator());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f15064do.isEmpty();
            }

            @Override // java.util.Iterator
            public N next() {
                Iterator<? extends N> last = this.f15064do.getLast();
                N n = (N) af1.m205continue(last.next());
                if (!last.hasNext()) {
                    this.f15064do.removeLast();
                }
                Iterator<? extends N> it = Cnew.this.f15063do.successors(n).iterator();
                if (it.hasNext()) {
                    this.f15064do.addLast(it);
                }
                return n;
            }
        }

        /* renamed from: com.google.common.graph.interface$new$do, reason: invalid class name */
        public class Cdo implements Iterable<N> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Iterable f15066do;

            public Cdo(Iterable iterable) {
                this.f15066do = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new C0122new(this.f15066do);
            }
        }

        /* renamed from: com.google.common.graph.interface$new$for, reason: invalid class name */
        public class Cfor implements Iterable<N> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Iterable f15068do;

            public Cfor(Iterable iterable) {
                this.f15068do = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new Ctry(this.f15068do);
            }
        }

        /* renamed from: com.google.common.graph.interface$new$if, reason: invalid class name */
        public class Cif implements Iterable<N> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Iterable f15070do;

            public Cif(Iterable iterable) {
                this.f15070do = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new Ccase(this.f15070do);
            }
        }

        /* renamed from: com.google.common.graph.interface$new$new, reason: invalid class name and collision with other inner class name */
        public final class C0122new extends ac2<N> {

            /* renamed from: do, reason: not valid java name */
            private final Queue<N> f15072do = new ArrayDeque();

            public C0122new(Iterable<? extends N> iterable) {
                Iterator<? extends N> it = iterable.iterator();
                while (it.hasNext()) {
                    this.f15072do.add(it.next());
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f15072do.isEmpty();
            }

            @Override // java.util.Iterator
            public N next() {
                N nRemove = this.f15072do.remove();
                r1.m16182do(this.f15072do, Cnew.this.f15063do.successors(nRemove));
                return nRemove;
            }
        }

        /* renamed from: com.google.common.graph.interface$new$try, reason: invalid class name */
        public final class Ctry extends com.google.common.collect.Cfor<N> {

            /* renamed from: for, reason: not valid java name */
            private final ArrayDeque<Cnew<N>.Ctry.Cdo> f15074for;

            /* renamed from: com.google.common.graph.interface$new$try$do, reason: invalid class name */
            public final class Cdo {

                /* renamed from: do, reason: not valid java name */
                @b51
                public final N f15076do;

                /* renamed from: if, reason: not valid java name */
                public final Iterator<? extends N> f15078if;

                public Cdo(@b51 N n, Iterable<? extends N> iterable) {
                    this.f15076do = n;
                    this.f15078if = iterable.iterator();
                }
            }

            public Ctry(Iterable<? extends N> iterable) {
                ArrayDeque<Cnew<N>.Ctry.Cdo> arrayDeque = new ArrayDeque<>();
                this.f15074for = arrayDeque;
                arrayDeque.addLast(new Cdo(null, iterable));
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public N mo15521do() {
                while (!this.f15074for.isEmpty()) {
                    Cnew<N>.Ctry.Cdo last = this.f15074for.getLast();
                    if (last.f15078if.hasNext()) {
                        this.f15074for.addLast(m16798new(last.f15078if.next()));
                    } else {
                        this.f15074for.removeLast();
                        N n = last.f15076do;
                        if (n != null) {
                            return n;
                        }
                    }
                }
                return (N) m15805if();
            }

            /* renamed from: new, reason: not valid java name */
            public Cnew<N>.Ctry.Cdo m16798new(N n) {
                return new Cdo(n, Cnew.this.f15063do.successors(n));
            }
        }

        public Cnew(SuccessorsFunction<N> successorsFunction) {
            super();
            this.f15063do = (SuccessorsFunction) af1.m205continue(successorsFunction);
        }

        /* renamed from: break, reason: not valid java name */
        private void m16796break(N n) {
            this.f15063do.successors(n);
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: case */
        public Iterable<N> mo16787case(N n) {
            af1.m205continue(n);
            return mo16792try(g1.of(n));
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: do */
        public Iterable<N> mo16788do(Iterable<? extends N> iterable) {
            af1.m205continue(iterable);
            if (r1.m16197private(iterable)) {
                return g1.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                m16796break(it.next());
            }
            return new Cdo(iterable);
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: for */
        public Iterable<N> mo16789for(Iterable<? extends N> iterable) {
            af1.m205continue(iterable);
            if (r1.m16197private(iterable)) {
                return g1.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                m16796break(it.next());
            }
            return new Cfor(iterable);
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: if */
        public Iterable<N> mo16790if(N n) {
            af1.m205continue(n);
            return mo16788do(g1.of(n));
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: new */
        public Iterable<N> mo16791new(N n) {
            af1.m205continue(n);
            return mo16789for(g1.of(n));
        }

        @Override // com.google.common.graph.Cinterface
        /* renamed from: try */
        public Iterable<N> mo16792try(Iterable<? extends N> iterable) {
            af1.m205continue(iterable);
            if (r1.m16197private(iterable)) {
                return g1.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                m16796break(it.next());
            }
            return new Cif(iterable);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static <N> Cinterface<N> m16785else(SuccessorsFunction<N> successorsFunction) {
        af1.m205continue(successorsFunction);
        return new Cif(successorsFunction);
    }

    /* renamed from: goto, reason: not valid java name */
    public static <N> Cinterface<N> m16786goto(SuccessorsFunction<N> successorsFunction) {
        af1.m205continue(successorsFunction);
        if (successorsFunction instanceof BaseGraph) {
            af1.m235try(((BaseGraph) successorsFunction).isDirected(), "Undirected graphs can never be trees.");
        }
        if (successorsFunction instanceof Network) {
            af1.m235try(((Network) successorsFunction).isDirected(), "Undirected networks can never be trees.");
        }
        return new Cnew(successorsFunction);
    }

    /* renamed from: case, reason: not valid java name */
    public abstract Iterable<N> mo16787case(N n);

    /* renamed from: do, reason: not valid java name */
    public abstract Iterable<N> mo16788do(Iterable<? extends N> iterable);

    /* renamed from: for, reason: not valid java name */
    public abstract Iterable<N> mo16789for(Iterable<? extends N> iterable);

    /* renamed from: if, reason: not valid java name */
    public abstract Iterable<N> mo16790if(N n);

    /* renamed from: new, reason: not valid java name */
    public abstract Iterable<N> mo16791new(N n);

    /* renamed from: try, reason: not valid java name */
    public abstract Iterable<N> mo16792try(Iterable<? extends N> iterable);

    private Cinterface() {
    }
}
