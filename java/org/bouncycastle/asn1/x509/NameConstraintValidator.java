package org.bouncycastle.asn1.x509;

import android.support.v4.a21;
import android.support.v4.tg0;
import android.support.v4.wg0;

/* loaded from: classes3.dex */
public interface NameConstraintValidator {
    void addExcludedSubtree(wg0 wg0Var);

    void checkExcluded(tg0 tg0Var) throws a21;

    void checkPermitted(tg0 tg0Var) throws a21;

    void intersectEmptyPermittedSubtree(int i);

    void intersectPermittedSubtree(wg0 wg0Var);

    void intersectPermittedSubtree(wg0[] wg0VarArr);
}
