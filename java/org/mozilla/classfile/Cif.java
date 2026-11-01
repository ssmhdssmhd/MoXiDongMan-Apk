package org.mozilla.classfile;

/* renamed from: org.mozilla.classfile.if, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cif {

    /* renamed from: case, reason: not valid java name */
    private byte[] f33884case;

    /* renamed from: do, reason: not valid java name */
    private String f33885do;

    /* renamed from: for, reason: not valid java name */
    private short f33886for;

    /* renamed from: if, reason: not valid java name */
    private String f33887if;

    /* renamed from: new, reason: not valid java name */
    private short f33888new;

    /* renamed from: try, reason: not valid java name */
    private short f33889try;

    public Cif(String str, short s, String str2, short s2, short s3) {
        this.f33885do = str;
        this.f33886for = s;
        this.f33887if = str2;
        this.f33888new = s2;
        this.f33889try = s3;
    }

    /* renamed from: case, reason: not valid java name */
    public int m37887case(byte[] bArr, int i) {
        int iV = Cfor.V(1, bArr, Cfor.V(this.f33888new, bArr, Cfor.V(this.f33886for, bArr, Cfor.V(this.f33889try, bArr, i))));
        byte[] bArr2 = this.f33884case;
        System.arraycopy(bArr2, 0, bArr, iV, bArr2.length);
        return iV + this.f33884case.length;
    }

    /* renamed from: do, reason: not valid java name */
    public short m37888do() {
        return this.f33889try;
    }

    /* renamed from: for, reason: not valid java name */
    public String m37889for() {
        return this.f33887if;
    }

    /* renamed from: if, reason: not valid java name */
    public String m37890if() {
        return this.f33885do;
    }

    /* renamed from: new, reason: not valid java name */
    public int m37891new() {
        return this.f33884case.length + 8;
    }

    /* renamed from: try, reason: not valid java name */
    public void m37892try(byte[] bArr) {
        this.f33884case = bArr;
    }
}
