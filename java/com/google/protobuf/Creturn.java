package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.h1;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.google.protobuf.return, reason: invalid class name */
/* loaded from: classes2.dex */
final class Creturn implements MessageInfoFactory {

    /* renamed from: do, reason: not valid java name */
    private static final String f17186do = "getDefaultInstance";

    /* renamed from: if, reason: not valid java name */
    private static final Creturn f17188if = new Creturn();

    /* renamed from: for, reason: not valid java name */
    private static final Set<String> f17187for = new HashSet(Arrays.asList("cached_size", "serialized_size", "class"));

    /* renamed from: new, reason: not valid java name */
    private static Cnew f17189new = new Cnew();

    /* renamed from: com.google.protobuf.return$do, reason: invalid class name */
    public class Cdo implements Internal.EnumVerifier {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Descriptors.Celse f17190do;

        public Cdo(Descriptors.Celse celse) {
            this.f17190do = celse;
        }

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return this.f17190do.getEnumType().findValueByNumber(i) != null;
        }
    }

    /* renamed from: com.google.protobuf.return$for, reason: invalid class name */
    public static /* synthetic */ class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17191do;

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ int[] f17192for;

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ int[] f17193if;

        static {
            int[] iArr = new int[Descriptors.Celse.Cif.values().length];
            f17192for = iArr;
            try {
                iArr[Descriptors.Celse.Cif.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.GROUP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.INT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.INT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.MESSAGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.UINT32.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f17192for[Descriptors.Celse.Cif.UINT64.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[p.values().length];
            f17193if = iArr2;
            try {
                iArr2[p.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f17193if[p.BYTE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f17193if[p.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f17193if[p.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f17193if[p.ENUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f17193if[p.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f17193if[p.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f17193if[p.STRING.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f17193if[p.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
            int[] iArr3 = new int[Descriptors.FileDescriptor.Cdo.values().length];
            f17191do = iArr3;
            try {
                iArr3[Descriptors.FileDescriptor.Cdo.PROTO2.ordinal()] = 1;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f17191do[Descriptors.FileDescriptor.Cdo.PROTO3.ordinal()] = 2;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    /* renamed from: com.google.protobuf.return$if, reason: invalid class name */
    public class Cif implements Internal.EnumVerifier {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Descriptors.Celse f17194do;

        public Cif(Descriptors.Celse celse) {
            this.f17194do = celse;
        }

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return this.f17194do.getEnumType().findValueByNumber(i) != null;
        }
    }

    private Creturn() {
    }

    /* renamed from: break, reason: not valid java name */
    private static Field m21068break(Class<?> cls, Descriptors.Celse celse) {
        return m21070catch(cls, m21075final(celse));
    }

    /* renamed from: case, reason: not valid java name */
    private static MessageInfo m21069case(Class<?> cls, Descriptors.Cif cif) {
        int i = Cfor.f17191do[cif.mo19232do().m19241static().ordinal()];
        if (i == 1) {
            return m21074else(cls, cif);
        }
        if (i == 2) {
            return m21077goto(cls, cif);
        }
        String strValueOf = String.valueOf(cif.mo19232do().m19241static());
        StringBuilder sb = new StringBuilder(strValueOf.length() + 20);
        sb.append("Unsupported syntax: ");
        sb.append(strValueOf);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static Field m21070catch(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Exception unused) {
            String name = cls.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 39 + name.length());
            sb.append("Unable to find field ");
            sb.append(str);
            sb.append(" in message class ");
            sb.append(name);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    private static String m21071class(Descriptors.Celse celse) {
        return String.valueOf(m21084static(celse.mo19234for())).concat("MemoizedSerializedSize");
    }

    /* renamed from: const, reason: not valid java name */
    private static Message m21072const(Class<?> cls) {
        try {
            return (Message) cls.getDeclaredMethod(f17186do, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unable to get default instance for message class ".concat(name) : new String("Unable to get default instance for message class "), e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static h1 m21074else(Class<?> cls, Descriptors.Cif cif) {
        List<Descriptors.Celse> listM19332super = cif.m19332super();
        h1.Cdo cdoM20575new = h1.m20575new(listM19332super.size());
        cdoM20575new.m20580for(m21072const(cls));
        cdoM20575new.m20578case(p0.PROTO2);
        cdoM20575new.m20583try(cif.m19328native().getMessageSetWireFormat());
        Cdo cdo = null;
        Ctry ctry = new Ctry(cdo);
        Field fieldM21076for = null;
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (i < listM19332super.size()) {
            Descriptors.Celse celse = listM19332super.get(i);
            boolean javaStringCheckUtf8 = celse.mo19232do().m19236import().getJavaStringCheckUtf8();
            Descriptors.Celse.Cdo cdoM19302while = celse.m19302while();
            Descriptors.Celse.Cdo cdo2 = Descriptors.Celse.Cdo.ENUM;
            Internal.EnumVerifier cdo3 = cdoM19302while == cdo2 ? new Cdo(celse) : cdo;
            if (celse.m19281catch() != null) {
                cdoM20575new.m20582new(m21081new(cls, celse, ctry, javaStringCheckUtf8, cdo3));
            } else {
                Field fieldM21068break = m21068break(cls, celse);
                int number = celse.getNumber();
                g gVarM21085super = m21085super(celse);
                if (celse.m19288finally()) {
                    Descriptors.Celse celseM19320break = celse.m19291native().m19320break(2);
                    if (celseM19320break.m19302while() == cdo2) {
                        cdo3 = new Cif(celseM19320break);
                    }
                    cdoM20575new.m20582new(d.m20220try(fieldM21068break, number, y0.m21605continue(cls, celse.mo19234for()), cdo3));
                } else if (!celse.isRepeated()) {
                    if (fieldM21076for == null) {
                        fieldM21076for = m21076for(cls, i2);
                    }
                    if (celse.m19280abstract()) {
                        cdoM20575new.m20582new(d.m20209break(fieldM21068break, number, gVarM21085super, fieldM21076for, i3, javaStringCheckUtf8, cdo3));
                    } else {
                        cdoM20575new.m20582new(d.m20219this(fieldM21068break, number, gVarM21085super, fieldM21076for, i3, javaStringCheckUtf8, cdo3));
                    }
                } else if (cdo3 != null) {
                    if (celse.isPacked()) {
                        cdoM20575new.m20582new(d.m20217goto(fieldM21068break, number, gVarM21085super, cdo3, m21088try(cls, celse)));
                    } else {
                        cdoM20575new.m20582new(d.m20218new(fieldM21068break, number, gVarM21085super, cdo3));
                    }
                } else if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                    cdoM20575new.m20582new(d.m20211catch(fieldM21068break, number, gVarM21085super, m21080native(cls, celse)));
                } else if (celse.isPacked()) {
                    cdoM20575new.m20582new(d.m20214else(fieldM21068break, number, gVarM21085super, m21088try(cls, celse)));
                } else {
                    cdoM20575new.m20582new(d.m20216for(fieldM21068break, number, gVarM21085super, javaStringCheckUtf8));
                }
                i++;
                cdo = null;
            }
            i3 <<= 1;
            if (i3 == 0) {
                i2++;
                fieldM21076for = null;
                i3 = 1;
            }
            i++;
            cdo = null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < listM19332super.size(); i4++) {
            Descriptors.Celse celse2 = listM19332super.get(i4);
            if (celse2.m19280abstract() || (celse2.m19302while() == Descriptors.Celse.Cdo.MESSAGE && m21083return(celse2.m19291native()))) {
                arrayList.add(Integer.valueOf(celse2.getNumber()));
            }
        }
        int[] iArr = new int[arrayList.size()];
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            iArr[i5] = ((Integer) arrayList.get(i5)).intValue();
        }
        cdoM20575new.m20581if(iArr);
        return cdoM20575new.m20579do();
    }

    /* renamed from: final, reason: not valid java name */
    public static String m21075final(Descriptors.Celse celse) {
        String strMo19234for = celse.m19296static() == Descriptors.Celse.Cif.GROUP ? celse.m19291native().mo19234for() : celse.mo19234for();
        String str = f17187for.contains(strMo19234for) ? "__" : "_";
        String strValueOf = String.valueOf(m21084static(strMo19234for));
        return str.length() != 0 ? strValueOf.concat(str) : new String(strValueOf);
    }

    /* renamed from: for, reason: not valid java name */
    private static Field m21076for(Class<?> cls, int i) {
        StringBuilder sb = new StringBuilder(20);
        sb.append("bitField");
        sb.append(i);
        sb.append("_");
        return m21070catch(cls, sb.toString());
    }

    /* renamed from: goto, reason: not valid java name */
    private static h1 m21077goto(Class<?> cls, Descriptors.Cif cif) {
        List<Descriptors.Celse> listM19332super = cif.m19332super();
        h1.Cdo cdoM20575new = h1.m20575new(listM19332super.size());
        cdoM20575new.m20580for(m21072const(cls));
        cdoM20575new.m20578case(p0.PROTO3);
        Ctry ctry = new Ctry(null);
        for (int i = 0; i < listM19332super.size(); i++) {
            Descriptors.Celse celse = listM19332super.get(i);
            if (celse.m19281catch() != null) {
                cdoM20575new.m20582new(m21081new(cls, celse, ctry, true, null));
            } else if (celse.m19288finally()) {
                cdoM20575new.m20582new(d.m20220try(m21068break(cls, celse), celse.getNumber(), y0.m21605continue(cls, celse.mo19234for()), null));
            } else if (celse.isRepeated() && celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                cdoM20575new.m20582new(d.m20211catch(m21068break(cls, celse), celse.getNumber(), m21085super(celse), m21080native(cls, celse)));
            } else if (celse.isPacked()) {
                cdoM20575new.m20582new(d.m20214else(m21068break(cls, celse), celse.getNumber(), m21085super(celse), m21088try(cls, celse)));
            } else {
                cdoM20575new.m20582new(d.m20216for(m21068break(cls, celse), celse.getNumber(), m21085super(celse), true));
            }
        }
        return cdoM20575new.m20579do();
    }

    /* renamed from: import, reason: not valid java name */
    private static Class<?> m21079import(Class<?> cls, Descriptors.Celse celse) {
        try {
            return cls.getDeclaredMethod(m21082public(celse.m19296static() == Descriptors.Celse.Cif.GROUP ? celse.m19291native().mo19234for() : celse.mo19234for()), new Class[0]).getReturnType();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: native, reason: not valid java name */
    private static Class<?> m21080native(Class<?> cls, Descriptors.Celse celse) {
        try {
            return cls.getDeclaredMethod(m21082public(celse.m19296static() == Descriptors.Celse.Cif.GROUP ? celse.m19291native().mo19234for() : celse.mo19234for()), Integer.TYPE).getReturnType();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static d m21081new(Class<?> cls, Descriptors.Celse celse, Ctry ctry, boolean z, Internal.EnumVerifier enumVerifier) {
        n0 n0VarM21094do = ctry.m21094do(cls, celse.m19281catch());
        g gVarM21085super = m21085super(celse);
        return d.m20210case(celse.getNumber(), gVarM21085super, n0VarM21094do, m21089while(cls, celse, gVarM21085super), z, enumVerifier);
    }

    /* renamed from: public, reason: not valid java name */
    private static String m21082public(String str) {
        String strM21084static = m21084static(str);
        return "get" + Character.toUpperCase(strM21084static.charAt(0)) + strM21084static.substring(1, strM21084static.length());
    }

    /* renamed from: return, reason: not valid java name */
    private static boolean m21083return(Descriptors.Cif cif) {
        return f17189new.m21092for(cif);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public static String m21084static(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 1);
        boolean z = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '_') {
                z = true;
            } else if (Character.isDigit(cCharAt)) {
                sb.append(cCharAt);
                z = true;
            } else if (z) {
                sb.append(Character.toUpperCase(cCharAt));
                z = false;
            } else if (i == 0) {
                sb.append(Character.toLowerCase(cCharAt));
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    /* renamed from: super, reason: not valid java name */
    private static g m21085super(Descriptors.Celse celse) {
        switch (Cfor.f17192for[celse.m19296static().ordinal()]) {
            case 1:
                return !celse.isRepeated() ? g.BOOL : celse.isPacked() ? g.BOOL_LIST_PACKED : g.BOOL_LIST;
            case 2:
                return celse.isRepeated() ? g.BYTES_LIST : g.BYTES;
            case 3:
                return !celse.isRepeated() ? g.DOUBLE : celse.isPacked() ? g.DOUBLE_LIST_PACKED : g.DOUBLE_LIST;
            case 4:
                return !celse.isRepeated() ? g.ENUM : celse.isPacked() ? g.ENUM_LIST_PACKED : g.ENUM_LIST;
            case 5:
                return !celse.isRepeated() ? g.FIXED32 : celse.isPacked() ? g.FIXED32_LIST_PACKED : g.FIXED32_LIST;
            case 6:
                return !celse.isRepeated() ? g.FIXED64 : celse.isPacked() ? g.FIXED64_LIST_PACKED : g.FIXED64_LIST;
            case 7:
                return !celse.isRepeated() ? g.FLOAT : celse.isPacked() ? g.FLOAT_LIST_PACKED : g.FLOAT_LIST;
            case 8:
                return celse.isRepeated() ? g.GROUP_LIST : g.GROUP;
            case 9:
                return !celse.isRepeated() ? g.INT32 : celse.isPacked() ? g.INT32_LIST_PACKED : g.INT32_LIST;
            case 10:
                return !celse.isRepeated() ? g.INT64 : celse.isPacked() ? g.INT64_LIST_PACKED : g.INT64_LIST;
            case 11:
                return celse.m19288finally() ? g.MAP : celse.isRepeated() ? g.MESSAGE_LIST : g.MESSAGE;
            case 12:
                return !celse.isRepeated() ? g.SFIXED32 : celse.isPacked() ? g.SFIXED32_LIST_PACKED : g.SFIXED32_LIST;
            case 13:
                return !celse.isRepeated() ? g.SFIXED64 : celse.isPacked() ? g.SFIXED64_LIST_PACKED : g.SFIXED64_LIST;
            case 14:
                return !celse.isRepeated() ? g.SINT32 : celse.isPacked() ? g.SINT32_LIST_PACKED : g.SINT32_LIST;
            case 15:
                return !celse.isRepeated() ? g.SINT64 : celse.isPacked() ? g.SINT64_LIST_PACKED : g.SINT64_LIST;
            case 16:
                return celse.isRepeated() ? g.STRING_LIST : g.STRING;
            case 17:
                return !celse.isRepeated() ? g.UINT32 : celse.isPacked() ? g.UINT32_LIST_PACKED : g.UINT32_LIST;
            case 18:
                return !celse.isRepeated() ? g.UINT64 : celse.isPacked() ? g.UINT64_LIST_PACKED : g.UINT64_LIST;
            default:
                String strValueOf = String.valueOf(celse.m19296static());
                StringBuilder sb = new StringBuilder(strValueOf.length() + 24);
                sb.append("Unsupported field type: ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static Descriptors.Cif m21086this(Class<?> cls) {
        return m21072const(cls).getDescriptorForType();
    }

    /* renamed from: throw, reason: not valid java name */
    public static Creturn m21087throw() {
        return f17188if;
    }

    /* renamed from: try, reason: not valid java name */
    private static Field m21088try(Class<?> cls, Descriptors.Celse celse) {
        return m21070catch(cls, m21071class(celse));
    }

    /* renamed from: while, reason: not valid java name */
    private static Class<?> m21089while(Class<?> cls, Descriptors.Celse celse, g gVar) {
        switch (Cfor.f17193if[gVar.getJavaType().ordinal()]) {
            case 1:
                return Boolean.class;
            case 2:
                return ByteString.class;
            case 3:
                return Double.class;
            case 4:
                return Float.class;
            case 5:
            case 6:
                return Integer.class;
            case 7:
                return Long.class;
            case 8:
                return String.class;
            case 9:
                return m21079import(cls, celse);
            default:
                String strValueOf = String.valueOf(gVar);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 24);
                sb.append("Invalid type for oneof: ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
        }
    }

    @Override // com.google.protobuf.MessageInfoFactory
    public boolean isSupported(Class<?> cls) {
        return GeneratedMessageV3.class.isAssignableFrom(cls);
    }

    @Override // com.google.protobuf.MessageInfoFactory
    public MessageInfo messageInfoFor(Class<?> cls) {
        if (GeneratedMessageV3.class.isAssignableFrom(cls)) {
            return m21069case(cls, m21086this(cls));
        }
        String name = cls.getName();
        throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
    }

    /* renamed from: com.google.protobuf.return$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        private final Map<Descriptors.Cif, Boolean> f17195do = new ConcurrentHashMap();

        /* renamed from: if, reason: not valid java name */
        private int f17197if = 0;

        /* renamed from: for, reason: not valid java name */
        private final Stack<Cdo> f17196for = new Stack<>();

        /* renamed from: new, reason: not valid java name */
        private final Map<Descriptors.Cif, Cdo> f17198new = new HashMap();

        /* renamed from: com.google.protobuf.return$new$do, reason: invalid class name */
        public static class Cdo {

            /* renamed from: do, reason: not valid java name */
            public final Descriptors.Cif f17199do;

            /* renamed from: for, reason: not valid java name */
            public int f17200for;

            /* renamed from: if, reason: not valid java name */
            public final int f17201if;

            /* renamed from: new, reason: not valid java name */
            public Cif f17202new = null;

            public Cdo(Descriptors.Cif cif, int i) {
                this.f17199do = cif;
                this.f17201if = i;
                this.f17200for = i;
            }
        }

        /* renamed from: do, reason: not valid java name */
        private void m21090do(Cif cif) {
            boolean z;
            Cif cif2;
            Iterator<Descriptors.Cif> it = cif.f17203do.iterator();
            loop0: while (true) {
                z = true;
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Descriptors.Cif next = it.next();
                if (next.m19330return()) {
                    break;
                }
                for (Descriptors.Celse celse : next.m19332super()) {
                    if (celse.m19280abstract() || (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE && (cif2 = this.f17198new.get(celse.m19291native()).f17202new) != cif && cif2.f17204if)) {
                        break loop0;
                    }
                }
            }
            cif.f17204if = z;
            Iterator<Descriptors.Cif> it2 = cif.f17203do.iterator();
            while (it2.hasNext()) {
                this.f17195do.put(it2.next(), Boolean.valueOf(cif.f17204if));
            }
        }

        /* renamed from: if, reason: not valid java name */
        private Cdo m21091if(Descriptors.Cif cif) {
            Cdo cdoPop;
            int i = this.f17197if;
            this.f17197if = i + 1;
            Cdo cdo = new Cdo(cif, i);
            this.f17196for.push(cdo);
            this.f17198new.put(cif, cdo);
            for (Descriptors.Celse celse : cif.m19332super()) {
                if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                    Cdo cdo2 = this.f17198new.get(celse.m19291native());
                    if (cdo2 == null) {
                        cdo.f17200for = Math.min(cdo.f17200for, m21091if(celse.m19291native()).f17200for);
                    } else if (cdo2.f17202new == null) {
                        cdo.f17200for = Math.min(cdo.f17200for, cdo2.f17200for);
                    }
                }
            }
            if (cdo.f17201if == cdo.f17200for) {
                Cif cif2 = new Cif(null);
                do {
                    cdoPop = this.f17196for.pop();
                    cdoPop.f17202new = cif2;
                    cif2.f17203do.add(cdoPop.f17199do);
                } while (cdoPop != cdo);
                m21090do(cif2);
            }
            return cdo;
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m21092for(Descriptors.Cif cif) {
            Boolean bool = this.f17195do.get(cif);
            if (bool != null) {
                return bool.booleanValue();
            }
            synchronized (this) {
                Boolean bool2 = this.f17195do.get(cif);
                if (bool2 != null) {
                    return bool2.booleanValue();
                }
                return m21091if(cif).f17202new.f17204if;
            }
        }

        /* renamed from: com.google.protobuf.return$new$if, reason: invalid class name */
        public static class Cif {

            /* renamed from: do, reason: not valid java name */
            public final List<Descriptors.Cif> f17203do;

            /* renamed from: if, reason: not valid java name */
            public boolean f17204if;

            private Cif() {
                this.f17203do = new ArrayList();
                this.f17204if = false;
            }

            public /* synthetic */ Cif(Cdo cdo) {
                this();
            }
        }
    }

    /* renamed from: com.google.protobuf.return$try, reason: invalid class name */
    public static final class Ctry {

        /* renamed from: do, reason: not valid java name */
        private n0[] f17205do;

        private Ctry() {
            this.f17205do = new n0[2];
        }

        /* renamed from: if, reason: not valid java name */
        private static n0 m21093if(Class<?> cls, Descriptors.Cbreak cbreak) {
            String strM21084static = Creturn.m21084static(cbreak.mo19234for());
            String strConcat = String.valueOf(strM21084static).concat("_");
            return new n0(cbreak.m19255final(), Creturn.m21070catch(cls, String.valueOf(strM21084static).concat("Case_")), Creturn.m21070catch(cls, strConcat));
        }

        /* renamed from: do, reason: not valid java name */
        public n0 m21094do(Class<?> cls, Descriptors.Cbreak cbreak) {
            int iM19255final = cbreak.m19255final();
            n0[] n0VarArr = this.f17205do;
            if (iM19255final >= n0VarArr.length) {
                this.f17205do = (n0[]) Arrays.copyOf(n0VarArr, iM19255final * 2);
            }
            n0 n0Var = this.f17205do[iM19255final];
            if (n0Var != null) {
                return n0Var;
            }
            n0 n0VarM21093if = m21093if(cls, cbreak);
            this.f17205do[iM19255final] = n0VarM21093if;
            return n0VarM21093if;
        }

        public /* synthetic */ Ctry(Cdo cdo) {
            this();
        }
    }
}
