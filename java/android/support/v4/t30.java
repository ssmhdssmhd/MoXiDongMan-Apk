package android.support.v4;

import java.math.BigInteger;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.crypto.ec.Cdo;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.field.FiniteField;
import org.bouncycastle.math.field.Polynomial;
import org.bouncycastle.math.field.PolynomialExtensionField;

/* loaded from: classes3.dex */
public class t30 {

    /* renamed from: do, reason: not valid java name */
    private static Map f6414do = new HashMap();

    static {
        Enumeration enumerationM33358catch = Cdo.m33358catch();
        while (enumerationM33358catch.hasMoreElements()) {
            String str = (String) enumerationM33358catch.nextElement();
            th2 th2VarM45for = a50.m45for(str);
            if (th2VarM45for != null) {
                f6414do.put(th2VarM45for.m7909try(), Cdo.m33363goto(str).m7909try());
            }
        }
        Cif cifM7909try = Cdo.m33363goto("Curve25519").m7909try();
        f6414do.put(new Cif.Ccase(cifM7909try.m35440static().getCharacteristic(), cifM7909try.m35443throw().mo339static(), cifM7909try.m35432import().mo339static(), cifM7909try.m35426extends(), cifM7909try.m35434native()), cifM7909try);
    }

    /* renamed from: break, reason: not valid java name */
    public static ECParameterSpec m7696break(rh2 rh2Var, Cif cif) {
        if (!rh2Var.m6992goto()) {
            if (rh2Var.m6991else()) {
                return null;
            }
            th2 th2VarM7901break = th2.m7901break(rh2Var.m6990case());
            EllipticCurve ellipticCurveM7701do = m7701do(cif, th2VarM7901break.m7904class());
            return th2VarM7901break.m7908this() != null ? new ECParameterSpec(ellipticCurveM7701do, m7706new(th2VarM7901break.m7906goto()), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this().intValue()) : new ECParameterSpec(ellipticCurveM7701do, m7706new(th2VarM7901break.m7906goto()), th2VarM7901break.m7903catch(), 1);
        }
        Ccatch ccatch = (Ccatch) rh2Var.m6990case();
        th2 th2VarM34729break = Celse.m34729break(ccatch);
        if (th2VarM34729break == null) {
            Map additionalECParameters = org.bouncycastle.jce.provider.Cdo.CONFIGURATION.getAdditionalECParameters();
            if (!additionalECParameters.isEmpty()) {
                th2VarM34729break = (th2) additionalECParameters.get(ccatch);
            }
        }
        return new y40(Celse.m34730case(ccatch), m7701do(cif, th2VarM34729break.m7904class()), m7706new(th2VarM34729break.m7906goto()), th2VarM34729break.m7903catch(), th2VarM34729break.m7908this());
    }

    /* renamed from: case, reason: not valid java name */
    public static Cnew m7697case(Cif cif, ECPoint eCPoint, boolean z) {
        return cif.m35430goto(eCPoint.getAffineX(), eCPoint.getAffineY());
    }

    /* renamed from: catch, reason: not valid java name */
    public static ECParameterSpec m7698catch(th2 th2Var) {
        return new ECParameterSpec(m7701do(th2Var.m7909try(), null), m7706new(th2Var.m7906goto()), th2Var.m7903catch(), th2Var.m7908this().intValue());
    }

    /* renamed from: class, reason: not valid java name */
    public static Cif m7699class(ProviderConfiguration providerConfiguration, rh2 rh2Var) {
        Set acceptableNamedCurves = providerConfiguration.getAcceptableNamedCurves();
        if (!rh2Var.m6992goto()) {
            if (rh2Var.m6991else()) {
                return providerConfiguration.getEcImplicitlyCa().m1142do();
            }
            if (acceptableNamedCurves.isEmpty()) {
                return th2.m7901break(rh2Var.m6990case()).m7909try();
            }
            throw new IllegalStateException("encoded parameters not acceptable");
        }
        Ccatch ccatchM32790throw = Ccatch.m32790throw(rh2Var.m6990case());
        if (!acceptableNamedCurves.isEmpty() && !acceptableNamedCurves.contains(ccatchM32790throw)) {
            throw new IllegalStateException("named curve not acceptable");
        }
        th2 th2VarM34729break = Celse.m34729break(ccatchM32790throw);
        if (th2VarM34729break == null) {
            th2VarM34729break = (th2) providerConfiguration.getAdditionalECParameters().get(ccatchM32790throw);
        }
        return th2VarM34729break.m7909try();
    }

