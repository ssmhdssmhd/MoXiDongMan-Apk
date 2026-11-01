package android.support.v4;

import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import org.antlr.v4.runtime.ANTLRErrorListener;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.Cthis;
import org.antlr.v4.runtime.dfa.Cdo;

/* loaded from: classes3.dex */
public class sg1 implements ANTLRErrorListener {

    /* renamed from: do, reason: not valid java name */
    private final Collection<? extends ANTLRErrorListener> f6149do;

    public sg1(Collection<? extends ANTLRErrorListener> collection) {
        Objects.requireNonNull(collection, "delegates");
        this.f6149do = collection;
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorListener
    public void reportAmbiguity(Cgoto cgoto, Cdo cdo, int i, int i2, boolean z, BitSet bitSet, Cthrows cthrows) {
        Iterator<? extends ANTLRErrorListener> it = this.f6149do.iterator();
        while (it.hasNext()) {
            it.next().reportAmbiguity(cgoto, cdo, i, i2, z, bitSet, cthrows);
        }
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorListener
    public void reportAttemptingFullContext(Cgoto cgoto, Cdo cdo, int i, int i2, BitSet bitSet, Cthrows cthrows) {
        Iterator<? extends ANTLRErrorListener> it = this.f6149do.iterator();
        while (it.hasNext()) {
            it.next().reportAttemptingFullContext(cgoto, cdo, i, i2, bitSet, cthrows);
        }
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorListener
    public void reportContextSensitivity(Cgoto cgoto, Cdo cdo, int i, int i2, int i3, Cthrows cthrows) {
        Iterator<? extends ANTLRErrorListener> it = this.f6149do.iterator();
        while (it.hasNext()) {
            it.next().reportContextSensitivity(cgoto, cdo, i, i2, i3, cthrows);
        }
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorListener
    public void syntaxError(Cthis<?, ?> cthis, Object obj, int i, int i2, String str, ql1 ql1Var) {
        Iterator<? extends ANTLRErrorListener> it = this.f6149do.iterator();
        while (it.hasNext()) {
            it.next().syntaxError(cthis, obj, i, i2, str, ql1Var);
        }
    }
}
