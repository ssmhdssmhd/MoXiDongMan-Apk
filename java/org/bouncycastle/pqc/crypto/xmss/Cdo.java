package org.bouncycastle.pqc.crypto.xmss;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import java.util.TreeMap;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.xmss.Celse;
import org.bouncycastle.pqc.crypto.xmss.Cgoto;
import org.bouncycastle.pqc.crypto.xmss.Ctry;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements Serializable {
    private static final long serialVersionUID = 1;
    private List<Cdefault> authenticationPath;

    /* renamed from: do, reason: not valid java name */
    private transient Cthis f32409do;
    private int index;
    private int k;
    private Map<Integer, Cdefault> keep;
    private Map<Integer, LinkedList<Cdefault>> retain;
    private Cdefault root;
    private Stack<Cdefault> stack;
    private final List<Cfor> treeHashInstances;
    private final int treeHeight;
    private boolean used;

    private Cdo(Cdo cdo, Digest digest) {
        this.f32409do = new Cthis(new Ccatch(digest));
        this.treeHeight = cdo.treeHeight;
        this.k = cdo.k;
        this.root = cdo.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(cdo.authenticationPath);
        this.retain = cdo.retain;
        Stack<Cdefault> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(cdo.stack);
        this.treeHashInstances = cdo.treeHashInstances;
        this.keep = new TreeMap(cdo.keep);
        this.index = cdo.index;
        this.used = cdo.used;
        m35862new();
    }

    private Cdo(Cdo cdo, byte[] bArr, byte[] bArr2, Cgoto cgoto) {
        this.f32409do = cdo.f32409do;
        this.treeHeight = cdo.treeHeight;
        this.k = cdo.k;
        this.root = cdo.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(cdo.authenticationPath);
        this.retain = cdo.retain;
        Stack<Cdefault> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(cdo.stack);
        this.treeHashInstances = cdo.treeHashInstances;
        this.keep = new TreeMap(cdo.keep);
        this.index = cdo.index;
        m35860for(bArr, bArr2, cgoto);
        cdo.used = true;
    }

    public Cdo(Cfinally cfinally, int i) {
        this(cfinally.m35880case(), cfinally.m35884new(), cfinally.m35885try());
        this.index = i;
        this.used = true;
    }

    public Cdo(Cfinally cfinally, byte[] bArr, byte[] bArr2, Cgoto cgoto) {
        this(cfinally.m35880case(), cfinally.m35884new(), cfinally.m35885try());
        m35861if(bArr, bArr2, cgoto);
    }

    public Cdo(Cfinally cfinally, byte[] bArr, byte[] bArr2, Cgoto cgoto, int i) {
        this(cfinally.m35880case(), cfinally.m35884new(), cfinally.m35885try());
        m35861if(bArr, bArr2, cgoto);
        while (this.index < i) {
            m35860for(bArr, bArr2, cgoto);
            this.used = false;
        }
    }

    private Cdo(Cthis cthis, int i, int i2) {
        this.f32409do = cthis;
        this.treeHeight = i;
        this.k = i2;
        if (i2 <= i && i2 >= 2) {
            int i3 = i - i2;
            if (i3 % 2 == 0) {
                this.authenticationPath = new ArrayList();
                this.retain = new TreeMap();
                this.stack = new Stack<>();
                this.treeHashInstances = new ArrayList();
                for (int i4 = 0; i4 < i3; i4++) {
                    this.treeHashInstances.add(new Cfor(i4));
                }
                this.keep = new TreeMap();
                this.index = 0;
                this.used = false;
                return;
            }
        }
        throw new IllegalArgumentException("illegal value for BDS parameter k");
    }

    /* renamed from: do, reason: not valid java name */
    private Cfor m35859do() {
        Cfor cfor = null;
        for (Cfor cfor2 : this.treeHashInstances) {
            if (!cfor2.isFinished() && cfor2.isInitialized() && (cfor == null || cfor2.getHeight() < cfor.getHeight() || (cfor2.getHeight() == cfor.getHeight() && cfor2.getIndexLeaf() < cfor.getIndexLeaf()))) {
                cfor = cfor2;
            }
        }
        return cfor;
    }

    /* renamed from: for, reason: not valid java name */
    private void m35860for(byte[] bArr, byte[] bArr2, Cgoto cgoto) {
        List<Cdefault> list;
        Cdefault cdefaultRemoveFirst;
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        if (this.used) {
            throw new IllegalStateException("index already used");
        }
        int i = this.index;
        int i2 = this.treeHeight;
        if (i > (1 << i2) - 2) {
            throw new IllegalStateException("index out of bounds");
        }
        int iM36072for = Cvolatile.m36072for(i, i2);
        if (((this.index >> (iM36072for + 1)) & 1) == 0 && iM36072for < this.treeHeight - 1) {
            this.keep.put(Integer.valueOf(iM36072for), this.authenticationPath.get(iM36072for).clone());
        }
        Celse celse = (Celse) new Celse.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).mo35875try();
        Ctry ctry = (Ctry) new Ctry.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).mo35875try();
        if (iM36072for == 0) {
            cgoto = (Cgoto) new Cgoto.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m35895throw(this.index).m35893final(cgoto.m35886case()).m35894super(cgoto.m35887else()).m36051else(cgoto.m36043do()).mo35875try();
            Cthis cthis = this.f32409do;
            cthis.m36035class(cthis.m36034catch(bArr2, cgoto), bArr);
            this.authenticationPath.set(0, Cextends.m35876do(this.f32409do, this.f32409do.m36037else(cgoto), (Celse) new Celse.Cif().m36052goto(celse.m36045if()).m36053this(celse.m36044for()).m35872final(this.index).m35873super(celse.m35864else()).m35874throw(celse.m35865goto()).m36051else(celse.m36043do()).mo35875try()));
        } else {
            int i3 = iM36072for - 1;
            Ctry ctry2 = (Ctry) new Ctry.Cif().m36052goto(ctry.m36045if()).m36053this(ctry.m36044for()).m36062const(i3).m36063final(this.index >> iM36072for).m36051else(ctry.m36043do()).mo35875try();
            Cthis cthis2 = this.f32409do;
            cthis2.m36035class(cthis2.m36034catch(bArr2, cgoto), bArr);
            Cdefault cdefaultM35877if = Cextends.m35877if(this.f32409do, this.authenticationPath.get(i3), this.keep.get(Integer.valueOf(i3)), ctry2);
            this.authenticationPath.set(iM36072for, new Cdefault(cdefaultM35877if.getHeight() + 1, cdefaultM35877if.getValue()));
            this.keep.remove(Integer.valueOf(i3));
            for (int i4 = 0; i4 < iM36072for; i4++) {
                if (i4 < this.treeHeight - this.k) {
                    list = this.authenticationPath;
                    cdefaultRemoveFirst = this.treeHashInstances.get(i4).getTailNode();
                } else {
                    list = this.authenticationPath;
                    cdefaultRemoveFirst = this.retain.get(Integer.valueOf(i4)).removeFirst();
                }
                list.set(i4, cdefaultRemoveFirst);
            }
            int iMin = Math.min(iM36072for, this.treeHeight - this.k);
            for (int i5 = 0; i5 < iMin; i5++) {
                int i6 = this.index + 1 + ((1 << i5) * 3);
                if (i6 < (1 << this.treeHeight)) {
                    this.treeHashInstances.get(i5).initialize(i6);
                }
            }
        }
        for (int i7 = 0; i7 < ((this.treeHeight - this.k) >> 1); i7++) {
            Cfor cforM35859do = m35859do();
            if (cforM35859do != null) {
                cforM35859do.update(this.stack, this.f32409do, bArr, bArr2, cgoto);
            }
        }
        this.index++;
    }

    /* renamed from: if, reason: not valid java name */
    private void m35861if(byte[] bArr, byte[] bArr2, Cgoto cgoto) {
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        Celse celse = (Celse) new Celse.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).mo35875try();
        Ctry ctry = (Ctry) new Ctry.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).mo35875try();
        for (int i = 0; i < (1 << this.treeHeight); i++) {
            cgoto = (Cgoto) new Cgoto.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m35895throw(i).m35893final(cgoto.m35886case()).m35894super(cgoto.m35887else()).m36051else(cgoto.m36043do()).mo35875try();
            Cthis cthis = this.f32409do;
            cthis.m36035class(cthis.m36034catch(bArr2, cgoto), bArr);
            Cconst cconstM36037else = this.f32409do.m36037else(cgoto);
            celse = (Celse) new Celse.Cif().m36052goto(celse.m36045if()).m36053this(celse.m36044for()).m35872final(i).m35873super(celse.m35864else()).m35874throw(celse.m35865goto()).m36051else(celse.m36043do()).mo35875try();
            Cdefault cdefaultM35876do = Cextends.m35876do(this.f32409do, cconstM36037else, celse);
            ctry = (Ctry) new Ctry.Cif().m36052goto(ctry.m36045if()).m36053this(ctry.m36044for()).m36063final(i).m36051else(ctry.m36043do()).mo35875try();
            while (!this.stack.isEmpty() && this.stack.peek().getHeight() == cdefaultM35876do.getHeight()) {
                int height = i / (1 << cdefaultM35876do.getHeight());
                if (height == 1) {
                    this.authenticationPath.add(cdefaultM35876do.clone());
                }
                if (height == 3 && cdefaultM35876do.getHeight() < this.treeHeight - this.k) {
                    this.treeHashInstances.get(cdefaultM35876do.getHeight()).setNode(cdefaultM35876do.clone());
                }
                if (height >= 3 && (height & 1) == 1 && cdefaultM35876do.getHeight() >= this.treeHeight - this.k && cdefaultM35876do.getHeight() <= this.treeHeight - 2) {
                    if (this.retain.get(Integer.valueOf(cdefaultM35876do.getHeight())) == null) {
                        LinkedList<Cdefault> linkedList = new LinkedList<>();
                        linkedList.add(cdefaultM35876do.clone());
                        this.retain.put(Integer.valueOf(cdefaultM35876do.getHeight()), linkedList);
                    } else {
                        this.retain.get(Integer.valueOf(cdefaultM35876do.getHeight())).add(cdefaultM35876do.clone());
                    }
                }
                Ctry ctry2 = (Ctry) new Ctry.Cif().m36052goto(ctry.m36045if()).m36053this(ctry.m36044for()).m36062const(ctry.m36057else()).m36063final((ctry.m36058goto() - 1) / 2).m36051else(ctry.m36043do()).mo35875try();
                Cdefault cdefaultM35877if = Cextends.m35877if(this.f32409do, this.stack.pop(), cdefaultM35876do, ctry2);
                Cdefault cdefault = new Cdefault(cdefaultM35877if.getHeight() + 1, cdefaultM35877if.getValue());
                ctry = (Ctry) new Ctry.Cif().m36052goto(ctry2.m36045if()).m36053this(ctry2.m36044for()).m36062const(ctry2.m36057else() + 1).m36063final(ctry2.m36058goto()).m36051else(ctry2.m36043do()).mo35875try();
                cdefaultM35876do = cdefault;
            }
            this.stack.push(cdefaultM35876do);
        }
        this.root = this.stack.pop();
    }

    /* renamed from: new, reason: not valid java name */
    private void m35862new() {
        if (this.authenticationPath == null) {
            throw new IllegalStateException("authenticationPath == null");
        }
        if (this.retain == null) {
            throw new IllegalStateException("retain == null");
        }
        if (this.stack == null) {
            throw new IllegalStateException("stack == null");
        }
        if (this.treeHashInstances == null) {
            throw new IllegalStateException("treeHashInstances == null");
        }
        if (this.keep == null) {
            throw new IllegalStateException("keep == null");
        }
        if (!Cvolatile.m36071final(this.treeHeight, this.index)) {
            throw new IllegalStateException("index in BDS state out of bounds");
        }
    }

    public List<Cdefault> getAuthenticationPath() {
        ArrayList arrayList = new ArrayList();
        Iterator<Cdefault> it = this.authenticationPath.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().clone());
        }
        return arrayList;
    }

    public int getIndex() {
        return this.index;
    }

    public Cdo getNextState(byte[] bArr, byte[] bArr2, Cgoto cgoto) {
        return new Cdo(this, bArr, bArr2, cgoto);
    }

    public Cdefault getRoot() {
        return this.root.clone();
    }

    public int getTreeHeight() {
        return this.treeHeight;
    }

    public boolean isUsed() {
        return this.used;
    }

    public Cdo withWOTSDigest(Ccatch ccatch) {
        return new Cdo(this, Cnew.m35911do(ccatch));
    }
}
