package com.google.protobuf;

import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Message;
import com.google.protobuf.c2;
import com.google.protobuf.t1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.lang3.Ctry;

/* loaded from: classes2.dex */
class MessageReflection {

    public interface MergeTarget {

        /* renamed from: com.google.protobuf.MessageReflection$MergeTarget$do, reason: invalid class name */
        public enum Cdo {
            MESSAGE,
            EXTENSION_SET
        }

        MergeTarget addRepeatedField(Descriptors.Celse celse, Object obj);

        MergeTarget clearField(Descriptors.Celse celse);

        MergeTarget clearOneof(Descriptors.Cbreak cbreak);

        Cprotected.Cfor findExtensionByName(Cprotected cprotected, String str);

        Cprotected.Cfor findExtensionByNumber(Cprotected cprotected, Descriptors.Cif cif, int i);

        Object finish();

        Cdo getContainerType();

        Descriptors.Cif getDescriptorForType();

        Object getField(Descriptors.Celse celse);

        Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak);

        c2.Cnew getUtf8Validation(Descriptors.Celse celse);

        boolean hasField(Descriptors.Celse celse);

        boolean hasOneof(Descriptors.Cbreak cbreak);

        MergeTarget newEmptyTargetForField(Descriptors.Celse celse, Message message);

        MergeTarget newMergeTargetForField(Descriptors.Celse celse, Message message);

        Object parseGroup(CodedInputStream codedInputStream, Cimplements cimplements, Descriptors.Celse celse, Message message) throws IOException;

        Object parseMessage(CodedInputStream codedInputStream, Cimplements cimplements, Descriptors.Celse celse, Message message) throws IOException;

        Object parseMessageFromBytes(ByteString byteString, Cimplements cimplements, Descriptors.Celse celse, Message message) throws IOException;

        MergeTarget setField(Descriptors.Celse celse, Object obj);

