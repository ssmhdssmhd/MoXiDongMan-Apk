package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.li0;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@li0
/* renamed from: com.google.common.base.const, reason: invalid class name */
/* loaded from: classes.dex */
final class Cconst extends Ccase implements Serializable {
    private static final long serialVersionUID = 0;
    private final Pattern pattern;

    /* renamed from: com.google.common.base.const$do, reason: invalid class name */
    public static final class Cdo extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public final Matcher f13648do;

        public Cdo(Matcher matcher) {
            this.f13648do = (Matcher) af1.m205continue(matcher);
        }

        @Override // com.google.common.base.Ctry
        /* renamed from: case, reason: not valid java name */
        public int mo15027case() {
            return this.f13648do.start();
        }

        @Override // com.google.common.base.Ctry
        /* renamed from: do, reason: not valid java name */
        public int mo15028do() {
            return this.f13648do.end();
        }

        @Override // com.google.common.base.Ctry
        /* renamed from: for, reason: not valid java name */
        public boolean mo15029for(int i) {
            return this.f13648do.find(i);
        }

        @Override // com.google.common.base.Ctry
        /* renamed from: if, reason: not valid java name */
        public boolean mo15030if() {
            return this.f13648do.find();
        }

        @Override // com.google.common.base.Ctry
        /* renamed from: new, reason: not valid java name */
        public boolean mo15031new() {
            return this.f13648do.matches();
        }

        @Override // com.google.common.base.Ctry
        /* renamed from: try, reason: not valid java name */
        public String mo15032try(String str) {
            return this.f13648do.replaceAll(str);
        }
    }

    public Cconst(Pattern pattern) {
        this.pattern = (Pattern) af1.m205continue(pattern);
    }

    @Override // com.google.common.base.Ccase
    public int flags() {
        return this.pattern.flags();
    }

    @Override // com.google.common.base.Ccase
    public Ctry matcher(CharSequence charSequence) {
        return new Cdo(this.pattern.matcher(charSequence));
    }

    @Override // com.google.common.base.Ccase
    public String pattern() {
        return this.pattern.pattern();
    }

    @Override // com.google.common.base.Ccase
    public String toString() {
        return this.pattern.toString();
    }
}
