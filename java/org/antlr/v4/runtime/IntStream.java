package org.antlr.v4.runtime;

/* loaded from: classes3.dex */
public interface IntStream {
    public static final int EOF = -1;
    public static final String UNKNOWN_SOURCE_NAME = "<unknown>";

    int LA(int i);

    void consume();

    String getSourceName();

    int index();

    int mark();

    void release(int i);

    void seek(int i);

    int size();
}
