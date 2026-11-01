package com.google.protobuf;

import android.support.v4.ca2;
import android.support.v4.oa1;
import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.FieldSet;
import com.google.protobuf.Internal;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.c2;
import com.google.protobuf.j1;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class Descriptors {

    /* renamed from: do, reason: not valid java name */
    private static final Logger f16290do = Logger.getLogger(Descriptors.class.getName());

    /* renamed from: com.google.protobuf.Descriptors$break, reason: invalid class name */
    public static final class Cbreak extends Cgoto {

        /* renamed from: case, reason: not valid java name */
        private int f16300case;

        /* renamed from: do, reason: not valid java name */
        private final int f16301do;

        /* renamed from: else, reason: not valid java name */
        private Celse[] f16302else;

        /* renamed from: for, reason: not valid java name */
        private final String f16303for;

        /* renamed from: if, reason: not valid java name */
        private DescriptorProtos.Cfinal f16304if;

        /* renamed from: new, reason: not valid java name */
        private final FileDescriptor f16305new;

        /* renamed from: try, reason: not valid java name */
        private Cif f16306try;

        public /* synthetic */ Cbreak(DescriptorProtos.Cfinal cfinal, FileDescriptor fileDescriptor, Cif cif, int i, Cdo cdo) throws Cnew {
            this(cfinal, fileDescriptor, cif, i);
        }

        /* renamed from: goto, reason: not valid java name */
        public static /* synthetic */ int m19247goto(Cbreak cbreak) {
            int i = cbreak.f16300case;
            cbreak.f16300case = i + 1;
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: while, reason: not valid java name */
        public void m19250while(DescriptorProtos.Cfinal cfinal) {
            this.f16304if = cfinal;
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m19251break() {
            return this.f16306try;
        }

        /* renamed from: catch, reason: not valid java name */
        public Celse m19252catch(int i) {
            return this.f16302else[i];
        }

        /* renamed from: class, reason: not valid java name */
        public int m19253class() {
            return this.f16300case;
        }

        /* renamed from: const, reason: not valid java name */
        public List<Celse> m19254const() {
            return Collections.unmodifiableList(Arrays.asList(this.f16302else));
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: do */
        public FileDescriptor mo19232do() {
            return this.f16305new;
        }

        /* renamed from: final, reason: not valid java name */
        public int m19255final() {
            return this.f16301do;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: for */
        public String mo19234for() {
            return this.f16304if.getName();
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: if */
        public String mo19235if() {
            return this.f16303for;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public DescriptorProtos.Cfinal mo19238new() {
            return this.f16304if;
        }

        /* renamed from: super, reason: not valid java name */
        public DescriptorProtos.Csuper m19257super() {
            return this.f16304if.getOptions();
        }

        /* renamed from: throw, reason: not valid java name */
        public boolean m19258throw() {
            Celse[] celseArr = this.f16302else;
            return celseArr.length == 1 && celseArr[0].f16326else;
        }

        private Cbreak(DescriptorProtos.Cfinal cfinal, FileDescriptor fileDescriptor, Cif cif, int i) throws Cnew {
            super(null);
            this.f16304if = cfinal;
            this.f16303for = Descriptors.m19212for(fileDescriptor, cif, cfinal.getName());
            this.f16305new = fileDescriptor;
            this.f16301do = i;
            this.f16306try = cif;
            this.f16300case = 0;
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$case, reason: invalid class name */
    public static final class Ccase extends Cgoto implements Internal.EnumLite {

        /* renamed from: do, reason: not valid java name */
        private final int f16307do;

        /* renamed from: for, reason: not valid java name */
        private final String f16308for;

        /* renamed from: if, reason: not valid java name */
        private DescriptorProtos.Cfor f16309if;

        /* renamed from: new, reason: not valid java name */
        private final FileDescriptor f16310new;

        /* renamed from: try, reason: not valid java name */
        private final Ctry f16311try;

        public /* synthetic */ Ccase(DescriptorProtos.Cfor cfor, FileDescriptor fileDescriptor, Ctry ctry, int i, Cdo cdo) throws Cnew {
            this(cfor, fileDescriptor, ctry, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public void m19259this(DescriptorProtos.Cfor cfor) {
            this.f16309if = cfor;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public DescriptorProtos.Cfor mo19238new() {
            return this.f16309if;
        }

        /* renamed from: case, reason: not valid java name */
        public int m19262case() {
            return this.f16307do;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: do */
        public FileDescriptor mo19232do() {
            return this.f16310new;
        }

        /* renamed from: else, reason: not valid java name */
        public DescriptorProtos.Cnew m19263else() {
            return this.f16309if.getOptions();
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: for */
        public String mo19234for() {
            return this.f16309if.getName();
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public int getNumber() {
            return this.f16309if.getNumber();
        }

        /* renamed from: goto, reason: not valid java name */
        public Ctry m19264goto() {
            return this.f16311try;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: if */
        public String mo19235if() {
            return this.f16308for;
        }

        public String toString() {
            return this.f16309if.getName();
        }

        public /* synthetic */ Ccase(FileDescriptor fileDescriptor, Ctry ctry, Integer num, Cdo cdo) {
            this(fileDescriptor, ctry, num);
        }

        private Ccase(DescriptorProtos.Cfor cfor, FileDescriptor fileDescriptor, Ctry ctry, int i) throws Cnew {
            super(null);
            this.f16307do = i;
            this.f16309if = cfor;
            this.f16310new = fileDescriptor;
            this.f16311try = ctry;
            String strMo19235if = ctry.mo19235if();
            String name = cfor.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 1 + String.valueOf(name).length());
            sb.append(strMo19235if);
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(name);
            this.f16308for = sb.toString();
            fileDescriptor.f16295goto.m19308case(this);
            fileDescriptor.f16295goto.m19312for(this);
        }

        private Ccase(FileDescriptor fileDescriptor, Ctry ctry, Integer num) {
            super(null);
            String strMo19234for = ctry.mo19234for();
            String strValueOf = String.valueOf(num);
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19234for).length() + 20 + strValueOf.length());
            sb.append("UNKNOWN_ENUM_VALUE_");
            sb.append(strMo19234for);
            sb.append("_");
            sb.append(strValueOf);
            DescriptorProtos.Cfor cforM19011if = DescriptorProtos.Cfor.newBuilder().m19015public(sb.toString()).m19017static(num.intValue()).build();
            this.f16307do = -1;
            this.f16309if = cforM19011if;
            this.f16310new = fileDescriptor;
            this.f16311try = ctry;
            String strMo19235if = ctry.mo19235if();
            String name = cforM19011if.getName();
            StringBuilder sb2 = new StringBuilder(String.valueOf(strMo19235if).length() + 1 + String.valueOf(name).length());
            sb2.append(strMo19235if);
            sb2.append(org.apache.commons.lang3.Ctry.f28883do);
            sb2.append(name);
            this.f16308for = sb2.toString();
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$catch, reason: invalid class name */
    public static final class Ccatch extends Cgoto {

        /* renamed from: do, reason: not valid java name */
        private final int f16312do;

        /* renamed from: for, reason: not valid java name */
        private final String f16313for;

        /* renamed from: if, reason: not valid java name */
        private DescriptorProtos.Cthrow f16314if;

        /* renamed from: new, reason: not valid java name */
        private final FileDescriptor f16315new;

        /* renamed from: try, reason: not valid java name */
        private Cthis[] f16316try;

        public /* synthetic */ Ccatch(DescriptorProtos.Cthrow cthrow, FileDescriptor fileDescriptor, int i, Cdo cdo) throws Cnew {
            this(cthrow, fileDescriptor, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name */
        public void m19266class(DescriptorProtos.Cthrow cthrow) {
            this.f16314if = cthrow;
            int i = 0;
            while (true) {
                Cthis[] cthisArr = this.f16316try;
                if (i >= cthisArr.length) {
                    return;
                }
                cthisArr[i].m19340super(cthrow.getMethod(i));
                i++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public void m19267else() throws Cnew {
            for (Cthis cthis : this.f16316try) {
                cthis.m19339else();
            }
        }

        /* renamed from: break, reason: not valid java name */
        public List<Cthis> m19269break() {
            return Collections.unmodifiableList(Arrays.asList(this.f16316try));
        }

        /* renamed from: catch, reason: not valid java name */
        public DescriptorProtos.Cwhile m19270catch() {
            return this.f16314if.getOptions();
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public DescriptorProtos.Cthrow mo19238new() {
            return this.f16314if;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: do */
        public FileDescriptor mo19232do() {
            return this.f16315new;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: for */
        public String mo19234for() {
            return this.f16314if.getName();
        }

        /* renamed from: goto, reason: not valid java name */
        public Cthis m19272goto(String str) {
            Cfor cfor = this.f16315new.f16295goto;
            String str2 = this.f16313for;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
            sb.append(str2);
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(str);
            Cgoto cgotoM19311else = cfor.m19311else(sb.toString());
            if (cgotoM19311else == null || !(cgotoM19311else instanceof Cthis)) {
                return null;
            }
            return (Cthis) cgotoM19311else;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: if */
        public String mo19235if() {
            return this.f16313for;
        }

        /* renamed from: this, reason: not valid java name */
        public int m19273this() {
            return this.f16312do;
        }

        private Ccatch(DescriptorProtos.Cthrow cthrow, FileDescriptor fileDescriptor, int i) throws Cnew {
            super(null);
            this.f16312do = i;
            this.f16314if = cthrow;
            this.f16313for = Descriptors.m19212for(fileDescriptor, null, cthrow.getName());
            this.f16315new = fileDescriptor;
            this.f16316try = new Cthis[cthrow.getMethodCount()];
            for (int i2 = 0; i2 < cthrow.getMethodCount(); i2++) {
                this.f16316try[i2] = new Cthis(cthrow.getMethod(i2), fileDescriptor, this, i2, null);
            }
            fileDescriptor.f16295goto.m19308case(this);
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16317do;

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ int[] f16318if;

        static {
            int[] iArr = new int[Celse.Cdo.values().length];
            f16318if = iArr;
            try {
                iArr[Celse.Cdo.ENUM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16318if[Celse.Cdo.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Celse.Cif.values().length];
            f16317do = iArr2;
            try {
                iArr2[Celse.Cif.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16317do[Celse.Cif.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16317do[Celse.Cif.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16317do[Celse.Cif.UINT32.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16317do[Celse.Cif.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16317do[Celse.Cif.INT64.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16317do[Celse.Cif.SINT64.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16317do[Celse.Cif.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16317do[Celse.Cif.UINT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16317do[Celse.Cif.FIXED64.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16317do[Celse.Cif.FLOAT.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16317do[Celse.Cif.DOUBLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16317do[Celse.Cif.BOOL.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16317do[Celse.Cif.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16317do[Celse.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f16317do[Celse.Cif.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f16317do[Celse.Cif.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f16317do[Celse.Cif.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$else, reason: invalid class name */
    public static final class Celse extends Cgoto implements Comparable<Celse>, FieldSet.FieldDescriptorLite<Celse> {

        /* renamed from: final, reason: not valid java name */
        private static final c2.Cif[] f16319final = c2.Cif.values();

        /* renamed from: break, reason: not valid java name */
        private Cif f16320break;

        /* renamed from: case, reason: not valid java name */
        private final Cif f16321case;

        /* renamed from: catch, reason: not valid java name */
        private Cbreak f16322catch;

        /* renamed from: class, reason: not valid java name */
        private Ctry f16323class;

        /* renamed from: const, reason: not valid java name */
        private Object f16324const;

        /* renamed from: do, reason: not valid java name */
        private final int f16325do;

        /* renamed from: else, reason: not valid java name */
        private final boolean f16326else;

        /* renamed from: for, reason: not valid java name */
        private final String f16327for;

        /* renamed from: goto, reason: not valid java name */
        private Cif f16328goto;

        /* renamed from: if, reason: not valid java name */
        private DescriptorProtos.Ccase f16329if;

        /* renamed from: new, reason: not valid java name */
        private final String f16330new;

        /* renamed from: this, reason: not valid java name */
        private Cif f16331this;

        /* renamed from: try, reason: not valid java name */
        private final FileDescriptor f16332try;

        /* renamed from: com.google.protobuf.Descriptors$else$do, reason: invalid class name */
        public enum Cdo {
            INT(0),
            LONG(0L),
            FLOAT(Float.valueOf(0.0f)),
            DOUBLE(Double.valueOf(0.0d)),
            BOOLEAN(Boolean.FALSE),
            STRING(""),
            BYTE_STRING(ByteString.EMPTY),
            ENUM(null),
            MESSAGE(null);

            private final Object defaultDefault;

            Cdo(Object obj) {
                this.defaultDefault = obj;
            }
        }

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT64' uses external variables
        	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
        	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
        	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
        	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
         */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* renamed from: com.google.protobuf.Descriptors$else$if, reason: invalid class name */
        public static final class Cif {
            public static final Cif BOOL;
            public static final Cif BYTES;
            public static final Cif DOUBLE;
            public static final Cif ENUM;
            public static final Cif FIXED32;
            public static final Cif FIXED64;
            public static final Cif FLOAT;
            public static final Cif GROUP;
            public static final Cif INT32;
            public static final Cif INT64;
            public static final Cif MESSAGE;
            public static final Cif SFIXED32;
            public static final Cif SFIXED64;
            public static final Cif SINT32;
            public static final Cif SINT64;
            public static final Cif STRING;
            public static final Cif UINT32;
            public static final Cif UINT64;

            /* renamed from: do, reason: not valid java name */
            private static final /* synthetic */ Cif[] f16334do;
            private Cdo javaType;

            static {
                Cif cif = new Cif("DOUBLE", 0, Cdo.DOUBLE);
                DOUBLE = cif;
                Cif cif2 = new Cif("FLOAT", 1, Cdo.FLOAT);
                FLOAT = cif2;
                Cdo cdo = Cdo.LONG;
                Cif cif3 = new Cif("INT64", 2, cdo);
                INT64 = cif3;
                Cif cif4 = new Cif("UINT64", 3, cdo);
                UINT64 = cif4;
                Cdo cdo2 = Cdo.INT;
                Cif cif5 = new Cif("INT32", 4, cdo2);
                INT32 = cif5;
                Cif cif6 = new Cif("FIXED64", 5, cdo);
                FIXED64 = cif6;
                Cif cif7 = new Cif("FIXED32", 6, cdo2);
                FIXED32 = cif7;
                Cif cif8 = new Cif("BOOL", 7, Cdo.BOOLEAN);
                BOOL = cif8;
                Cif cif9 = new Cif("STRING", 8, Cdo.STRING);
                STRING = cif9;
                Cdo cdo3 = Cdo.MESSAGE;
                Cif cif10 = new Cif("GROUP", 9, cdo3);
                GROUP = cif10;
                Cif cif11 = new Cif("MESSAGE", 10, cdo3);
                MESSAGE = cif11;
                Cif cif12 = new Cif("BYTES", 11, Cdo.BYTE_STRING);
                BYTES = cif12;
                Cif cif13 = new Cif("UINT32", 12, cdo2);
                UINT32 = cif13;
                Cif cif14 = new Cif("ENUM", 13, Cdo.ENUM);
                ENUM = cif14;
                Cif cif15 = new Cif("SFIXED32", 14, cdo2);
                SFIXED32 = cif15;
                Cif cif16 = new Cif("SFIXED64", 15, cdo);
                SFIXED64 = cif16;
                Cif cif17 = new Cif("SINT32", 16, cdo2);
                SINT32 = cif17;
                Cif cif18 = new Cif("SINT64", 17, cdo);
                SINT64 = cif18;
                f16334do = new Cif[]{cif, cif2, cif3, cif4, cif5, cif6, cif7, cif8, cif9, cif10, cif11, cif12, cif13, cif14, cif15, cif16, cif17, cif18};
            }

            private Cif(String str, int i, Cdo cdo) {
                this.javaType = cdo;
            }

            public static Cif valueOf(String str) {
                return (Cif) Enum.valueOf(Cif.class, str);
            }

            public static Cif[] values() {
                return (Cif[]) f16334do.clone();
            }

            public Cdo getJavaType() {
                return this.javaType;
            }

            public DescriptorProtos.Ccase.Cnew toProto() {
                return DescriptorProtos.Ccase.Cnew.forNumber(ordinal() + 1);
            }

            public static Cif valueOf(DescriptorProtos.Ccase.Cnew cnew) {
                return values()[cnew.getNumber() - 1];
            }
        }

        static {
            if (Cif.values().length != DescriptorProtos.Ccase.Cnew.values().length) {
                throw new RuntimeException("descriptor.proto has a new declared type but Descriptors.java wasn't updated.");
            }
        }

        public /* synthetic */ Celse(DescriptorProtos.Ccase ccase, FileDescriptor fileDescriptor, Cif cif, int i, boolean z, Cdo cdo) throws Cnew {
            this(ccase, fileDescriptor, cif, i, z);
        }

        /* renamed from: break, reason: not valid java name */
        private static String m19274break(String str) {
            int length = str.length();
            StringBuilder sb = new StringBuilder(length);
            boolean z = false;
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt == '_') {
                    z = true;
                } else if (z) {
                    if ('a' <= cCharAt && cCharAt <= 'z') {
                        cCharAt = (char) ((cCharAt - 'a') + 65);
                    }
                    sb.append(cCharAt);
                    z = false;
                } else {
                    sb.append(cCharAt);
                }
            }
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: strictfp, reason: not valid java name */
        public void m19277strictfp(DescriptorProtos.Ccase ccase) {
            this.f16329if = ccase;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: this, reason: not valid java name */
        public void m19278this() throws Cnew {
            Cdo cdo = null;
            if (this.f16329if.hasExtendee()) {
                Cgoto cgotoM19310class = this.f16332try.f16295goto.m19310class(this.f16329if.getExtendee(), this, Cfor.EnumC0159for.TYPES_ONLY);
                if (!(cgotoM19310class instanceof Cif)) {
                    String extendee = this.f16329if.getExtendee();
                    StringBuilder sb = new StringBuilder(String.valueOf(extendee).length() + 25);
                    sb.append(ca2.f674do);
                    sb.append(extendee);
                    sb.append("\" is not a message type.");
                    throw new Cnew(this, sb.toString(), cdo);
                }
                this.f16331this = (Cif) cgotoM19310class;
                if (!m19282class().m19331static(getNumber())) {
                    String strMo19235if = m19282class().mo19235if();
                    int number = getNumber();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strMo19235if).length() + 55);
                    sb2.append(ca2.f674do);
                    sb2.append(strMo19235if);
                    sb2.append("\" does not declare ");
                    sb2.append(number);
                    sb2.append(" as an extension number.");
                    throw new Cnew(this, sb2.toString(), cdo);
                }
            }
            if (this.f16329if.hasTypeName()) {
                Cgoto cgotoM19310class2 = this.f16332try.f16295goto.m19310class(this.f16329if.getTypeName(), this, Cfor.EnumC0159for.TYPES_ONLY);
                if (!this.f16329if.hasType()) {
                    if (cgotoM19310class2 instanceof Cif) {
                        this.f16328goto = Cif.MESSAGE;
                    } else {
                        if (!(cgotoM19310class2 instanceof Ctry)) {
                            String typeName = this.f16329if.getTypeName();
                            StringBuilder sb3 = new StringBuilder(String.valueOf(typeName).length() + 17);
                            sb3.append(ca2.f674do);
                            sb3.append(typeName);
                            sb3.append("\" is not a type.");
                            throw new Cnew(this, sb3.toString(), cdo);
                        }
                        this.f16328goto = Cif.ENUM;
                    }
                }
                if (m19302while() == Cdo.MESSAGE) {
                    if (!(cgotoM19310class2 instanceof Cif)) {
                        String typeName2 = this.f16329if.getTypeName();
                        StringBuilder sb4 = new StringBuilder(String.valueOf(typeName2).length() + 25);
                        sb4.append(ca2.f674do);
                        sb4.append(typeName2);
                        sb4.append("\" is not a message type.");
                        throw new Cnew(this, sb4.toString(), cdo);
                    }
                    this.f16320break = (Cif) cgotoM19310class2;
                    if (this.f16329if.hasDefaultValue()) {
                        throw new Cnew(this, "Messages can't have default values.", cdo);
                    }
                } else {
                    if (m19302while() != Cdo.ENUM) {
                        throw new Cnew(this, "Field with primitive type has type_name.", cdo);
                    }
                    if (!(cgotoM19310class2 instanceof Ctry)) {
                        String typeName3 = this.f16329if.getTypeName();
                        StringBuilder sb5 = new StringBuilder(String.valueOf(typeName3).length() + 23);
                        sb5.append(ca2.f674do);
                        sb5.append(typeName3);
                        sb5.append("\" is not an enum type.");
                        throw new Cnew(this, sb5.toString(), cdo);
                    }
                    this.f16323class = (Ctry) cgotoM19310class2;
                }
            } else if (m19302while() == Cdo.MESSAGE || m19302while() == Cdo.ENUM) {
                throw new Cnew(this, "Field with message or enum type missing type_name.", cdo);
            }
            if (this.f16329if.getOptions().getPacked() && !m19293private()) {
                throw new Cnew(this, "[packed = true] can only be specified for repeated primitive fields.", cdo);
            }
            if (this.f16329if.hasDefaultValue()) {
                if (isRepeated()) {
                    throw new Cnew(this, "Repeated fields cannot have default values.", cdo);
                }
                try {
                    switch (Cdo.f16317do[m19296static().ordinal()]) {
                        case 1:
                        case 2:
                        case 3:
                            this.f16324const = Integer.valueOf(j1.m20644native(this.f16329if.getDefaultValue()));
                            break;
                        case 4:
                        case 5:
                            this.f16324const = Integer.valueOf(j1.m20651static(this.f16329if.getDefaultValue()));
                            break;
                        case 6:
                        case 7:
                        case 8:
                            this.f16324const = Long.valueOf(j1.m20649public(this.f16329if.getDefaultValue()));
                            break;
                        case 9:
                        case 10:
                            this.f16324const = Long.valueOf(j1.m20654switch(this.f16329if.getDefaultValue()));
                            break;
                        case 11:
                            if (!this.f16329if.getDefaultValue().equals("inf")) {
                                if (!this.f16329if.getDefaultValue().equals("-inf")) {
                                    if (!this.f16329if.getDefaultValue().equals("nan")) {
                                        this.f16324const = Float.valueOf(this.f16329if.getDefaultValue());
                                        break;
                                    } else {
                                        this.f16324const = Float.valueOf(Float.NaN);
                                        break;
                                    }
                                } else {
                                    this.f16324const = Float.valueOf(Float.NEGATIVE_INFINITY);
                                    break;
                                }
                            } else {
                                this.f16324const = Float.valueOf(Float.POSITIVE_INFINITY);
                                break;
                            }
                        case 12:
                            if (!this.f16329if.getDefaultValue().equals("inf")) {
                                if (!this.f16329if.getDefaultValue().equals("-inf")) {
                                    if (!this.f16329if.getDefaultValue().equals("nan")) {
                                        this.f16324const = Double.valueOf(this.f16329if.getDefaultValue());
                                        break;
                                    } else {
                                        this.f16324const = Double.valueOf(Double.NaN);
                                        break;
                                    }
                                } else {
                                    this.f16324const = Double.valueOf(Double.NEGATIVE_INFINITY);
                                    break;
                                }
                            } else {
                                this.f16324const = Double.valueOf(Double.POSITIVE_INFINITY);
                                break;
                            }
                        case 13:
                            this.f16324const = Boolean.valueOf(this.f16329if.getDefaultValue());
                            break;
                        case 14:
                            this.f16324const = this.f16329if.getDefaultValue();
                            break;
                        case 15:
                            try {
                                this.f16324const = j1.d(this.f16329if.getDefaultValue());
                                break;
                            } catch (j1.Cif e) {
                                String strValueOf = String.valueOf(e.getMessage());
                                throw new Cnew(this, strValueOf.length() != 0 ? "Couldn't parse default value: ".concat(strValueOf) : new String("Couldn't parse default value: "), e, cdo);
                            }
                        case 16:
                            Ccase ccaseM19353case = this.f16323class.m19353case(this.f16329if.getDefaultValue());
                            this.f16324const = ccaseM19353case;
                            if (ccaseM19353case == null) {
                                String defaultValue = this.f16329if.getDefaultValue();
                                StringBuilder sb6 = new StringBuilder(String.valueOf(defaultValue).length() + 30);
                                sb6.append("Unknown enum default value: \"");
                                sb6.append(defaultValue);
                                sb6.append(ca2.f674do);
                                throw new Cnew(this, sb6.toString(), cdo);
                            }
                            break;
                        case 17:
                        case 18:
                            throw new Cnew(this, "Message type had default value.", cdo);
                    }
                } catch (NumberFormatException e2) {
                    String defaultValue2 = this.f16329if.getDefaultValue();
                    StringBuilder sb7 = new StringBuilder(String.valueOf(defaultValue2).length() + 33);
                    sb7.append("Could not parse default value: \"");
                    sb7.append(defaultValue2);
                    sb7.append(ca2.f674do);
                    throw new Cnew(this, sb7.toString(), e2, cdo);
                }
            } else if (isRepeated()) {
                this.f16324const = Collections.emptyList();
            } else {
                int i = Cdo.f16318if[m19302while().ordinal()];
                if (i == 1) {
                    this.f16324const = this.f16323class.m19356const().get(0);
                } else if (i != 2) {
                    this.f16324const = m19302while().defaultDefault;
                } else {
                    this.f16324const = null;
                }
            }
            if (!m19286extends()) {
                this.f16332try.f16295goto.m19314new(this);
            }
            Cif cif = this.f16331this;
            if (cif == null || !cif.m19328native().getMessageSetWireFormat()) {
                return;
            }
            if (!m19286extends()) {
                throw new Cnew(this, "MessageSets cannot have fields, only extensions.", cdo);
            }
            if (!m19292package() || m19296static() != Cif.MESSAGE) {
                throw new Cnew(this, "Extensions of MessageSets must be optional messages.", cdo);
            }
        }

        /* renamed from: abstract, reason: not valid java name */
        public boolean m19280abstract() {
            return this.f16329if.getLabel() == DescriptorProtos.Ccase.Cfor.LABEL_REQUIRED;
        }

        /* renamed from: catch, reason: not valid java name */
        public Cbreak m19281catch() {
            return this.f16322catch;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m19282class() {
            return this.f16331this;
        }

        /* renamed from: const, reason: not valid java name */
        public Object m19283const() {
            if (m19302while() != Cdo.MESSAGE) {
                return this.f16324const;
            }
            throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
        }

        /* renamed from: continue, reason: not valid java name */
        public boolean m19284continue() {
            if (this.f16328goto != Cif.STRING) {
                return false;
            }
            if (m19282class().m19328native().getMapEntry() || mo19232do().m19241static() == FileDescriptor.Cdo.PROTO3) {
                return true;
            }
            return mo19232do().m19236import().getJavaStringCheckUtf8();
        }

        /* renamed from: default, reason: not valid java name */
        public boolean m19285default() {
            if (isRepeated()) {
                return false;
            }
            return m19296static() == Cif.MESSAGE || m19296static() == Cif.GROUP || m19281catch() != null || this.f16332try.m19241static() == FileDescriptor.Cdo.PROTO2;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: do */
        public FileDescriptor mo19232do() {
            return this.f16332try;
        }

        /* renamed from: extends, reason: not valid java name */
        public boolean m19286extends() {
            return this.f16329if.hasExtendee();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ctry getEnumType() {
            if (m19302while() == Cdo.ENUM) {
                return this.f16323class;
            }
            throw new UnsupportedOperationException(String.format("This field is not of enum type. (%s)", this.f16327for));
        }

        /* renamed from: finally, reason: not valid java name */
        public boolean m19288finally() {
            return m19296static() == Cif.MESSAGE && isRepeated() && m19291native().m19328native().getMapEntry();
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: for */
        public String mo19234for() {
            return this.f16329if.getName();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public c2.Cfor getLiteJavaType() {
            return getLiteType().getJavaType();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public c2.Cif getLiteType() {
            return f16319final[this.f16328goto.ordinal()];
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public int getNumber() {
            return this.f16329if.getNumber();
        }

        @Override // java.lang.Comparable
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compareTo(Celse celse) {
            if (celse.f16331this == this.f16331this) {
                return getNumber() - celse.getNumber();
            }
            throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: if */
        public String mo19235if() {
            return this.f16327for;
        }

        /* renamed from: import, reason: not valid java name */
        public String m19290import() {
            return this.f16330new;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite) {
            return ((Message.Builder) builder).mergeFrom((Message) messageLite);
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isPacked() {
            if (m19293private()) {
                return mo19232do().m19241static() == FileDescriptor.Cdo.PROTO2 ? m19294public().getPacked() : !m19294public().hasPacked() || m19294public().getPacked();
            }
            return false;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isRepeated() {
            return this.f16329if.getLabel() == DescriptorProtos.Ccase.Cfor.LABEL_REPEATED;
        }

        /* renamed from: native, reason: not valid java name */
        public Cif m19291native() {
            if (m19302while() == Cdo.MESSAGE) {
                return this.f16320break;
            }
            throw new UnsupportedOperationException(String.format("This field is not of message type. (%s)", this.f16327for));
        }

        /* renamed from: package, reason: not valid java name */
        public boolean m19292package() {
            return this.f16329if.getLabel() == DescriptorProtos.Ccase.Cfor.LABEL_OPTIONAL;
        }

        /* renamed from: private, reason: not valid java name */
        public boolean m19293private() {
            return isRepeated() && getLiteType().isPackable();
        }

        /* renamed from: public, reason: not valid java name */
        public DescriptorProtos.Celse m19294public() {
            return this.f16329if.getOptions();
        }

        /* renamed from: return, reason: not valid java name */
        public Cbreak m19295return() {
            Cbreak cbreak = this.f16322catch;
            if (cbreak == null || cbreak.m19258throw()) {
                return null;
            }
            return this.f16322catch;
        }

        /* renamed from: static, reason: not valid java name */
        public Cif m19296static() {
            return this.f16328goto;
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m19297super() {
            if (m19286extends()) {
                return this.f16321case;
            }
            throw new UnsupportedOperationException(String.format("This field is not an extension. (%s)", this.f16327for));
        }

        /* renamed from: switch, reason: not valid java name */
        public boolean m19298switch() {
            return this.f16329if.hasDefaultValue();
        }

        /* renamed from: throw, reason: not valid java name */
        public int m19299throw() {
            return this.f16325do;
        }

        /* renamed from: throws, reason: not valid java name */
        public boolean m19300throws() {
            return this.f16326else || (this.f16332try.m19241static() == FileDescriptor.Cdo.PROTO2 && m19292package() && m19281catch() == null);
        }

        public String toString() {
            return mo19235if();
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: volatile, reason: not valid java name and merged with bridge method [inline-methods] */
        public DescriptorProtos.Ccase mo19238new() {
            return this.f16329if;
        }

        /* renamed from: while, reason: not valid java name */
        public Cdo m19302while() {
            return this.f16328goto.getJavaType();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private Celse(DescriptorProtos.Ccase ccase, FileDescriptor fileDescriptor, Cif cif, int i, boolean z) throws Cnew {
            Cdo cdo = null;
            super(cdo);
            this.f16325do = i;
            this.f16329if = ccase;
            this.f16327for = Descriptors.m19212for(fileDescriptor, cif, ccase.getName());
            this.f16332try = fileDescriptor;
            if (ccase.hasJsonName()) {
                this.f16330new = ccase.getJsonName();
            } else {
                this.f16330new = m19274break(ccase.getName());
            }
            if (ccase.hasType()) {
                this.f16328goto = Cif.valueOf(ccase.getType());
            }
            this.f16326else = ccase.getProto3Optional();
            if (getNumber() <= 0) {
                throw new Cnew(this, "Field numbers must be positive integers.", cdo);
            }
            if (z) {
                if (!ccase.hasExtendee()) {
                    throw new Cnew(this, "FieldDescriptorProto.extendee not set for extension field.", cdo);
                }
                this.f16331this = null;
                if (cif != null) {
                    this.f16321case = cif;
                } else {
                    this.f16321case = null;
                }
                if (ccase.hasOneofIndex()) {
                    throw new Cnew(this, "FieldDescriptorProto.oneof_index set for extension field.", cdo);
                }
                this.f16322catch = null;
            } else {
                if (ccase.hasExtendee()) {
                    throw new Cnew(this, "FieldDescriptorProto.extendee set for non-extension field.", cdo);
                }
                this.f16331this = cif;
                if (!ccase.hasOneofIndex()) {
                    this.f16322catch = null;
                } else {
                    if (ccase.getOneofIndex() < 0 || ccase.getOneofIndex() >= cif.mo19238new().getOneofDeclCount()) {
                        String strValueOf = String.valueOf(cif.mo19234for());
                        throw new Cnew(this, strValueOf.length() != 0 ? "FieldDescriptorProto.oneof_index is out of range for type ".concat(strValueOf) : new String("FieldDescriptorProto.oneof_index is out of range for type "), cdo);
                    }
                    Cbreak cbreak = cif.m19327import().get(ccase.getOneofIndex());
                    this.f16322catch = cbreak;
                    Cbreak.m19247goto(cbreak);
                }
                this.f16321case = null;
            }
            fileDescriptor.f16295goto.m19308case(this);
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: if, reason: not valid java name */
        private boolean f16337if;

        /* renamed from: for, reason: not valid java name */
        private final Map<String, Cgoto> f16336for = new HashMap();

        /* renamed from: new, reason: not valid java name */
        private final Map<Cdo, Celse> f16338new = new HashMap();

        /* renamed from: try, reason: not valid java name */
        private final Map<Cdo, Ccase> f16339try = new HashMap();

        /* renamed from: do, reason: not valid java name */
        private final Set<FileDescriptor> f16335do = new HashSet();

        /* renamed from: com.google.protobuf.Descriptors$for$do, reason: invalid class name */
        public static final class Cdo {

            /* renamed from: do, reason: not valid java name */
            private final Cgoto f16340do;

            /* renamed from: if, reason: not valid java name */
            private final int f16341if;

            public Cdo(Cgoto cgoto, int i) {
                this.f16340do = cgoto;
                this.f16341if = i;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof Cdo)) {
                    return false;
                }
                Cdo cdo = (Cdo) obj;
                return this.f16340do == cdo.f16340do && this.f16341if == cdo.f16341if;
            }

            public int hashCode() {
                return (this.f16340do.hashCode() * 65535) + this.f16341if;
            }
        }

        /* renamed from: com.google.protobuf.Descriptors$for$for, reason: invalid class name and collision with other inner class name */
        public enum EnumC0159for {
            TYPES_ONLY,
            AGGREGATES_ONLY,
            ALL_SYMBOLS
        }

        /* renamed from: com.google.protobuf.Descriptors$for$if, reason: invalid class name */
        public static final class Cif extends Cgoto {

            /* renamed from: do, reason: not valid java name */
            private final String f16343do;

            /* renamed from: for, reason: not valid java name */
            private final FileDescriptor f16344for;

            /* renamed from: if, reason: not valid java name */
            private final String f16345if;

            public Cif(String str, String str2, FileDescriptor fileDescriptor) {
                super(null);
                this.f16344for = fileDescriptor;
                this.f16345if = str2;
                this.f16343do = str;
            }

            @Override // com.google.protobuf.Descriptors.Cgoto
            /* renamed from: do */
            public FileDescriptor mo19232do() {
                return this.f16344for;
            }

            @Override // com.google.protobuf.Descriptors.Cgoto
            /* renamed from: for */
            public String mo19234for() {
                return this.f16343do;
            }

            @Override // com.google.protobuf.Descriptors.Cgoto
            /* renamed from: if */
            public String mo19235if() {
                return this.f16345if;
            }

            @Override // com.google.protobuf.Descriptors.Cgoto
            /* renamed from: new */
            public Message mo19238new() {
                return this.f16344for.mo19238new();
            }
        }

        public Cfor(FileDescriptor[] fileDescriptorArr, boolean z) {
            this.f16337if = z;
            for (int i = 0; i < fileDescriptorArr.length; i++) {
                this.f16335do.add(fileDescriptorArr[i]);
                m19306this(fileDescriptorArr[i]);
            }
            for (FileDescriptor fileDescriptor : this.f16335do) {
                try {
                    m19315try(fileDescriptor.m19237native(), fileDescriptor);
                } catch (Cnew e) {
                    throw new AssertionError(e);
                }
            }
        }

        /* renamed from: const, reason: not valid java name */
        public static void m19303const(Cgoto cgoto) throws Cnew {
            String strMo19234for = cgoto.mo19234for();
            Cdo cdo = null;
            if (strMo19234for.length() == 0) {
                throw new Cnew(cgoto, "Missing name.", cdo);
            }
            for (int i = 0; i < strMo19234for.length(); i++) {
                char cCharAt = strMo19234for.charAt(i);
                if (('a' > cCharAt || cCharAt > 'z') && (('A' > cCharAt || cCharAt > 'Z') && cCharAt != '_' && ('0' > cCharAt || cCharAt > '9' || i <= 0))) {
                    StringBuilder sb = new StringBuilder(strMo19234for.length() + 29);
                    sb.append(ca2.f674do);
                    sb.append(strMo19234for);
                    sb.append("\" is not a valid identifier.");
                    throw new Cnew(cgoto, sb.toString(), cdo);
                }
            }
        }

        /* renamed from: this, reason: not valid java name */
        private void m19306this(FileDescriptor fileDescriptor) {
            for (FileDescriptor fileDescriptor2 : fileDescriptor.m19239public()) {
                if (this.f16335do.add(fileDescriptor2)) {
                    m19306this(fileDescriptor2);
                }
            }
        }

        /* renamed from: break, reason: not valid java name */
        public boolean m19307break(Cgoto cgoto) {
            return (cgoto instanceof Cif) || (cgoto instanceof Ctry) || (cgoto instanceof Cif) || (cgoto instanceof Ccatch);
        }

        /* renamed from: case, reason: not valid java name */
        public void m19308case(Cgoto cgoto) throws Cnew {
            m19303const(cgoto);
            String strMo19235if = cgoto.mo19235if();
            Cgoto cgotoPut = this.f16336for.put(strMo19235if, cgoto);
            if (cgotoPut != null) {
                this.f16336for.put(strMo19235if, cgotoPut);
                Cdo cdo = null;
                if (cgoto.mo19232do() != cgotoPut.mo19232do()) {
                    String strMo19234for = cgotoPut.mo19232do().mo19234for();
                    StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 33 + String.valueOf(strMo19234for).length());
                    sb.append(ca2.f674do);
                    sb.append(strMo19235if);
                    sb.append("\" is already defined in file \"");
                    sb.append(strMo19234for);
                    sb.append("\".");
                    throw new Cnew(cgoto, sb.toString(), cdo);
                }
                int iLastIndexOf = strMo19235if.lastIndexOf(46);
                if (iLastIndexOf == -1) {
                    StringBuilder sb2 = new StringBuilder(strMo19235if.length() + 22);
                    sb2.append(ca2.f674do);
                    sb2.append(strMo19235if);
                    sb2.append("\" is already defined.");
                    throw new Cnew(cgoto, sb2.toString(), cdo);
                }
                String strSubstring = strMo19235if.substring(iLastIndexOf + 1);
                String strSubstring2 = strMo19235if.substring(0, iLastIndexOf);
                StringBuilder sb3 = new StringBuilder(String.valueOf(strSubstring).length() + 28 + String.valueOf(strSubstring2).length());
                sb3.append(ca2.f674do);
                sb3.append(strSubstring);
                sb3.append("\" is already defined in \"");
                sb3.append(strSubstring2);
                sb3.append("\".");
                throw new Cnew(cgoto, sb3.toString(), cdo);
            }
        }

        /* renamed from: catch, reason: not valid java name */
        public boolean m19309catch(Cgoto cgoto) {
            return (cgoto instanceof Cif) || (cgoto instanceof Ctry);
        }

        /* renamed from: class, reason: not valid java name */
        public Cgoto m19310class(String str, Cgoto cgoto, EnumC0159for enumC0159for) throws Cnew {
            Cgoto cgotoM19313goto;
            String string;
            if (str.startsWith(".")) {
                string = str.substring(1);
                cgotoM19313goto = m19313goto(string, enumC0159for);
            } else {
                int iIndexOf = str.indexOf(46);
                String strSubstring = iIndexOf == -1 ? str : str.substring(0, iIndexOf);
                StringBuilder sb = new StringBuilder(cgoto.mo19235if());
                while (true) {
                    int iLastIndexOf = sb.lastIndexOf(".");
                    if (iLastIndexOf == -1) {
                        cgotoM19313goto = m19313goto(str, enumC0159for);
                        string = str;
                        break;
                    }
                    int i = iLastIndexOf + 1;
                    sb.setLength(i);
                    sb.append(strSubstring);
                    Cgoto cgotoM19313goto2 = m19313goto(sb.toString(), EnumC0159for.AGGREGATES_ONLY);
                    if (cgotoM19313goto2 != null) {
                        if (iIndexOf != -1) {
                            sb.setLength(i);
                            sb.append(str);
                            cgotoM19313goto = m19313goto(sb.toString(), enumC0159for);
                        } else {
                            cgotoM19313goto = cgotoM19313goto2;
                        }
                        string = sb.toString();
                    } else {
                        sb.setLength(iLastIndexOf);
                    }
                }
            }
            if (cgotoM19313goto != null) {
                return cgotoM19313goto;
            }
            if (!this.f16337if || enumC0159for != EnumC0159for.TYPES_ONLY) {
                StringBuilder sb2 = new StringBuilder(str.length() + 18);
                sb2.append(ca2.f674do);
                sb2.append(str);
                sb2.append("\" is not defined.");
                throw new Cnew(cgoto, sb2.toString(), (Cdo) null);
            }
            Logger logger = Descriptors.f16290do;
            StringBuilder sb3 = new StringBuilder(str.length() + 87);
            sb3.append("The descriptor for message type \"");
            sb3.append(str);
            sb3.append("\" can not be found and a placeholder is created for it");
            logger.warning(sb3.toString());
            Cif cif = new Cif(string);
            this.f16335do.add(cif.mo19232do());
            return cif;
        }

        /* renamed from: else, reason: not valid java name */
        public Cgoto m19311else(String str) {
            return m19313goto(str, EnumC0159for.ALL_SYMBOLS);
        }

        /* renamed from: for, reason: not valid java name */
        public void m19312for(Ccase ccase) {
            Cdo cdo = new Cdo(ccase.m19264goto(), ccase.getNumber());
            Ccase ccasePut = this.f16339try.put(cdo, ccase);
            if (ccasePut != null) {
                this.f16339try.put(cdo, ccasePut);
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public Cgoto m19313goto(String str, EnumC0159for enumC0159for) {
            Cgoto cgoto = this.f16336for.get(str);
            if (cgoto != null && (enumC0159for == EnumC0159for.ALL_SYMBOLS || ((enumC0159for == EnumC0159for.TYPES_ONLY && m19309catch(cgoto)) || (enumC0159for == EnumC0159for.AGGREGATES_ONLY && m19307break(cgoto))))) {
                return cgoto;
            }
            Iterator<FileDescriptor> it = this.f16335do.iterator();
            while (it.hasNext()) {
                Cgoto cgoto2 = it.next().f16295goto.f16336for.get(str);
                if (cgoto2 != null && (enumC0159for == EnumC0159for.ALL_SYMBOLS || ((enumC0159for == EnumC0159for.TYPES_ONLY && m19309catch(cgoto2)) || (enumC0159for == EnumC0159for.AGGREGATES_ONLY && m19307break(cgoto2))))) {
                    return cgoto2;
                }
            }
            return null;
        }

        /* renamed from: new, reason: not valid java name */
        public void m19314new(Celse celse) throws Cnew {
            Cdo cdo = new Cdo(celse.m19282class(), celse.getNumber());
            Celse celsePut = this.f16338new.put(cdo, celse);
            if (celsePut == null) {
                return;
            }
            this.f16338new.put(cdo, celsePut);
            int number = celse.getNumber();
            String strMo19235if = celse.m19282class().mo19235if();
            String strMo19234for = celsePut.mo19234for();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 65 + String.valueOf(strMo19234for).length());
            sb.append("Field number ");
            sb.append(number);
            sb.append(" has already been used in \"");
            sb.append(strMo19235if);
            sb.append("\" by field \"");
            sb.append(strMo19234for);
            sb.append("\".");
            throw new Cnew(celse, sb.toString(), (Cdo) null);
        }

        /* renamed from: try, reason: not valid java name */
        public void m19315try(String str, FileDescriptor fileDescriptor) throws Cnew {
            String strSubstring;
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf == -1) {
                strSubstring = str;
            } else {
                m19315try(str.substring(0, iLastIndexOf), fileDescriptor);
                strSubstring = str.substring(iLastIndexOf + 1);
            }
            Cgoto cgotoPut = this.f16336for.put(str, new Cif(strSubstring, str, fileDescriptor));
            if (cgotoPut != null) {
                this.f16336for.put(str, cgotoPut);
                if (cgotoPut instanceof Cif) {
                    return;
                }
                String strMo19234for = cgotoPut.mo19232do().mo19234for();
                StringBuilder sb = new StringBuilder(String.valueOf(strSubstring).length() + 69 + String.valueOf(strMo19234for).length());
                sb.append(ca2.f674do);
                sb.append(strSubstring);
                sb.append("\" is already defined (as something other than a package) in file \"");
                sb.append(strMo19234for);
                sb.append("\".");
                throw new Cnew(fileDescriptor, sb.toString(), (Cdo) null);
            }
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$goto, reason: invalid class name */
    public static abstract class Cgoto {
        public /* synthetic */ Cgoto(Cdo cdo) {
            this();
        }

        /* renamed from: do */
        public abstract FileDescriptor mo19232do();

        /* renamed from: for */
        public abstract String mo19234for();

        /* renamed from: if */
        public abstract String mo19235if();

        /* renamed from: new */
        public abstract Message mo19238new();

        private Cgoto() {
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$if, reason: invalid class name */
    public static final class Cif extends Cgoto {

        /* renamed from: break, reason: not valid java name */
        private final Cbreak[] f16346break;

        /* renamed from: case, reason: not valid java name */
        private final Cif[] f16347case;

        /* renamed from: catch, reason: not valid java name */
        private final int f16348catch;

        /* renamed from: do, reason: not valid java name */
        private final int f16349do;

        /* renamed from: else, reason: not valid java name */
        private final Ctry[] f16350else;

        /* renamed from: for, reason: not valid java name */
        private final String f16351for;

        /* renamed from: goto, reason: not valid java name */
        private final Celse[] f16352goto;

        /* renamed from: if, reason: not valid java name */
        private DescriptorProtos.DescriptorProto f16353if;

        /* renamed from: new, reason: not valid java name */
        private final FileDescriptor f16354new;

        /* renamed from: this, reason: not valid java name */
        private final Celse[] f16355this;

        /* renamed from: try, reason: not valid java name */
        private final Cif f16356try;

        public /* synthetic */ Cif(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, Cif cif, int i, Cdo cdo) throws Cnew {
            this(descriptorProto, fileDescriptor, cif, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: default, reason: not valid java name */
        public void m19317default(DescriptorProtos.DescriptorProto descriptorProto) {
            this.f16353if = descriptorProto;
            int i = 0;
            int i2 = 0;
            while (true) {
                Cif[] cifArr = this.f16347case;
                if (i2 >= cifArr.length) {
                    break;
                }
                cifArr[i2].m19317default(descriptorProto.getNestedType(i2));
                i2++;
            }
            int i3 = 0;
            while (true) {
                Cbreak[] cbreakArr = this.f16346break;
                if (i3 >= cbreakArr.length) {
                    break;
                }
                cbreakArr[i3].m19250while(descriptorProto.getOneofDecl(i3));
                i3++;
            }
            int i4 = 0;
            while (true) {
                Ctry[] ctryArr = this.f16350else;
                if (i4 >= ctryArr.length) {
                    break;
                }
                ctryArr[i4].m19350final(descriptorProto.getEnumType(i4));
                i4++;
            }
            int i5 = 0;
            while (true) {
                Celse[] celseArr = this.f16352goto;
                if (i5 >= celseArr.length) {
                    break;
                }
                celseArr[i5].m19277strictfp(descriptorProto.getField(i5));
                i5++;
            }
            while (true) {
                Celse[] celseArr2 = this.f16355this;
                if (i >= celseArr2.length) {
                    return;
                }
                celseArr2[i].m19277strictfp(descriptorProto.getExtension(i));
                i++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public void m19318else() throws Cnew {
            for (Cif cif : this.f16347case) {
                cif.m19318else();
            }
            for (Celse celse : this.f16352goto) {
                celse.m19278this();
            }
            for (Celse celse2 : this.f16355this) {
                celse2.m19278this();
            }
        }

        /* renamed from: break, reason: not valid java name */
        public Celse m19320break(int i) {
            return (Celse) this.f16354new.f16295goto.f16338new.get(new Cfor.Cdo(this, i));
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m19321catch(String str) {
            Cfor cfor = this.f16354new.f16295goto;
            String str2 = this.f16351for;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
            sb.append(str2);
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(str);
            Cgoto cgotoM19311else = cfor.m19311else(sb.toString());
            if (cgotoM19311else == null || !(cgotoM19311else instanceof Cif)) {
                return null;
            }
            return (Cif) cgotoM19311else;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m19322class() {
            return this.f16356try;
        }

        /* renamed from: const, reason: not valid java name */
        public List<Ctry> m19323const() {
            return Collections.unmodifiableList(Arrays.asList(this.f16350else));
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: do */
        public FileDescriptor mo19232do() {
            return this.f16354new;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
        public DescriptorProtos.DescriptorProto mo19238new() {
            return this.f16353if;
        }

        /* renamed from: final, reason: not valid java name */
        public List<Celse> m19325final() {
            return Collections.unmodifiableList(Arrays.asList(this.f16355this));
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: for */
        public String mo19234for() {
            return this.f16353if.getName();
        }

        /* renamed from: goto, reason: not valid java name */
        public Ctry m19326goto(String str) {
            Cfor cfor = this.f16354new.f16295goto;
            String str2 = this.f16351for;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
            sb.append(str2);
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(str);
            Cgoto cgotoM19311else = cfor.m19311else(sb.toString());
            if (cgotoM19311else == null || !(cgotoM19311else instanceof Ctry)) {
                return null;
            }
            return (Ctry) cgotoM19311else;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: if */
        public String mo19235if() {
            return this.f16351for;
        }

        /* renamed from: import, reason: not valid java name */
        public List<Cbreak> m19327import() {
            return Collections.unmodifiableList(Arrays.asList(this.f16346break));
        }

        /* renamed from: native, reason: not valid java name */
        public DescriptorProtos.Ccatch m19328native() {
            return this.f16353if.getOptions();
        }

        /* renamed from: public, reason: not valid java name */
        public List<Cbreak> m19329public() {
            return Collections.unmodifiableList(Arrays.asList(this.f16346break).subList(0, this.f16348catch));
        }

        /* renamed from: return, reason: not valid java name */
        public boolean m19330return() {
            return this.f16353if.getExtensionRangeList().size() != 0;
        }

        /* renamed from: static, reason: not valid java name */
        public boolean m19331static(int i) {
            for (DescriptorProtos.DescriptorProto.Cfor cfor : this.f16353if.getExtensionRangeList()) {
                if (cfor.getStart() <= i && i < cfor.getEnd()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: super, reason: not valid java name */
        public List<Celse> m19332super() {
            return Collections.unmodifiableList(Arrays.asList(this.f16352goto));
        }

        /* renamed from: switch, reason: not valid java name */
        public boolean m19333switch(String str) {
            Internal.m19623new(str);
            Iterator<String> it = this.f16353if.getReservedNameList().iterator();
            while (it.hasNext()) {
                if (it.next().equals(str)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: this, reason: not valid java name */
        public Celse m19334this(String str) {
            Cfor cfor = this.f16354new.f16295goto;
            String str2 = this.f16351for;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
            sb.append(str2);
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(str);
            Cgoto cgotoM19311else = cfor.m19311else(sb.toString());
            if (cgotoM19311else == null || !(cgotoM19311else instanceof Celse)) {
                return null;
            }
            return (Celse) cgotoM19311else;
        }

        /* renamed from: throw, reason: not valid java name */
        public int m19335throw() {
            return this.f16349do;
        }

        /* renamed from: throws, reason: not valid java name */
        public boolean m19336throws(int i) {
            for (DescriptorProtos.DescriptorProto.Cnew cnew : this.f16353if.getReservedRangeList()) {
                if (cnew.getStart() <= i && i < cnew.getEnd()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: while, reason: not valid java name */
        public List<Cif> m19337while() {
            return Collections.unmodifiableList(Arrays.asList(this.f16347case));
        }

        public Cif(String str) throws Cnew {
            String strSubstring;
            String strSubstring2;
            super(null);
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf != -1) {
                strSubstring2 = str.substring(iLastIndexOf + 1);
                strSubstring = str.substring(0, iLastIndexOf);
            } else {
                strSubstring = "";
                strSubstring2 = str;
            }
            this.f16349do = 0;
            this.f16353if = DescriptorProtos.DescriptorProto.newBuilder().G0(strSubstring2).m18548throws(DescriptorProtos.DescriptorProto.Cfor.newBuilder().m18511throws(1).m18502native(oa1.f4492abstract).build()).build();
            this.f16351for = str;
            this.f16356try = null;
            this.f16347case = new Cif[0];
            this.f16350else = new Ctry[0];
            this.f16352goto = new Celse[0];
            this.f16355this = new Celse[0];
            this.f16346break = new Cbreak[0];
            this.f16348catch = 0;
            this.f16354new = new FileDescriptor(strSubstring, this);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private Cif(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, Cif cif, int i) throws Cnew {
            Cdo cdo = null;
            super(cdo);
            this.f16349do = i;
            this.f16353if = descriptorProto;
            this.f16351for = Descriptors.m19212for(fileDescriptor, cif, descriptorProto.getName());
            this.f16354new = fileDescriptor;
            this.f16356try = cif;
            this.f16346break = new Cbreak[descriptorProto.getOneofDeclCount()];
            for (int i2 = 0; i2 < descriptorProto.getOneofDeclCount(); i2++) {
                this.f16346break[i2] = new Cbreak(descriptorProto.getOneofDecl(i2), fileDescriptor, this, i2, null);
            }
            this.f16347case = new Cif[descriptorProto.getNestedTypeCount()];
            for (int i3 = 0; i3 < descriptorProto.getNestedTypeCount(); i3++) {
                this.f16347case[i3] = new Cif(descriptorProto.getNestedType(i3), fileDescriptor, this, i3);
            }
            this.f16350else = new Ctry[descriptorProto.getEnumTypeCount()];
            for (int i4 = 0; i4 < descriptorProto.getEnumTypeCount(); i4++) {
                this.f16350else[i4] = new Ctry(descriptorProto.getEnumType(i4), fileDescriptor, this, i4, null);
            }
            this.f16352goto = new Celse[descriptorProto.getFieldCount()];
            for (int i5 = 0; i5 < descriptorProto.getFieldCount(); i5++) {
                this.f16352goto[i5] = new Celse(descriptorProto.getField(i5), fileDescriptor, this, i5, false, null);
            }
            this.f16355this = new Celse[descriptorProto.getExtensionCount()];
            for (int i6 = 0; i6 < descriptorProto.getExtensionCount(); i6++) {
                this.f16355this[i6] = new Celse(descriptorProto.getExtension(i6), fileDescriptor, this, i6, true, null);
            }
            for (int i7 = 0; i7 < descriptorProto.getOneofDeclCount(); i7++) {
                Cbreak[] cbreakArr = this.f16346break;
                cbreakArr[i7].f16302else = new Celse[cbreakArr[i7].m19253class()];
                this.f16346break[i7].f16300case = 0;
            }
            for (int i8 = 0; i8 < descriptorProto.getFieldCount(); i8++) {
                Cbreak cbreakM19281catch = this.f16352goto[i8].m19281catch();
                if (cbreakM19281catch != null) {
                    cbreakM19281catch.f16302else[Cbreak.m19247goto(cbreakM19281catch)] = this.f16352goto[i8];
                }
            }
            int i9 = 0;
            for (Cbreak cbreak : this.f16346break) {
                if (cbreak.m19258throw()) {
                    i9++;
                } else if (i9 > 0) {
                    throw new Cnew(this, "Synthetic oneofs must come last.", cdo);
                }
            }
            this.f16348catch = this.f16346break.length - i9;
            fileDescriptor.f16295goto.m19308case(this);
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$new, reason: invalid class name */
    public static class Cnew extends Exception {
        private static final long serialVersionUID = 5750205775490483148L;
        private final String description;
        private final String name;
        private final Message proto;

        public /* synthetic */ Cnew(FileDescriptor fileDescriptor, String str, Cdo cdo) {
            this(fileDescriptor, str);
        }

        public String getDescription() {
            return this.description;
        }

        public Message getProblemProto() {
            return this.proto;
        }

        public String getProblemSymbolName() {
            return this.name;
        }

        public /* synthetic */ Cnew(Cgoto cgoto, String str, Cdo cdo) {
            this(cgoto, str);
        }

        public /* synthetic */ Cnew(Cgoto cgoto, String str, Throwable th, Cdo cdo) {
            this(cgoto, str, th);
        }

        private Cnew(Cgoto cgoto, String str) {
            String strMo19235if = cgoto.mo19235if();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 2 + String.valueOf(str).length());
            sb.append(strMo19235if);
            sb.append(": ");
            sb.append(str);
            super(sb.toString());
            this.name = cgoto.mo19235if();
            this.proto = cgoto.mo19238new();
            this.description = str;
        }

        private Cnew(Cgoto cgoto, String str, Throwable th) {
            this(cgoto, str);
            initCause(th);
        }

        private Cnew(FileDescriptor fileDescriptor, String str) {
            String strMo19234for = fileDescriptor.mo19234for();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19234for).length() + 2 + String.valueOf(str).length());
            sb.append(strMo19234for);
            sb.append(": ");
            sb.append(str);
            super(sb.toString());
            this.name = fileDescriptor.mo19234for();
            this.proto = fileDescriptor.mo19238new();
            this.description = str;
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$this, reason: invalid class name */
    public static final class Cthis extends Cgoto {

        /* renamed from: case, reason: not valid java name */
        private Cif f16357case;

        /* renamed from: do, reason: not valid java name */
        private final int f16358do;

        /* renamed from: else, reason: not valid java name */
        private Cif f16359else;

        /* renamed from: for, reason: not valid java name */
        private final String f16360for;

        /* renamed from: if, reason: not valid java name */
        private DescriptorProtos.Cclass f16361if;

        /* renamed from: new, reason: not valid java name */
        private final FileDescriptor f16362new;

        /* renamed from: try, reason: not valid java name */
        private final Ccatch f16363try;

        public /* synthetic */ Cthis(DescriptorProtos.Cclass cclass, FileDescriptor fileDescriptor, Ccatch ccatch, int i, Cdo cdo) throws Cnew {
            this(cclass, fileDescriptor, ccatch, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public void m19339else() throws Cnew {
            Cfor cfor = this.f16362new.f16295goto;
            String inputType = this.f16361if.getInputType();
            Cfor.EnumC0159for enumC0159for = Cfor.EnumC0159for.TYPES_ONLY;
            Cgoto cgotoM19310class = cfor.m19310class(inputType, this, enumC0159for);
            Cdo cdo = null;
            if (!(cgotoM19310class instanceof Cif)) {
                String inputType2 = this.f16361if.getInputType();
                StringBuilder sb = new StringBuilder(String.valueOf(inputType2).length() + 25);
                sb.append(ca2.f674do);
                sb.append(inputType2);
                sb.append("\" is not a message type.");
                throw new Cnew(this, sb.toString(), cdo);
            }
            this.f16357case = (Cif) cgotoM19310class;
            Cgoto cgotoM19310class2 = this.f16362new.f16295goto.m19310class(this.f16361if.getOutputType(), this, enumC0159for);
            if (cgotoM19310class2 instanceof Cif) {
                this.f16359else = (Cif) cgotoM19310class2;
                return;
            }
            String outputType = this.f16361if.getOutputType();
            StringBuilder sb2 = new StringBuilder(String.valueOf(outputType).length() + 25);
            sb2.append(ca2.f674do);
            sb2.append(outputType);
            sb2.append("\" is not a message type.");
            throw new Cnew(this, sb2.toString(), cdo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public void m19340super(DescriptorProtos.Cclass cclass) {
            this.f16361if = cclass;
        }

        /* renamed from: break, reason: not valid java name */
        public DescriptorProtos.Cconst m19342break() {
            return this.f16361if.getOptions();
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m19343catch() {
            return this.f16359else;
        }

        /* renamed from: class, reason: not valid java name */
        public Ccatch m19344class() {
            return this.f16363try;
        }

        /* renamed from: const, reason: not valid java name */
        public boolean m19345const() {
            return this.f16361if.getClientStreaming();
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: do */
        public FileDescriptor mo19232do() {
            return this.f16362new;
        }

        /* renamed from: final, reason: not valid java name */
        public boolean m19346final() {
            return this.f16361if.getServerStreaming();
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: for */
        public String mo19234for() {
            return this.f16361if.getName();
        }

        /* renamed from: goto, reason: not valid java name */
        public int m19347goto() {
            return this.f16358do;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: if */
        public String mo19235if() {
            return this.f16360for;
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m19348this() {
            return this.f16357case;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public DescriptorProtos.Cclass mo19238new() {
            return this.f16361if;
        }

        private Cthis(DescriptorProtos.Cclass cclass, FileDescriptor fileDescriptor, Ccatch ccatch, int i) throws Cnew {
            super(null);
            this.f16358do = i;
            this.f16361if = cclass;
            this.f16362new = fileDescriptor;
            this.f16363try = ccatch;
            String strMo19235if = ccatch.mo19235if();
            String name = cclass.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 1 + String.valueOf(name).length());
            sb.append(strMo19235if);
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(name);
            this.f16360for = sb.toString();
            fileDescriptor.f16295goto.m19308case(this);
        }
    }

    /* renamed from: com.google.protobuf.Descriptors$try, reason: invalid class name */
    public static final class Ctry extends Cgoto implements Internal.EnumLiteMap<Ccase> {

        /* renamed from: case, reason: not valid java name */
        private Ccase[] f16364case;

        /* renamed from: do, reason: not valid java name */
        private final int f16365do;

        /* renamed from: else, reason: not valid java name */
        private final WeakHashMap<Integer, WeakReference<Ccase>> f16366else;

        /* renamed from: for, reason: not valid java name */
        private final String f16367for;

        /* renamed from: if, reason: not valid java name */
        private DescriptorProtos.EnumDescriptorProto f16368if;

        /* renamed from: new, reason: not valid java name */
        private final FileDescriptor f16369new;

        /* renamed from: try, reason: not valid java name */
        private final Cif f16370try;

        public /* synthetic */ Ctry(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, Cif cif, int i, Cdo cdo) throws Cnew {
            this(enumDescriptorProto, fileDescriptor, cif, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: final, reason: not valid java name */
        public void m19350final(DescriptorProtos.EnumDescriptorProto enumDescriptorProto) {
            this.f16368if = enumDescriptorProto;
            int i = 0;
            while (true) {
                Ccase[] ccaseArr = this.f16364case;
                if (i >= ccaseArr.length) {
                    return;
                }
                ccaseArr[i].m19259this(enumDescriptorProto.getValue(i));
                i++;
            }
        }

        /* renamed from: break, reason: not valid java name */
        public int m19352break() {
            return this.f16365do;
        }

        /* renamed from: case, reason: not valid java name */
        public Ccase m19353case(String str) {
            Cfor cfor = this.f16369new.f16295goto;
            String str2 = this.f16367for;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
            sb.append(str2);
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(str);
            Cgoto cgotoM19311else = cfor.m19311else(sb.toString());
            if (cgotoM19311else == null || !(cgotoM19311else instanceof Ccase)) {
                return null;
            }
            return (Ccase) cgotoM19311else;
        }

        /* renamed from: catch, reason: not valid java name */
        public DescriptorProtos.Cif m19354catch() {
            return this.f16368if.getOptions();
        }

        /* renamed from: class, reason: not valid java name */
        public int m19355class() {
            return this.f16366else.size();
        }

        /* renamed from: const, reason: not valid java name */
        public List<Ccase> m19356const() {
            return Collections.unmodifiableList(Arrays.asList(this.f16364case));
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: do */
        public FileDescriptor mo19232do() {
            return this.f16369new;
        }

        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccase findValueByNumber(int i) {
            return (Ccase) this.f16369new.f16295goto.f16339try.get(new Cfor.Cdo(this, i));
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: for */
        public String mo19234for() {
            return this.f16368if.getName();
        }

        /* renamed from: goto, reason: not valid java name */
        public Ccase m19358goto(int i) {
            Ccase ccaseFindValueByNumber = findValueByNumber(i);
            if (ccaseFindValueByNumber != null) {
                return ccaseFindValueByNumber;
            }
            synchronized (this) {
                Integer num = new Integer(i);
                WeakReference<Ccase> weakReference = this.f16366else.get(num);
                if (weakReference != null) {
                    ccaseFindValueByNumber = weakReference.get();
                }
                if (ccaseFindValueByNumber == null) {
                    ccaseFindValueByNumber = new Ccase(this.f16369new, this, num, (Cdo) null);
                    this.f16366else.put(num, new WeakReference<>(ccaseFindValueByNumber));
                }
            }
            return ccaseFindValueByNumber;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: if */
        public String mo19235if() {
            return this.f16367for;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public DescriptorProtos.EnumDescriptorProto mo19238new() {
            return this.f16368if;
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m19360this() {
            return this.f16370try;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private Ctry(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, Cif cif, int i) throws Cnew {
            Cdo cdo = null;
            super(cdo);
            this.f16366else = new WeakHashMap<>();
            this.f16365do = i;
            this.f16368if = enumDescriptorProto;
            this.f16367for = Descriptors.m19212for(fileDescriptor, cif, enumDescriptorProto.getName());
            this.f16369new = fileDescriptor;
            this.f16370try = cif;
            if (enumDescriptorProto.getValueCount() == 0) {
                throw new Cnew(this, "Enums must contain at least one value.", cdo);
            }
            this.f16364case = new Ccase[enumDescriptorProto.getValueCount()];
            for (int i2 = 0; i2 < enumDescriptorProto.getValueCount(); i2++) {
                this.f16364case[i2] = new Ccase(enumDescriptorProto.getValue(i2), fileDescriptor, this, i2, null);
            }
            fileDescriptor.f16295goto.m19308case(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static String m19212for(FileDescriptor fileDescriptor, Cif cif, String str) {
        if (cif != null) {
            String strMo19235if = cif.mo19235if();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 1 + String.valueOf(str).length());
            sb.append(strMo19235if);
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(str);
            return sb.toString();
        }
        String strM19237native = fileDescriptor.m19237native();
        if (strM19237native.isEmpty()) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(strM19237native.length() + 1 + String.valueOf(str).length());
        sb2.append(strM19237native);
        sb2.append(org.apache.commons.lang3.Ctry.f28883do);
        sb2.append(str);
        return sb2.toString();
    }

    public static final class FileDescriptor extends Cgoto {

        /* renamed from: case, reason: not valid java name */
        private final FileDescriptor[] f16291case;

        /* renamed from: do, reason: not valid java name */
        private DescriptorProtos.Cgoto f16292do;

        /* renamed from: else, reason: not valid java name */
        private final FileDescriptor[] f16293else;

        /* renamed from: for, reason: not valid java name */
        private final Ctry[] f16294for;

        /* renamed from: goto, reason: not valid java name */
        private final Cfor f16295goto;

        /* renamed from: if, reason: not valid java name */
        private final Cif[] f16296if;

        /* renamed from: new, reason: not valid java name */
        private final Ccatch[] f16297new;

        /* renamed from: try, reason: not valid java name */
        private final Celse[] f16298try;

        @Deprecated
        public interface InternalDescriptorAssigner {
            Cprotected assignDescriptors(FileDescriptor fileDescriptor);
        }

        /* renamed from: com.google.protobuf.Descriptors$FileDescriptor$do, reason: invalid class name */
        public enum Cdo {
            UNKNOWN("unknown"),
            PROTO2("proto2"),
            PROTO3("proto3");

            private final String name;

            Cdo(String str) {
                this.name = str;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private FileDescriptor(DescriptorProtos.Cgoto cgoto, FileDescriptor[] fileDescriptorArr, Cfor cfor, boolean z) throws Cnew {
            Cdo cdo = null;
            super(cdo);
            this.f16295goto = cfor;
            this.f16292do = cgoto;
            this.f16291case = (FileDescriptor[]) fileDescriptorArr.clone();
            HashMap map = new HashMap();
            for (FileDescriptor fileDescriptor : fileDescriptorArr) {
                map.put(fileDescriptor.mo19234for(), fileDescriptor);
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < cgoto.getPublicDependencyCount(); i++) {
                int publicDependency = cgoto.getPublicDependency(i);
                if (publicDependency < 0 || publicDependency >= cgoto.getDependencyCount()) {
                    throw new Cnew(this, "Invalid public dependency index.", cdo);
                }
                String dependency = cgoto.getDependency(publicDependency);
                FileDescriptor fileDescriptor2 = (FileDescriptor) map.get(dependency);
                if (fileDescriptor2 != null) {
                    arrayList.add(fileDescriptor2);
                } else if (!z) {
                    String strValueOf = String.valueOf(dependency);
                    throw new Cnew(this, strValueOf.length() != 0 ? "Invalid public dependency: ".concat(strValueOf) : new String("Invalid public dependency: "), cdo);
                }
            }
            FileDescriptor[] fileDescriptorArr2 = new FileDescriptor[arrayList.size()];
            this.f16293else = fileDescriptorArr2;
            arrayList.toArray(fileDescriptorArr2);
            cfor.m19315try(m19237native(), this);
            this.f16296if = new Cif[cgoto.getMessageTypeCount()];
            for (int i2 = 0; i2 < cgoto.getMessageTypeCount(); i2++) {
                this.f16296if[i2] = new Cif(cgoto.getMessageType(i2), this, null, i2, null);
            }
            this.f16294for = new Ctry[cgoto.getEnumTypeCount()];
            for (int i3 = 0; i3 < cgoto.getEnumTypeCount(); i3++) {
                this.f16294for[i3] = new Ctry(cgoto.getEnumType(i3), this, null, i3, null);
            }
            this.f16297new = new Ccatch[cgoto.getServiceCount()];
            for (int i4 = 0; i4 < cgoto.getServiceCount(); i4++) {
                this.f16297new[i4] = new Ccatch(cgoto.getService(i4), this, i4, cdo);
            }
            this.f16298try = new Celse[cgoto.getExtensionCount()];
            for (int i5 = 0; i5 < cgoto.getExtensionCount(); i5++) {
                this.f16298try[i5] = new Celse(cgoto.getExtension(i5), this, null, i5, true, null);
            }
        }

        /* renamed from: case, reason: not valid java name */
        public static FileDescriptor m19214case(DescriptorProtos.Cgoto cgoto, FileDescriptor[] fileDescriptorArr) throws Cnew {
            return m19216else(cgoto, fileDescriptorArr, false);
        }

        @Deprecated
        /* renamed from: default, reason: not valid java name */
        public static void m19215default(String[] strArr, Class<?> cls, String[] strArr2, String[] strArr3, InternalDescriptorAssigner internalDescriptorAssigner) {
            m19217extends(strArr, m19223this(cls, strArr2, strArr3), internalDescriptorAssigner);
        }

        /* renamed from: else, reason: not valid java name */
        public static FileDescriptor m19216else(DescriptorProtos.Cgoto cgoto, FileDescriptor[] fileDescriptorArr, boolean z) throws Cnew {
            FileDescriptor fileDescriptor = new FileDescriptor(cgoto, fileDescriptorArr, new Cfor(fileDescriptorArr, z), z);
            fileDescriptor.m19219goto();
            return fileDescriptor;
        }

        @Deprecated
        /* renamed from: extends, reason: not valid java name */
        public static void m19217extends(String[] strArr, FileDescriptor[] fileDescriptorArr, InternalDescriptorAssigner internalDescriptorAssigner) {
            byte[] bArrM19220package = m19220package(strArr);
            try {
                DescriptorProtos.Cgoto from = DescriptorProtos.Cgoto.parseFrom(bArrM19220package);
                try {
                    FileDescriptor fileDescriptorM19216else = m19216else(from, fileDescriptorArr, true);
                    Cprotected cprotectedAssignDescriptors = internalDescriptorAssigner.assignDescriptors(fileDescriptorM19216else);
                    if (cprotectedAssignDescriptors != null) {
                        try {
                            fileDescriptorM19216else.m19221private(DescriptorProtos.Cgoto.parseFrom(bArrM19220package, cprotectedAssignDescriptors));
                        } catch (n e) {
                            throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e);
                        }
                    }
                } catch (Cnew e2) {
                    String name = from.getName();
                    StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 35);
                    sb.append("Invalid embedded descriptor for \"");
                    sb.append(name);
                    sb.append("\".");
                    throw new IllegalArgumentException(sb.toString(), e2);
                }
            } catch (n e3) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e3);
            }
        }

        /* renamed from: finally, reason: not valid java name */
        public static void m19218finally(FileDescriptor fileDescriptor, Cprotected cprotected) {
            try {
                fileDescriptor.m19221private(DescriptorProtos.Cgoto.parseFrom(fileDescriptor.f16292do.toByteString(), cprotected));
            } catch (n e) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e);
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private void m19219goto() throws Cnew {
            for (Cif cif : this.f16296if) {
                cif.m19318else();
            }
            for (Ccatch ccatch : this.f16297new) {
                ccatch.m19267else();
            }
            for (Celse celse : this.f16298try) {
                celse.m19278this();
            }
        }

        /* renamed from: package, reason: not valid java name */
        private static byte[] m19220package(String[] strArr) {
            if (strArr.length == 1) {
                return strArr[0].getBytes(Internal.f16556if);
            }
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                sb.append(str);
            }
            return sb.toString().getBytes(Internal.f16556if);
        }

        /* renamed from: private, reason: not valid java name */
        private void m19221private(DescriptorProtos.Cgoto cgoto) {
            this.f16292do = cgoto;
            int i = 0;
            int i2 = 0;
            while (true) {
                Cif[] cifArr = this.f16296if;
                if (i2 >= cifArr.length) {
                    break;
                }
                cifArr[i2].m19317default(cgoto.getMessageType(i2));
                i2++;
            }
            int i3 = 0;
            while (true) {
                Ctry[] ctryArr = this.f16294for;
                if (i3 >= ctryArr.length) {
                    break;
                }
                ctryArr[i3].m19350final(cgoto.getEnumType(i3));
                i3++;
            }
            int i4 = 0;
            while (true) {
                Ccatch[] ccatchArr = this.f16297new;
                if (i4 >= ccatchArr.length) {
                    break;
                }
                ccatchArr[i4].m19266class(cgoto.getService(i4));
                i4++;
            }
            while (true) {
                Celse[] celseArr = this.f16298try;
                if (i >= celseArr.length) {
                    return;
                }
                celseArr[i].m19277strictfp(cgoto.getExtension(i));
                i++;
            }
        }

        /* renamed from: switch, reason: not valid java name */
        public static FileDescriptor m19222switch(String[] strArr, Class<?> cls, String[] strArr2, String[] strArr3) {
            return m19224throws(strArr, m19223this(cls, strArr2, strArr3));
        }

        /* renamed from: this, reason: not valid java name */
        private static FileDescriptor[] m19223this(Class<?> cls, String[] strArr, String[] strArr2) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < strArr.length; i++) {
                try {
                    arrayList.add((FileDescriptor) cls.getClassLoader().loadClass(strArr[i]).getField("descriptor").get(null));
                } catch (Exception unused) {
                    Logger logger = Descriptors.f16290do;
                    String str = strArr2[i];
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36);
                    sb.append("Descriptors for \"");
                    sb.append(str);
                    sb.append("\" can not be found.");
                    logger.warning(sb.toString());
                }
            }
            return (FileDescriptor[]) arrayList.toArray(new FileDescriptor[0]);
        }

        /* renamed from: throws, reason: not valid java name */
        public static FileDescriptor m19224throws(String[] strArr, FileDescriptor[] fileDescriptorArr) {
            try {
                DescriptorProtos.Cgoto from = DescriptorProtos.Cgoto.parseFrom(m19220package(strArr));
                try {
                    return m19216else(from, fileDescriptorArr, true);
                } catch (Cnew e) {
                    String name = from.getName();
                    StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 35);
                    sb.append("Invalid embedded descriptor for \"");
                    sb.append(name);
                    sb.append("\".");
                    throw new IllegalArgumentException(sb.toString(), e);
                }
            } catch (n e2) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e2);
            }
        }

        /* renamed from: abstract, reason: not valid java name */
        public boolean m19226abstract() {
            return m19241static() == Cdo.PROTO3;
        }

        /* renamed from: break, reason: not valid java name */
        public Ctry m19227break(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String strM19237native = m19237native();
            if (!strM19237native.isEmpty()) {
                StringBuilder sb = new StringBuilder(strM19237native.length() + 1 + str.length());
                sb.append(strM19237native);
                sb.append(org.apache.commons.lang3.Ctry.f28883do);
                sb.append(str);
                str = sb.toString();
            }
            Cgoto cgotoM19311else = this.f16295goto.m19311else(str);
            if (cgotoM19311else != null && (cgotoM19311else instanceof Ctry) && cgotoM19311else.mo19232do() == this) {
                return (Ctry) cgotoM19311else;
            }
            return null;
        }

        /* renamed from: catch, reason: not valid java name */
        public Celse m19228catch(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String strM19237native = m19237native();
            if (!strM19237native.isEmpty()) {
                StringBuilder sb = new StringBuilder(strM19237native.length() + 1 + str.length());
                sb.append(strM19237native);
                sb.append(org.apache.commons.lang3.Ctry.f28883do);
                sb.append(str);
                str = sb.toString();
            }
            Cgoto cgotoM19311else = this.f16295goto.m19311else(str);
            if (cgotoM19311else != null && (cgotoM19311else instanceof Celse) && cgotoM19311else.mo19232do() == this) {
                return (Celse) cgotoM19311else;
            }
            return null;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m19229class(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String strM19237native = m19237native();
            if (!strM19237native.isEmpty()) {
                StringBuilder sb = new StringBuilder(strM19237native.length() + 1 + str.length());
                sb.append(strM19237native);
                sb.append(org.apache.commons.lang3.Ctry.f28883do);
                sb.append(str);
                str = sb.toString();
            }
            Cgoto cgotoM19311else = this.f16295goto.m19311else(str);
            if (cgotoM19311else != null && (cgotoM19311else instanceof Cif) && cgotoM19311else.mo19232do() == this) {
                return (Cif) cgotoM19311else;
            }
            return null;
        }

        /* renamed from: const, reason: not valid java name */
        public Ccatch m19230const(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String strM19237native = m19237native();
            if (!strM19237native.isEmpty()) {
                StringBuilder sb = new StringBuilder(strM19237native.length() + 1 + str.length());
                sb.append(strM19237native);
                sb.append(org.apache.commons.lang3.Ctry.f28883do);
                sb.append(str);
                str = sb.toString();
            }
            Cgoto cgotoM19311else = this.f16295goto.m19311else(str);
            if (cgotoM19311else != null && (cgotoM19311else instanceof Ccatch) && cgotoM19311else.mo19232do() == this) {
                return (Ccatch) cgotoM19311else;
            }
            return null;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: continue, reason: not valid java name and merged with bridge method [inline-methods] */
        public DescriptorProtos.Cgoto mo19238new() {
            return this.f16292do;
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: do, reason: not valid java name */
        public FileDescriptor mo19232do() {
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public List<FileDescriptor> m19233final() {
            return Collections.unmodifiableList(Arrays.asList(this.f16291case));
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: for, reason: not valid java name */
        public String mo19234for() {
            return this.f16292do.getName();
        }

        @Override // com.google.protobuf.Descriptors.Cgoto
        /* renamed from: if, reason: not valid java name */
        public String mo19235if() {
            return this.f16292do.getName();
        }

        /* renamed from: import, reason: not valid java name */
        public DescriptorProtos.Cbreak m19236import() {
            return this.f16292do.getOptions();
        }

        /* renamed from: native, reason: not valid java name */
        public String m19237native() {
            return this.f16292do.getPackage();
        }

        /* renamed from: public, reason: not valid java name */
        public List<FileDescriptor> m19239public() {
            return Collections.unmodifiableList(Arrays.asList(this.f16293else));
        }

        /* renamed from: return, reason: not valid java name */
        public List<Ccatch> m19240return() {
            return Collections.unmodifiableList(Arrays.asList(this.f16297new));
        }

        /* renamed from: static, reason: not valid java name */
        public Cdo m19241static() {
            Cdo cdo = Cdo.PROTO3;
            return cdo.name.equals(this.f16292do.getSyntax()) ? cdo : Cdo.PROTO2;
        }

        /* renamed from: super, reason: not valid java name */
        public List<Ctry> m19242super() {
            return Collections.unmodifiableList(Arrays.asList(this.f16294for));
        }

        /* renamed from: throw, reason: not valid java name */
        public List<Celse> m19243throw() {
            return Collections.unmodifiableList(Arrays.asList(this.f16298try));
        }

        /* renamed from: while, reason: not valid java name */
        public List<Cif> m19244while() {
            return Collections.unmodifiableList(Arrays.asList(this.f16296if));
        }

        public FileDescriptor(String str, Cif cif) throws Cnew {
            super(null);
            Cfor cfor = new Cfor(new FileDescriptor[0], true);
            this.f16295goto = cfor;
            this.f16292do = DescriptorProtos.Cgoto.newBuilder().g0(String.valueOf(cif.mo19235if()).concat(".placeholder.proto")).k0(str).m19033default(cif.mo19238new()).build();
            this.f16291case = new FileDescriptor[0];
            this.f16293else = new FileDescriptor[0];
            this.f16296if = new Cif[]{cif};
            this.f16294for = new Ctry[0];
            this.f16297new = new Ccatch[0];
            this.f16298try = new Celse[0];
            cfor.m19315try(str, this);
            cfor.m19308case(cif);
        }
    }
}
