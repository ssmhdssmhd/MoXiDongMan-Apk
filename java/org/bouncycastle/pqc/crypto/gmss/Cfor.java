package org.bouncycastle.pqc.crypto.gmss;

import android.support.v4.a4;
import android.support.v4.cc1;
import android.support.v4.ef0;
import android.support.v4.jf0;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.StateAwareMessageSigner;
import org.bouncycastle.util.Memoable;

/* renamed from: org.bouncycastle.pqc.crypto.gmss.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements StateAwareMessageSigner {

    /* renamed from: do, reason: not valid java name */
    private final jf0 f32175do;

    /* renamed from: if, reason: not valid java name */
    private ef0 f32176if;

    /* renamed from: org.bouncycastle.pqc.crypto.gmss.for$do, reason: invalid class name */
    public class Cdo implements GMSSDigestProvider {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Memoable f32177do;

        public Cdo(Memoable memoable) {
            this.f32177do = memoable;
        }

        @Override // org.bouncycastle.pqc.crypto.gmss.GMSSDigestProvider
        public Digest get() {
            return (Digest) this.f32177do.copy();
        }
    }

    public Cfor(Digest digest) {
        if (!(digest instanceof Memoable)) {
            throw new IllegalArgumentException("digest must implement Memoable");
        }
        this.f32175do = new jf0(new Cdo(((Memoable) digest).copy()));
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        if (this.f32176if == null) {
            throw new IllegalStateException("signing key no longer usable");
        }
        byte[] bArrGenerateSignature = this.f32175do.generateSignature(bArr);
        this.f32176if = this.f32176if.m1867super();
        return bArrGenerateSignature;
    }

    @Override // org.bouncycastle.pqc.crypto.StateAwareMessageSigner
    public a4 getUpdatedPrivateKey() {
        ef0 ef0Var = this.f32176if;
        this.f32176if = null;
        return ef0Var;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        if (z) {
            this.f32176if = cipherParameters instanceof cc1 ? (ef0) ((cc1) cipherParameters).m846do() : (ef0) cipherParameters;
        }
        this.f32175do.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        return this.f32175do.verifySignature(bArr, bArr2);
    }
}
