package org.mozilla.javascript.regexp;

/* loaded from: classes3.dex */
class REBackTrackData {
    public final int continuationOp;
    public final int continuationPc;
    public final int cp;
    public final int op;
    public final long[] parens;
    public final int pc;
    public final REBackTrackData previous;
    public final REProgState stateStackTop;

    public REBackTrackData(REGlobalData rEGlobalData, int i, int i2, int i3, int i4, int i5) {
        this.previous = rEGlobalData.backTrackStackTop;
        this.op = i;
        this.pc = i2;
        this.cp = i3;
        this.continuationOp = i4;
        this.continuationPc = i5;
        this.parens = rEGlobalData.parens;
        this.stateStackTop = rEGlobalData.stateStackTop;
    }
}
