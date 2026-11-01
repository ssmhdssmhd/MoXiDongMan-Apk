package android.support.v4;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;

/* loaded from: classes3.dex */
public class ne extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    public static final ne f4180break;

    /* renamed from: case, reason: not valid java name */
    public static final ne f4181case;

    /* renamed from: catch, reason: not valid java name */
    public static final ne f4182catch;

    /* renamed from: class, reason: not valid java name */
    public static final ne f4183class;

    /* renamed from: const, reason: not valid java name */
    public static final ne f4184const;

    /* renamed from: else, reason: not valid java name */
    public static final ne f4185else;

    /* renamed from: final, reason: not valid java name */
    public static final ne f4186final;

    /* renamed from: for, reason: not valid java name */
    public static final ne f4187for;

    /* renamed from: goto, reason: not valid java name */
    public static final ne f4188goto;

    /* renamed from: if, reason: not valid java name */
    public static final ne f4189if;

    /* renamed from: new, reason: not valid java name */
    public static final ne f4190new;

    /* renamed from: super, reason: not valid java name */
    public static final ne f4191super;

    /* renamed from: this, reason: not valid java name */
    public static final ne f4192this;

    /* renamed from: throw, reason: not valid java name */
    private static Map f4193throw;

    /* renamed from: try, reason: not valid java name */
    public static final ne f4194try;

    /* renamed from: do, reason: not valid java name */
    private final Cgoto f4195do;

    static {
        ne neVar = new ne(new Cgoto(0L));
        f4189if = neVar;
        ne neVar2 = new ne(new Cgoto(1L));
        f4187for = neVar2;
        ne neVar3 = new ne(new Cgoto(2L));
        f4190new = neVar3;
        ne neVar4 = new ne(new Cgoto(3L));
        f4194try = neVar4;
        ne neVar5 = new ne(new Cgoto(4L));
        f4181case = neVar5;
        ne neVar6 = new ne(new Cgoto(5L));
        f4185else = neVar6;
        ne neVar7 = new ne(new Cgoto(6L));
        f4188goto = neVar7;
        ne neVar8 = new ne(new Cgoto(7L));
        f4192this = neVar8;
        ne neVar9 = new ne(new Cgoto(8L));
        f4180break = neVar9;
        ne neVar10 = new ne(new Cgoto(9L));
        f4182catch = neVar10;
        ne neVar11 = new ne(new Cgoto(10L));
        f4183class = neVar11;
        ne neVar12 = new ne(new Cgoto(11L));
        f4184const = neVar12;
        ne neVar13 = new ne(new Cgoto(12L));
        f4186final = neVar13;
        ne neVar14 = new ne(new Cgoto(13L));
        f4191super = neVar14;
        HashMap map = new HashMap();
        f4193throw = map;
        map.put(neVar.f4195do, neVar);
        f4193throw.put(neVar2.f4195do, neVar2);
        f4193throw.put(neVar3.f4195do, neVar3);
        f4193throw.put(neVar4.f4195do, neVar4);
        f4193throw.put(neVar5.f4195do, neVar5);
        f4193throw.put(neVar9.f4195do, neVar9);
        f4193throw.put(neVar6.f4195do, neVar6);
        f4193throw.put(neVar7.f4195do, neVar7);
        f4193throw.put(neVar8.f4195do, neVar8);
        f4193throw.put(neVar9.f4195do, neVar9);
        f4193throw.put(neVar10.f4195do, neVar10);
        f4193throw.put(neVar5.f4195do, neVar5);
        f4193throw.put(neVar9.f4195do, neVar9);
        f4193throw.put(neVar11.f4195do, neVar11);
        f4193throw.put(neVar12.f4195do, neVar12);
        f4193throw.put(neVar13.f4195do, neVar13);
        f4193throw.put(neVar14.f4195do, neVar14);
    }

    private ne(Cgoto cgoto) {
        this.f4195do = cgoto;
    }

    /* renamed from: new, reason: not valid java name */
    public static ne m5154new(Object obj) {
        if (obj instanceof ne) {
            return (ne) obj;
        }
        if (obj == null) {
            return null;
        }
        ne neVar = (ne) f4193throw.get(Cgoto.m33040catch(obj));
        if (neVar != null) {
            return neVar;
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4195do;
    }
}
