package org.bouncycastle.jcajce;

import android.support.v4.r12;
import java.security.cert.Certificate;
import java.util.Collection;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;

/* loaded from: classes3.dex */
public interface PKIXCertStore<T extends Certificate> extends Store<T> {
    @Override // org.bouncycastle.util.Store
    Collection<T> getMatches(Selector<T> selector) throws r12;
}
