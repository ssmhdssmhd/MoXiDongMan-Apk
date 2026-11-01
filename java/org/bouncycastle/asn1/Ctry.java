package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.try, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ctry extends Cfinal {

    /* renamed from: do, reason: not valid java name */
    public Ccatch f29204do;

    /* renamed from: for, reason: not valid java name */
    public Cfinal f29205for;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f29206if;

    /* renamed from: new, reason: not valid java name */
    public int f29207new;

    /* renamed from: try, reason: not valid java name */
    public Cfinal f29208try;

    public Ctry(Cimport cimport) {
        int i = 0;
        Cfinal cfinalM33170throw = m33170throw(cimport, 0);
        if (cfinalM33170throw instanceof Ccatch) {
            this.f29204do = (Ccatch) cfinalM33170throw;
            cfinalM33170throw = m33170throw(cimport, 1);
            i = 1;
        }
        if (cfinalM33170throw instanceof Cgoto) {
            this.f29206if = (Cgoto) cfinalM33170throw;
            i++;
            cfinalM33170throw = m33170throw(cimport, i);
        }
        if (!(cfinalM33170throw instanceof Cimport)) {
            this.f29205for = cfinalM33170throw;
            i++;
            cfinalM33170throw = m33170throw(cimport, i);
        }
        if (cimport.m3519new() != i + 1) {
            throw new IllegalArgumentException("input vector too large");
        }
        if (!(cfinalM33170throw instanceof Cimport)) {
            throw new IllegalArgumentException("No tagged object found in vector. Structure doesn't seem to be of type External");
        }
        Cimport cimport2 = (Cimport) cfinalM33170throw;
        m33167native(cimport2.getTagNo());
        this.f29208try = cimport2.m33065const();
    }

    public Ctry(Ccatch ccatch, Cgoto cgoto, Cfinal cfinal, int i, Cfinal cfinal2) {
        m33166import(ccatch);
        m33169return(cgoto);
        m33171while(cfinal);
        m33167native(i);
        m33168public(cfinal2.toASN1Primitive());
    }

    public Ctry(Ccatch ccatch, Cgoto cgoto, Cfinal cfinal, u uVar) {
        this(ccatch, cgoto, cfinal, uVar.getTagNo(), uVar.toASN1Primitive());
    }

    /* renamed from: import, reason: not valid java name */
    private void m33166import(Ccatch ccatch) {
        this.f29204do = ccatch;
    }

    /* renamed from: native, reason: not valid java name */
    private void m33167native(int i) {
        if (i >= 0 && i <= 2) {
            this.f29207new = i;
            return;
        }
        throw new IllegalArgumentException("invalid encoding value: " + i);
    }

    /* renamed from: public, reason: not valid java name */
    private void m33168public(Cfinal cfinal) {
        this.f29208try = cfinal;
    }

    /* renamed from: return, reason: not valid java name */
    private void m33169return(Cgoto cgoto) {
        this.f29206if = cgoto;
    }

    /* renamed from: throw, reason: not valid java name */
    private Cfinal m33170throw(Cimport cimport, int i) {
        if (cimport.m3519new() > i) {
            return cimport.m3517for(i).toASN1Primitive();
        }
        throw new IllegalArgumentException("too few objects in input vector");
    }

    /* renamed from: while, reason: not valid java name */
    private void m33171while(Cfinal cfinal) {
        this.f29205for = cfinal;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        return getEncoded().length;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cfinal m33172catch() {
        return this.f29205for;
    }

    /* renamed from: class, reason: not valid java name */
    public Ccatch m33173class() {
        return this.f29204do;
    }

    /* renamed from: const, reason: not valid java name */
    public int m33174const() {
        return this.f29207new;
    }

    /* renamed from: final, reason: not valid java name */
    public Cfinal m33175final() {
        return this.f29208try;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return true;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        Ccatch ccatch = this.f29204do;
        int iHashCode = ccatch != null ? ccatch.hashCode() : 0;
        Cgoto cgoto = this.f29206if;
        if (cgoto != null) {
            iHashCode ^= cgoto.hashCode();
        }
        Cfinal cfinal = this.f29205for;
        if (cfinal != null) {
            iHashCode ^= cfinal.hashCode();
        }
        return iHashCode ^ this.f29208try.hashCode();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        Cfinal cfinal2;
        Cgoto cgoto;
        Ccatch ccatch;
        if (!(cfinal instanceof Ctry)) {
            return false;
        }
        if (this == cfinal) {
            return true;
        }
        Ctry ctry = (Ctry) cfinal;
        Ccatch ccatch2 = this.f29204do;
        if (ccatch2 != null && ((ccatch = ctry.f29204do) == null || !ccatch.equals(ccatch2))) {
            return false;
        }
        Cgoto cgoto2 = this.f29206if;
        if (cgoto2 != null && ((cgoto = ctry.f29206if) == null || !cgoto.equals(cgoto2))) {
            return false;
        }
        Cfinal cfinal3 = this.f29205for;
        if (cfinal3 == null || ((cfinal2 = ctry.f29205for) != null && cfinal2.equals(cfinal3))) {
            return this.f29208try.equals(ctry.f29208try);
        }
        return false;
    }

    /* renamed from: super, reason: not valid java name */
    public Cgoto m33176super() {
        return this.f29206if;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: this */
    public Cfinal mo32780this() {
        return this instanceof Csynchronized ? this : new Csynchronized(this.f29204do, this.f29206if, this.f29205for, this.f29207new, this.f29208try);
    }
}
