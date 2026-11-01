package com.jayway.jsonpath.internal.filter;

import com.jayway.jsonpath.InvalidPathException;

/* loaded from: classes2.dex */
public enum RelationalOperator {
    GTE(">="),
    LTE("<="),
    EQ("=="),
    TSEQ("==="),
    NE("!="),
    TSNE("!=="),
    LT("<"),
    GT(">"),
    REGEX("=~"),
    NIN("NIN"),
    IN("IN"),
    CONTAINS("CONTAINS"),
    ALL("ALL"),
    SIZE("SIZE"),
    EXISTS("EXISTS"),
    TYPE("TYPE"),
    MATCHES("MATCHES"),
    EMPTY("EMPTY"),
    SUBSETOF("SUBSETOF");

    private final String operatorString;

    RelationalOperator(String str) {
        this.operatorString = str;
    }

    public static RelationalOperator fromString(String str) {
        for (RelationalOperator relationalOperator : values()) {
            if (relationalOperator.operatorString.equals(str.toUpperCase())) {
                return relationalOperator;
            }
        }
        throw new InvalidPathException("Filter operator " + str + " is not supported!");
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.operatorString;
    }
}
