package org.objectweb.asm;

/* renamed from: org.objectweb.asm.goto, reason: invalid class name */
/* loaded from: classes3.dex */
class Cgoto {

    /* renamed from: case, reason: not valid java name */
    public Cgoto f34053case;

    /* renamed from: do, reason: not valid java name */
    public Cbreak f34054do;

    /* renamed from: for, reason: not valid java name */
    public Cbreak f34055for;

    /* renamed from: if, reason: not valid java name */
    public Cbreak f34056if;

    /* renamed from: new, reason: not valid java name */
    public String f34057new;

    /* renamed from: try, reason: not valid java name */
    public int f34058try;

    /* renamed from: do, reason: not valid java name */
    public static Cgoto m38006do(Cgoto cgoto, Cbreak cbreak, Cbreak cbreak2) {
        if (cgoto == null) {
            return null;
        }
        Cgoto cgotoM38006do = m38006do(cgoto.f34053case, cbreak, cbreak2);
        cgoto.f34053case = cgotoM38006do;
        int i = cgoto.f34054do.f33948new;
        int i2 = cgoto.f34056if.f33948new;
        int i3 = cbreak.f33948new;
        int i4 = cbreak2 == null ? Integer.MAX_VALUE : cbreak2.f33948new;
        if (i3 >= i2 || i4 <= i) {
            return cgoto;
        }
        if (i3 <= i) {
            if (i4 >= i2) {
                return cgotoM38006do;
            }
            cgoto.f34054do = cbreak2;
            return cgoto;
        }
        if (i4 >= i2) {
            cgoto.f34056if = cbreak;
            return cgoto;
        }
        Cgoto cgoto2 = new Cgoto();
        cgoto2.f34054do = cbreak2;
        cgoto2.f34056if = cgoto.f34056if;
        cgoto2.f34055for = cgoto.f34055for;
        cgoto2.f34057new = cgoto.f34057new;
        cgoto2.f34058try = cgoto.f34058try;
        cgoto2.f34053case = cgoto.f34053case;
        cgoto.f34056if = cbreak;
        cgoto.f34053case = cgoto2;
        return cgoto;
    }
}
