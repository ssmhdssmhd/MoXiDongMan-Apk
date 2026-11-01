package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class uv extends Cbreak {

    /* renamed from: new, reason: not valid java name */
    private static final byte[] f6992new = {-87, -42, -21, 69, -15, 60, 112, -126, Byte.MIN_VALUE, -60, -106, 123, 35, t3.f6399protected, 94, -83, -10, 88, -21, -92, -64, 55, 41, t3.f6412volatile, 56, ExifInterface.MARKER_EOI, 107, -16, 37, -54, 78, t3.f6387finally, -8, -23, 114, 13, -58, t3.f6382default, -76, 58, 40, -105, 95, 11, -63, -34, -93, 100, 56, -75, 100, -22, 44, t3.f6387finally, -97, -48, 18, 62, 109, -72, -6, -59, 121, 4};

    /* renamed from: do, reason: not valid java name */
    private Ccatch f6993do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f6994for;

    /* renamed from: if, reason: not valid java name */
    private pv f6995if;

    public uv(pv pvVar) {
        this.f6994for = f6992new;
        this.f6995if = pvVar;
    }

    public uv(Ccatch ccatch) {
        this.f6994for = f6992new;
        this.f6993do = ccatch;
    }

    public uv(Ccatch ccatch, byte[] bArr) {
        this.f6994for = f6992new;
        this.f6993do = ccatch;
        this.f6994for = q3.m6371final(bArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static uv m8658else(Object obj) {
        if (obj instanceof uv) {
            return (uv) obj;
        }
        if (obj == null) {
            throw new IllegalArgumentException("object parse error");
        }
        Csuper csuperM33129catch = Csuper.m33129catch(obj);
        uv uvVar = csuperM33129catch.mo33075final(0) instanceof Ccatch ? new uv(Ccatch.m32790throw(csuperM33129catch.mo33075final(0))) : new uv(pv.m6223goto(csuperM33129catch.mo33075final(0)));
        if (csuperM33129catch.size() == 2) {
            byte[] bArrMo5490const = Cclass.m32796catch(csuperM33129catch.mo33075final(1)).mo5490const();
            uvVar.f6994for = bArrMo5490const;
            if (bArrMo5490const.length != f6992new.length) {
                throw new IllegalArgumentException("object parse error");
            }
        }
        return uvVar;
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m8659try() {
        return q3.m6371final(f6992new);
    }

    /* renamed from: case, reason: not valid java name */
    public pv m8660case() {
        return this.f6995if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Ccatch m8661goto() {
        return this.f6993do;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m8662new() {
        return q3.m6371final(this.f6994for);
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m8663this() {
        return this.f6993do != null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        ASN1Encodable aSN1Encodable = this.f6993do;
        if (aSN1Encodable == null) {
            aSN1Encodable = this.f6995if;
        }
        cimport.m3516do(aSN1Encodable);
        if (!q3.m6362case(this.f6994for, f6992new)) {
            cimport.m3516do(new org.bouncycastle.asn1.j(this.f6994for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
