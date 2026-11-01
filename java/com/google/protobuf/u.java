package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.b2;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class u extends GeneratedMessageV3 implements ListValueOrBuilder {
    public static final int VALUES_FIELD_NUMBER = 1;

    /* renamed from: do, reason: not valid java name */
    private static final u f17258do = new u();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<u> f17259if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<b2> values_;

    /* renamed from: com.google.protobuf.u$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<u> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public u parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new u(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.u$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements ListValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private int f17260do;

        /* renamed from: for, reason: not valid java name */
        private v0<b2, b2.Cfor, ValueOrBuilder> f17261for;

        /* renamed from: if, reason: not valid java name */
        private List<b2> f17262if;

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        public static final Descriptors.Cif getDescriptor() {
            return g1.f16942else;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m21357public();
            }
        }

        /* renamed from: public, reason: not valid java name */
        private v0<b2, b2.Cfor, ValueOrBuilder> m21357public() {
            if (this.f17261for == null) {
                this.f17261for = new v0<>(this.f17262if, (this.f17260do & 1) != 0, getParentForChildren(), isClean());
                this.f17262if = null;
            }
            return this.f17261for;
        }

        /* renamed from: throw, reason: not valid java name */
        private void m21358throw() {
            if ((this.f17260do & 1) == 0) {
                this.f17262if = new ArrayList(this.f17262if);
                this.f17260do |= 1;
            }
        }

        /* renamed from: abstract, reason: not valid java name */
        public Cif m21359abstract(int i, b2 b2Var) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                Objects.requireNonNull(b2Var);
                m21358throw();
                this.f17262if.set(i, b2Var);
                onChanged();
            } else {
                v0Var.m21467switch(i, b2Var);
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public u buildPartial() {
            u uVar = new u(this, (Cdo) null);
            int i = this.f17260do;
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                if ((i & 1) != 0) {
                    this.f17262if = Collections.unmodifiableList(this.f17262if);
                    this.f17260do &= -2;
                }
                uVar.values_ = this.f17262if;
            } else {
                uVar.values_ = v0Var.m21453case();
            }
            onBuilt();
            return uVar;
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m21361case(b2 b2Var) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                Objects.requireNonNull(b2Var);
                m21358throw();
                this.f17262if.add(b2Var);
                onChanged();
            } else {
                v0Var.m21469try(b2Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                this.f17262if = Collections.emptyList();
                this.f17260do &= -2;
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        /* renamed from: default, reason: not valid java name */
        public Cif m21365default(int i) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                m21358throw();
                this.f17262if.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m21366do(Iterable<? extends b2> iterable) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                m21358throw();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f17262if);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public b2.Cfor m21367else() {
            return (b2.Cfor) m21357public().m21460for(b2.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m21369final() {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                this.f17262if = Collections.emptyList();
                this.f17260do &= -2;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m21371for(int i, b2.Cfor cfor) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                m21358throw();
                this.f17262if.add(i, cfor.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cfor.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return g1.f16942else;
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public b2 getValues(int i) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            return v0Var == null ? this.f17262if.get(i) : (b2) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public int getValuesCount() {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            return v0Var == null ? this.f17262if.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public List<b2> getValuesList() {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            return v0Var == null ? Collections.unmodifiableList(this.f17262if) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public ValueOrBuilder getValuesOrBuilder(int i) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            return v0Var == null ? this.f17262if.get(i) : (ValueOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.ListValueOrBuilder
        public List<? extends ValueOrBuilder> getValuesOrBuilderList() {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f17262if);
        }

        /* renamed from: goto, reason: not valid java name */
        public b2.Cfor m21372goto(int i) {
            return (b2.Cfor) m21357public().m21462if(i, b2.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        /* renamed from: import, reason: not valid java name */
        public b2.Cfor m21374import(int i) {
            return (b2.Cfor) m21357public().m21454catch(i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return g1.f16944goto.m19575new(u.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* renamed from: native, reason: not valid java name */
        public List<b2.Cfor> m21375native() {
            return m21357public().m21455class();
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m21376new(int i, b2 b2Var) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                Objects.requireNonNull(b2Var);
                m21358throw();
                this.f17262if.add(i, b2Var);
                onChanged();
            } else {
                v0Var.m21464new(i, b2Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: package, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        /* renamed from: private, reason: not valid java name */
        public Cif m21378private(int i, b2.Cfor cfor) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                m21358throw();
                this.f17262if.set(i, cfor.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cfor.build());
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            u uVar = null;
            try {
                try {
                    u uVar2 = (u) u.f17259if.parsePartialFrom(codedInputStream, cimplements);
                    if (uVar2 != null) {
                        m21380static(uVar2);
                    }
                    return this;
                } catch (n e) {
                    u uVar3 = (u) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        uVar = uVar3;
                        if (uVar != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (uVar != null) {
                    m21380static(uVar);
                }
                throw th;
            }
        }

        /* renamed from: static, reason: not valid java name */
        public Cif m21380static(u uVar) {
            if (uVar == u.getDefaultInstance()) {
                return this;
            }
            if (this.f17261for == null) {
                if (!uVar.values_.isEmpty()) {
                    if (this.f17262if.isEmpty()) {
                        this.f17262if = uVar.values_;
                        this.f17260do &= -2;
                    } else {
                        m21358throw();
                        this.f17262if.addAll(uVar.values_);
                    }
                    onChanged();
                }
            } else if (!uVar.values_.isEmpty()) {
                if (this.f17261for.m21465public()) {
                    this.f17261for.m21461goto();
                    this.f17261for = null;
                    this.f17262if = uVar.values_;
                    this.f17260do &= -2;
                    this.f17261for = GeneratedMessageV3.alwaysUseFieldBuilders ? m21357public() : null;
                } else {
                    this.f17261for.m21457do(uVar.values_);
                }
            }
            mergeUnknownFields(uVar.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof u) {
                return m21380static((u) message);
            }
            super.mergeFrom(message);
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public u build() {
            u uVarBuildPartial = buildPartial();
            if (uVarBuildPartial.isInitialized()) {
                return uVarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) uVarBuildPartial);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m21385try(b2.Cfor cfor) {
            v0<b2, b2.Cfor, ValueOrBuilder> v0Var = this.f17261for;
            if (v0Var == null) {
                m21358throw();
                this.f17262if.add(cfor.build());
                onChanged();
            } else {
                v0Var.m21469try(cfor.build());
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public u getDefaultInstanceForType() {
            return u.getDefaultInstance();
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        private Cif() {
            this.f17262if = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f17262if = Collections.emptyList();
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ u(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static u getDefaultInstance() {
        return f17258do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return g1.f16942else;
    }

    public static Cif newBuilder() {
        return f17258do.toBuilder();
    }

    public static u parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (u) GeneratedMessageV3.parseDelimitedWithIOException(f17259if, inputStream);
    }

    public static u parseFrom(ByteBuffer byteBuffer) throws n {
        return f17259if.parseFrom(byteBuffer);
    }

    public static Parser<u> parser() {
        return f17259if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u)) {
            return super.equals(obj);
        }
        u uVar = (u) obj;
        return getValuesList().equals(uVar.getValuesList()) && this.unknownFields.equals(uVar.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<u> getParserForType() {
        return f17259if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iM20900synchronized = 0;
        for (int i2 = 0; i2 < this.values_.size(); i2++) {
            iM20900synchronized += Cnative.m20900synchronized(1, this.values_.get(i2));
        }
        int serializedSize = iM20900synchronized + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public b2 getValues(int i) {
        return this.values_.get(i);
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public int getValuesCount() {
        return this.values_.size();
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public List<b2> getValuesList() {
        return this.values_;
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public ValueOrBuilder getValuesOrBuilder(int i) {
        return this.values_.get(i);
    }

    @Override // com.google.protobuf.ListValueOrBuilder
    public List<? extends ValueOrBuilder> getValuesOrBuilderList() {
        return this.values_;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = 779 + getDescriptor().hashCode();
        if (getValuesCount() > 0) {
            iHashCode = (((iHashCode * 37) + 1) * 53) + getValuesList().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return g1.f16944goto.m19575new(u.class, Cif.class);
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
        return new u();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        for (int i = 0; i < this.values_.size(); i++) {
            cnative.f0(1, this.values_.get(i));
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ u(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(u uVar) {
        return f17258do.toBuilder().m21380static(uVar);
    }

    public static u parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f17259if.parseFrom(byteBuffer, cimplements);
    }

    private u(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static u parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (u) GeneratedMessageV3.parseDelimitedWithIOException(f17259if, inputStream, cimplements);
    }

    public static u parseFrom(ByteString byteString) throws n {
        return f17259if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public u getDefaultInstanceForType() {
        return f17258do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f17258do ? new Cif(cdo) : new Cif(cdo).m21380static(this);
    }

    public static u parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f17259if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private u() {
        this.memoizedIsInitialized = (byte) -1;
        this.values_ = Collections.emptyList();
    }

    public static u parseFrom(byte[] bArr) throws n {
        return f17259if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static u parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f17259if.parseFrom(bArr, cimplements);
    }

    public static u parseFrom(InputStream inputStream) throws IOException {
        return (u) GeneratedMessageV3.parseWithIOException(f17259if, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private u(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
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
                                this.values_ = new ArrayList();
                                z2 |= true;
                            }
                            this.values_.add(codedInputStream.mo18430interface(b2.parser(), cimplements));
                        }
                    }
                    z = true;
                } catch (n e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new n(e2).setUnfinishedMessage(this);
                }
            } finally {
                if (z2 & true) {
                    this.values_ = Collections.unmodifiableList(this.values_);
                }
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static u parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (u) GeneratedMessageV3.parseWithIOException(f17259if, inputStream, cimplements);
    }

    public static u parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (u) GeneratedMessageV3.parseWithIOException(f17259if, codedInputStream);
    }

    public static u parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (u) GeneratedMessageV3.parseWithIOException(f17259if, codedInputStream, cimplements);
    }
}
