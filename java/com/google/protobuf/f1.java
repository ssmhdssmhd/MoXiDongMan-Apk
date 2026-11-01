package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.c2;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class f1 extends GeneratedMessageV3 implements StructOrBuilder {
    public static final int FIELDS_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final f1 f16902do = new f1();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<f1> f16903if = new Cdo();
    private static final long serialVersionUID = 0;
    private MapField<String, b2> fields_;
    private byte memoizedIsInitialized;

    /* renamed from: com.google.protobuf.f1$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<f1> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public f1 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new f1(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.f1$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final x<String, b2> f16904do = x.m21546catch(g1.f16943for, c2.Cif.STRING, "", c2.Cif.MESSAGE, b2.getDefaultInstance());

        private Cfor() {
        }
    }

    /* renamed from: com.google.protobuf.f1$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements StructOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private int f16905do;

        /* renamed from: if, reason: not valid java name */
        private MapField<String, b2> f16906if;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        /* renamed from: catch, reason: not valid java name */
        private MapField<String, b2> m20412catch() {
            MapField<String, b2> mapField = this.f16906if;
            return mapField == null ? MapField.m19639else(Cfor.f16904do) : mapField;
        }

        /* renamed from: class, reason: not valid java name */
        private MapField<String, b2> m20413class() {
            onChanged();
            if (this.f16906if == null) {
                this.f16906if = MapField.m19643throw(Cfor.f16904do);
            }
            if (!this.f16906if.m19649const()) {
                this.f16906if = this.f16906if.m19646case();
            }
            return this.f16906if;
        }

        public static final Descriptors.Cif getDescriptor() {
            return g1.f16941do;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Deprecated
        /* renamed from: break, reason: not valid java name */
        public Map<String, b2> m20414break() {
            return m20413class().m19648class();
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m20415case() {
            m20413class().m19648class().clear();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            f1 f1Var = null;
            try {
                try {
                    f1 f1Var2 = (f1) f1.f16903if.parsePartialFrom(codedInputStream, cimplements);
                    if (f1Var2 != null) {
                        m20429super(f1Var2);
                    }
                    return this;
                } catch (n e) {
                    f1 f1Var3 = (f1) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        f1Var = f1Var3;
                        if (f1Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (f1Var != null) {
                    m20429super(f1Var);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.StructOrBuilder
        public boolean containsFields(String str) {
            Objects.requireNonNull(str);
            return m20412catch().m19654this().containsKey(str);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof f1) {
                return m20429super((f1) message);
            }
            super.mergeFrom(message);
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public f1 buildPartial() {
            f1 f1Var = new f1(this, (Cdo) null);
            f1Var.fields_ = m20412catch();
            f1Var.fields_.m19651final();
            onBuilt();
            return f1Var;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return g1.f16941do;
        }

        @Override // com.google.protobuf.StructOrBuilder
        @Deprecated
        public Map<String, b2> getFields() {
            return getFieldsMap();
        }

        @Override // com.google.protobuf.StructOrBuilder
        public int getFieldsCount() {
            return m20412catch().m19654this().size();
        }

        @Override // com.google.protobuf.StructOrBuilder
        public Map<String, b2> getFieldsMap() {
            return m20412catch().m19654this();
        }

        @Override // com.google.protobuf.StructOrBuilder
        public b2 getFieldsOrDefault(String str, b2 b2Var) {
            Objects.requireNonNull(str);
            Map<String, b2> mapM19654this = m20412catch().m19654this();
            return mapM19654this.containsKey(str) ? mapM19654this.get(str) : b2Var;
        }

        @Override // com.google.protobuf.StructOrBuilder
        public b2 getFieldsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, b2> mapM19654this = m20412catch().m19654this();
            if (mapM19654this.containsKey(str)) {
                return mapM19654this.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public f1 build() {
            f1 f1VarBuildPartial = buildPartial();
            if (f1VarBuildPartial.isInitialized()) {
                return f1VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) f1VarBuildPartial);
        }

        /* renamed from: import, reason: not valid java name */
        public Cif m20423import(String str, b2 b2Var) {
            Objects.requireNonNull(str);
            Objects.requireNonNull(b2Var);
            m20413class().m19648class().put(str, b2Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return g1.f16945if.m19575new(f1.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public MapField internalGetMapField(int i) {
            if (i == 1) {
                return m20412catch();
            }
            StringBuilder sb = new StringBuilder(37);
            sb.append("Invalid map field number: ");
            sb.append(i);
            throw new RuntimeException(sb.toString());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public MapField internalGetMutableMapField(int i) {
            if (i == 1) {
                return m20413class();
            }
            StringBuilder sb = new StringBuilder(37);
            sb.append("Invalid map field number: ");
            sb.append(i);
            throw new RuntimeException(sb.toString());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* renamed from: native, reason: not valid java name */
        public Cif m20424native(String str) {
            Objects.requireNonNull(str);
            m20413class().m19648class().remove(str);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            m20413class().m19650do();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m20429super(f1 f1Var) {
            if (f1Var == f1.getDefaultInstance()) {
                return this;
            }
            m20413class().m19653super(f1Var.m20410do());
            mergeUnknownFields(f1Var.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public f1 getDefaultInstanceForType() {
            return f1.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m20433while(Map<String, b2> map) {
            m20413class().m19648class().putAll(map);
            return this;
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        private Cif() {
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ f1(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public MapField<String, b2> m20410do() {
        MapField<String, b2> mapField = this.fields_;
        return mapField == null ? MapField.m19639else(Cfor.f16904do) : mapField;
    }

    public static f1 getDefaultInstance() {
        return f16902do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return g1.f16941do;
    }

    public static Cif newBuilder() {
        return f16902do.toBuilder();
    }

    public static f1 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (f1) GeneratedMessageV3.parseDelimitedWithIOException(f16903if, inputStream);
    }

    public static f1 parseFrom(ByteBuffer byteBuffer) throws n {
        return f16903if.parseFrom(byteBuffer);
    }

    public static Parser<f1> parser() {
        return f16903if;
    }

    @Override // com.google.protobuf.StructOrBuilder
    public boolean containsFields(String str) {
        Objects.requireNonNull(str);
        return m20410do().m19654this().containsKey(str);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f1)) {
            return super.equals(obj);
        }
        f1 f1Var = (f1) obj;
        return m20410do().equals(f1Var.m20410do()) && this.unknownFields.equals(f1Var.unknownFields);
    }

    @Override // com.google.protobuf.StructOrBuilder
    @Deprecated
    public Map<String, b2> getFields() {
        return getFieldsMap();
    }

    @Override // com.google.protobuf.StructOrBuilder
    public int getFieldsCount() {
        return m20410do().m19654this().size();
    }

    @Override // com.google.protobuf.StructOrBuilder
    public Map<String, b2> getFieldsMap() {
        return m20410do().m19654this();
    }

    @Override // com.google.protobuf.StructOrBuilder
    public b2 getFieldsOrDefault(String str, b2 b2Var) {
        Objects.requireNonNull(str);
        Map<String, b2> mapM19654this = m20410do().m19654this();
        return mapM19654this.containsKey(str) ? mapM19654this.get(str) : b2Var;
    }

    @Override // com.google.protobuf.StructOrBuilder
    public b2 getFieldsOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, b2> mapM19654this = m20410do().m19654this();
        if (mapM19654this.containsKey(str)) {
            return mapM19654this.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<f1> getParserForType() {
        return f16903if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iM20900synchronized = 0;
        for (Map.Entry<String, b2> entry : m20410do().m19654this().entrySet()) {
            iM20900synchronized += Cnative.m20900synchronized(1, Cfor.f16904do.newBuilderForType().m21564const(entry.getKey()).m21573throw(entry.getValue()).build());
        }
        int serializedSize = iM20900synchronized + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = 779 + getDescriptor().hashCode();
        if (!m20410do().m19654this().isEmpty()) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + m20410do().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return g1.f16945if.m19575new(f1.class, Cif.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public MapField internalGetMapField(int i) {
        if (i == 1) {
            return m20410do();
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Invalid map field number: ");
        sb.append(i);
        throw new RuntimeException(sb.toString());
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.Ctry ctry) {
        return new f1();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        GeneratedMessageV3.serializeStringMapTo(cnative, m20410do(), Cfor.f16904do, 1);
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ f1(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(f1 f1Var) {
        return f16902do.toBuilder().m20429super(f1Var);
    }

    public static f1 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16903if.parseFrom(byteBuffer, cimplements);
    }

    private f1(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static f1 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (f1) GeneratedMessageV3.parseDelimitedWithIOException(f16903if, inputStream, cimplements);
    }

    public static f1 parseFrom(ByteString byteString) throws n {
        return f16903if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public f1 getDefaultInstanceForType() {
        return f16902do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16902do ? new Cif(cdo) : new Cif(cdo).m20429super(this);
    }

    public static f1 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16903if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private f1() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static f1 parseFrom(byte[] bArr) throws n {
        return f16903if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static f1 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16903if.parseFrom(bArr, cimplements);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private f1(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL != 0) {
                        if (iL != 10) {
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                            }
                        } else {
                            if (!(z2 & true)) {
                                this.fields_ = MapField.m19643throw(Cfor.f16904do);
                                z2 |= true;
                            }
                            x xVar = (x) codedInputStream.mo18430interface(Cfor.f16904do.getParserForType(), cimplements);
                            this.fields_.m19648class().put(xVar.m21553case(), xVar.m21556goto());
                        }
                    }
                    z = true;
                } catch (n e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new n(e2).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static f1 parseFrom(InputStream inputStream) throws IOException {
        return (f1) GeneratedMessageV3.parseWithIOException(f16903if, inputStream);
    }

    public static f1 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (f1) GeneratedMessageV3.parseWithIOException(f16903if, inputStream, cimplements);
    }

    public static f1 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (f1) GeneratedMessageV3.parseWithIOException(f16903if, codedInputStream);
    }

    public static f1 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (f1) GeneratedMessageV3.parseWithIOException(f16903if, codedInputStream, cimplements);
    }
}
