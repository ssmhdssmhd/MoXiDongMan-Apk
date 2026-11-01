package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import fi.iki.elonen.Cdo;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class hr0 extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    public static final hr0 f2461break;

    /* renamed from: case, reason: not valid java name */
    public static final hr0 f2462case;

    /* renamed from: catch, reason: not valid java name */
    public static final hr0 f2463catch;

    /* renamed from: class, reason: not valid java name */
    public static final hr0 f2464class;

    /* renamed from: const, reason: not valid java name */
    public static final hr0 f2465const;

    /* renamed from: default, reason: not valid java name */
    public static final hr0 f2466default;

    /* renamed from: else, reason: not valid java name */
    public static final hr0 f2467else;

    /* renamed from: extends, reason: not valid java name */
    public static final hr0 f2468extends;

    /* renamed from: final, reason: not valid java name */
    public static final hr0 f2469final;

    /* renamed from: for, reason: not valid java name */
    public static final hr0 f2470for;

    /* renamed from: goto, reason: not valid java name */
    public static final hr0 f2471goto;

    /* renamed from: if, reason: not valid java name */
    private static final Ccatch f2472if;

    /* renamed from: import, reason: not valid java name */
    public static final hr0 f2473import;

    /* renamed from: native, reason: not valid java name */
    public static final hr0 f2474native;

    /* renamed from: new, reason: not valid java name */
    public static final hr0 f2475new;

    /* renamed from: public, reason: not valid java name */
    public static final hr0 f2476public;

    /* renamed from: return, reason: not valid java name */
    public static final hr0 f2477return;

    /* renamed from: static, reason: not valid java name */
    public static final hr0 f2478static;

    /* renamed from: super, reason: not valid java name */
    public static final hr0 f2479super;

    /* renamed from: switch, reason: not valid java name */
    public static final hr0 f2480switch;

    /* renamed from: this, reason: not valid java name */
    public static final hr0 f2481this;

    /* renamed from: throw, reason: not valid java name */
    public static final hr0 f2482throw;

    /* renamed from: throws, reason: not valid java name */
    public static final hr0 f2483throws;

    /* renamed from: try, reason: not valid java name */
    public static final hr0 f2484try;

    /* renamed from: while, reason: not valid java name */
    public static final hr0 f2485while;

    /* renamed from: do, reason: not valid java name */
    private Ccatch f2486do;

    static {
        Ccatch ccatch = new Ccatch("1.3.6.1.5.5.7.3");
        f2472if = ccatch;
        f2470for = new hr0(Cif.f29336throws.m32792catch("0"));
        f2475new = new hr0(ccatch.m32792catch("1"));
        f2484try = new hr0(ccatch.m32792catch(ExifInterface.GPS_MEASUREMENT_2D));
        f2462case = new hr0(ccatch.m32792catch(ExifInterface.GPS_MEASUREMENT_3D));
        f2467else = new hr0(ccatch.m32792catch("4"));
        f2471goto = new hr0(ccatch.m32792catch("5"));
        f2481this = new hr0(ccatch.m32792catch("6"));
        f2461break = new hr0(ccatch.m32792catch("7"));
        f2463catch = new hr0(ccatch.m32792catch("8"));
        f2464class = new hr0(ccatch.m32792catch("9"));
        f2465const = new hr0(ccatch.m32792catch("10"));
        f2469final = new hr0(ccatch.m32792catch("11"));
        f2479super = new hr0(ccatch.m32792catch("12"));
        f2482throw = new hr0(ccatch.m32792catch(Cdo.HEADER_WEBSOCKET_VERSION_VALUE));
        f2485while = new hr0(ccatch.m32792catch("14"));
        f2473import = new hr0(ccatch.m32792catch("15"));
        f2474native = new hr0(ccatch.m32792catch("16"));
        f2476public = new hr0(ccatch.m32792catch("17"));
        f2477return = new hr0(ccatch.m32792catch("18"));
        f2478static = new hr0(ccatch.m32792catch("19"));
        f2480switch = new hr0(new Ccatch("1.3.6.1.4.1.311.20.2.2"));
        f2483throws = new hr0(new Ccatch("1.3.6.1.1.1.1.22"));
        f2466default = new hr0(new Ccatch("1.3.6.1.4.1.311.10.3.3"));
        f2468extends = new hr0(new Ccatch("2.16.840.1.113730.4.1"));
    }

    public hr0(String str) {
        this(new Ccatch(str));
    }

    private hr0(Ccatch ccatch) {
        this.f2486do = ccatch;
    }

    /* renamed from: try, reason: not valid java name */
    public static hr0 m3107try(Object obj) {
        if (obj instanceof hr0) {
            return (hr0) obj;
        }
        if (obj != null) {
            return new hr0(Ccatch.m32790throw(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccatch m3108case() {
        return this.f2486do;
    }

    /* renamed from: new, reason: not valid java name */
    public String m3109new() {
        return this.f2486do.m32795super();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2486do;
    }

    public String toString() {
        return this.f2486do.toString();
    }
}
