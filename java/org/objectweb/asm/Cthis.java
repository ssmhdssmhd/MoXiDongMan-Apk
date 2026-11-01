package org.objectweb.asm;

/* renamed from: org.objectweb.asm.this, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cthis {

    /* renamed from: case, reason: not valid java name */
    public String f34088case;

    /* renamed from: do, reason: not valid java name */
    public int f34089do;

    /* renamed from: else, reason: not valid java name */
    public String f34090else;

    /* renamed from: for, reason: not valid java name */
    public int f34091for;

    /* renamed from: goto, reason: not valid java name */
    public int f34092goto;

    /* renamed from: if, reason: not valid java name */
    public int f34093if;

    /* renamed from: new, reason: not valid java name */
    public long f34094new;

    /* renamed from: this, reason: not valid java name */
    public Cthis f34095this;

    /* renamed from: try, reason: not valid java name */
    public String f34096try;

    public Cthis() {
    }

    public Cthis(int i) {
        this.f34089do = i;
    }

    public Cthis(int i, Cthis cthis) {
        this.f34089do = i;
        this.f34093if = cthis.f34093if;
        this.f34091for = cthis.f34091for;
        this.f34094new = cthis.f34094new;
        this.f34096try = cthis.f34096try;
        this.f34088case = cthis.f34088case;
        this.f34090else = cthis.f34090else;
        this.f34092goto = cthis.f34092goto;
    }

    /* renamed from: case, reason: not valid java name */
    public void m38042case(long j) {
        this.f34093if = 5;
        this.f34094new = j;
        this.f34092goto = Integer.MAX_VALUE & (5 + ((int) j));
    }

    /* renamed from: do, reason: not valid java name */
    public void m38043do(double d) {
        this.f34093if = 6;
        this.f34094new = Double.doubleToRawLongBits(d);
        this.f34092goto = Integer.MAX_VALUE & (this.f34093if + ((int) d));
    }

    /* renamed from: else, reason: not valid java name */
    public void m38044else(String str, String str2, int i) {
        this.f34093if = 18;
        this.f34094new = i;
        this.f34096try = str;
        this.f34088case = str2;
        this.f34092goto = Integer.MAX_VALUE & ((i * str.hashCode() * this.f34088case.hashCode()) + 18);
    }

    /* renamed from: for, reason: not valid java name */
    public void m38045for(int i) {
        this.f34093if = 3;
        this.f34091for = i;
        this.f34092goto = Integer.MAX_VALUE & (3 + i);
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m38046goto(Cthis cthis) {
        int i = this.f34093if;
        if (i != 1) {
            if (i == 12) {
                return cthis.f34096try.equals(this.f34096try) && cthis.f34088case.equals(this.f34088case);
            }
            if (i != 16) {
                if (i == 18) {
                    return cthis.f34094new == this.f34094new && cthis.f34096try.equals(this.f34096try) && cthis.f34088case.equals(this.f34088case);
                }
                switch (i) {
                    case 3:
                    case 4:
                        return cthis.f34091for == this.f34091for;
                    case 5:
                    case 6:
                        break;
                    default:
                        switch (i) {
                            case 30:
                                break;
                            case 31:
                                return cthis.f34091for == this.f34091for && cthis.f34096try.equals(this.f34096try);
                            case 32:
                                break;
                            default:
                                return cthis.f34096try.equals(this.f34096try) && cthis.f34088case.equals(this.f34088case) && cthis.f34090else.equals(this.f34090else);
                        }
                    case 7:
                    case 8:
                        return cthis.f34096try.equals(this.f34096try);
                }
                return cthis.f34094new == this.f34094new;
            }
        }
        return cthis.f34096try.equals(this.f34096try);
    }

    /* renamed from: if, reason: not valid java name */
    public void m38047if(float f) {
        this.f34093if = 4;
        this.f34091for = Float.floatToRawIntBits(f);
        this.f34092goto = Integer.MAX_VALUE & (this.f34093if + ((int) f));
    }

    /* renamed from: new, reason: not valid java name */
    public void m38048new(int i, int i2) {
        this.f34093if = 33;
        this.f34091for = i;
        this.f34092goto = i2;
    }

    /* renamed from: try, reason: not valid java name */
    public void m38049try(int i, String str, String str2, String str3) {
        int iHashCode;
        int iHashCode2;
        int iHashCode3;
        this.f34093if = i;
        this.f34096try = str;
        this.f34088case = str2;
        this.f34090else = str3;
        if (i == 1) {
            iHashCode = str.hashCode();
        } else {
            if (i != 12) {
                if (i != 16 && i != 30) {
                    if (i == 7) {
                        this.f34091for = 0;
                    } else if (i != 8) {
                        iHashCode2 = str.hashCode() * str2.hashCode();
                        iHashCode3 = str3.hashCode();
                    }
                }
                iHashCode = str.hashCode();
            } else {
                iHashCode2 = str.hashCode();
                iHashCode3 = str2.hashCode();
            }
            iHashCode = iHashCode2 * iHashCode3;
        }
        this.f34092goto = (i + iHashCode) & Integer.MAX_VALUE;
    }
}
