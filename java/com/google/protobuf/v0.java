package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessage.Cdo;
import com.google.protobuf.MessageOrBuilder;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class v0<MType extends AbstractMessage, BType extends AbstractMessage.Cdo, IType extends MessageOrBuilder> implements AbstractMessage.BuilderParent {

    /* renamed from: case, reason: not valid java name */
    private Cif<MType, BType, IType> f17284case;

    /* renamed from: do, reason: not valid java name */
    private AbstractMessage.BuilderParent f17285do;

    /* renamed from: else, reason: not valid java name */
    private Cdo<MType, BType, IType> f17286else;

    /* renamed from: for, reason: not valid java name */
    private boolean f17287for;

    /* renamed from: goto, reason: not valid java name */
    private Cfor<MType, BType, IType> f17288goto;

    /* renamed from: if, reason: not valid java name */
    private List<MType> f17289if;

    /* renamed from: new, reason: not valid java name */
    private List<a1<MType, BType, IType>> f17290new;

    /* renamed from: try, reason: not valid java name */
    private boolean f17291try;

    /* renamed from: com.google.protobuf.v0$do, reason: invalid class name */
    public static class Cdo<MType extends AbstractMessage, BType extends AbstractMessage.Cdo, IType extends MessageOrBuilder> extends AbstractList<BType> implements List<BType> {

        /* renamed from: do, reason: not valid java name */
        public v0<MType, BType, IType> f17292do;

        public Cdo(v0<MType, BType, IType> v0Var) {
            this.f17292do = v0Var;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public BType get(int i) {
            return (BType) this.f17292do.m21454catch(i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m21472if() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f17292do.m21456const();
        }
    }

    /* renamed from: com.google.protobuf.v0$for, reason: invalid class name */
    public static class Cfor<MType extends AbstractMessage, BType extends AbstractMessage.Cdo, IType extends MessageOrBuilder> extends AbstractList<IType> implements List<IType> {

        /* renamed from: do, reason: not valid java name */
        public v0<MType, BType, IType> f17293do;

        public Cfor(v0<MType, BType, IType> v0Var) {
            this.f17293do = v0Var;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public IType get(int i) {
            return (IType) this.f17293do.m21470while(i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m21474if() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f17293do.m21456const();
        }
    }

    /* renamed from: com.google.protobuf.v0$if, reason: invalid class name */
    public static class Cif<MType extends AbstractMessage, BType extends AbstractMessage.Cdo, IType extends MessageOrBuilder> extends AbstractList<MType> implements List<MType> {

        /* renamed from: do, reason: not valid java name */
        public v0<MType, BType, IType> f17294do;

        public Cif(v0<MType, BType, IType> v0Var) {
            this.f17294do = v0Var;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public MType get(int i) {
            return (MType) this.f17294do.m21459final(i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m21476if() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f17294do.m21456const();
        }
    }

    public v0(List<MType> list, boolean z, AbstractMessage.BuilderParent builderParent, boolean z2) {
        this.f17289if = list;
        this.f17287for = z;
        this.f17285do = builderParent;
        this.f17291try = z2;
    }

    /* renamed from: break, reason: not valid java name */
    private void m21448break() {
        if (this.f17287for) {
            return;
        }
        this.f17289if = new ArrayList(this.f17289if);
        this.f17287for = true;
    }

    /* renamed from: native, reason: not valid java name */
    private void m21449native() {
        Cif<MType, BType, IType> cif = this.f17284case;
        if (cif != null) {
            cif.m21476if();
        }
        Cdo<MType, BType, IType> cdo = this.f17286else;
        if (cdo != null) {
            cdo.m21472if();
        }
        Cfor<MType, BType, IType> cfor = this.f17288goto;
        if (cfor != null) {
            cfor.m21474if();
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m21450return() {
        AbstractMessage.BuilderParent builderParent;
        if (!this.f17291try || (builderParent = this.f17285do) == null) {
            return;
        }
        builderParent.markDirty();
        this.f17291try = false;
    }

    /* renamed from: super, reason: not valid java name */
    private MType m21451super(int i, boolean z) {
        List<a1<MType, BType, IType>> list = this.f17290new;
        if (list == null) {
            return this.f17289if.get(i);
        }
        a1<MType, BType, IType> a1Var = list.get(i);
        return a1Var == null ? this.f17289if.get(i) : z ? (MType) a1Var.m19686do() : (MType) a1Var.m19692try();
    }

    /* renamed from: this, reason: not valid java name */
    private void m21452this() {
        if (this.f17290new == null) {
            this.f17290new = new ArrayList(this.f17289if.size());
            for (int i = 0; i < this.f17289if.size(); i++) {
                this.f17290new.add(null);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public List<MType> m21453case() {
        boolean z;
        this.f17291try = true;
        boolean z2 = this.f17287for;
        if (!z2 && this.f17290new == null) {
            return this.f17289if;
        }
        if (!z2) {
            int i = 0;
            while (true) {
                if (i >= this.f17289if.size()) {
                    z = true;
                    break;
                }
                MType mtype = this.f17289if.get(i);
                a1<MType, BType, IType> a1Var = this.f17290new.get(i);
                if (a1Var != null && a1Var.m19686do() != mtype) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                return this.f17289if;
            }
        }
        m21448break();
        for (int i2 = 0; i2 < this.f17289if.size(); i2++) {
            this.f17289if.set(i2, m21451super(i2, true));
        }
        List<MType> listUnmodifiableList = Collections.unmodifiableList(this.f17289if);
        this.f17289if = listUnmodifiableList;
        this.f17287for = false;
        return listUnmodifiableList;
    }

    /* renamed from: catch, reason: not valid java name */
    public BType m21454catch(int i) {
        m21452this();
        a1<MType, BType, IType> a1Var = this.f17290new.get(i);
        if (a1Var == null) {
            a1<MType, BType, IType> a1Var2 = new a1<>(this.f17289if.get(i), this, this.f17291try);
            this.f17290new.set(i, a1Var2);
            a1Var = a1Var2;
        }
        return (BType) a1Var.m19690new();
    }

    /* renamed from: class, reason: not valid java name */
    public List<BType> m21455class() {
        if (this.f17286else == null) {
            this.f17286else = new Cdo<>(this);
        }
        return this.f17286else;
    }

    /* renamed from: const, reason: not valid java name */
    public int m21456const() {
        return this.f17289if.size();
    }

    /* renamed from: do, reason: not valid java name */
    public v0<MType, BType, IType> m21457do(Iterable<? extends MType> iterable) {
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
        m21448break();
        if (size >= 0) {
            List<MType> list = this.f17289if;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size);
            }
        }
        Iterator<? extends MType> it2 = iterable.iterator();
        while (it2.hasNext()) {
            m21469try(it2.next());
        }
        m21450return();
        m21449native();
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public void m21458else() {
        this.f17289if = Collections.emptyList();
        this.f17287for = false;
        List<a1<MType, BType, IType>> list = this.f17290new;
        if (list != null) {
            for (a1<MType, BType, IType> a1Var : list) {
                if (a1Var != null) {
                    a1Var.m19688for();
                }
            }
            this.f17290new = null;
        }
        m21450return();
        m21449native();
    }

    /* renamed from: final, reason: not valid java name */
    public MType m21459final(int i) {
        return (MType) m21451super(i, false);
    }

    /* renamed from: for, reason: not valid java name */
    public BType m21460for(MType mtype) {
        m21448break();
        m21452this();
        a1<MType, BType, IType> a1Var = new a1<>(mtype, this, this.f17291try);
        this.f17289if.add(null);
        this.f17290new.add(a1Var);
        m21450return();
        m21449native();
        return (BType) a1Var.m19690new();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m21461goto() {
        this.f17285do = null;
    }

    /* renamed from: if, reason: not valid java name */
    public BType m21462if(int i, MType mtype) {
        m21448break();
        m21452this();
        a1<MType, BType, IType> a1Var = new a1<>(mtype, this, this.f17291try);
        this.f17289if.add(i, null);
        this.f17290new.add(i, a1Var);
        m21450return();
        m21449native();
        return (BType) a1Var.m19690new();
    }

    /* renamed from: import, reason: not valid java name */
    public List<IType> m21463import() {
        if (this.f17288goto == null) {
            this.f17288goto = new Cfor<>(this);
        }
        return this.f17288goto;
    }

    @Override // com.google.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        m21450return();
    }

    /* renamed from: new, reason: not valid java name */
    public v0<MType, BType, IType> m21464new(int i, MType mtype) {
        Internal.m19623new(mtype);
        m21448break();
        this.f17289if.add(i, mtype);
        List<a1<MType, BType, IType>> list = this.f17290new;
        if (list != null) {
            list.add(i, null);
        }
        m21450return();
        m21449native();
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m21465public() {
        return this.f17289if.isEmpty();
    }

    /* renamed from: static, reason: not valid java name */
    public void m21466static(int i) {
        a1<MType, BType, IType> a1VarRemove;
        m21448break();
        this.f17289if.remove(i);
        List<a1<MType, BType, IType>> list = this.f17290new;
        if (list != null && (a1VarRemove = list.remove(i)) != null) {
            a1VarRemove.m19688for();
        }
        m21450return();
        m21449native();
    }

    /* renamed from: switch, reason: not valid java name */
    public v0<MType, BType, IType> m21467switch(int i, MType mtype) {
        a1<MType, BType, IType> a1Var;
        Internal.m19623new(mtype);
        m21448break();
        this.f17289if.set(i, mtype);
        List<a1<MType, BType, IType>> list = this.f17290new;
        if (list != null && (a1Var = list.set(i, null)) != null) {
            a1Var.m19688for();
        }
        m21450return();
        m21449native();
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public List<MType> m21468throw() {
        if (this.f17284case == null) {
            this.f17284case = new Cif<>(this);
        }
        return this.f17284case;
    }

    /* renamed from: try, reason: not valid java name */
    public v0<MType, BType, IType> m21469try(MType mtype) {
        Internal.m19623new(mtype);
        m21448break();
        this.f17289if.add(mtype);
        List<a1<MType, BType, IType>> list = this.f17290new;
        if (list != null) {
            list.add(null);
        }
        m21450return();
        m21449native();
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public IType m21470while(int i) {
        List<a1<MType, BType, IType>> list = this.f17290new;
        if (list == null) {
            return this.f17289if.get(i);
        }
        a1<MType, BType, IType> a1Var = list.get(i);
        return a1Var == null ? this.f17289if.get(i) : (IType) a1Var.m19685case();
    }
}
