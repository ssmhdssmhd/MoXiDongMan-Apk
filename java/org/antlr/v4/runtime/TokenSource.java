package org.antlr.v4.runtime;

/* loaded from: classes3.dex */
public interface TokenSource {
    int getCharPositionInLine();

    CharStream getInputStream();

    int getLine();

    String getSourceName();

    TokenFactory<?> getTokenFactory();

    Token nextToken();

    void setTokenFactory(TokenFactory<?> tokenFactory);
}
