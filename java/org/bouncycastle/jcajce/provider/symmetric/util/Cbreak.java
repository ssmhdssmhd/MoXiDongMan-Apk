package org.bouncycastle.jcajce.provider.symmetric.util;

import android.support.v4.d6;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.jcajce.provider.symmetric.util.PBE;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends Ctry implements PBE {

    /* renamed from: case, reason: not valid java name */
    private int f31485case;

    /* renamed from: else, reason: not valid java name */
    private int f31486else;

    /* renamed from: for, reason: not valid java name */
    private boolean f31487for;

    /* renamed from: new, reason: not valid java name */
    private int f31488new;

    /* renamed from: try, reason: not valid java name */
    private int f31489try;

    public Cbreak(String str, Ccatch ccatch, boolean z, int i, int i2, int i3, int i4) {
        super(str, ccatch);
        this.f31487for = z;
        this.f31488new = i;
        this.f31489try = i2;
        this.f31485case = i3;
        this.f31486else = i4;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
    public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PBEKeySpec)) {
            throw new InvalidKeySpecException("Invalid KeySpec");
        }
        PBEKeySpec pBEKeySpec = (PBEKeySpec) keySpec;
        if (pBEKeySpec.getSalt() == null) {
            return new d6(this.f31525do, this.f31526if, this.f31488new, this.f31489try, this.f31485case, this.f31486else, pBEKeySpec, null);
        }
        return new d6(this.f31525do, this.f31526if, this.f31488new, this.f31489try, this.f31485case, this.f31486else, pBEKeySpec, this.f31487for ? PBE.Cdo.m34886else(pBEKeySpec, this.f31488new, this.f31489try, this.f31485case, this.f31486else) : PBE.Cdo.m34891try(pBEKeySpec, this.f31488new, this.f31489try, this.f31485case));
    }
}
