package android.support.v4;

import androidx.recyclerview.widget.ItemTouchHelper;

/* loaded from: classes3.dex */
public class s92 {

    /* renamed from: break, reason: not valid java name */
    public static final int f6054break = 22;

    /* renamed from: case, reason: not valid java name */
    public static final int f6055case = 18;

    /* renamed from: catch, reason: not valid java name */
    public static final int f6056catch = 23;

    /* renamed from: class, reason: not valid java name */
    public static final int f6057class = 64;

    /* renamed from: const, reason: not valid java name */
    public static final int f6058const = 65;

    /* renamed from: else, reason: not valid java name */
    public static final int f6059else = 19;

    /* renamed from: final, reason: not valid java name */
    public static final int f6060final = 66;

    /* renamed from: for, reason: not valid java name */
    public static final int f6061for = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f6062goto = 20;

    /* renamed from: if, reason: not valid java name */
    public static final int f6063if = 0;

    /* renamed from: import, reason: not valid java name */
    public static final int f6064import = 70;

    /* renamed from: native, reason: not valid java name */
    public static final int f6065native = 71;

    /* renamed from: new, reason: not valid java name */
    public static final int f6066new = 16;

    /* renamed from: public, reason: not valid java name */
    public static final int f6067public = 72;

    /* renamed from: return, reason: not valid java name */
    public static final int f6068return = 73;

    /* renamed from: static, reason: not valid java name */
    public static final int f6069static = 74;

    /* renamed from: super, reason: not valid java name */
    public static final int f6070super = 67;

    /* renamed from: switch, reason: not valid java name */
    public static final int f6071switch = 75;

    /* renamed from: this, reason: not valid java name */
    public static final int f6072this = 21;

    /* renamed from: throw, reason: not valid java name */
    public static final int f6073throw = 68;

    /* renamed from: try, reason: not valid java name */
    public static final int f6074try = 17;

    /* renamed from: while, reason: not valid java name */
    public static final int f6075while = 69;

    /* renamed from: do, reason: not valid java name */
    private int f6076do;

    public s92(int i) {
        this.f6076do = i;
    }

    /* renamed from: break, reason: not valid java name */
    public static s92 m7318break(int i) {
        return new s92((i << 8) | 385875968);
    }

    /* renamed from: catch, reason: not valid java name */
    public static s92 m7319catch(int i) {
        return new s92((i << 16) | 369098752);
    }

    /* renamed from: class, reason: not valid java name */
    public static s92 m7320class(int i) {
        return new s92(((i & 65535) << 8) | 268435456);
    }

    /* renamed from: const, reason: not valid java name */
    public static s92 m7321const(int i) {
        return new s92((i << 8) | 1107296256);
    }

    /* renamed from: final, reason: not valid java name */
    public static s92 m7322final(int i, int i2) {
        return new s92((i << 24) | i2);
    }

    /* renamed from: super, reason: not valid java name */
    public static s92 m7323super(int i, int i2, int i3) {
        return new s92((i << 24) | (i2 << 16) | (i3 << 8));
    }

    /* renamed from: throw, reason: not valid java name */
    public static s92 m7324throw(int i, int i2) {
        return new s92((i << 24) | (i2 << 16));
    }

    /* renamed from: while, reason: not valid java name */
    public static s92 m7325while(int i) {
        return new s92(i << 24);
    }

    /* renamed from: case, reason: not valid java name */
    public int m7326case() {
        return this.f6076do & 255;
    }

    /* renamed from: do, reason: not valid java name */
    public int m7327do() {
        return (this.f6076do & 16776960) >> 8;
    }

    /* renamed from: else, reason: not valid java name */
    public int m7328else() {
        return (this.f6076do & 65280) >> 8;
    }

    /* renamed from: for, reason: not valid java name */
    public int m7329for() {
        return this.f6076do >>> 24;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m7330goto() {
        return (this.f6076do & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16;
    }

    /* renamed from: if, reason: not valid java name */
    public int m7331if() {
        return (this.f6076do & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16;
    }

    /* renamed from: new, reason: not valid java name */
    public int m7332new() {
        return (short) ((this.f6076do & 16776960) >> 8);
    }

    /* renamed from: this, reason: not valid java name */
    public int m7333this() {
        return this.f6076do;
    }

    /* renamed from: try, reason: not valid java name */
    public int m7334try() {
        return (this.f6076do & 16776960) >> 8;
    }
}
