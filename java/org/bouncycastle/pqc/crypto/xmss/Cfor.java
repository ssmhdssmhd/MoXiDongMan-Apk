package org.bouncycastle.pqc.crypto.xmss;

import java.io.Serializable;
import java.util.Objects;
import java.util.Stack;
import org.bouncycastle.pqc.crypto.xmss.Celse;
import org.bouncycastle.pqc.crypto.xmss.Cgoto;
import org.bouncycastle.pqc.crypto.xmss.Ctry;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor implements Serializable {
    private static final long serialVersionUID = 1;
    private int height;
    private final int initialHeight;
    private int nextIndex;
    private Cdefault tailNode;
    private boolean initialized = false;
    private boolean finished = false;

    public Cfor(int i) {
        this.initialHeight = i;
    }

    public int getHeight() {
        if (!this.initialized || this.finished) {
            return Integer.MAX_VALUE;
        }
        return this.height;
    }

    public int getIndexLeaf() {
        return this.nextIndex;
    }

    public Cdefault getTailNode() {
        return this.tailNode.clone();
    }

    public void initialize(int i) {
        this.tailNode = null;
        this.height = this.initialHeight;
        this.nextIndex = i;
        this.initialized = true;
        this.finished = false;
    }

    public boolean isFinished() {
        return this.finished;
    }

    public boolean isInitialized() {
        return this.initialized;
    }

    public void setNode(Cdefault cdefault) {
        this.tailNode = cdefault;
        int height = cdefault.getHeight();
        this.height = height;
        if (height == this.initialHeight) {
            this.finished = true;
        }
    }

    public void update(Stack<Cdefault> stack, Cthis cthis, byte[] bArr, byte[] bArr2, Cgoto cgoto) {
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        if (this.finished || !this.initialized) {
            throw new IllegalStateException("finished or not initialized");
        }
        Cgoto cgoto2 = (Cgoto) new Cgoto.Cif().m36052goto(cgoto.m36045if()).m36053this(cgoto.m36044for()).m35895throw(this.nextIndex).m35893final(cgoto.m35886case()).m35894super(cgoto.m35887else()).m36051else(cgoto.m36043do()).mo35875try();
        Celse celse = (Celse) new Celse.Cif().m36052goto(cgoto2.m36045if()).m36053this(cgoto2.m36044for()).m35872final(this.nextIndex).mo35875try();
        Ctry ctry = (Ctry) new Ctry.Cif().m36052goto(cgoto2.m36045if()).m36053this(cgoto2.m36044for()).m36063final(this.nextIndex).mo35875try();
        cthis.m36035class(cthis.m36034catch(bArr2, cgoto2), bArr);
        Cdefault cdefaultM35876do = Cextends.m35876do(cthis, cthis.m36037else(cgoto2), celse);
        while (!stack.isEmpty() && stack.peek().getHeight() == cdefaultM35876do.getHeight() && stack.peek().getHeight() != this.initialHeight) {
            Ctry ctry2 = (Ctry) new Ctry.Cif().m36052goto(ctry.m36045if()).m36053this(ctry.m36044for()).m36062const(ctry.m36057else()).m36063final((ctry.m36058goto() - 1) / 2).m36051else(ctry.m36043do()).mo35875try();
            Cdefault cdefaultM35877if = Cextends.m35877if(cthis, stack.pop(), cdefaultM35876do, ctry2);
            Cdefault cdefault = new Cdefault(cdefaultM35877if.getHeight() + 1, cdefaultM35877if.getValue());
            ctry = (Ctry) new Ctry.Cif().m36052goto(ctry2.m36045if()).m36053this(ctry2.m36044for()).m36062const(ctry2.m36057else() + 1).m36063final(ctry2.m36058goto()).m36051else(ctry2.m36043do()).mo35875try();
            cdefaultM35876do = cdefault;
        }
        Cdefault cdefault2 = this.tailNode;
        if (cdefault2 == null) {
            this.tailNode = cdefaultM35876do;
        } else if (cdefault2.getHeight() == cdefaultM35876do.getHeight()) {
            Ctry ctry3 = (Ctry) new Ctry.Cif().m36052goto(ctry.m36045if()).m36053this(ctry.m36044for()).m36062const(ctry.m36057else()).m36063final((ctry.m36058goto() - 1) / 2).m36051else(ctry.m36043do()).mo35875try();
            cdefaultM35876do = new Cdefault(this.tailNode.getHeight() + 1, Cextends.m35877if(cthis, this.tailNode, cdefaultM35876do, ctry3).getValue());
            this.tailNode = cdefaultM35876do;
        } else {
            stack.push(cdefaultM35876do);
        }
        if (this.tailNode.getHeight() == this.initialHeight) {
            this.finished = true;
        } else {
            this.height = cdefaultM35876do.getHeight();
            this.nextIndex++;
        }
    }
}
