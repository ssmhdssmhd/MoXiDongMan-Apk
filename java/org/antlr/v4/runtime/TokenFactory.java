package org.antlr.v4.runtime;

import android.support.v4.ob1;
import org.antlr.v4.runtime.Token;

/* loaded from: classes3.dex */
public interface TokenFactory<Symbol extends Token> {
    Symbol create(int i, String str);

    Symbol create(ob1<TokenSource, CharStream> ob1Var, int i, String str, int i2, int i3, int i4, int i5, int i6);
}
