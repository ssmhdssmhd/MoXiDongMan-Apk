package freemarker.core;

import android.support.v4.az1;
import android.support.v4.ez1;
import android.support.v4.k52;
import android.support.v4.vl2;
import android.support.v4.wy1;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

/* loaded from: classes.dex */
class c {

    /* renamed from: do, reason: not valid java name */
    private static final BigDecimal f23528do = new BigDecimal("1");

    /* renamed from: if, reason: not valid java name */
    private static final BigDecimal f23530if = BigDecimal.valueOf(Long.MIN_VALUE);

    /* renamed from: for, reason: not valid java name */
    private static final BigDecimal f23529for = BigDecimal.valueOf(Long.MAX_VALUE);

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f23531new = BigInteger.valueOf(Long.MIN_VALUE);

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f23532try = BigInteger.valueOf(Long.MAX_VALUE);

    /* renamed from: freemarker.core.c$break, reason: invalid class name */
    public static class Cbreak extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) throws k52 {
            return freemarker.template.utility.Ccatch.m29253for(number) ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.c$case, reason: invalid class name */
    public static class Ccase extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) {
            return number instanceof Double ? templateModel : new az1(number.doubleValue());
        }
    }

    /* renamed from: freemarker.core.c$catch, reason: invalid class name */
    public static class Ccatch extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) throws k52 {
            return freemarker.template.utility.Ccatch.m29256try(number) ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.c$class, reason: invalid class name */
    public static class Cclass extends Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (!(templateModelM28055throws instanceof TemplateNumberModel) && (templateModelM28055throws instanceof TemplateDateModel)) {
                return new az1(f0.m28026while((TemplateDateModel) templateModelM28055throws, this.f24114goto).getTime());
            }
            Number numberC = this.f24114goto.c(templateModelM28055throws, d0Var);
            return numberC instanceof Long ? templateModelM28055throws : new az1(numberC.longValue());
        }
    }

    /* renamed from: freemarker.core.c$const, reason: invalid class name */
    public static class Cconst extends Cif {
        public Cconst() {
            super();
        }

        @Override // freemarker.core.c.Cif
        public String s(int i) {
            return freemarker.template.utility.Csuper.x(i);
        }
    }

    /* renamed from: freemarker.core.c$else, reason: invalid class name */
    public static class Celse extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) {
            return number instanceof Float ? templateModel : new az1(number.floatValue());
        }
    }

    /* renamed from: freemarker.core.c$final, reason: invalid class name */
    public static class Cfinal extends Cabstract {

        /* renamed from: final, reason: not valid java name */
        private final int f23533final;

        public Cfinal(int i) {
            this.f23533final = i;
        }

        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) throws k52 {
            return new wy1(new Date(c.m27882for(number)), this.f23533final);
        }
    }

    /* renamed from: freemarker.core.c$for, reason: invalid class name */
    public static class Cfor extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) throws k52 {
            if (number instanceof Integer) {
                int iIntValue = ((Integer) number).intValue();
                return iIntValue < 0 ? new az1(-iIntValue) : templateModel;
            }
            if (number instanceof BigDecimal) {
                BigDecimal bigDecimal = (BigDecimal) number;
                return bigDecimal.signum() < 0 ? new az1(bigDecimal.negate()) : templateModel;
            }
            if (number instanceof Double) {
                double dDoubleValue = ((Double) number).doubleValue();
                return dDoubleValue < 0.0d ? new az1(-dDoubleValue) : templateModel;
            }
            if (number instanceof Float) {
                float fFloatValue = ((Float) number).floatValue();
                return fFloatValue < 0.0f ? new az1(-fFloatValue) : templateModel;
            }
            if (number instanceof Long) {
                long jLongValue = ((Long) number).longValue();
                return jLongValue < 0 ? new az1(-jLongValue) : templateModel;
            }
            if (number instanceof Short) {
                short sShortValue = ((Short) number).shortValue();
                return sShortValue < 0 ? new az1(-sShortValue) : templateModel;
            }
            if (number instanceof Byte) {
                byte bByteValue = ((Byte) number).byteValue();
                return bByteValue < 0 ? new az1(-bByteValue) : templateModel;
            }
            if (!(number instanceof BigInteger)) {
                throw new vl2("Unsupported number class: ", number.getClass());
            }
            BigInteger bigInteger = (BigInteger) number;
            return bigInteger.signum() < 0 ? new az1(bigInteger.negate()) : templateModel;
        }
    }

    /* renamed from: freemarker.core.c$goto, reason: invalid class name */
    public static class Cgoto extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) {
            return new az1(new BigDecimal(number.doubleValue()).divide(c.f23528do, 0, 3));
        }
    }

    /* renamed from: freemarker.core.c$if, reason: invalid class name */
    public static abstract class Cif extends Cabstract {
        private Cif() {
        }

        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) throws k52 {
            try {
                int iM29252else = freemarker.template.utility.Ccatch.m29252else(number);
                if (iM29252else > 0) {
                    return new ez1(s(iM29252else));
                }
                throw new vl2(this.f24114goto, "The left side operand of to ?", this.f24115this, " must be at least 1, but was ", Integer.valueOf(iM29252else), ".");
            } catch (ArithmeticException e) {
                throw new vl2(this.f24114goto, "The left side operand value isn't compatible with ?", this.f24115this, ": ", e.getMessage());
            }
        }

        public abstract String s(int i);
    }

    /* renamed from: freemarker.core.c$new, reason: invalid class name */
    public static class Cnew extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) {
            return number instanceof Byte ? templateModel : new az1(Byte.valueOf(number.byteValue()));
        }
    }

    /* renamed from: freemarker.core.c$super, reason: invalid class name */
    public static class Csuper extends Cabstract {

        /* renamed from: final, reason: not valid java name */
        private static final BigDecimal f23534final = new BigDecimal("0.5");

        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) {
            return new az1(new BigDecimal(number.doubleValue()).add(f23534final).divide(c.f23528do, 0, 3));
        }
    }

    /* renamed from: freemarker.core.c$this, reason: invalid class name */
    public static class Cthis extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) {
            return number instanceof Integer ? templateModel : new az1(number.intValue());
        }
    }

    /* renamed from: freemarker.core.c$throw, reason: invalid class name */
    public static class Cthrow extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) {
            return number instanceof Short ? templateModel : new az1(Short.valueOf(number.shortValue()));
        }
    }

    /* renamed from: freemarker.core.c$try, reason: invalid class name */
    public static class Ctry extends Cabstract {
        @Override // freemarker.core.Cabstract
        public TemplateModel r(Number number, TemplateModel templateModel) {
            return new az1(new BigDecimal(number.doubleValue()).divide(c.f23528do, 0, 2));
        }
    }

    /* renamed from: freemarker.core.c$while, reason: invalid class name */
    public static class Cwhile extends Cif {
        public Cwhile() {
            super();
        }

        @Override // freemarker.core.c.Cif
        public String s(int i) {
            return freemarker.template.utility.Csuper.y(i);
        }
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static final long m27882for(Number number) throws k52 {
        if (number instanceof Double) {
            double dRound = Math.round(((Double) number).doubleValue());
            if (dRound > 9.223372036854776E18d || dRound < -9.223372036854776E18d) {
                throw new vl2("Number doesn't fit into a 64 bit signed integer (long): ", Double.valueOf(dRound));
            }
            return (long) dRound;
        }
        if (number instanceof Float) {
            float fRound = Math.round(((Float) number).floatValue());
            if (fRound > 9.223372E18f || fRound < -9.223372E18f) {
                throw new vl2("Number doesn't fit into a 64 bit signed integer (long): ", Float.valueOf(fRound));
            }
            return (long) fRound;
        }
        if (number instanceof BigDecimal) {
            BigDecimal scale = ((BigDecimal) number).setScale(0, 4);
            if (scale.compareTo(f23529for) > 0 || scale.compareTo(f23530if) < 0) {
                throw new vl2("Number doesn't fit into a 64 bit signed integer (long): ", scale);
            }
            return scale.longValue();
        }
        if (number instanceof BigInteger) {
            BigInteger bigInteger = (BigInteger) number;
            if (bigInteger.compareTo(f23532try) > 0 || bigInteger.compareTo(f23531new) < 0) {
                throw new vl2("Number doesn't fit into a 64 bit signed integer (long): ", bigInteger);
            }
            return bigInteger.longValue();
        }
        if ((number instanceof Long) || (number instanceof Integer) || (number instanceof Byte) || (number instanceof Short)) {
            return number.longValue();
        }
        throw new vl2("Unsupported number type: ", number.getClass());
    }
}