    /* renamed from: const, reason: not valid java name */
    public static e40 m7700const(ProviderConfiguration providerConfiguration, ECParameterSpec eCParameterSpec) {
        if (eCParameterSpec != null) {
            return Celse.m34735else(providerConfiguration, m7702else(eCParameterSpec, false));
        }
        d50 ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
        return new e40(ecImplicitlyCa.m1142do(), ecImplicitlyCa.m1144if(), ecImplicitlyCa.m1145new(), ecImplicitlyCa.m1143for(), ecImplicitlyCa.m1146try());
    }

    /* renamed from: do, reason: not valid java name */
    public static EllipticCurve m7701do(Cif cif, byte[] bArr) {
        return new EllipticCurve(m7703for(cif.m35440static()), cif.m35443throw().mo339static(), cif.m35432import().mo339static(), null);
    }

    /* renamed from: else, reason: not valid java name */
    public static d50 m7702else(ECParameterSpec eCParameterSpec, boolean z) {
        Cif cifM7705if = m7705if(eCParameterSpec.getCurve());
        return eCParameterSpec instanceof y40 ? new x40(((y40) eCParameterSpec).m9755for(), cifM7705if, m7697case(cifM7705if, eCParameterSpec.getGenerator(), z), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor()), eCParameterSpec.getCurve().getSeed()) : new d50(cifM7705if, m7697case(cifM7705if, eCParameterSpec.getGenerator(), z), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor()), eCParameterSpec.getCurve().getSeed());
    }

    /* renamed from: for, reason: not valid java name */
    public static ECField m7703for(FiniteField finiteField) {
        if (org.bouncycastle.math.ec.Cdo.m35370super(finiteField)) {
            return new ECFieldFp(finiteField.getCharacteristic());
        }
        Polynomial minimalPolynomial = ((PolynomialExtensionField) finiteField).getMinimalPolynomial();
        int[] exponentsPresent = minimalPolynomial.getExponentsPresent();
        return new ECFieldF2m(minimalPolynomial.getDegree(), q3.D(q3.m6391synchronized(exponentsPresent, 1, exponentsPresent.length - 1)));
    }

    /* renamed from: goto, reason: not valid java name */
    public static ECParameterSpec m7704goto(EllipticCurve ellipticCurve, d50 d50Var) {
        return d50Var instanceof x40 ? new y40(((x40) d50Var).m9391case(), ellipticCurve, m7706new(d50Var.m1144if()), d50Var.m1145new(), d50Var.m1143for()) : new ECParameterSpec(ellipticCurve, m7706new(d50Var.m1144if()), d50Var.m1145new(), d50Var.m1143for().intValue());
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m7705if(EllipticCurve ellipticCurve) {
        ECField field = ellipticCurve.getField();
        BigInteger a = ellipticCurve.getA();
        BigInteger b = ellipticCurve.getB();
        if (field instanceof ECFieldFp) {
            Cif.Ccase ccase = new Cif.Ccase(((ECFieldFp) field).getP(), a, b);
            return f6414do.containsKey(ccase) ? (Cif) f6414do.get(ccase) : ccase;
        }
        ECFieldF2m eCFieldF2m = (ECFieldF2m) field;
        int m = eCFieldF2m.getM();
        int[] iArrM34739if = Celse.m34739if(eCFieldF2m.getMidTermsOfReductionPolynomial());
        return new Cif.Ctry(m, iArrM34739if[0], iArrM34739if[1], iArrM34739if[2], a, b);
    }

    /* renamed from: new, reason: not valid java name */
    public static ECPoint m7706new(Cnew cnew) {
        Cnew cnewM35454abstract = cnew.m35454abstract();
        return new ECPoint(cnewM35454abstract.m35456case().mo339static(), cnewM35454abstract.m35462else().mo339static());
    }

    /* renamed from: this, reason: not valid java name */
    public static ECParameterSpec m7707this(e40 e40Var) {
        return new ECParameterSpec(m7701do(e40Var.m1646do(), null), m7706new(e40Var.m1648if()), e40Var.m1650try(), e40Var.m1647for().intValue());
    }

    /* renamed from: try, reason: not valid java name */
    public static Cnew m7708try(ECParameterSpec eCParameterSpec, ECPoint eCPoint, boolean z) {
        return m7697case(m7705if(eCParameterSpec.getCurve()), eCPoint, z);
    }
}
