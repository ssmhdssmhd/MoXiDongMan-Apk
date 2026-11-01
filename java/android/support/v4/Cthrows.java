package android.support.v4;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.antlr.v4.runtime.atn.Cbreak;
import org.antlr.v4.runtime.atn.Celse;

/* renamed from: android.support.v4.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrows implements Set<Cswitch> {

    /* renamed from: case, reason: not valid java name */
    public boolean f6560case;

    /* renamed from: do, reason: not valid java name */
    public boolean f6561do;

    /* renamed from: else, reason: not valid java name */
    public boolean f6562else;

    /* renamed from: for, reason: not valid java name */
    public final ArrayList<Cswitch> f6563for;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f6564goto;

    /* renamed from: if, reason: not valid java name */
    public Cdo f6565if;

    /* renamed from: new, reason: not valid java name */
    public int f6566new;

    /* renamed from: this, reason: not valid java name */
    private int f6567this;

    /* renamed from: try, reason: not valid java name */
    public BitSet f6568try;

    /* renamed from: android.support.v4.throws$do, reason: invalid class name */
    public static abstract class Cdo extends i3<Cswitch> {
        public Cdo(Cinterface<? super Cswitch> cinterface) {
            this(cinterface, 16, 2);
        }

        @Override // android.support.v4.i3
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cswitch mo3249do(Object obj) {
            if (obj instanceof Cswitch) {
                return (Cswitch) obj;
            }
            return null;
        }

        @Override // android.support.v4.i3
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cswitch[] mo3251for(int i) {
            return new Cswitch[i];
        }

        @Override // android.support.v4.i3
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cswitch[][] mo3254new(int i) {
            return new Cswitch[i][];
        }

        public Cdo(Cinterface<? super Cswitch> cinterface, int i, int i2) {
            super(cinterface, i, i2);
        }
    }

    /* renamed from: android.support.v4.throws$for, reason: invalid class name */
    public static class Cfor extends Cdo {
        public Cfor() {
            super(Cif.f6569do);
        }
    }

    /* renamed from: android.support.v4.throws$if, reason: invalid class name */
    public static final class Cif extends Cinterface<Cswitch> {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f6569do = new Cif();

        private Cif() {
        }

        @Override // org.antlr.v4.runtime.misc.EqualityComparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean equals(Cswitch cswitch, Cswitch cswitch2) {
            if (cswitch == cswitch2) {
                return true;
            }
            return cswitch != null && cswitch2 != null && cswitch.f6323do.f1854if == cswitch2.f6323do.f1854if && cswitch.f6325if == cswitch2.f6325if && cswitch.f6327try.equals(cswitch2.f6327try);
        }

        @Override // org.antlr.v4.runtime.misc.EqualityComparator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public int hashCode(Cswitch cswitch) {
            return ((((217 + cswitch.f6323do.f1854if) * 31) + cswitch.f6325if) * 31) + cswitch.f6327try.hashCode();
        }
    }

    public Cthrows(boolean z) {
        this.f6561do = false;
        this.f6563for = new ArrayList<>(7);
        this.f6567this = -1;
        this.f6565if = new Cfor();
        this.f6564goto = z;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends Cswitch> collection) {
        Iterator<? extends Cswitch> it = collection.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return false;
    }

    /* renamed from: break, reason: not valid java name */
    public void m7929break(Cextends cextends) {
        if (this.f6561do) {
            throw new IllegalStateException("This set is readonly");
        }
        if (this.f6565if.isEmpty()) {
            return;
        }
        Iterator<Cswitch> it = this.f6563for.iterator();
        while (it.hasNext()) {
            Cswitch next = it.next();
            next.f6324for = cextends.m2069case(next.f6324for);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public BitSet m7930case() {
        BitSet bitSet = new BitSet();
        Iterator<Cswitch> it = this.f6563for.iterator();
        while (it.hasNext()) {
            bitSet.set(it.next().f6325if);
        }
        return bitSet;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m7931catch(boolean z) {
        this.f6561do = z;
        this.f6565if = null;
    }

    @Override // java.util.Set, java.util.Collection
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cswitch[] toArray() {
        return this.f6565if.toArray();
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        if (this.f6561do) {
            throw new IllegalStateException("This set is readonly");
        }
        this.f6563for.clear();
        this.f6567this = -1;
        this.f6565if.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        Cdo cdo = this.f6565if;
        if (cdo != null) {
            return cdo.contains(obj);
        }
        throw new UnsupportedOperationException("This method is not implemented for readonly sets.");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean add(Cswitch cswitch) {
        return m7937if(cswitch, null);
    }

    /* renamed from: else, reason: not valid java name */
    public List<Cbreak> m7934else() {
        ArrayList arrayList = new ArrayList();
        Iterator<Cswitch> it = this.f6563for.iterator();
        while (it.hasNext()) {
            Cbreak cbreak = it.next().f6327try;
            if (cbreak != Cbreak.f28443do) {
                arrayList.add(cbreak);
            }
        }
        return arrayList;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cthrows)) {
            return false;
        }
        Cthrows cthrows = (Cthrows) obj;
        ArrayList<Cswitch> arrayList = this.f6563for;
        return arrayList != null && arrayList.equals(cthrows.f6563for) && this.f6564goto == cthrows.f6564goto && this.f6566new == cthrows.f6566new && this.f6568try == cthrows.f6568try && this.f6560case == cthrows.f6560case && this.f6562else == cthrows.f6562else;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m7935for(Cswitch cswitch) {
        Cdo cdo = this.f6565if;
        if (cdo != null) {
            return cdo.m3253if(cswitch);
        }
        throw new UnsupportedOperationException("This method is not implemented for readonly sets.");
    }

    /* renamed from: goto, reason: not valid java name */
    public Set<Cfinally> m7936goto() {
        HashSet hashSet = new HashSet();
        Iterator<Cswitch> it = this.f6563for.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().f6323do);
        }
        return hashSet;
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        if (!m7939this()) {
            return this.f6563for.hashCode();
        }
        if (this.f6567this == -1) {
            this.f6567this = this.f6563for.hashCode();
        }
        return this.f6567this;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m7937if(Cswitch cswitch, h20<Celse, Celse, Celse> h20Var) {
        if (this.f6561do) {
            throw new IllegalStateException("This set is readonly");
        }
        if (cswitch.f6327try != Cbreak.f28443do) {
            this.f6560case = true;
        }
        if (cswitch.m7629if() > 0) {
            this.f6562else = true;
        }
        Cswitch cswitchM3252goto = this.f6565if.m3252goto(cswitch);
        if (cswitchM3252goto == cswitch) {
            this.f6567this = -1;
            this.f6563for.add(cswitch);
            return true;
        }
        Celse celseM31872const = Celse.m31872const(cswitchM3252goto.f6324for, cswitch.f6324for, !this.f6564goto, h20Var);
        cswitchM3252goto.f6326new = Math.max(cswitchM3252goto.f6326new, cswitch.f6326new);
        if (cswitch.m7628for()) {
            cswitchM3252goto.m7630new(true);
        }
        cswitchM3252goto.f6324for = celseM31872const;
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.f6563for.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<Cswitch> iterator() {
        return this.f6563for.iterator();
    }

    /* renamed from: new, reason: not valid java name */
    public List<Cswitch> m7938new() {
        return this.f6563for;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.f6563for.size();
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m7939this() {
        return this.f6561do;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(m7938new().toString());
        if (this.f6560case) {
            sb.append(",hasSemanticContext=");
            sb.append(this.f6560case);
        }
        if (this.f6566new != 0) {
            sb.append(",uniqueAlt=");
            sb.append(this.f6566new);
        }
        if (this.f6568try != null) {
            sb.append(",conflictingAlts=");
            sb.append(this.f6568try);
        }
        if (this.f6562else) {
            sb.append(",dipsIntoOuterContext");
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public Cswitch m7940try(int i) {
        return this.f6563for.get(i);
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.f6565if.toArray(tArr);
    }

    public Cthrows() {
        this(true);
    }

    public Cthrows(Cthrows cthrows) {
        this(cthrows.f6564goto);
        addAll(cthrows);
        this.f6566new = cthrows.f6566new;
        this.f6568try = cthrows.f6568try;
        this.f6560case = cthrows.f6560case;
        this.f6562else = cthrows.f6562else;
    }
}
