package org.bouncycastle.asn1;

import android.support.v4.Creturn;
import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.interface, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cinterface implements ASN1TaggedObjectParser {

    /* renamed from: do, reason: not valid java name */
    private boolean f29098do;

    /* renamed from: for, reason: not valid java name */
    private Cwhile f29099for;

    /* renamed from: if, reason: not valid java name */
    private int f29100if;

    public Cinterface(boolean z, int i, Cwhile cwhile) {
        this.f29098do = z;
        this.f29100if = i;
        this.f29099for = cwhile;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m33071do() {
        return this.f29098do;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() throws IOException {
        return this.f29099for.m33186new(this.f29098do, this.f29100if);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable getObjectParser(int i, boolean z) throws IOException {
        if (!z) {
            return this.f29099for.m33183do(this.f29098do, i);
        }
        if (this.f29098do) {
            return this.f29099for.m33184for();
        }
        throw new IOException("Explicit tags must be constructed (see X.690 8.14.2)");
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagNo() {
        return this.f29100if;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new Creturn(e.getMessage());
        }
    }
}
