package com.google.protobuf;

import android.support.v4.on0;
import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/* renamed from: com.google.protobuf.try, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ctry extends GeneratedMessageV3 implements AnyOrBuilder {
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;

    /* renamed from: do, reason: not valid java name */
    private static final Ctry f17254do = new Ctry();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<Ctry> f17255if = new Cdo();
    private static final long serialVersionUID = 0;
    private volatile Message cachedUnpackValue;
    private byte memoizedIsInitialized;
    private volatile Object typeUrl_;
    private ByteString value_;

    /* renamed from: com.google.protobuf.try$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Ctry> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ctry parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new Ctry(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.try$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements AnyOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private Object f17256do;

        /* renamed from: if, reason: not valid java name */
        private ByteString f17257if;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        public static final Descriptors.Cif getDescriptor() {
            return Ccase.f16705do;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ctry getDefaultInstanceForType() {
            return Ctry.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m21338catch(Ctry ctry) {
            if (ctry == Ctry.getDefaultInstance()) {
                return this;
            }
            if (!ctry.getTypeUrl().isEmpty()) {
                this.f17256do = ctry.typeUrl_;
                onChanged();
            }
            if (ctry.getValue() != ByteString.EMPTY) {
                m21350public(ctry.getValue());
            }
            mergeUnknownFields(ctry.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            Ctry ctry = null;
            try {
                try {
                    Ctry ctry2 = (Ctry) Ctry.f17255if.parsePartialFrom(codedInputStream, cimplements);
                    if (ctry2 != null) {
                        m21338catch(ctry2);
                    }
                    return this;
                } catch (n e) {
                    Ctry ctry3 = (Ctry) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        ctry = ctry3;
                        if (ctry != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (ctry != null) {
                    m21338catch(ctry);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof Ctry) {
                return m21338catch((Ctry) message);
            }
            super.mergeFrom(message);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m21342else() {
            this.f17256do = Ctry.getDefaultInstance().getTypeUrl();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ctry buildPartial() {
            Ctry ctry = new Ctry(this, (Cdo) null);
            ctry.typeUrl_ = this.f17256do;
            ctry.value_ = this.f17257if;
            onBuilt();
            return ctry;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return Ccase.f16705do;
        }

        @Override // com.google.protobuf.AnyOrBuilder
        public String getTypeUrl() {
            Object obj = this.f17256do;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f17256do = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.AnyOrBuilder
        public ByteString getTypeUrlBytes() {
            Object obj = this.f17256do;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f17256do = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.AnyOrBuilder
        public ByteString getValue() {
            return this.f17257if;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m21345goto() {
            this.f17257if = Ctry.getDefaultInstance().getValue();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ctry build() {
            Ctry ctryBuildPartial = buildPartial();
            if (ctryBuildPartial.isInitialized()) {
                return ctryBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) ctryBuildPartial);
        }

        /* renamed from: import, reason: not valid java name */
        public Cif m21347import(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f17256do = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Ccase.f16707if.m19575new(Ctry.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f17256do = "";
            this.f17257if = ByteString.EMPTY;
            return this;
        }

        /* renamed from: public, reason: not valid java name */
        public Cif m21350public(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f17257if = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m21355while(String str) {
            Objects.requireNonNull(str);
            this.f17256do = str;
            onChanged();
            return this;
        }

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        private Cif() {
            this.f17256do = "";
            this.f17257if = ByteString.EMPTY;
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f17256do = "";
            this.f17257if = ByteString.EMPTY;
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ Ctry(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    /* renamed from: do, reason: not valid java name */
    private static String m21333do(String str) {
        int iLastIndexOf = str.lastIndexOf(47);
        return iLastIndexOf == -1 ? "" : str.substring(iLastIndexOf + 1);
    }

    public static Ctry getDefaultInstance() {
        return f17254do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return Ccase.f16705do;
    }

    /* renamed from: if, reason: not valid java name */
    private static String m21334if(String str, Descriptors.Cif cif) {
        if (str.endsWith(on0.f4694final)) {
            String strValueOf = String.valueOf(cif.mo19235if());
            return strValueOf.length() != 0 ? str.concat(strValueOf) : new String(str);
        }
        String strMo19235if = cif.mo19235if();
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(strMo19235if).length());
        sb.append(str);
        sb.append(on0.f4694final);
        sb.append(strMo19235if);
        return sb.toString();
    }

    public static Cif newBuilder() {
        return f17254do.toBuilder();
    }

    public static <T extends Message> Ctry pack(T t) {
        return newBuilder().m21355while(m21334if("type.googleapis.com", t.getDescriptorForType())).m21350public(t.toByteString()).build();
    }

    public static Ctry parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Ctry) GeneratedMessageV3.parseDelimitedWithIOException(f17255if, inputStream);
    }

    public static Ctry parseFrom(ByteBuffer byteBuffer) throws n {
        return f17255if.parseFrom(byteBuffer);
    }

    public static Parser<Ctry> parser() {
        return f17255if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Ctry)) {
            return super.equals(obj);
        }
        Ctry ctry = (Ctry) obj;
        return getTypeUrl().equals(ctry.getTypeUrl()) && getValue().equals(ctry.getValue()) && this.unknownFields.equals(ctry.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Ctry> getParserForType() {
        return f17255if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = getTypeUrlBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.typeUrl_);
        if (!this.value_.isEmpty()) {
            iComputeStringSize += Cnative.m20883final(2, this.value_);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.AnyOrBuilder
    public String getTypeUrl() {
        Object obj = this.typeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.typeUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.AnyOrBuilder
    public ByteString getTypeUrlBytes() {
        Object obj = this.typeUrl_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.typeUrl_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.AnyOrBuilder
    public ByteString getValue() {
        return this.value_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTypeUrl().hashCode()) * 37) + 2) * 53) + getValue().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Ccase.f16707if.m19575new(Ctry.class, Cif.class);
    }

    public <T extends Message> boolean is(Class<T> cls) {
        return m21333do(getTypeUrl()).equals(((Message) Internal.m19608break(cls)).getDescriptorForType().mo19235if());
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
        return new Ctry();
    }

    public <T extends Message> T unpack(Class<T> cls) throws n {
        boolean z;
        if (this.cachedUnpackValue == null) {
            z = false;
        } else {
            if (this.cachedUnpackValue.getClass() == cls) {
                return (T) this.cachedUnpackValue;
            }
            z = true;
        }
        if (z || !is(cls)) {
            throw new n("Type of the Any message does not match the given class.");
        }
        T t = (T) ((Message) Internal.m19608break(cls)).getParserForType().parseFrom(getValue());
        this.cachedUnpackValue = t;
        return t;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!getTypeUrlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 1, this.typeUrl_);
        }
        if (!this.value_.isEmpty()) {
            cnative.writeBytes(2, this.value_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ Ctry(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(Ctry ctry) {
        return f17254do.toBuilder().m21338catch(ctry);
    }

    public static Ctry parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17255if.parseFrom(byteBuffer, cimplements);
    }

    private Ctry(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Ctry parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Ctry) GeneratedMessageV3.parseDelimitedWithIOException(f17255if, inputStream, cimplements);
    }

    public static Ctry parseFrom(ByteString byteString) throws n {
        return f17255if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Ctry getDefaultInstanceForType() {
        return f17254do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17254do ? new Cif(cdo) : new Cif(cdo).m21338catch(this);
    }

    public static Ctry parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17255if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private Ctry() {
        this.memoizedIsInitialized = (byte) -1;
        this.typeUrl_ = "";
        this.value_ = ByteString.EMPTY;
    }

    public static Ctry parseFrom(byte[] bArr) throws n {
        return f17255if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static <T extends Message> Ctry pack(T t, String str) {
        return newBuilder().m21355while(m21334if(str, t.getDescriptorForType())).m21350public(t.toByteString()).build();
    }

    public static Ctry parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17255if.parseFrom(bArr, cimplements);
    }

    public static Ctry parseFrom(InputStream inputStream) throws IOException {
        return (Ctry) GeneratedMessageV3.parseWithIOException(f17255if, inputStream);
    }

    private Ctry(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        while (!z) {
            try {
                try {
                    try {
                        int iL = codedInputStream.l();
                        if (iL != 0) {
                            if (iL == 10) {
                                this.typeUrl_ = codedInputStream.k();
                            } else if (iL != 18) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                this.value_ = codedInputStream.mo18443throws();
                            }
                        }
                        z = true;
                    } catch (IOException e) {
                        throw new n(e).setUnfinishedMessage(this);
                    }
                } catch (n e2) {
                    throw e2.setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Ctry parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Ctry) GeneratedMessageV3.parseWithIOException(f17255if, inputStream, cimplements);
    }

    public static Ctry parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Ctry) GeneratedMessageV3.parseWithIOException(f17255if, codedInputStream);
    }

    public static Ctry parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (Ctry) GeneratedMessageV3.parseWithIOException(f17255if, codedInputStream, cimplements);
    }
}
