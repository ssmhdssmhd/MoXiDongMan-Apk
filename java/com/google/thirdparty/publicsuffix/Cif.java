package com.google.thirdparty.publicsuffix;

import android.support.v4.ki0;
import android.support.v4.o8;

@ki0
@o8
/* renamed from: com.google.thirdparty.publicsuffix.if, reason: invalid class name */
/* loaded from: classes2.dex */
public enum Cif {
    PRIVATE(':', ','),
    REGISTRY('!', '?');

    private final char innerNodeCode;
    private final char leafNodeCode;

    Cif(char c, char c2) {
        this.innerNodeCode = c;
        this.leafNodeCode = c2;
    }

    public static Cif fromCode(char c) {
        for (Cif cif : values()) {
            if (cif.getInnerNodeCode() == c || cif.getLeafNodeCode() == c) {
                return cif;
            }
        }
        throw new IllegalArgumentException("No enum corresponding to given code: " + c);
    }

    public static Cif fromIsPrivate(boolean z) {
        return z ? PRIVATE : REGISTRY;
    }

    public char getInnerNodeCode() {
        return this.innerNodeCode;
    }

    public char getLeafNodeCode() {
        return this.leafNodeCode;
    }
}
