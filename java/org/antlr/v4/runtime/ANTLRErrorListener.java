package org.antlr.v4.runtime;

import android.support.v4.Cthrows;
import android.support.v4.ql1;
import java.util.BitSet;
import org.antlr.v4.runtime.dfa.Cdo;

/* loaded from: classes3.dex */
public interface ANTLRErrorListener {
    void reportAmbiguity(Cgoto cgoto, Cdo cdo, int i, int i2, boolean z, BitSet bitSet, Cthrows cthrows);

    void reportAttemptingFullContext(Cgoto cgoto, Cdo cdo, int i, int i2, BitSet bitSet, Cthrows cthrows);

    void reportContextSensitivity(Cgoto cgoto, Cdo cdo, int i, int i2, int i3, Cthrows cthrows);

    void syntaxError(Cthis<?, ?> cthis, Object obj, int i, int i2, String str, ql1 ql1Var);
}
