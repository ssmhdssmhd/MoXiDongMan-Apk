package org.mozilla.classfile;

/* renamed from: org.mozilla.classfile.else, reason: invalid class name */
/* loaded from: classes3.dex */
final class Celse {

    /* renamed from: do, reason: not valid java name */
    private String f33815do;

    /* renamed from: for, reason: not valid java name */
    private String f33816for;

    /* renamed from: if, reason: not valid java name */
    private String f33817if;

    /* renamed from: new, reason: not valid java name */
    private int f33818new = -1;

    public Celse(String str, String str2, String str3) {
        this.f33815do = str;
        this.f33817if = str2;
        this.f33816for = str3;
    }

    /* renamed from: do, reason: not valid java name */
    public String m37794do() {
        return this.f33815do;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Celse)) {
            return false;
        }
        Celse celse = (Celse) obj;
        return this.f33815do.equals(celse.f33815do) && this.f33817if.equals(celse.f33817if) && this.f33816for.equals(celse.f33816for);
    }

    /* renamed from: for, reason: not valid java name */
    public String m37795for() {
        return this.f33816for;
    }

    public int hashCode() {
        if (this.f33818new == -1) {
            this.f33818new = (this.f33815do.hashCode() ^ this.f33817if.hashCode()) ^ this.f33816for.hashCode();
        }
        return this.f33818new;
    }

    /* renamed from: if, reason: not valid java name */
    public String m37796if() {
        return this.f33817if;
    }
}
