package org.antlr.v4.runtime;

import android.support.v4.rn0;
import android.support.v4.vo1;

/* loaded from: classes3.dex */
public interface TokenStream extends IntStream {
    Token LT(int i);

    Token get(int i);

    String getText();

    String getText(rn0 rn0Var);

    String getText(vo1 vo1Var);

    String getText(Token token, Token token2);

    TokenSource getTokenSource();
}
