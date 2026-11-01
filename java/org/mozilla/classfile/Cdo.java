package org.mozilla.classfile;

/* renamed from: org.mozilla.classfile.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo {

    /* renamed from: case, reason: not valid java name */
    private short f33807case;

    /* renamed from: do, reason: not valid java name */
    private short f33808do;

    /* renamed from: else, reason: not valid java name */
    private short f33809else;

    /* renamed from: for, reason: not valid java name */
    private short f33810for;

    /* renamed from: goto, reason: not valid java name */
    private int f33811goto;

    /* renamed from: if, reason: not valid java name */
    private short f33812if;

    /* renamed from: new, reason: not valid java name */
    private boolean f33813new = false;

    /* renamed from: try, reason: not valid java name */
    private short f33814try;

    public Cdo(short s, short s2, short s3) {
        this.f33808do = s;
        this.f33812if = s2;
        this.f33810for = s3;
    }

    /* renamed from: do, reason: not valid java name */
    public int m37791do() {
        return !this.f33813new ? 8 : 16;
    }

    /* renamed from: for, reason: not valid java name */
    public int m37792for(byte[] bArr, int i) {
        int iV = Cfor.V(this.f33812if, bArr, Cfor.V(this.f33808do, bArr, Cfor.V(this.f33810for, bArr, i)));
        if (!this.f33813new) {
            return Cfor.V(0, bArr, iV);
        }
        return Cfor.V(this.f33811goto, bArr, Cfor.V(this.f33809else, bArr, Cfor.V(this.f33807case, bArr, Cfor.V(this.f33814try, bArr, Cfor.V(1, bArr, iV)))));
    }

    /* renamed from: if, reason: not valid java name */
    public void m37793if(short s, short s2, short s3, int i) {
        this.f33813new = true;
        this.f33814try = s;
        this.f33807case = s2;
        this.f33809else = s3;
        this.f33811goto = i;
    }
}
