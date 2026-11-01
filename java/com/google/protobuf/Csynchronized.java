package com.google.protobuf;

import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.c2;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.protobuf.synchronized, reason: invalid class name */
/* loaded from: classes2.dex */
final class Csynchronized extends Cinstanceof<Descriptors.Celse> {

    /* renamed from: do, reason: not valid java name */
    private static final long f17221do = m21173class();

    /* renamed from: com.google.protobuf.synchronized$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17222do;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f17222do = iArr;
            try {
                iArr[c2.Cif.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17222do[c2.Cif.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17222do[c2.Cif.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17222do[c2.Cif.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17222do[c2.Cif.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17222do[c2.Cif.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17222do[c2.Cif.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17222do[c2.Cif.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17222do[c2.Cif.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17222do[c2.Cif.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17222do[c2.Cif.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17222do[c2.Cif.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17222do[c2.Cif.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17222do[c2.Cif.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17222do[c2.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f17222do[c2.Cif.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f17222do[c2.Cif.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f17222do[c2.Cif.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    private static <T> long m21173class() {
        return z1.j(GeneratedMessageV3.Cnew.class.getDeclaredField("extensions"));
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: break */
    public void mo19671break(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        Descriptors.Celse celse = (Descriptors.Celse) entry.getKey();
        if (!celse.isRepeated()) {
            switch (Cdo.f17222do[celse.getLiteType().ordinal()]) {
                case 1:
                    writer.writeDouble(celse.getNumber(), ((Double) entry.getValue()).doubleValue());
                    break;
                case 2:
                    writer.writeFloat(celse.getNumber(), ((Float) entry.getValue()).floatValue());
                    break;
                case 3:
                    writer.writeInt64(celse.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 4:
                    writer.writeUInt64(celse.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 5:
                    writer.writeInt32(celse.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 6:
                    writer.writeFixed64(celse.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 7:
                    writer.writeFixed32(celse.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 8:
                    writer.writeBool(celse.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                    break;
                case 9:
                    writer.writeUInt32(celse.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 10:
                    writer.writeSFixed32(celse.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 11:
                    writer.writeSFixed64(celse.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 12:
                    writer.writeSInt32(celse.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 13:
                    writer.writeSInt64(celse.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 14:
                    writer.writeInt32(celse.getNumber(), ((Descriptors.Ccase) entry.getValue()).getNumber());
                    break;
                case 15:
                    writer.writeBytes(celse.getNumber(), (ByteString) entry.getValue());
                    break;
                case 16:
                    writer.writeString(celse.getNumber(), (String) entry.getValue());
                    break;
                case 17:
                    writer.writeGroup(celse.getNumber(), entry.getValue());
                    break;
                case 18:
                    writer.writeMessage(celse.getNumber(), entry.getValue());
                    break;
            }
        }
        switch (Cdo.f17222do[celse.getLiteType().ordinal()]) {
            case 1:
                y0.l(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 2:
                y0.t(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 3:
                y0.z(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 4:
                y0.S(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 5:
                y0.x(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 6:
                y0.r(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 7:
                y0.p(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 8:
                y0.h(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 9:
                y0.Q(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 10:
                y0.F(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 11:
                y0.H(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 12:
                y0.J(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 13:
                y0.L(celse.getNumber(), (List) entry.getValue(), writer, celse.isPacked());
                break;
            case 14:
                List list = (List) entry.getValue();
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(((Descriptors.Ccase) it.next()).getNumber()));
                }
                y0.x(celse.getNumber(), arrayList, writer, celse.isPacked());
                break;
            case 15:
                y0.j(celse.getNumber(), (List) entry.getValue(), writer);
                break;
            case 16:
                y0.O(celse.getNumber(), (List) entry.getValue(), writer);
                break;
            case 17:
                y0.u(celse.getNumber(), (List) entry.getValue(), writer);
                break;
            case 18:
                y0.C(celse.getNumber(), (List) entry.getValue(), writer);
                break;
        }
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: case */
    public void mo19672case(Object obj) {
        mo19676for(obj).m19393protected();
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: catch */
    public void mo19673catch(Object obj, FieldSet<Descriptors.Celse> fieldSet) {
        z1.D(obj, f17221do, fieldSet);
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: do */
    public int mo19674do(Map.Entry<?, ?> entry) {
        return ((Descriptors.Celse) entry.getKey()).getNumber();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: else */
    public <UT, UB> UB mo19675else(Reader reader, Object obj, Cimplements cimplements, FieldSet<Descriptors.Celse> fieldSet, UB ub, s1<UT, UB> s1Var) throws IOException {
        Object objM19395return;
        ArrayList arrayList;
        ArrayList arrayList2;
        Cprotected.Cfor cfor = (Cprotected.Cfor) obj;
        int number = cfor.f17160do.getNumber();
        if (cfor.f17160do.isRepeated() && cfor.f17160do.isPacked()) {
            switch (Cdo.f17222do[cfor.f17160do.getLiteType().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    reader.readDoubleList(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    reader.readFloatList(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    reader.readInt64List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    reader.readUInt64List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    reader.readInt32List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    reader.readFixed64List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    reader.readFixed32List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    reader.readBoolList(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    reader.readUInt32List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    reader.readSFixed32List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    reader.readSFixed64List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    reader.readSInt32List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    reader.readSInt64List(arrayList);
                    arrayList2 = arrayList;
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                case 14:
                    ArrayList arrayList3 = new ArrayList();
                    reader.readEnumList(arrayList3);
                    arrayList2 = new ArrayList();
                    Iterator<Integer> it = arrayList3.iterator();
                    while (it.hasNext()) {
                        int iIntValue = it.next().intValue();
                        Descriptors.Ccase ccaseFindValueByNumber = cfor.f17160do.getEnumType().findValueByNumber(iIntValue);
                        if (ccaseFindValueByNumber != null) {
                            arrayList2.add(ccaseFindValueByNumber);
                        } else {
                            ub = (UB) y0.d(number, iIntValue, ub, s1Var);
                        }
                    }
                    fieldSet.b(cfor.f17160do, arrayList2);
                    break;
                default:
                    String strValueOf = String.valueOf(cfor.f17160do.getLiteType());
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
                    sb.append("Type cannot be packed: ");
                    sb.append(strValueOf);
                    throw new IllegalStateException(sb.toString());
            }
        } else {
            Object objValueOf = null;
            if (cfor.f17160do.getLiteType() != c2.Cif.ENUM) {
                switch (Cdo.f17222do[cfor.f17160do.getLiteType().ordinal()]) {
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
                        objValueOf = reader.readGroup(cfor.f17161if.getClass(), cimplements);
                        break;
                    case 18:
                        objValueOf = reader.readMessage(cfor.f17161if.getClass(), cimplements);
                        break;
                }
            } else {
                int int32 = reader.readInt32();
                objValueOf = cfor.f17160do.getEnumType().findValueByNumber(int32);
                if (objValueOf == null) {
                    return (UB) y0.d(number, int32, ub, s1Var);
                }
            }
            if (cfor.f17160do.isRepeated()) {
                fieldSet.m19388goto(cfor.f17160do, objValueOf);
            } else {
                int i = Cdo.f17222do[cfor.f17160do.getLiteType().ordinal()];
                if ((i == 17 || i == 18) && (objM19395return = fieldSet.m19395return(cfor.f17160do)) != null) {
                    objValueOf = Internal.m19626static(objM19395return, objValueOf);
                }
                fieldSet.b(cfor.f17160do, objValueOf);
            }
        }
        return ub;
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: for */
    public FieldSet<Descriptors.Celse> mo19676for(Object obj) {
        return (FieldSet) z1.b(obj, f17221do);
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: goto */
    public void mo19677goto(Reader reader, Object obj, Cimplements cimplements, FieldSet<Descriptors.Celse> fieldSet) throws IOException {
        Cprotected.Cfor cfor = (Cprotected.Cfor) obj;
        if (!Cimplements.m20604case()) {
            fieldSet.b(cfor.f17160do, new q(cfor.f17161if, cimplements, reader.readBytes()));
        } else {
            fieldSet.b(cfor.f17160do, reader.readMessage(cfor.f17161if.getClass(), cimplements));
        }
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: if */
    public Object mo19678if(Cimplements cimplements, MessageLite messageLite, int i) {
        return ((Cprotected) cimplements).m20984super(((Message) messageLite).getDescriptorForType(), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: new */
    public FieldSet<Descriptors.Celse> mo19679new(Object obj) {
        FieldSet<Descriptors.Celse> fieldSetMo19676for = mo19676for(obj);
        if (!fieldSetMo19676for.m19382abstract()) {
            return fieldSetMo19676for;
        }
        FieldSet fieldSetClone = fieldSetMo19676for.clone();
        mo19673catch(obj, fieldSetClone);
        return fieldSetClone;
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: this */
    public void mo19680this(ByteString byteString, Object obj, Cimplements cimplements, FieldSet<Descriptors.Celse> fieldSet) throws IOException {
        Cprotected.Cfor cfor = (Cprotected.Cfor) obj;
        Message messageBuildPartial = cfor.f17161if.newBuilderForType().buildPartial();
        if (!Cimplements.m20604case()) {
            fieldSet.b(cfor.f17160do, new q(cfor.f17161if, cimplements, byteString));
            return;
        }
        Cbreak cbreakM19873if = Cbreak.m19873if(ByteBuffer.wrap(byteString.toByteArray()), true);
        q0.m21002do().m21004case(messageBuildPartial, cbreakM19873if, cimplements);
        fieldSet.b(cfor.f17160do, messageBuildPartial);
        if (cbreakM19873if.getFieldNumber() != Integer.MAX_VALUE) {
            throw n.invalidEndTag();
        }
    }

    @Override // com.google.protobuf.Cinstanceof
    /* renamed from: try */
    public boolean mo19681try(MessageLite messageLite) {
        return messageLite instanceof GeneratedMessageV3.Cnew;
    }
}