        MergeTarget setRepeatedField(Descriptors.Celse celse, int i, Object obj);
    }

    /* renamed from: com.google.protobuf.MessageReflection$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16587do;

        static {
            int[] iArr = new int[Descriptors.Celse.Cif.values().length];
            f16587do = iArr;
            try {
                iArr[Descriptors.Celse.Cif.GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16587do[Descriptors.Celse.Cif.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16587do[Descriptors.Celse.Cif.ENUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.google.protobuf.MessageReflection$for, reason: invalid class name */
    public static class Cfor implements MergeTarget {

        /* renamed from: do, reason: not valid java name */
        private final FieldSet<Descriptors.Celse> f16588do;

        public Cfor(FieldSet<Descriptors.Celse> fieldSet) {
            this.f16588do = fieldSet;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget addRepeatedField(Descriptors.Celse celse, Object obj) {
            this.f16588do.m19388goto(celse, obj);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget clearField(Descriptors.Celse celse) {
            this.f16588do.m19383break(celse);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget clearOneof(Descriptors.Cbreak cbreak) {
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Cprotected.Cfor findExtensionByName(Cprotected cprotected, String str) {
            return cprotected.m20987throw(str);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Cprotected.Cfor findExtensionByNumber(Cprotected cprotected, Descriptors.Cif cif, int i) {
            return cprotected.m20988while(cif, i);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object finish() {
            throw new UnsupportedOperationException("finish() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget.Cdo getContainerType() {
            return MergeTarget.Cdo.EXTENSION_SET;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.Cif getDescriptorForType() {
            throw new UnsupportedOperationException("getDescriptorForType() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object getField(Descriptors.Celse celse) {
            return this.f16588do.m19395return(celse);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
            return null;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public c2.Cnew getUtf8Validation(Descriptors.Celse celse) {
            return celse.m19284continue() ? c2.Cnew.STRICT : c2.Cnew.LOOSE;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasField(Descriptors.Celse celse) {
            return this.f16588do.m19391package(celse);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasOneof(Descriptors.Cbreak cbreak) {
            return false;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget newEmptyTargetForField(Descriptors.Celse celse, Message message) {
            throw new UnsupportedOperationException("newEmptyTargetForField() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget newMergeTargetForField(Descriptors.Celse celse, Message message) {
            throw new UnsupportedOperationException("newMergeTargetForField() called on FieldSet object");
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object parseGroup(CodedInputStream codedInputStream, Cimplements cimplements, Descriptors.Celse celse, Message message) throws IOException {
            Message message2;
            Message.Builder builderNewBuilderForType = message.newBuilderForType();
            if (!celse.isRepeated() && (message2 = (Message) getField(celse)) != null) {
                builderNewBuilderForType.mergeFrom(message2);
            }
            codedInputStream.mo18421continue(celse.getNumber(), builderNewBuilderForType, cimplements);
            return builderNewBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object parseMessage(CodedInputStream codedInputStream, Cimplements cimplements, Descriptors.Celse celse, Message message) throws IOException {
            Message message2;
            Message.Builder builderNewBuilderForType = message.newBuilderForType();
            if (!celse.isRepeated() && (message2 = (Message) getField(celse)) != null) {
                builderNewBuilderForType.mergeFrom(message2);
            }
            codedInputStream.mo18435protected(builderNewBuilderForType, cimplements);
            return builderNewBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object parseMessageFromBytes(ByteString byteString, Cimplements cimplements, Descriptors.Celse celse, Message message) throws IOException {
            Message message2;
            Message.Builder builderNewBuilderForType = message.newBuilderForType();
            if (!celse.isRepeated() && (message2 = (Message) getField(celse)) != null) {
                builderNewBuilderForType.mergeFrom(message2);
            }
            builderNewBuilderForType.mergeFrom(byteString, cimplements);
            return builderNewBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget setField(Descriptors.Celse celse, Object obj) {
            this.f16588do.b(celse, obj);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            this.f16588do.c(celse, i, obj);
            return this;
        }
    }

    /* renamed from: com.google.protobuf.MessageReflection$if, reason: invalid class name */
    public static class Cif implements MergeTarget {

        /* renamed from: do, reason: not valid java name */
        private final Message.Builder f16589do;

        public Cif(Message.Builder builder) {
            this.f16589do = builder;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget addRepeatedField(Descriptors.Celse celse, Object obj) {
            this.f16589do.addRepeatedField(celse, obj);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget clearField(Descriptors.Celse celse) {
            this.f16589do.clearField(celse);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget clearOneof(Descriptors.Cbreak cbreak) {
            this.f16589do.clearOneof(cbreak);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Cprotected.Cfor findExtensionByName(Cprotected cprotected, String str) {
            return cprotected.m20987throw(str);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Cprotected.Cfor findExtensionByNumber(Cprotected cprotected, Descriptors.Cif cif, int i) {
            return cprotected.m20988while(cif, i);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object finish() {
            return this.f16589do.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget.Cdo getContainerType() {
            return MergeTarget.Cdo.MESSAGE;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.Cif getDescriptorForType() {
            return this.f16589do.getDescriptorForType();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object getField(Descriptors.Celse celse) {
            return this.f16589do.getField(celse);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
            return this.f16589do.getOneofFieldDescriptor(cbreak);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public c2.Cnew getUtf8Validation(Descriptors.Celse celse) {
            return celse.m19284continue() ? c2.Cnew.STRICT : (celse.isRepeated() || !(this.f16589do instanceof GeneratedMessage.Ccase)) ? c2.Cnew.LOOSE : c2.Cnew.LAZY;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasField(Descriptors.Celse celse) {
            return this.f16589do.hasField(celse);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public boolean hasOneof(Descriptors.Cbreak cbreak) {
            return this.f16589do.hasOneof(cbreak);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget newEmptyTargetForField(Descriptors.Celse celse, Message message) {
            return new Cif(message != null ? message.newBuilderForType() : this.f16589do.newBuilderForField(celse));
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget newMergeTargetForField(Descriptors.Celse celse, Message message) {
            Message message2;
            Message.Builder builderNewBuilderForType = message != null ? message.newBuilderForType() : this.f16589do.newBuilderForField(celse);
            if (!celse.isRepeated() && (message2 = (Message) getField(celse)) != null) {
                builderNewBuilderForType.mergeFrom(message2);
            }
            return new Cif(builderNewBuilderForType);
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object parseGroup(CodedInputStream codedInputStream, Cimplements cimplements, Descriptors.Celse celse, Message message) throws IOException {
            Message message2;
            Message.Builder builderNewBuilderForType = message != null ? message.newBuilderForType() : this.f16589do.newBuilderForField(celse);
            if (!celse.isRepeated() && (message2 = (Message) getField(celse)) != null) {
                builderNewBuilderForType.mergeFrom(message2);
            }
            codedInputStream.mo18421continue(celse.getNumber(), builderNewBuilderForType, cimplements);
            return builderNewBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object parseMessage(CodedInputStream codedInputStream, Cimplements cimplements, Descriptors.Celse celse, Message message) throws IOException {
            Message message2;
            Message.Builder builderNewBuilderForType = message != null ? message.newBuilderForType() : this.f16589do.newBuilderForField(celse);
            if (!celse.isRepeated() && (message2 = (Message) getField(celse)) != null) {
                builderNewBuilderForType.mergeFrom(message2);
            }
            codedInputStream.mo18435protected(builderNewBuilderForType, cimplements);
            return builderNewBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public Object parseMessageFromBytes(ByteString byteString, Cimplements cimplements, Descriptors.Celse celse, Message message) throws IOException {
            Message message2;
            Message.Builder builderNewBuilderForType = message != null ? message.newBuilderForType() : this.f16589do.newBuilderForField(celse);
            if (!celse.isRepeated() && (message2 = (Message) getField(celse)) != null) {
                builderNewBuilderForType.mergeFrom(message2);
            }
            builderNewBuilderForType.mergeFrom(byteString, cimplements);
            return builderNewBuilderForType.buildPartial();
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget setField(Descriptors.Celse celse, Object obj) {
            this.f16589do.setField(celse, obj);
            return this;
        }

        @Override // com.google.protobuf.MessageReflection.MergeTarget
        public MergeTarget setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            this.f16589do.setRepeatedField(celse, i, obj);
            return this;
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static String m19655break(String str, Descriptors.Celse celse, int i) {
        StringBuilder sb = new StringBuilder(str);
        if (celse.m19286extends()) {
            sb.append('(');
            sb.append(celse.mo19235if());
            sb.append(')');
        } else {
            sb.append(celse.mo19234for());
        }
        if (i != -1) {
            sb.append('[');
            sb.append(i);
            sb.append(']');
        }
        sb.append(Ctry.f28883do);
        return sb.toString();
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m19656case(MessageOrBuilder messageOrBuilder) {
        for (Descriptors.Celse celse : messageOrBuilder.getDescriptorForType().m19332super()) {
            if (celse.m19280abstract() && !messageOrBuilder.hasField(celse)) {
                return false;
            }
        }
        for (Map.Entry<Descriptors.Celse, Object> entry : messageOrBuilder.getAllFields().entrySet()) {
            Descriptors.Celse key = entry.getKey();
            if (key.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                if (key.isRepeated()) {
                    Iterator it = ((List) entry.getValue()).iterator();
                    while (it.hasNext()) {
                        if (!((Message) it.next()).isInitialized()) {
                            return false;
                        }
                    }
                } else if (!((Message) entry.getValue()).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m19657catch(Message message, Map<Descriptors.Celse, Object> map, Cnative cnative, boolean z) throws IOException {
        boolean messageSetWireFormat = message.getDescriptorForType().m19328native().getMessageSetWireFormat();
        if (z) {
            TreeMap treeMap = new TreeMap(map);
            for (Descriptors.Celse celse : message.getDescriptorForType().m19332super()) {
                if (celse.m19280abstract() && !treeMap.containsKey(celse)) {
                    treeMap.put(celse, message.getField(celse));
                }
            }
            map = treeMap;
        }
        for (Map.Entry<Descriptors.Celse, Object> entry : map.entrySet()) {
            Descriptors.Celse key = entry.getKey();
            Object value = entry.getValue();
            if (messageSetWireFormat && key.m19286extends() && key.m19296static() == Descriptors.Celse.Cif.MESSAGE && !key.isRepeated()) {
                cnative.j0(key.getNumber(), (Message) value);
            } else {
                FieldSet.g(key, value, cnative);
            }
        }
        t1 unknownFields = message.getUnknownFields();
        if (messageSetWireFormat) {
            unknownFields.m21202while(cnative);
        } else {
            unknownFields.writeTo(cnative);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m19658do(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m19659else(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, Descriptors.Cif cif2, MergeTarget mergeTarget, int i) throws IOException {
        Message message;
        boolean z;
        Object group;
        Cprotected.Cfor cforFindExtensionByNumber;
        if (cif2.m19328native().getMessageSetWireFormat() && i == c2.f16700while) {
            m19664this(codedInputStream, cif, cimplements, cif2, mergeTarget);
            return true;
        }
        int iM19964if = c2.m19964if(i);
        int iM19962do = c2.m19962do(i);
        Descriptors.Celse celseM19320break = null;
        if (cif2.m19331static(iM19962do)) {
            if (!(cimplements instanceof Cprotected) || (cforFindExtensionByNumber = mergeTarget.findExtensionByNumber((Cprotected) cimplements, cif2, iM19962do)) == null) {
                message = null;
            } else {
                Descriptors.Celse celse = cforFindExtensionByNumber.f17160do;
                Message message2 = cforFindExtensionByNumber.f17161if;
                if (message2 == null && celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                    String strValueOf = String.valueOf(celse.mo19235if());
                    throw new IllegalStateException(strValueOf.length() != 0 ? "Message-typed extension lacked default instance: ".concat(strValueOf) : new String("Message-typed extension lacked default instance: "));
                }
                message = message2;
                celseM19320break = celse;
            }
        } else if (mergeTarget.getContainerType() == MergeTarget.Cdo.MESSAGE) {
            celseM19320break = cif2.m19320break(iM19962do);
            message = null;
        }
        boolean z2 = false;
        if (celseM19320break != null) {
            if (iM19964if == FieldSet.m19367finally(celseM19320break.getLiteType(), false)) {
                z = false;
            } else if (celseM19320break.m19293private() && iM19964if == FieldSet.m19367finally(celseM19320break.getLiteType(), true)) {
                z = true;
            } else {
                z = false;
                z2 = true;
            }
        }
        if (z2) {
            return cif != null ? cif.m21251final(i, codedInputStream) : codedInputStream.t(i);
        }
        if (z) {
            int iMo18436public = codedInputStream.mo18436public(codedInputStream.a());
            if (celseM19320break.getLiteType() == c2.Cif.ENUM) {
                while (codedInputStream.mo18420case() > 0) {
                    int iMo18425extends = codedInputStream.mo18425extends();
                    if (celseM19320break.mo19232do().m19226abstract()) {
                        mergeTarget.addRepeatedField(celseM19320break, celseM19320break.getEnumType().m19358goto(iMo18425extends));
                    } else {
                        Descriptors.Ccase ccaseFindValueByNumber = celseM19320break.getEnumType().findValueByNumber(iMo18425extends);
                        if (ccaseFindValueByNumber != null) {
                            mergeTarget.addRepeatedField(celseM19320break, ccaseFindValueByNumber);
                        } else if (cif != null) {
                            cif.m21259package(iM19962do, iMo18425extends);
                        }
                    }
                }
            } else {
                while (codedInputStream.mo18420case() > 0) {
                    mergeTarget.addRepeatedField(celseM19320break, c2.m19965new(codedInputStream, celseM19320break.getLiteType(), mergeTarget.getUtf8Validation(celseM19320break)));
                }
            }
            codedInputStream.mo18431native(iMo18436public);
        } else {
            int i2 = Cdo.f16587do[celseM19320break.m19296static().ordinal()];
            if (i2 == 1) {
                group = mergeTarget.parseGroup(codedInputStream, cimplements, celseM19320break, message);
            } else if (i2 == 2) {
                group = mergeTarget.parseMessage(codedInputStream, cimplements, celseM19320break, message);
            } else if (i2 != 3) {
                group = c2.m19965new(codedInputStream, celseM19320break.getLiteType(), mergeTarget.getUtf8Validation(celseM19320break));
            } else {
                int iMo18425extends2 = codedInputStream.mo18425extends();
                if (celseM19320break.mo19232do().m19226abstract()) {
                    group = celseM19320break.getEnumType().m19358goto(iMo18425extends2);
                } else {
                    Descriptors.Ccase ccaseFindValueByNumber2 = celseM19320break.getEnumType().findValueByNumber(iMo18425extends2);
                    if (ccaseFindValueByNumber2 == null) {
                        if (cif != null) {
                            cif.m21259package(iM19962do, iMo18425extends2);
                        }
                        return true;
                    }
                    group = ccaseFindValueByNumber2;
                }
            }
            if (celseM19320break.isRepeated()) {
                mergeTarget.addRepeatedField(celseM19320break, group);
            } else {
                mergeTarget.setField(celseM19320break, group);
            }
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static List<String> m19660for(MessageOrBuilder messageOrBuilder) {
        ArrayList arrayList = new ArrayList();
        m19663new(messageOrBuilder, "", arrayList);
        return arrayList;
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m19661goto(ByteString byteString, Cprotected.Cfor cfor, Cimplements cimplements, MergeTarget mergeTarget) throws IOException {
        Descriptors.Celse celse = cfor.f17160do;
        if (mergeTarget.hasField(celse) || Cimplements.m20604case()) {
            mergeTarget.setField(celse, mergeTarget.parseMessageFromBytes(byteString, cimplements, celse, cfor.f17161if));
        } else {
            mergeTarget.setField(celse, new q(cfor.f17161if, cimplements, byteString));
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static void m19662if(CodedInputStream codedInputStream, Cprotected.Cfor cfor, Cimplements cimplements, MergeTarget mergeTarget) throws IOException {
        Descriptors.Celse celse = cfor.f17160do;
        mergeTarget.setField(celse, mergeTarget.parseMessage(codedInputStream, cimplements, celse, cfor.f17161if));
    }

    /* renamed from: new, reason: not valid java name */
    private static void m19663new(MessageOrBuilder messageOrBuilder, String str, List<String> list) {
        for (Descriptors.Celse celse : messageOrBuilder.getDescriptorForType().m19332super()) {
            if (celse.m19280abstract() && !messageOrBuilder.hasField(celse)) {
                String strValueOf = String.valueOf(str);
                String strValueOf2 = String.valueOf(celse.mo19234for());
                list.add(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            }
        }
        for (Map.Entry<Descriptors.Celse, Object> entry : messageOrBuilder.getAllFields().entrySet()) {
            Descriptors.Celse key = entry.getKey();
            Object value = entry.getValue();
            if (key.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                if (key.isRepeated()) {
                    int i = 0;
                    Iterator it = ((List) value).iterator();
                    while (it.hasNext()) {
                        m19663new((MessageOrBuilder) it.next(), m19655break(str, key, i), list);
                        i++;
                    }
                } else if (messageOrBuilder.hasField(key)) {
                    m19663new((MessageOrBuilder) value, m19655break(str, key, -1), list);
                }
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static void m19664this(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, Descriptors.Cif cif2, MergeTarget mergeTarget) throws IOException {
        int iM = 0;
        ByteString byteStringMo18443throws = null;
        Cprotected.Cfor cforFindExtensionByNumber = null;
        while (true) {
            int iL = codedInputStream.l();
            if (iL == 0) {
                break;
            }
            if (iL == c2.f16693native) {
                iM = codedInputStream.m();
                if (iM != 0 && (cimplements instanceof Cprotected)) {
                    cforFindExtensionByNumber = mergeTarget.findExtensionByNumber((Cprotected) cimplements, cif2, iM);
                }
            } else if (iL == c2.f16695public) {
                if (iM == 0 || cforFindExtensionByNumber == null || !Cimplements.m20604case()) {
                    byteStringMo18443throws = codedInputStream.mo18443throws();
                } else {
                    m19662if(codedInputStream, cforFindExtensionByNumber, cimplements, mergeTarget);
                    byteStringMo18443throws = null;
                }
            } else if (!codedInputStream.t(iL)) {
                break;
            }
        }
        codedInputStream.mo18423do(c2.f16692import);
        if (byteStringMo18443throws == null || iM == 0) {
            return;
        }
        if (cforFindExtensionByNumber != null) {
            m19661goto(byteStringMo18443throws, cforFindExtensionByNumber, cimplements, mergeTarget);
        } else if (cif != null) {
            cif.m21247const(iM, t1.Cfor.m21214return().m21239try(byteStringMo18443throws).m21234else());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m19665try(Message message, Map<Descriptors.Celse, Object> map) {
        boolean messageSetWireFormat = message.getDescriptorForType().m19328native().getMessageSetWireFormat();
        int iM20888instanceof = 0;
        for (Map.Entry<Descriptors.Celse, Object> entry : map.entrySet()) {
            Descriptors.Celse key = entry.getKey();
            Object value = entry.getValue();
            iM20888instanceof += (messageSetWireFormat && key.m19286extends() && key.m19296static() == Descriptors.Celse.Cif.MESSAGE && !key.isRepeated()) ? Cnative.m20888instanceof(key.getNumber(), (Message) value) : FieldSet.m19381while(key, value);
        }
        t1 unknownFields = message.getUnknownFields();
        return iM20888instanceof + (messageSetWireFormat ? unknownFields.m21194else() : unknownFields.getSerializedSize());
    }
}
