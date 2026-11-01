package android.support.v4;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;

/* loaded from: classes3.dex */
public class pe extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final pe f4933case;

    /* renamed from: else, reason: not valid java name */
    public static final pe f4934else;

    /* renamed from: for, reason: not valid java name */
    public static final pe f4935for;

    /* renamed from: goto, reason: not valid java name */
    public static final pe f4936goto;

    /* renamed from: if, reason: not valid java name */
    public static final pe f4937if;

    /* renamed from: new, reason: not valid java name */
    public static final pe f4938new;

    /* renamed from: this, reason: not valid java name */
    private static Map f4939this;

    /* renamed from: try, reason: not valid java name */
    public static final pe f4940try;

    /* renamed from: do, reason: not valid java name */
    private final Cgoto f4941do;

    static {
        pe peVar = new pe(new Cgoto(0L));
        f4937if = peVar;
        pe peVar2 = new pe(new Cgoto(2L));
        f4935for = peVar2;
        pe peVar3 = new pe(new Cgoto(3L));
        f4938new = peVar3;
        pe peVar4 = new pe(new Cgoto(4L));
        f4940try = peVar4;
        pe peVar5 = new pe(new Cgoto(5L));
        f4933case = peVar5;
        pe peVar6 = new pe(new Cgoto(6L));
        f4934else = peVar6;
        pe peVar7 = new pe(new Cgoto(7L));
        f4936goto = peVar7;
        HashMap map = new HashMap();
        f4939this = map;
        map.put(peVar.f4941do, peVar);
        f4939this.put(peVar2.f4941do, peVar2);
        f4939this.put(peVar3.f4941do, peVar3);
        f4939this.put(peVar4.f4941do, peVar4);
        f4939this.put(peVar5.f4941do, peVar5);
        f4939this.put(peVar6.f4941do, peVar6);
        f4939this.put(peVar7.f4941do, peVar7);
    }

    private pe(Cgoto cgoto) {
        this.f4941do = cgoto;
    }

    /* renamed from: new, reason: not valid java name */
    public static pe m5954new(Object obj) {
        if (obj instanceof pe) {
            return (pe) obj;
        }
        if (obj == null) {
            return null;
        }
        pe peVar = (pe) f4939this.get(Cgoto.m33040catch(obj));
        if (peVar != null) {
            return peVar;
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4941do;
    }
}
