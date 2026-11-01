package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.o0;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* renamed from: com.google.protobuf.continue, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccontinue extends GeneratedMessageV3 implements EnumValueOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int NUMBER_FIELD_NUMBER = 2;
    public static final int OPTIONS_FIELD_NUMBER = 3;

    /* renamed from: do, reason: not valid java name */
    private static final Ccontinue f16780do = new Ccontinue();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<Ccontinue> f16781if = new Cdo();
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private int number_;
    private List<o0> options_;

    /* renamed from: com.google.protobuf.continue$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Ccontinue> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccontinue parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new Ccontinue(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.continue$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements EnumValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private int f16782do;

        /* renamed from: for, reason: not valid java name */
        private int f16783for;

        /* renamed from: if, reason: not valid java name */
        private Object f16784if;

        /* renamed from: new, reason: not valid java name */
        private List<o0> f16785new;

        /* renamed from: try, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> f16786try;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        public static final Descriptors.Cif getDescriptor() {
            return o1.f17135else;
        }

        /* renamed from: import, reason: not valid java name */
        private void m20174import() {
            if ((this.f16782do & 1) == 0) {
                this.f16785new = new ArrayList(this.f16785new);
                this.f16782do |= 1;
            }
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m20175static();
            }
        }

        /* renamed from: static, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> m20175static() {
            if (this.f16786try == null) {
                this.f16786try = new v0<>(this.f16785new, (this.f16782do & 1) != 0, getParentForChildren(), isClean());
                this.f16785new = null;
            }
            return this.f16786try;
        }

        /* renamed from: abstract, reason: not valid java name */
        public Cif m20176abstract(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16784if = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccontinue buildPartial() {
            Ccontinue ccontinue = new Ccontinue(this, (Cdo) null);
            ccontinue.name_ = this.f16784if;
            ccontinue.number_ = this.f16783for;
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                if ((this.f16782do & 1) != 0) {
                    this.f16785new = Collections.unmodifiableList(this.f16785new);
                    this.f16782do &= -2;
                }
                ccontinue.options_ = this.f16785new;
            } else {
                ccontinue.options_ = v0Var.m21453case();
            }
            onBuilt();
            return ccontinue;
        }

        /* renamed from: case, reason: not valid java name */
        public o0.Cif m20178case() {
            return (o0.Cif) m20175static().m21460for(o0.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16784if = "";
            this.f16783for = 0;
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                this.f16785new = Collections.emptyList();
                this.f16782do &= -2;
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

        /* renamed from: const, reason: not valid java name */
        public Cif m20181const() {
            this.f16784if = Ccontinue.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        /* renamed from: continue, reason: not valid java name */
        public Cif m20182continue(int i) {
            this.f16783for = i;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof Ccontinue) {
                return m20205throws((Ccontinue) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m20184do(Iterable<? extends o0> iterable) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                m20174import();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16785new);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public o0.Cif m20185else(int i) {
            return (o0.Cif) m20175static().m21462if(i, o0.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        /* renamed from: final, reason: not valid java name */
        public Cif m20187final() {
            this.f16783for = 0;
            onChanged();
            return this;
        }

        /* renamed from: finally, reason: not valid java name */
        public Cif m20188finally(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                m20174import();
                this.f16785new.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m20189for(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20174import();
                this.f16785new.add(i, o0Var);
                onChanged();
            } else {
                v0Var.m21464new(i, o0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return o1.f17135else;
        }

        @Override // com.google.protobuf.EnumValueOrBuilder
        public String getName() {
            Object obj = this.f16784if;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16784if = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.EnumValueOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f16784if;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16784if = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.EnumValueOrBuilder
        public int getNumber() {
            return this.f16783for;
        }

        @Override // com.google.protobuf.EnumValueOrBuilder
        public o0 getOptions(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            return v0Var == null ? this.f16785new.get(i) : (o0) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.EnumValueOrBuilder
        public int getOptionsCount() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            return v0Var == null ? this.f16785new.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.EnumValueOrBuilder
        public List<o0> getOptionsList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            return v0Var == null ? Collections.unmodifiableList(this.f16785new) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.EnumValueOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            return v0Var == null ? this.f16785new.get(i) : (OptionOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.EnumValueOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16785new);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m20191if(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                m20174import();
                this.f16785new.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: interface, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return o1.f17137goto.m19575new(Ccontinue.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccontinue getDefaultInstanceForType() {
            return Ccontinue.getDefaultInstance();
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m20194new(o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                m20174import();
                this.f16785new.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: package, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        /* renamed from: private, reason: not valid java name */
        public Cif m20196private(String str) {
            Objects.requireNonNull(str);
            this.f16784if = str;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: protected, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        /* renamed from: public, reason: not valid java name */
        public o0.Cif m20198public(int i) {
            return (o0.Cif) m20175static().m21454catch(i);
        }

        /* renamed from: return, reason: not valid java name */
        public List<o0.Cif> m20199return() {
            return m20175static().m21455class();
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Cif m20200strictfp(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                m20174import();
                this.f16785new.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            Ccontinue ccontinue = null;
            try {
                try {
                    Ccontinue ccontinue2 = (Ccontinue) Ccontinue.f16781if.parsePartialFrom(codedInputStream, cimplements);
                    if (ccontinue2 != null) {
                        m20205throws(ccontinue2);
                    }
                    return this;
                } catch (n e) {
                    Ccontinue ccontinue3 = (Ccontinue) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        ccontinue = ccontinue3;
                        if (ccontinue != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (ccontinue != null) {
                    m20205throws(ccontinue);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccontinue build() {
            Ccontinue ccontinueBuildPartial = buildPartial();
            if (ccontinueBuildPartial.isInitialized()) {
                return ccontinueBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) ccontinueBuildPartial);
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m20204throw() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                this.f16785new = Collections.emptyList();
                this.f16782do &= -2;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        /* renamed from: throws, reason: not valid java name */
        public Cif m20205throws(Ccontinue ccontinue) {
            if (ccontinue == Ccontinue.getDefaultInstance()) {
                return this;
            }
            if (!ccontinue.getName().isEmpty()) {
                this.f16784if = ccontinue.name_;
                onChanged();
            }
            if (ccontinue.getNumber() != 0) {
                m20182continue(ccontinue.getNumber());
            }
            if (this.f16786try == null) {
                if (!ccontinue.options_.isEmpty()) {
                    if (this.f16785new.isEmpty()) {
                        this.f16785new = ccontinue.options_;
                        this.f16782do &= -2;
                    } else {
                        m20174import();
                        this.f16785new.addAll(ccontinue.options_);
                    }
                    onChanged();
                }
            } else if (!ccontinue.options_.isEmpty()) {
                if (this.f16786try.m21465public()) {
                    this.f16786try.m21461goto();
                    this.f16786try = null;
                    this.f16785new = ccontinue.options_;
                    this.f16782do &= -2;
                    this.f16786try = GeneratedMessageV3.alwaysUseFieldBuilders ? m20175static() : null;
                } else {
                    this.f16786try.m21457do(ccontinue.options_);
                }
            }
            mergeUnknownFields(ccontinue.unknownFields);
            onChanged();
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m20206try(o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20174import();
                this.f16785new.add(o0Var);
                onChanged();
            } else {
                v0Var.m21469try(o0Var);
            }
            return this;
        }

        /* renamed from: volatile, reason: not valid java name */
        public Cif m20207volatile(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16786try;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m20174import();
                this.f16785new.set(i, o0Var);
                onChanged();
            } else {
                v0Var.m21467switch(i, o0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        private Cif() {
            this.f16784if = "";
            this.f16785new = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f16784if = "";
            this.f16785new = Collections.emptyList();
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ Ccontinue(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static Ccontinue getDefaultInstance() {
        return f16780do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return o1.f17135else;
    }

    public static Cif newBuilder() {
        return f16780do.toBuilder();
    }

    public static Ccontinue parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Ccontinue) GeneratedMessageV3.parseDelimitedWithIOException(f16781if, inputStream);
    }

    public static Ccontinue parseFrom(ByteBuffer byteBuffer) throws n {
        return f16781if.parseFrom(byteBuffer);
    }

    public static Parser<Ccontinue> parser() {
        return f16781if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Ccontinue)) {
            return super.equals(obj);
        }
        Ccontinue ccontinue = (Ccontinue) obj;
        return getName().equals(ccontinue.getName()) && getNumber() == ccontinue.getNumber() && getOptionsList().equals(ccontinue.getOptionsList()) && this.unknownFields.equals(ccontinue.unknownFields);
    }

    @Override // com.google.protobuf.EnumValueOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.EnumValueOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.EnumValueOrBuilder
    public int getNumber() {
        return this.number_;
    }

    @Override // com.google.protobuf.EnumValueOrBuilder
    public o0 getOptions(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.EnumValueOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.EnumValueOrBuilder
    public List<o0> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.EnumValueOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.EnumValueOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Ccontinue> getParserForType() {
        return f16781if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        int i2 = this.number_;
        if (i2 != 0) {
            iComputeStringSize += Cnative.m20874abstract(2, i2);
        }
        for (int i3 = 0; i3 < this.options_.size(); i3++) {
            iComputeStringSize += Cnative.m20900synchronized(3, this.options_.get(i3));
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
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
        int iHashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getNumber();
        if (getOptionsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 3) * 53) + getOptionsList().hashCode();
        }
        int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return o1.f17137goto.m19575new(Ccontinue.class, Cif.class);
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
        return new Ccontinue();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 1, this.name_);
        }
        int i = this.number_;
        if (i != 0) {
            cnative.writeInt32(2, i);
        }
        for (int i2 = 0; i2 < this.options_.size(); i2++) {
            cnative.f0(3, this.options_.get(i2));
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ Ccontinue(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(Ccontinue ccontinue) {
        return f16780do.toBuilder().m20205throws(ccontinue);
    }

    public static Ccontinue parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16781if.parseFrom(byteBuffer, cimplements);
    }

    private Ccontinue(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Ccontinue parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Ccontinue) GeneratedMessageV3.parseDelimitedWithIOException(f16781if, inputStream, cimplements);
    }

    public static Ccontinue parseFrom(ByteString byteString) throws n {
        return f16781if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Ccontinue getDefaultInstanceForType() {
        return f16780do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16780do ? new Cif(cdo) : new Cif(cdo).m20205throws(this);
    }

    public static Ccontinue parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16781if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private Ccontinue() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.options_ = Collections.emptyList();
    }

    public static Ccontinue parseFrom(byte[] bArr) throws n {
        return f16781if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static Ccontinue parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16781if.parseFrom(bArr, cimplements);
    }

    public static Ccontinue parseFrom(InputStream inputStream) throws IOException {
        return (Ccontinue) GeneratedMessageV3.parseWithIOException(f16781if, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Ccontinue(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    try {
                        int iL = codedInputStream.l();
                        if (iL != 0) {
                            if (iL == 10) {
                                this.name_ = codedInputStream.k();
                            } else if (iL == 16) {
                                this.number_ = codedInputStream.mo18439strictfp();
                            } else if (iL != 26) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                if (!(z2 & true)) {
                                    this.options_ = new ArrayList();
                                    z2 |= true;
                                }
                                this.options_.add(codedInputStream.mo18430interface(o0.parser(), cimplements));
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
                if (z2 & true) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Ccontinue parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Ccontinue) GeneratedMessageV3.parseWithIOException(f16781if, inputStream, cimplements);
    }

    public static Ccontinue parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Ccontinue) GeneratedMessageV3.parseWithIOException(f16781if, codedInputStream);
    }

    public static Ccontinue parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (Ccontinue) GeneratedMessageV3.parseWithIOException(f16781if, codedInputStream, cimplements);
    }
}
