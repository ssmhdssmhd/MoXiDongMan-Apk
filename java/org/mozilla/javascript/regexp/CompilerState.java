package org.mozilla.javascript.regexp;

import org.mozilla.javascript.Context;

/* loaded from: classes3.dex */
class CompilerState {
    public char[] cpbegin;
    public int cpend;
    public Context cx;
    public int flags;
    public int parenNesting;
    public RENode result;
    public int cp = 0;
    public int backReferenceLimit = Integer.MAX_VALUE;
    public int maxBackReference = 0;
    public int parenCount = 0;
    public int classCount = 0;
    public int progLength = 0;

    public CompilerState(Context context, char[] cArr, int i, int i2) {
        this.cx = context;
        this.cpbegin = cArr;
        this.cpend = i;
        this.flags = i2;
    }
}
