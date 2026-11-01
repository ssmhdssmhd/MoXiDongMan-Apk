package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.ay0;
import android.support.v4.b51;
import android.support.v4.hy1;
import android.support.v4.ki0;
import android.support.v4.t3;
import java.io.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@ki0
/* renamed from: com.google.common.base.for, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cfor {
    public static final Cfor LOWER_CAMEL;
    public static final Cfor LOWER_HYPHEN;
    public static final Cfor LOWER_UNDERSCORE;
    public static final Cfor UPPER_CAMEL;
    public static final Cfor UPPER_UNDERSCORE;

    /* renamed from: do, reason: not valid java name */
    private static final /* synthetic */ Cfor[] f13670do;
    private final com.google.common.base.Cnew wordBoundary;
    private final String wordSeparator;

    /* renamed from: com.google.common.base.for$case, reason: invalid class name */
    public static final class Ccase extends Celse<String, String> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Cfor sourceFormat;
        private final Cfor targetFormat;

        public Ccase(Cfor cfor, Cfor cfor2) {
            this.sourceFormat = (Cfor) af1.m205continue(cfor);
            this.targetFormat = (Cfor) af1.m205continue(cfor2);
        }

        @Override // com.google.common.base.Celse, com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Ccase)) {
                return false;
            }
            Ccase ccase = (Ccase) obj;
            return this.sourceFormat.equals(ccase.sourceFormat) && this.targetFormat.equals(ccase.targetFormat);
        }

        public int hashCode() {
            return this.sourceFormat.hashCode() ^ this.targetFormat.hashCode();
        }

        public String toString() {
            return this.sourceFormat + ".converterTo(" + this.targetFormat + ")";
        }

        @Override // com.google.common.base.Celse
        public String doBackward(String str) {
            return this.targetFormat.to(this.sourceFormat, str);
        }

        @Override // com.google.common.base.Celse
        public String doForward(String str) {
            return this.sourceFormat.to(this.targetFormat, str);
        }
    }

    /* renamed from: com.google.common.base.for$do, reason: invalid class name */
    public enum Cdo extends Cfor {
        public Cdo(String str, int i, com.google.common.base.Cnew cnew, String str2) {
            super(str, i, cnew, str2, null);
        }

        @Override // com.google.common.base.Cfor
        public String convert(Cfor cfor, String str) {
            return cfor == Cfor.LOWER_UNDERSCORE ? str.replace(hy1.f2561for, '_') : cfor == Cfor.UPPER_UNDERSCORE ? t3.m7685break(str.replace(hy1.f2561for, '_')) : super.convert(cfor, str);
        }

        @Override // com.google.common.base.Cfor
        public String normalizeWord(String str) {
            return t3.m7689else(str);
        }
    }

    static {
        Cdo cdo = new Cdo("LOWER_HYPHEN", 0, com.google.common.base.Cnew.m15143while(hy1.f2561for), "-");
        LOWER_HYPHEN = cdo;
        String str = "_";
        Cfor cfor = new Cfor("LOWER_UNDERSCORE", 1, com.google.common.base.Cnew.m15143while('_'), str) { // from class: com.google.common.base.for.if
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.common.base.Cfor
            public String convert(Cfor cfor2, String str2) {
                return cfor2 == Cfor.LOWER_HYPHEN ? str2.replace('_', hy1.f2561for) : cfor2 == Cfor.UPPER_UNDERSCORE ? t3.m7685break(str2) : super.convert(cfor2, str2);
            }

            @Override // com.google.common.base.Cfor
            public String normalizeWord(String str2) {
                return t3.m7689else(str2);
            }
        };
        LOWER_UNDERSCORE = cfor;
        String str2 = "";
        Cfor cfor2 = new Cfor("LOWER_CAMEL", 2, com.google.common.base.Cnew.m15125const('A', ay0.f286for), str2) { // from class: com.google.common.base.for.for
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.common.base.Cfor
            public String normalizeFirstWord(String str3) {
                return t3.m7689else(str3);
            }

            @Override // com.google.common.base.Cfor
            public String normalizeWord(String str3) {
                return Cfor.m15101do(str3);
            }
        };
        LOWER_CAMEL = cfor2;
        Cfor cfor3 = new Cfor("UPPER_CAMEL", 3, com.google.common.base.Cnew.m15125const('A', ay0.f286for), str2) { // from class: com.google.common.base.for.new
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.common.base.Cfor
            public String normalizeWord(String str3) {
                return Cfor.m15101do(str3);
            }
        };
        UPPER_CAMEL = cfor3;
        Cfor cfor4 = new Cfor("UPPER_UNDERSCORE", 4, com.google.common.base.Cnew.m15143while('_'), str) { // from class: com.google.common.base.for.try
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.common.base.Cfor
            public String convert(Cfor cfor5, String str3) {
                return cfor5 == Cfor.LOWER_HYPHEN ? t3.m7689else(str3.replace('_', hy1.f2561for)) : cfor5 == Cfor.LOWER_UNDERSCORE ? t3.m7689else(str3) : super.convert(cfor5, str3);
            }

            @Override // com.google.common.base.Cfor
            public String normalizeWord(String str3) {
                return t3.m7685break(str3);
            }
        };
        UPPER_UNDERSCORE = cfor4;
        f13670do = new Cfor[]{cdo, cfor, cfor2, cfor3, cfor4};
    }

    public /* synthetic */ Cfor(String str, int i, com.google.common.base.Cnew cnew, String str2, Cdo cdo) {
        this(str, i, cnew, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public static String m15101do(String str) {
        if (str.isEmpty()) {
            return str;
        }
        return t3.m7691goto(str.charAt(0)) + t3.m7689else(str.substring(1));
    }

    public static Cfor valueOf(String str) {
        return (Cfor) Enum.valueOf(Cfor.class, str);
    }

    public static Cfor[] values() {
        return (Cfor[]) f13670do.clone();
    }

    public String convert(Cfor cfor, String str) {
        StringBuilder sb = null;
        int length = 0;
        int iMo15155super = -1;
        while (true) {
            iMo15155super = this.wordBoundary.mo15155super(str, iMo15155super + 1);
            if (iMo15155super == -1) {
                break;
            }
            if (length == 0) {
                sb = new StringBuilder(str.length() + (cfor.wordSeparator.length() * 4));
                sb.append(cfor.normalizeFirstWord(str.substring(length, iMo15155super)));
            } else {
                sb.append(cfor.normalizeWord(str.substring(length, iMo15155super)));
            }
            sb.append(cfor.wordSeparator);
            length = this.wordSeparator.length() + iMo15155super;
        }
        if (length == 0) {
            return cfor.normalizeFirstWord(str);
        }
        sb.append(cfor.normalizeWord(str.substring(length)));
        return sb.toString();
    }

    public Celse<String, String> converterTo(Cfor cfor) {
        return new Ccase(this, cfor);
    }

    public String normalizeFirstWord(String str) {
        return normalizeWord(str);
    }

    public abstract String normalizeWord(String str);

    public final String to(Cfor cfor, String str) {
        af1.m205continue(cfor);
        af1.m205continue(str);
        return cfor == this ? str : convert(cfor, str);
    }

    private Cfor(String str, int i, com.google.common.base.Cnew cnew, String str2) {
        this.wordBoundary = cnew;
        this.wordSeparator = str2;
    }
}
