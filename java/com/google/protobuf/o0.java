package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Ctry;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class o0 extends GeneratedMessageV3 implements OptionOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;

    /* renamed from: do, reason: not valid java name */
    private static final o0 f17126do = new o0();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<o0> f17127if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private Ctry value_;

    /* renamed from: com.google.protobuf.o0$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<o0> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public o0 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new o0(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.o0$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements OptionOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private Object f17128do;

        /* renamed from: for, reason: not valid java name */
        private a1<Ctry, Ctry.Cif, AnyOrBuilder> f17129for;

        /* renamed from: if, reason: not valid java name */
        private Ctry f17130if;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        /* renamed from: class, reason: not valid java name */
        private a1<Ctry, Ctry.Cif, AnyOrBuilder> m20914class() {
            if (this.f17129for == null) {
                this.f17129for = new a1<>(getValue(), getParentForChildren(), isClean());
                this.f17130if = null;
            }
            return this.f17129for;
        }

        public static final Descriptors.Cif getDescriptor() {
            return o1.f17140this;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public o0 getDefaultInstanceForType() {
            return o0.getDefaultInstance();
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m20916case() {
            this.f17128do = o0.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        /* renamed from: catch, reason: not valid java name */
        public Ctry.Cif m20917catch() {
            onChanged();
            return (Ctry.Cif) m20914class().m19690new();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            o0 o0Var = null;
            try {
                try {
                    o0 o0Var2 = (o0) o0.f17127if.parsePartialFrom(codedInputStream, cimplements);
                    if (o0Var2 != null) {
                        m20931super(o0Var2);
                    }
                    return this;
                } catch (n e) {
                    o0 o0Var3 = (o0) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        o0Var = o0Var3;
                        if (o0Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (o0Var != null) {
                    m20931super(o0Var);
                }
                throw th;
            }
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
            if (message instanceof o0) {
                return m20931super((o0) message);
            }
            super.mergeFrom(message);
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public o0 buildPartial() {
            o0 o0Var = new o0(this, (Cdo) null);
            o0Var.name_ = this.f17128do;
            a1<Ctry, Ctry.Cif, AnyOrBuilder> a1Var = this.f17129for;
            if (a1Var == null) {
                o0Var.value_ = this.f17130if;
            } else {
                o0Var.value_ = (Ctry) a1Var.m19686do();
            }
            onBuilt();
            return o0Var;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return o1.f17140this;
        }

        @Override // com.google.protobuf.OptionOrBuilder
        public String getName() {
            Object obj = this.f17128do;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f17128do = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.OptionOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f17128do;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f17128do = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.OptionOrBuilder
        public Ctry getValue() {
            a1<Ctry, Ctry.Cif, AnyOrBuilder> a1Var = this.f17129for;
            if (a1Var != null) {
                return (Ctry) a1Var.m19692try();
            }
            Ctry ctry = this.f17130if;
            return ctry == null ? Ctry.getDefaultInstance() : ctry;
        }

        @Override // com.google.protobuf.OptionOrBuilder
        public AnyOrBuilder getValueOrBuilder() {
            a1<Ctry, Ctry.Cif, AnyOrBuilder> a1Var = this.f17129for;
            if (a1Var != null) {
                return (AnyOrBuilder) a1Var.m19685case();
            }
            Ctry ctry = this.f17130if;
            return ctry == null ? Ctry.getDefaultInstance() : ctry;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m20923goto() {
            if (this.f17129for == null) {
                this.f17130if = null;
                onChanged();
            } else {
                this.f17130if = null;
                this.f17129for = null;
            }
            return this;
        }

        @Override // com.google.protobuf.OptionOrBuilder
        public boolean hasValue() {
            return (this.f17129for == null && this.f17130if == null) ? false : true;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public o0 build() {
            o0 o0VarBuildPartial = buildPartial();
            if (o0VarBuildPartial.isInitialized()) {
                return o0VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) o0VarBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return o1.f17131break.m19575new(o0.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* renamed from: native, reason: not valid java name */
        public Cif m20926native(String str) {
            Objects.requireNonNull(str);
            this.f17128do = str;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17128do = "";
            if (this.f17129for == null) {
                this.f17130if = null;
            } else {
                this.f17130if = null;
                this.f17129for = null;
            }
            return this;
        }

        /* renamed from: public, reason: not valid java name */
        public Cif m20928public(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f17128do = byteString;
            onChanged();
            return this;
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
        public Cif m20931super(o0 o0Var) {
            if (o0Var == o0.getDefaultInstance()) {
                return this;
            }
            if (!o0Var.getName().isEmpty()) {
                this.f17128do = o0Var.name_;
                onChanged();
            }
            if (o0Var.hasValue()) {
                m20937while(o0Var.getValue());
            }
            mergeUnknownFields(o0Var.unknownFields);
            onChanged();
            return this;
        }

        /* renamed from: switch, reason: not valid java name */
        public Cif m20932switch(Ctry.Cif cif) {
            a1<Ctry, Ctry.Cif, AnyOrBuilder> a1Var = this.f17129for;
            if (a1Var == null) {
                this.f17130if = cif.build();
                onChanged();
            } else {
                a1Var.m19691this(cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        /* renamed from: throws, reason: not valid java name */
        public Cif m20935throws(Ctry ctry) {
            a1<Ctry, Ctry.Cif, AnyOrBuilder> a1Var = this.f17129for;
            if (a1Var == null) {
                Objects.requireNonNull(ctry);
                this.f17130if = ctry;
                onChanged();
            } else {
                a1Var.m19691this(ctry);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m20937while(Ctry ctry) {
            a1<Ctry, Ctry.Cif, AnyOrBuilder> a1Var = this.f17129for;
            if (a1Var == null) {
                Ctry ctry2 = this.f17130if;
                if (ctry2 != null) {
                    this.f17130if = Ctry.newBuilder(ctry2).m21338catch(ctry).buildPartial();
                } else {
                    this.f17130if = ctry;
                }
                onChanged();
            } else {
                a1Var.m19687else(ctry);
            }
            return this;
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        private Cif() {
            this.f17128do = "";
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f17128do = "";
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ o0(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static o0 getDefaultInstance() {
        return f17126do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return o1.f17140this;
    }

    public static Cif newBuilder() {
        return f17126do.toBuilder();
    }

    public static o0 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (o0) GeneratedMessageV3.parseDelimitedWithIOException(f17127if, inputStream);
    }

    public static o0 parseFrom(ByteBuffer byteBuffer) throws n {
        return f17127if.parseFrom(byteBuffer);
    }

    public static Parser<o0> parser() {
        return f17127if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o0)) {
            return super.equals(obj);
        }
        o0 o0Var = (o0) obj;
        if (getName().equals(o0Var.getName()) && hasValue() == o0Var.hasValue()) {
            return (!hasValue() || getValue().equals(o0Var.getValue())) && this.unknownFields.equals(o0Var.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.OptionOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.OptionOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<o0> getParserForType() {
        return f17127if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = getNameBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
        if (this.value_ != null) {
            iComputeStringSize += Cnative.m20900synchronized(2, getValue());
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.OptionOrBuilder
    public Ctry getValue() {
        Ctry ctry = this.value_;
        return ctry == null ? Ctry.getDefaultInstance() : ctry;
    }

    @Override // com.google.protobuf.OptionOrBuilder
    public AnyOrBuilder getValueOrBuilder() {
        return getValue();
    }

    @Override // com.google.protobuf.OptionOrBuilder
    public boolean hasValue() {
        return this.value_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasValue()) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getValue().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return o1.f17131break.m19575new(o0.class, Cif.class);
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
        return new o0();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 1, this.name_);
        }
        if (this.value_ != null) {
            cnative.f0(2, getValue());
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ o0(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(o0 o0Var) {
        return f17126do.toBuilder().m20931super(o0Var);
    }

    public static o0 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17127if.parseFrom(byteBuffer, cimplements);
    }

    private o0(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static o0 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (o0) GeneratedMessageV3.parseDelimitedWithIOException(f17127if, inputStream, cimplements);
    }

    public static o0 parseFrom(ByteString byteString) throws n {
        return f17127if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public o0 getDefaultInstanceForType() {
        return f17126do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17126do ? new Cif(cdo) : new Cif(cdo).m20931super(this);
    }

    public static o0 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17127if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private o0() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static o0 parseFrom(byte[] bArr) throws n {
        return f17127if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static o0 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17127if.parseFrom(bArr, cimplements);
    }

    public static o0 parseFrom(InputStream inputStream) throws IOException {
        return (o0) GeneratedMessageV3.parseWithIOException(f17127if, inputStream);
    }

    private o0(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL != 0) {
                        if (iL == 10) {
                            this.name_ = codedInputStream.k();
                        } else if (iL != 18) {
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                            }
                        } else {
                            Ctry ctry = this.value_;
                            Ctry.Cif builder = ctry != null ? ctry.toBuilder() : null;
                            Ctry ctry2 = (Ctry) codedInputStream.mo18430interface(Ctry.parser(), cimplements);
                            this.value_ = ctry2;
                            if (builder != null) {
                                builder.m21338catch(ctry2);
                                this.value_ = builder.buildPartial();
                            }
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

    public static o0 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (o0) GeneratedMessageV3.parseWithIOException(f17127if, inputStream, cimplements);
    }

    public static o0 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (o0) GeneratedMessageV3.parseWithIOException(f17127if, codedInputStream);
    }

    public static o0 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (o0) GeneratedMessageV3.parseWithIOException(f17127if, codedInputStream, cimplements);
    }
}
