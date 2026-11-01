package android.support.v4;

/* loaded from: classes3.dex */
public class x8 {

    /* renamed from: do, reason: not valid java name */
    private final int f7796do;

    /* renamed from: if, reason: not valid java name */
    private final int f7797if;

    public x8(int i) {
        this.f7796do = i;
        int i2 = 0;
        if (i != 0) {
            while ((i & 1) == 0) {
                i2++;
                i >>= 1;
            }
        }
        this.f7797if = i2;
    }

    /* renamed from: break, reason: not valid java name */
    public int m9411break(int i) {
        return i | this.f7796do;
    }

    /* renamed from: case, reason: not valid java name */
    public short m9412case(short s) {
        return (short) m9417else(s);
    }

    /* renamed from: catch, reason: not valid java name */
    public int m9413catch(int i, boolean z) {
        return z ? m9411break(i) : m9416do(i);
    }

    /* renamed from: class, reason: not valid java name */
    public byte m9414class(byte b) {
        return (byte) m9411break(b);
    }

    /* renamed from: const, reason: not valid java name */
    public byte m9415const(byte b, boolean z) {
        return z ? m9414class(b) : m9421if(b);
    }

    /* renamed from: do, reason: not valid java name */
    public int m9416do(int i) {
        return i & (this.f7796do ^ (-1));
    }

    /* renamed from: else, reason: not valid java name */
    public int m9417else(int i) {
        return m9422new(i) >> this.f7797if;
    }

    /* renamed from: final, reason: not valid java name */
    public short m9418final(short s) {
        return (short) m9411break(s);
    }

    /* renamed from: for, reason: not valid java name */
    public short m9419for(short s) {
        return (short) m9416do(s);
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m9420goto(int i) {
        int i2 = this.f7796do;
        return (i & i2) == i2;
    }

    /* renamed from: if, reason: not valid java name */
    public byte m9421if(byte b) {
        return (byte) m9416do(b);
    }

    /* renamed from: new, reason: not valid java name */
    public int m9422new(int i) {
        return i & this.f7796do;
    }

    /* renamed from: super, reason: not valid java name */
    public short m9423super(short s, boolean z) {
        return z ? m9418final(s) : m9419for(s);
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m9424this(int i) {
        return (i & this.f7796do) != 0;
    }

    /* renamed from: throw, reason: not valid java name */
    public short m9425throw(short s, short s2) {
        return (short) m9427while(s, s2);
    }

    /* renamed from: try, reason: not valid java name */
    public short m9426try(short s) {
        return (short) m9422new(s);
    }

    /* renamed from: while, reason: not valid java name */
    public int m9427while(int i, int i2) {
        int i3 = this.f7796do;
        return (i & (i3 ^ (-1))) | ((i2 << this.f7797if) & i3);
    }
}
