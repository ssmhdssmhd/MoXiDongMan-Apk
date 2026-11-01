package com.google.common.escape;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import java.util.HashMap;
import java.util.Map;

@ki0
@o8
/* renamed from: com.google.common.escape.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif {

    /* renamed from: if, reason: not valid java name */
    private int f14917if = -1;

    /* renamed from: do, reason: not valid java name */
    private final Map<Character, String> f14916do = new HashMap();

    /* renamed from: com.google.common.escape.if$do, reason: invalid class name */
    public static class Cdo extends com.google.common.escape.Cdo {

        /* renamed from: for, reason: not valid java name */
        private final char[][] f14918for;

        /* renamed from: new, reason: not valid java name */
        private final int f14919new;

        public Cdo(char[][] cArr) {
            this.f14918for = cArr;
            this.f14919new = cArr.length;
        }

        @Override // com.google.common.escape.Cdo
        /* renamed from: for */
        public char[] mo3714for(char c) {
            if (c < this.f14919new) {
                return this.f14918for[c];
            }
            return null;
        }

        @Override // com.google.common.escape.Cdo, com.google.common.escape.Cfor
        /* renamed from: if */
        public String mo852if(String str) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                char[][] cArr = this.f14918for;
                if (cCharAt < cArr.length && cArr[cCharAt] != null) {
                    return m16596new(str, i);
                }
            }
            return str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @lf
    /* renamed from: do, reason: not valid java name */
    public Cif m16599do(char c, String str) {
        this.f14916do.put(Character.valueOf(c), af1.m205continue(str));
        if (c > this.f14917if) {
            this.f14917if = c;
        }
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public char[][] m16600for() {
        char[][] cArr = new char[this.f14917if + 1][];
        for (Map.Entry<Character, String> entry : this.f14916do.entrySet()) {
            cArr[entry.getKey().charValue()] = entry.getValue().toCharArray();
        }
        return cArr;
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public Cif m16601if(char[] cArr, String str) {
        af1.m205continue(str);
        for (char c : cArr) {
            m16599do(c, str);
        }
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m16602new() {
        return new Cdo(m16600for());
    }
}
