package org.bouncycastle.util;

import android.support.v4.r12;
import java.util.Collection;

/* loaded from: classes3.dex */
public interface Store<T> {
    Collection<T> getMatches(Selector<T> selector) throws r12;
}
