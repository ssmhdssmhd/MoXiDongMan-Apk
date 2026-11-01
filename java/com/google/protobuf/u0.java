package com.google.protobuf;

import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Ccase;
import com.google.protobuf.MessageOrBuilder;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class u0<MType extends GeneratedMessage, BType extends GeneratedMessage.Ccase, IType extends MessageOrBuilder> implements GeneratedMessage.BuilderParent {

    /* renamed from: case, reason: not valid java name */
    private Cif<MType, BType, IType> f17263case;

    /* renamed from: do, reason: not valid java name */
    private GeneratedMessage.BuilderParent f17264do;

    /* renamed from: else, reason: not valid java name */
    private Cdo<MType, BType, IType> f17265else;

    /* renamed from: for, reason: not valid java name */
    private boolean f17266for;

    /* renamed from: goto, reason: not valid java name */
    private Cfor<MType, BType, IType> f17267goto;

    /* renamed from: if, reason: not valid java name */
    private List<MType> f17268if;

    /* renamed from: new, reason: not valid java name */
    private List<z0<MType, BType, IType>> f17269new;

    /* renamed from: try, reason: not valid java name */
    private boolean f17270try;

    /* renamed from: com.google.protobuf.u0$do, reason: invalid class name */
    public static class Cdo<MType extends GeneratedMessage, BType extends GeneratedMessage.Ccase, IType extends MessageOrBuilder> extends AbstractList<BType> implements List<BType> {

        /* renamed from: do, reason: not valid java name */
        public u0<MType, BType, IType> f17271do;

        public Cdo(u0<MType, BType, IType> u0Var) {
            this.f17271do = u0Var;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public BType get(int i) {
            return (BType) this.f17271do.m21393catch(i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m21411if() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f17271do.m21395const();
        }
    }

    /* renamed from: com.google.protobuf.u0$for, reason: invalid class name */
    public static class Cfor<MType extends GeneratedMessage, BType extends GeneratedMessage.Ccase, IType extends MessageOrBuilder> extends AbstractList<IType> implements List<IType> {

        /* renamed from: do, reason: not valid java name */
        public u0<MType, BType, IType> f17272do;

        public Cfor(u0<MType, BType, IType> u0Var) {
            this.f17272do = u0Var;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public IType get(int i) {
            return (IType) this.f17272do.m21409while(i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m21413if() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f17272do.m21395const();
        }
    }

    /* renamed from: com.google.protobuf.u0$if, reason: invalid class name */
    public static class Cif<MType extends GeneratedMessage, BType extends GeneratedMessage.Ccase, IType extends MessageOrBuilder> extends AbstractList<MType> implements List<MType> {

        /* renamed from: do, reason: not valid java name */
        public u0<MType, BType, IType> f17273do;

        public Cif(u0<MType, BType, IType> u0Var) {
            this.f17273do = u0Var;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public MType get(int i) {
            return (MType) this.f17273do.m21398final(i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m21415if() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f17273do.m21395const();
        }
    }

    public u0(List<MType> list, boolean z, GeneratedMessage.BuilderParent builderParent, boolean z2) {
        this.f17268if = list;
        this.f17266for = z;
        this.f17264do = builderParent;
        this.f17270try = z2;
    }

    /* renamed from: break, reason: not valid java name */
    private void m21387break() {
        if (this.f17266for) {
            return;
        }
        this.f17268if = new ArrayList(this.f17268if);
        this.f17266for = true;
    }

    /* renamed from: native, reason: not valid java name */
    private void m21388native() {
        Cif<MType, BType, IType> cif = this.f17263case;
        if (cif != null) {
            cif.m21415if();
        }
        Cdo<MType, BType, IType> cdo = this.f17265else;
        if (cdo != null) {
            cdo.m21411if();
        }
        Cfor<MType, BType, IType> cfor = this.f17267goto;
        if (cfor != null) {
            cfor.m21413if();
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m21389return() {
        GeneratedMessage.BuilderParent builderParent;
        if (!this.f17270try || (builderParent = this.f17264do) == null) {
            return;
        }
        builderParent.markDirty();
        this.f17270try = false;
    }

    /* renamed from: super, reason: not valid java name */
    private MType m21390super(int i, boolean z) {
        List<z0<MType, BType, IType>> list = this.f17269new;
        if (list == null) {
            return this.f17268if.get(i);
        }
        z0<MType, BType, IType> z0Var = list.get(i);
        return z0Var == null ? this.f17268if.get(i) : z ? (MType) z0Var.m21649do() : (MType) z0Var.m21655try();
    }

    /* renamed from: this, reason: not valid java name */
    private void m21391this() {
        if (this.f17269new == null) {
            this.f17269new = new ArrayList(this.f17268if.size());
            for (int i = 0; i < this.f17268if.size(); i++) {
                this.f17269new.add(null);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public List<MType> m21392case() {
        boolean z;
        this.f17270try = true;
        boolean z2 = this.f17266for;
        if (!z2 && this.f17269new == null) {
            return this.f17268if;
        }
        if (!z2) {
            int i = 0;
            while (true) {
                if (i >= this.f17268if.size()) {
                    z = true;
                    break;
                }
                MType mtype = this.f17268if.get(i);
                z0<MType, BType, IType> z0Var = this.f17269new.get(i);
                if (z0Var != null && z0Var.m21649do() != mtype) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                return this.f17268if;
            }
        }
        m21387break();
        for (int i2 = 0; i2 < this.f17268if.size(); i2++) {
            this.f17268if.set(i2, m21390super(i2, true));
        }
        List<MType> listUnmodifiableList = Collections.unmodifiableList(this.f17268if);
        this.f17268if = listUnmodifiableList;
        this.f17266for = false;
        return listUnmodifiableList;
    }

    /* renamed from: catch, reason: not valid java name */
    public BType m21393catch(int i) {
        m21391this();
        z0<MType, BType, IType> z0Var = this.f17269new.get(i);
        if (z0Var == null) {
            z0<MType, BType, IType> z0Var2 = new z0<>(this.f17268if.get(i), this, this.f17270try);
            this.f17269new.set(i, z0Var2);
            z0Var = z0Var2;
        }
        return (BType) z0Var.m21653new();
    }

    /* renamed from: class, reason: not valid java name */
    public List<BType> m21394class() {
        if (this.f17265else == null) {
            this.f17265else = new Cdo<>(this);
        }
        return this.f17265else;
    }

    /* renamed from: const, reason: not valid java name */
    public int m21395const() {
        return this.f17268if.size();
    }

    /* renamed from: do, reason: not valid java name */
    public u0<MType, BType, IType> m21396do(Iterable<? extends MType> iterable) {
        Iterator<? extends MType> it = iterable.iterator();
        while (it.hasNext()) {
            Internal.m19623new(it.next());
        }
        int size = -1;
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.isEmpty()) {
                return this;
            }
            size = collection.size();
        }
        m21387break();
        if (size >= 0) {
            List<MType> list = this.f17268if;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size);
            }
        }
        Iterator<? extends MType> it2 = iterable.iterator();
        while (it2.hasNext()) {
            m21408try(it2.next());
        }
        m21389return();
        m21388native();
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public void m21397else() {
        this.f17268if = Collections.emptyList();
        this.f17266for = false;
        List<z0<MType, BType, IType>> list = this.f17269new;
        if (list != null) {
            for (z0<MType, BType, IType> z0Var : list) {
                if (z0Var != null) {
                    z0Var.m21651for();
                }
            }
            this.f17269new = null;
        }
        m21389return();
        m21388native();
    }

    /* renamed from: final, reason: not valid java name */
    public MType m21398final(int i) {
        return (MType) m21390super(i, false);
    }

    /* renamed from: for, reason: not valid java name */
    public BType m21399for(MType mtype) {
        m21387break();
        m21391this();
        z0<MType, BType, IType> z0Var = new z0<>(mtype, this, this.f17270try);
        this.f17268if.add(null);
        this.f17269new.add(z0Var);
        m21389return();
        m21388native();
        return (BType) z0Var.m21653new();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m21400goto() {
        this.f17264do = null;
    }

    /* renamed from: if, reason: not valid java name */
    public BType m21401if(int i, MType mtype) {
        m21387break();
        m21391this();
        z0<MType, BType, IType> z0Var = new z0<>(mtype, this, this.f17270try);
        this.f17268if.add(i, null);
        this.f17269new.add(i, z0Var);
        m21389return();
        m21388native();
        return (BType) z0Var.m21653new();
    }

    /* renamed from: import, reason: not valid java name */
    public List<IType> m21402import() {
        if (this.f17267goto == null) {
            this.f17267goto = new Cfor<>(this);
        }
        return this.f17267goto;
    }

    @Override // com.google.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        m21389return();
    }

    /* renamed from: new, reason: not valid java name */
    public u0<MType, BType, IType> m21403new(int i, MType mtype) {
        Internal.m19623new(mtype);
        m21387break();
        this.f17268if.add(i, mtype);
        List<z0<MType, BType, IType>> list = this.f17269new;
        if (list != null) {
            list.add(i, null);
        }
        m21389return();
        m21388native();
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m21404public() {
        return this.f17268if.isEmpty();
    }

    /* renamed from: static, reason: not valid java name */
    public void m21405static(int i) {
        z0<MType, BType, IType> z0VarRemove;
        m21387break();
        this.f17268if.remove(i);
        List<z0<MType, BType, IType>> list = this.f17269new;
        if (list != null && (z0VarRemove = list.remove(i)) != null) {
            z0VarRemove.m21651for();
        }
        m21389return();
        m21388native();
    }

    /* renamed from: switch, reason: not valid java name */
    public u0<MType, BType, IType> m21406switch(int i, MType mtype) {
        z0<MType, BType, IType> z0Var;
        Internal.m19623new(mtype);
        m21387break();
        this.f17268if.set(i, mtype);
        List<z0<MType, BType, IType>> list = this.f17269new;
        if (list != null && (z0Var = list.set(i, null)) != null) {
            z0Var.m21651for();
        }
        m21389return();
        m21388native();
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public List<MType> m21407throw() {
        if (this.f17263case == null) {
            this.f17263case = new Cif<>(this);
        }
        return this.f17263case;
    }

    /* renamed from: try, reason: not valid java name */
    public u0<MType, BType, IType> m21408try(MType mtype) {
        Internal.m19623new(mtype);
        m21387break();
        this.f17268if.add(mtype);
        List<z0<MType, BType, IType>> list = this.f17269new;
        if (list != null) {
            list.add(null);
        }
        m21389return();
        m21388native();
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public IType m21409while(int i) {
        List<z0<MType, BType, IType>> list = this.f17269new;
        if (list == null) {
            return this.f17268if.get(i);
        }
        z0<MType, BType, IType> z0Var = list.get(i);
        return z0Var == null ? this.f17268if.get(i) : (IType) z0Var.m21648case();
    }
}
