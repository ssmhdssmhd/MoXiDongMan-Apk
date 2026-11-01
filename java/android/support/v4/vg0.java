package android.support.v4;

import java.util.Vector;

/* loaded from: classes3.dex */
public class vg0 {

    /* renamed from: do, reason: not valid java name */
    private Vector f7206do = new Vector();

    /* renamed from: do, reason: not valid java name */
    public vg0 m8850do(tg0 tg0Var) {
        this.f7206do.addElement(tg0Var);
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public ug0 m8851for() {
        int size = this.f7206do.size();
        tg0[] tg0VarArr = new tg0[size];
        for (int i = 0; i != size; i++) {
            tg0VarArr[i] = (tg0) this.f7206do.elementAt(i);
        }
        return new ug0(tg0VarArr);
    }

    /* renamed from: if, reason: not valid java name */
    public vg0 m8852if(ug0 ug0Var) {
        tg0[] tg0VarArrM8440goto = ug0Var.m8440goto();
        for (int i = 0; i != tg0VarArrM8440goto.length; i++) {
            this.f7206do.addElement(tg0VarArrM8440goto[i]);
        }
        return this;
    }
}
