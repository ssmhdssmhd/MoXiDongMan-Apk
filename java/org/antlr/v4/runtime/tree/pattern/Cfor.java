package org.antlr.v4.runtime.tree.pattern;

/* renamed from: org.antlr.v4.runtime.tree.pattern.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor extends Cdo {

    /* renamed from: do, reason: not valid java name */
    private final String f28581do;

    /* renamed from: if, reason: not valid java name */
    private final String f28582if;

    public Cfor(String str) {
        this(null, str);
    }

    /* renamed from: do, reason: not valid java name */
    public final String m32085do() {
        return this.f28582if;
    }

    /* renamed from: if, reason: not valid java name */
    public final String m32086if() {
        return this.f28581do;
    }

    public String toString() {
        if (this.f28582if == null) {
            return this.f28581do;
        }
        return this.f28582if + ":" + this.f28581do;
    }

    public Cfor(String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("tag cannot be null or empty");
        }
        this.f28582if = str;
        this.f28581do = str2;
    }
}
