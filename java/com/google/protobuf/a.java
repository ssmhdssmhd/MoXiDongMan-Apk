package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.c2;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class a extends Cinstanceof<GeneratedMessageLite.Ccase> {

    /* renamed from: com.google.protobuf.a$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16593do;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f16593do = iArr;
            try {
                iArr[c2.Cif.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16593do[c2.Cif.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16593do[c2.Cif.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16593do[c2.Cif.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16593do[c2.Cif.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16593do[c2.Cif.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16593do[c2.Cif.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16593do[c2.Cif.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16593do[c2.Cif.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16593do[c2.Cif.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16593do[c2.Cif.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16593do[c2.Cif.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16593do[c2.Cif.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16593do[c2.Cif.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16593do[c2.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16593do[c2.Cif.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16593do[c2.Cif.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f16593do[c2.Cif.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: break, reason: not valid java name */
    public void mo19671break(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        GeneratedMessageLite.Ccase ccase = (GeneratedMessageLite.Ccase) entry.getKey();
        if (!ccase.isRepeated()) {
            switch (Cdo.f16593do[ccase.getLiteType().ordinal()]) {
                case 1:
                    writer.writeDouble(ccase.getNumber(), ((Double) entry.getValue()).doubleValue());
                    break;
                case 2:
                    writer.writeFloat(ccase.getNumber(), ((Float) entry.getValue()).floatValue());
                    break;
                case 3:
                    writer.writeInt64(ccase.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 4:
                    writer.writeUInt64(ccase.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 5:
                    writer.writeInt32(ccase.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 6:
                    writer.writeFixed64(ccase.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 7:
                    writer.writeFixed32(ccase.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 8:
                    writer.writeBool(ccase.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                    break;
                case 9:
                    writer.writeUInt32(ccase.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 10:
                    writer.writeSFixed32(ccase.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 11:
                    writer.writeSFixed64(ccase.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 12:
                    writer.writeSInt32(ccase.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 13:
                    writer.writeSInt64(ccase.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 14:
                    writer.writeInt32(ccase.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 15:
                    writer.writeBytes(ccase.getNumber(), (ByteString) entry.getValue());
                    break;
                case 16:
                    writer.writeString(ccase.getNumber(), (String) entry.getValue());
                    break;
                case 17:
                    writer.writeGroup(ccase.getNumber(), entry.getValue(), q0.m21002do().m21011this(entry.getValue().getClass()));
                    break;
                case 18:
                    writer.writeMessage(ccase.getNumber(), entry.getValue(), q0.m21002do().m21011this(entry.getValue().getClass()));
                    break;
            }
        }
        switch (Cdo.f16593do[ccase.getLiteType().ordinal()]) {
            case 1:
                y0.l(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 2:
                y0.t(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 3:
                y0.z(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 4:
                y0.S(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 5:
                y0.x(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 6:
                y0.r(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 7:
                y0.p(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 8:
                y0.h(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 9:
                y0.Q(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 10:
                y0.F(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 11:
                y0.H(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 12:
                y0.J(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 13:
                y0.L(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 14:
                y0.x(ccase.getNumber(), (List) entry.getValue(), writer, ccase.isPacked());
                break;
            case 15:
                y0.j(ccase.getNumber(), (List) entry.getValue(), writer);
                break;
            case 16:
                y0.O(ccase.getNumber(), (List) entry.getValue(), writer);
                break;
            case 17:
                List list = (List) entry.getValue();
                if (list != null && !list.isEmpty()) {
                    y0.v(ccase.getNumber(), (List) entry.getValue(), writer, q0.m21002do().m21011this(list.get(0).getClass()));
                    break;
                }
                break;
            case 18:
                List list2 = (List) entry.getValue();
                if (list2 != null && !list2.isEmpty()) {
                    y0.D(ccase.getNumber(), (List) entry.getValue(), writer, q0.m21002do().m21011this(list2.get(0).getClass()));
                    break;
                }
                break;
        }
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: case, reason: not valid java name */
    public void mo19672case(Object obj) {
        mo19676for(obj).m19393protected();
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: catch, reason: not valid java name */
    public void mo19673catch(Object obj, FieldSet<GeneratedMessageLite.Ccase> fieldSet) {
        ((GeneratedMessageLite.Ctry) obj).f16482new = fieldSet;
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: do, reason: not valid java name */
    public int mo19674do(Map.Entry<?, ?> entry) {
        return ((GeneratedMessageLite.Ccase) entry.getKey()).getNumber();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: else, reason: not valid java name */
    public <UT, UB> UB mo19675else(Reader reader, Object obj, Cimplements cimplements, FieldSet<GeneratedMessageLite.Ccase> fieldSet, UB ub, s1<UT, UB> s1Var) throws IOException {
        Object objM19395return;
        ArrayList arrayList;
        GeneratedMessageLite.Celse celse = (GeneratedMessageLite.Celse) obj;
        int iMo19453new = celse.mo19453new();
        if (celse.f16476new.isRepeated() && celse.f16476new.isPacked()) {
            switch (Cdo.f16593do[celse.mo19452if().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    reader.readDoubleList(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    reader.readFloatList(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    reader.readInt64List(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    reader.readUInt64List(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    reader.readInt32List(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    reader.readFixed64List(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    reader.readFixed32List(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    reader.readBoolList(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    reader.readUInt32List(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    reader.readSFixed32List(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    reader.readSFixed64List(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    reader.readSInt32List(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    reader.readSInt64List(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    reader.readEnumList(arrayList);
                    ub = (UB) y0.m21621package(iMo19453new, arrayList, celse.f16476new.getEnumType(), ub, s1Var);
                    break;
                default:
                    String strValueOf = String.valueOf(celse.f16476new.getLiteType());
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
                    sb.append("Type cannot be packed: ");
                    sb.append(strValueOf);
                    throw new IllegalStateException(sb.toString());
            }
            fieldSet.b(celse.f16476new, arrayList);
        } else {
            Object objValueOf = null;
            if (celse.mo19452if() != c2.Cif.ENUM) {
                switch (Cdo.f16593do[celse.mo19452if().ordinal()]) {
                    case 1:
                        objValueOf = Double.valueOf(reader.readDouble());
                        break;
                    case 2:
                        objValueOf = Float.valueOf(reader.readFloat());
                        break;
                    case 3:
                        objValueOf = Long.valueOf(reader.readInt64());
                        break;
                    case 4:
                        objValueOf = Long.valueOf(reader.readUInt64());
                        break;
                    case 5:
                        objValueOf = Integer.valueOf(reader.readInt32());
                        break;
                    case 6:
                        objValueOf = Long.valueOf(reader.readFixed64());
                        break;
                    case 7:
                        objValueOf = Integer.valueOf(reader.readFixed32());
                        break;
                    case 8:
                        objValueOf = Boolean.valueOf(reader.readBool());
                        break;
                    case 9:
                        objValueOf = Integer.valueOf(reader.readUInt32());
                        break;
                    case 10:
                        objValueOf = Integer.valueOf(reader.readSFixed32());
                        break;
                    case 11:
                        objValueOf = Long.valueOf(reader.readSFixed64());
                        break;
                    case 12:
                        objValueOf = Integer.valueOf(reader.readSInt32());
                        break;
                    case 13:
                        objValueOf = Long.valueOf(reader.readSInt64());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        objValueOf = reader.readBytes();
                        break;
                    case 16:
                        objValueOf = reader.readString();
                        break;
                    case 17:
                        objValueOf = reader.readGroup(celse.mo19450for().getClass(), cimplements);
                        break;
                    case 18:
                        objValueOf = reader.readMessage(celse.mo19450for().getClass(), cimplements);
                        break;
                }
            } else {
                int int32 = reader.readInt32();
                if (celse.f16476new.getEnumType().findValueByNumber(int32) == null) {
                    return (UB) y0.d(iMo19453new, int32, ub, s1Var);
                }
                objValueOf = Integer.valueOf(int32);
            }
            if (celse.mo19444case()) {
                fieldSet.m19388goto(celse.f16476new, objValueOf);
            } else {
                int i = Cdo.f16593do[celse.mo19452if().ordinal()];
                if ((i == 17 || i == 18) && (objM19395return = fieldSet.m19395return(celse.f16476new)) != null) {
                    objValueOf = Internal.m19626static(objM19395return, objValueOf);
                }
                fieldSet.b(celse.f16476new, objValueOf);
            }
        }
        return ub;
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: for, reason: not valid java name */
    public FieldSet<GeneratedMessageLite.Ccase> mo19676for(Object obj) {
        return ((GeneratedMessageLite.Ctry) obj).f16482new;
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: goto, reason: not valid java name */
    public void mo19677goto(Reader reader, Object obj, Cimplements cimplements, FieldSet<GeneratedMessageLite.Ccase> fieldSet) throws IOException {
        GeneratedMessageLite.Celse celse = (GeneratedMessageLite.Celse) obj;
        fieldSet.b(celse.f16476new, reader.readMessage(celse.mo19450for().getClass(), cimplements));
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: if, reason: not valid java name */
    public Object mo19678if(Cimplements cimplements, MessageLite messageLite, int i) {
        return cimplements.m20609for(messageLite, i);
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: new, reason: not valid java name */
    public FieldSet<GeneratedMessageLite.Ccase> mo19679new(Object obj) {
        return ((GeneratedMessageLite.Ctry) obj).g();
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: this, reason: not valid java name */
    public void mo19680this(ByteString byteString, Object obj, Cimplements cimplements, FieldSet<GeneratedMessageLite.Ccase> fieldSet) throws IOException {
        GeneratedMessageLite.Celse celse = (GeneratedMessageLite.Celse) obj;
        MessageLite messageLiteBuildPartial = celse.mo19450for().newBuilderForType().buildPartial();
        Cbreak cbreakM19873if = Cbreak.m19873if(ByteBuffer.wrap(byteString.toByteArray()), true);
        q0.m21002do().m21004case(messageLiteBuildPartial, cbreakM19873if, cimplements);
        fieldSet.b(celse.f16476new, messageLiteBuildPartial);
        if (cbreakM19873if.getFieldNumber() != Integer.MAX_VALUE) {
            throw n.invalidEndTag();
        }
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: try, reason: not valid java name */
    public boolean mo19681try(MessageLite messageLite) {
        return messageLite instanceof GeneratedMessageLite.Ctry;
    }
}
