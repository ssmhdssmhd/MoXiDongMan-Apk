package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.o0;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class c extends GeneratedMessageV3 implements FieldOrBuilder {
    public static final int CARDINALITY_FIELD_NUMBER = 2;
    public static final int DEFAULT_VALUE_FIELD_NUMBER = 11;
    public static final int JSON_NAME_FIELD_NUMBER = 10;
    public static final int KIND_FIELD_NUMBER = 1;
    public static final int NAME_FIELD_NUMBER = 4;
    public static final int NUMBER_FIELD_NUMBER = 3;
    public static final int ONEOF_INDEX_FIELD_NUMBER = 7;
    public static final int OPTIONS_FIELD_NUMBER = 9;
    public static final int PACKED_FIELD_NUMBER = 8;
    public static final int TYPE_URL_FIELD_NUMBER = 6;

    /* renamed from: do, reason: not valid java name */
    private static final c f16656do = new c();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<c> f16657if = new Cdo();
    private static final long serialVersionUID = 0;
    private int cardinality_;
    private volatile Object defaultValue_;
    private volatile Object jsonName_;
    private int kind_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private int number_;
    private int oneofIndex_;
    private List<o0> options_;
    private boolean packed_;
    private volatile Object typeUrl_;

    /* renamed from: com.google.protobuf.c$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<c> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public c parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new c(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.c$for, reason: invalid class name */
    public enum Cfor implements ProtocolMessageEnum {
        CARDINALITY_UNKNOWN(0),
        CARDINALITY_OPTIONAL(1),
        CARDINALITY_REQUIRED(2),
        CARDINALITY_REPEATED(3),
        UNRECOGNIZED(-1);

        public static final int CARDINALITY_OPTIONAL_VALUE = 1;
        public static final int CARDINALITY_REPEATED_VALUE = 3;
        public static final int CARDINALITY_REQUIRED_VALUE = 2;
        public static final int CARDINALITY_UNKNOWN_VALUE = 0;
        private final int value;

        /* renamed from: do, reason: not valid java name */
        private static final Internal.EnumLiteMap<Cfor> f16658do = new Cdo();

        /* renamed from: if, reason: not valid java name */
        private static final Cfor[] f16660if = values();

        /* renamed from: com.google.protobuf.c$for$do, reason: invalid class name */
        public class Cdo implements Internal.EnumLiteMap<Cfor> {
            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cfor findValueByNumber(int i) {
                return Cfor.forNumber(i);
            }
        }

        Cfor(int i) {
            this.value = i;
        }

        public static Cfor forNumber(int i) {
            if (i == 0) {
                return CARDINALITY_UNKNOWN;
            }
            if (i == 1) {
                return CARDINALITY_OPTIONAL;
            }
            if (i == 2) {
                return CARDINALITY_REQUIRED;
            }
            if (i != 3) {
                return null;
            }
            return CARDINALITY_REPEATED;
        }

        public static final Descriptors.Ctry getDescriptor() {
            return c.getDescriptor().m19323const().get(1);
        }

        public static Internal.EnumLiteMap<Cfor> internalGetValueMap() {
            return f16658do;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.Ctry getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.Ccase getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().m19356const().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static Cfor valueOf(int i) {
            return forNumber(i);
        }

        public static Cfor valueOf(Descriptors.Ccase ccase) {
            if (ccase.m19264goto() == getDescriptor()) {
                if (ccase.m19262case() == -1) {
                    return UNRECOGNIZED;
                }
                return f16660if[ccase.m19262case()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* renamed from: com.google.protobuf.c$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements FieldOrBuilder {

        /* renamed from: break, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> f16661break;

        /* renamed from: case, reason: not valid java name */
        private Object f16662case;

        /* renamed from: catch, reason: not valid java name */
        private Object f16663catch;

        /* renamed from: class, reason: not valid java name */
        private Object f16664class;

        /* renamed from: do, reason: not valid java name */
        private int f16665do;

        /* renamed from: else, reason: not valid java name */
        private int f16666else;

        /* renamed from: for, reason: not valid java name */
        private int f16667for;

        /* renamed from: goto, reason: not valid java name */
        private boolean f16668goto;

        /* renamed from: if, reason: not valid java name */
        private int f16669if;

        /* renamed from: new, reason: not valid java name */
        private int f16670new;

        /* renamed from: this, reason: not valid java name */
        private List<o0> f16671this;

        /* renamed from: try, reason: not valid java name */
        private Object f16672try;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        /* renamed from: default, reason: not valid java name */
        private void m19900default() {
            if ((this.f16665do & 1) == 0) {
                this.f16671this = new ArrayList(this.f16671this);
                this.f16665do |= 1;
            }
        }

        public static final Descriptors.Cif getDescriptor() {
            return o1.f17136for;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m19901private();
            }
        }

        /* renamed from: private, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> m19901private() {
            if (this.f16661break == null) {
                this.f16661break = new v0<>(this.f16671this, (this.f16665do & 1) != 0, getParentForChildren(), isClean());
                this.f16671this = null;
            }
            return this.f16661break;
        }

        public Cif a(String str) {
            Objects.requireNonNull(str);
            this.f16663catch = str;
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            c cVar = null;
            try {
                try {
                    c cVar2 = (c) c.f16657if.parsePartialFrom(codedInputStream, cimplements);
                    if (cVar2 != null) {
                        m19908continue(cVar2);
                    }
                    return this;
                } catch (n e) {
                    c cVar3 = (c) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        cVar = cVar3;
                        if (cVar != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (cVar != null) {
                    m19908continue(cVar);
                }
                throw th;
            }
        }

        public Cif b(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16663catch = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public c buildPartial() {
            c cVar = new c(this, (Cdo) null);
            cVar.kind_ = this.f16669if;
            cVar.cardinality_ = this.f16667for;
            cVar.number_ = this.f16670new;
            cVar.name_ = this.f16672try;
            cVar.typeUrl_ = this.f16662case;
            cVar.oneofIndex_ = this.f16666else;
            cVar.packed_ = this.f16668goto;
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                if ((this.f16665do & 1) != 0) {
                    this.f16671this = Collections.unmodifiableList(this.f16671this);
                    this.f16665do &= -2;
                }
                cVar.options_ = this.f16671this;
            } else {
                cVar.options_ = v0Var.m21453case();
            }
            cVar.jsonName_ = this.f16663catch;
            cVar.defaultValue_ = this.f16664class;
            onBuilt();
            return cVar;
        }

        public Cif c(Cnew cnew) {
            Objects.requireNonNull(cnew);
            this.f16669if = cnew.getNumber();
            onChanged();
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public o0.Cif m19904case() {
            return (o0.Cif) m19901private().m21460for(o0.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16669if = 0;
            this.f16667for = 0;
            this.f16670new = 0;
            this.f16672try = "";
            this.f16662case = "";
            this.f16666else = 0;
            this.f16668goto = false;
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                this.f16671this = Collections.emptyList();
                this.f16665do &= -2;
            } else {
                v0Var.m21458else();
            }
            this.f16663catch = "";
            this.f16664class = "";
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m19906class() {
            this.f16667for = 0;
            onChanged();
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m19907const() {
            this.f16664class = c.getDefaultInstance().getDefaultValue();
            onChanged();
            return this;
        }

        /* renamed from: continue, reason: not valid java name */
        public Cif m19908continue(c cVar) {
            if (cVar == c.getDefaultInstance()) {
                return this;
            }
            if (cVar.kind_ != 0) {
                d(cVar.getKindValue());
            }
            if (cVar.cardinality_ != 0) {
                m19935transient(cVar.getCardinalityValue());
            }
            if (cVar.getNumber() != 0) {
                g(cVar.getNumber());
            }
            if (!cVar.getName().isEmpty()) {
                this.f16672try = cVar.name_;
                onChanged();
            }
            if (!cVar.getTypeUrl().isEmpty()) {
                this.f16662case = cVar.typeUrl_;
                onChanged();
            }
            if (cVar.getOneofIndex() != 0) {
                h(cVar.getOneofIndex());
            }
            if (cVar.getPacked()) {
                k(cVar.getPacked());
            }
            if (this.f16661break == null) {
                if (!cVar.options_.isEmpty()) {
                    if (this.f16671this.isEmpty()) {
                        this.f16671this = cVar.options_;
                        this.f16665do &= -2;
                    } else {
                        m19900default();
                        this.f16671this.addAll(cVar.options_);
                    }
                    onChanged();
                }
            } else if (!cVar.options_.isEmpty()) {
                if (this.f16661break.m21465public()) {
                    this.f16661break.m21461goto();
                    this.f16661break = null;
                    this.f16671this = cVar.options_;
                    this.f16665do &= -2;
                    this.f16661break = GeneratedMessageV3.alwaysUseFieldBuilders ? m19901private() : null;
                } else {
                    this.f16661break.m21457do(cVar.options_);
                }
            }
            if (!cVar.getJsonName().isEmpty()) {
                this.f16663catch = cVar.jsonName_;
                onChanged();
            }
            if (!cVar.getDefaultValue().isEmpty()) {
                this.f16664class = cVar.defaultValue_;
                onChanged();
            }
            mergeUnknownFields(cVar.unknownFields);
            onChanged();
            return this;
        }

        public Cif d(int i) {
            this.f16669if = i;
            onChanged();
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m19909do(Iterable<? extends o0> iterable) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                m19900default();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16671this);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        public Cif e(String str) {
            Objects.requireNonNull(str);
            this.f16672try = str;
            onChanged();
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public o0.Cif m19910else(int i) {
            return (o0.Cif) m19901private().m21462if(i, o0.getDefaultInstance());
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
        public c getDefaultInstanceForType() {
            return c.getDefaultInstance();
        }

        public Cif f(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16672try = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        /* renamed from: finally, reason: not valid java name */
        public o0.Cif m19913finally(int i) {
            return (o0.Cif) m19901private().m21454catch(i);
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m19914for(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m19900default();
                this.f16671this.add(i, o0Var);
                onChanged();
            } else {
                v0Var.m21464new(i, o0Var);
            }
            return this;
        }

        public Cif g(int i) {
            this.f16670new = i;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public Cfor getCardinality() {
            Cfor cforValueOf = Cfor.valueOf(this.f16667for);
            return cforValueOf == null ? Cfor.UNRECOGNIZED : cforValueOf;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public int getCardinalityValue() {
            return this.f16667for;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public String getDefaultValue() {
            Object obj = this.f16664class;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16664class = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public ByteString getDefaultValueBytes() {
            Object obj = this.f16664class;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16664class = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return o1.f17136for;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public String getJsonName() {
            Object obj = this.f16663catch;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16663catch = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public ByteString getJsonNameBytes() {
            Object obj = this.f16663catch;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16663catch = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public Cnew getKind() {
            Cnew cnewValueOf = Cnew.valueOf(this.f16669if);
            return cnewValueOf == null ? Cnew.UNRECOGNIZED : cnewValueOf;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public int getKindValue() {
            return this.f16669if;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public String getName() {
            Object obj = this.f16672try;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16672try = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f16672try;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16672try = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public int getNumber() {
            return this.f16670new;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public int getOneofIndex() {
            return this.f16666else;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public o0 getOptions(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            return v0Var == null ? this.f16671this.get(i) : (o0) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public int getOptionsCount() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            return v0Var == null ? this.f16671this.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public List<o0> getOptionsList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            return v0Var == null ? Collections.unmodifiableList(this.f16671this) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            return v0Var == null ? this.f16671this.get(i) : (OptionOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16671this);
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public boolean getPacked() {
            return this.f16668goto;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public String getTypeUrl() {
            Object obj = this.f16662case;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16662case = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.FieldOrBuilder
        public ByteString getTypeUrlBytes() {
            Object obj = this.f16662case;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16662case = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        public Cif h(int i) {
            this.f16666else = i;
            onChanged();
            return this;
        }

        public Cif i(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                m19900default();
                this.f16671this.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m19916if(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                m19900default();
                this.f16671this.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        /* renamed from: implements, reason: not valid java name */
        public Cif m19917implements(String str) {
            Objects.requireNonNull(str);
            this.f16664class = str;
            onChanged();
            return this;
        }

        /* renamed from: import, reason: not valid java name */
        public Cif m19918import() {
            this.f16670new = 0;
            onChanged();
            return this;
        }

        /* renamed from: instanceof, reason: not valid java name */
        public Cif m19919instanceof(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16664class = byteString;
            onChanged();
            return this;
        }

        /* renamed from: interface, reason: not valid java name */
        public Cif m19920interface(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                m19900default();
                this.f16671this.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return o1.f17139new.m19575new(c.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Cif j(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m19900default();
                this.f16671this.set(i, o0Var);
                onChanged();
            } else {
                v0Var.m21467switch(i, o0Var);
            }
            return this;
        }

        public Cif k(boolean z) {
            this.f16668goto = z;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: l, reason: merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        public Cif m(String str) {
            Objects.requireNonNull(str);
            this.f16662case = str;
            onChanged();
            return this;
        }

        public Cif n(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16662case = byteString;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m19922new(o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                m19900default();
                this.f16671this.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: o, reason: merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        /* renamed from: package, reason: not valid java name */
        public List<o0.Cif> m19923package() {
            return m19901private().m21455class();
        }

        /* renamed from: protected, reason: not valid java name */
        public Cif m19924protected(Cfor cfor) {
            Objects.requireNonNull(cfor);
            this.f16667for = cfor.getNumber();
            onChanged();
            return this;
        }

        /* renamed from: public, reason: not valid java name */
        public Cif m19925public() {
            this.f16666else = 0;
            onChanged();
            return this;
        }

        /* renamed from: return, reason: not valid java name */
        public Cif m19926return() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                this.f16671this = Collections.emptyList();
                this.f16665do &= -2;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        /* renamed from: static, reason: not valid java name */
        public Cif m19927static() {
            this.f16668goto = false;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: strictfp, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof c) {
                return m19908continue((c) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public Cif m19929super() {
            this.f16663catch = c.getDefaultInstance().getJsonName();
            onChanged();
            return this;
        }

        /* renamed from: switch, reason: not valid java name */
        public Cif m19930switch() {
            this.f16662case = c.getDefaultInstance().getTypeUrl();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: synchronized, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public c build() {
            c cVarBuildPartial = buildPartial();
            if (cVarBuildPartial.isInitialized()) {
                return cVarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cVarBuildPartial);
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif m19933throw() {
            this.f16669if = 0;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        /* renamed from: transient, reason: not valid java name */
        public Cif m19935transient(int i) {
            this.f16667for = i;
            onChanged();
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m19936try(o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16661break;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m19900default();
                this.f16671this.add(o0Var);
                onChanged();
            } else {
                v0Var.m21469try(o0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: volatile, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        /* renamed from: while, reason: not valid java name */
        public Cif m19938while() {
            this.f16672try = c.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        private Cif() {
            this.f16669if = 0;
            this.f16667for = 0;
            this.f16672try = "";
            this.f16662case = "";
            this.f16671this = Collections.emptyList();
            this.f16663catch = "";
            this.f16664class = "";
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f16669if = 0;
            this.f16667for = 0;
            this.f16672try = "";
            this.f16662case = "";
            this.f16671this = Collections.emptyList();
            this.f16663catch = "";
            this.f16664class = "";
            maybeForceBuilderInitialization();
        }
    }

    /* renamed from: com.google.protobuf.c$new, reason: invalid class name */
    public enum Cnew implements ProtocolMessageEnum {
        TYPE_UNKNOWN(0),
        TYPE_DOUBLE(1),
        TYPE_FLOAT(2),
        TYPE_INT64(3),
        TYPE_UINT64(4),
        TYPE_INT32(5),
        TYPE_FIXED64(6),
        TYPE_FIXED32(7),
        TYPE_BOOL(8),
        TYPE_STRING(9),
        TYPE_GROUP(10),
        TYPE_MESSAGE(11),
        TYPE_BYTES(12),
        TYPE_UINT32(13),
        TYPE_ENUM(14),
        TYPE_SFIXED32(15),
        TYPE_SFIXED64(16),
        TYPE_SINT32(17),
        TYPE_SINT64(18),
        UNRECOGNIZED(-1);

        public static final int TYPE_BOOL_VALUE = 8;
        public static final int TYPE_BYTES_VALUE = 12;
        public static final int TYPE_DOUBLE_VALUE = 1;
        public static final int TYPE_ENUM_VALUE = 14;
        public static final int TYPE_FIXED32_VALUE = 7;
        public static final int TYPE_FIXED64_VALUE = 6;
        public static final int TYPE_FLOAT_VALUE = 2;
        public static final int TYPE_GROUP_VALUE = 10;
        public static final int TYPE_INT32_VALUE = 5;
        public static final int TYPE_INT64_VALUE = 3;
        public static final int TYPE_MESSAGE_VALUE = 11;
        public static final int TYPE_SFIXED32_VALUE = 15;
        public static final int TYPE_SFIXED64_VALUE = 16;
        public static final int TYPE_SINT32_VALUE = 17;
        public static final int TYPE_SINT64_VALUE = 18;
        public static final int TYPE_STRING_VALUE = 9;
        public static final int TYPE_UINT32_VALUE = 13;
        public static final int TYPE_UINT64_VALUE = 4;
        public static final int TYPE_UNKNOWN_VALUE = 0;
        private final int value;

        /* renamed from: do, reason: not valid java name */
        private static final Internal.EnumLiteMap<Cnew> f16673do = new Cdo();

        /* renamed from: if, reason: not valid java name */
        private static final Cnew[] f16675if = values();

        /* renamed from: com.google.protobuf.c$new$do, reason: invalid class name */
        public class Cdo implements Internal.EnumLiteMap<Cnew> {
            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cnew findValueByNumber(int i) {
                return Cnew.forNumber(i);
            }
        }

        Cnew(int i) {
            this.value = i;
        }

        public static Cnew forNumber(int i) {
            switch (i) {
                case 0:
                    return TYPE_UNKNOWN;
                case 1:
                    return TYPE_DOUBLE;
                case 2:
                    return TYPE_FLOAT;
                case 3:
                    return TYPE_INT64;
                case 4:
                    return TYPE_UINT64;
                case 5:
                    return TYPE_INT32;
                case 6:
                    return TYPE_FIXED64;
                case 7:
                    return TYPE_FIXED32;
                case 8:
                    return TYPE_BOOL;
                case 9:
                    return TYPE_STRING;
                case 10:
                    return TYPE_GROUP;
                case 11:
                    return TYPE_MESSAGE;
                case 12:
                    return TYPE_BYTES;
                case 13:
                    return TYPE_UINT32;
                case 14:
                    return TYPE_ENUM;
                case 15:
                    return TYPE_SFIXED32;
                case 16:
                    return TYPE_SFIXED64;
                case 17:
                    return TYPE_SINT32;
                case 18:
                    return TYPE_SINT64;
                default:
                    return null;
            }
        }

        public static final Descriptors.Ctry getDescriptor() {
            return c.getDescriptor().m19323const().get(0);
        }

        public static Internal.EnumLiteMap<Cnew> internalGetValueMap() {
            return f16673do;
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.Ctry getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        @Override // com.google.protobuf.ProtocolMessageEnum
        public final Descriptors.Ccase getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().m19356const().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static Cnew valueOf(int i) {
            return forNumber(i);
        }

        public static Cnew valueOf(Descriptors.Ccase ccase) {
            if (ccase.m19264goto() == getDescriptor()) {
                if (ccase.m19262case() == -1) {
                    return UNRECOGNIZED;
                }
                return f16675if[ccase.m19262case()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    public /* synthetic */ c(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static c getDefaultInstance() {
        return f16656do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return o1.f17136for;
    }

    public static Cif newBuilder() {
        return f16656do.toBuilder();
    }

    public static c parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (c) GeneratedMessageV3.parseDelimitedWithIOException(f16657if, inputStream);
    }

    public static c parseFrom(ByteBuffer byteBuffer) throws n {
        return f16657if.parseFrom(byteBuffer);
    }

    public static Parser<c> parser() {
        return f16657if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return super.equals(obj);
        }
        c cVar = (c) obj;
        return this.kind_ == cVar.kind_ && this.cardinality_ == cVar.cardinality_ && getNumber() == cVar.getNumber() && getName().equals(cVar.getName()) && getTypeUrl().equals(cVar.getTypeUrl()) && getOneofIndex() == cVar.getOneofIndex() && getPacked() == cVar.getPacked() && getOptionsList().equals(cVar.getOptionsList()) && getJsonName().equals(cVar.getJsonName()) && getDefaultValue().equals(cVar.getDefaultValue()) && this.unknownFields.equals(cVar.unknownFields);
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public Cfor getCardinality() {
        Cfor cforValueOf = Cfor.valueOf(this.cardinality_);
        return cforValueOf == null ? Cfor.UNRECOGNIZED : cforValueOf;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public int getCardinalityValue() {
        return this.cardinality_;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public String getDefaultValue() {
        Object obj = this.defaultValue_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.defaultValue_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public ByteString getDefaultValueBytes() {
        Object obj = this.defaultValue_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.defaultValue_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public String getJsonName() {
        Object obj = this.jsonName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.jsonName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public ByteString getJsonNameBytes() {
        Object obj = this.jsonName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.jsonName_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public Cnew getKind() {
        Cnew cnewValueOf = Cnew.valueOf(this.kind_);
        return cnewValueOf == null ? Cnew.UNRECOGNIZED : cnewValueOf;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public int getKindValue() {
        return this.kind_;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public int getNumber() {
        return this.number_;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public int getOneofIndex() {
        return this.oneofIndex_;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public o0 getOptions(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public List<o0> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public boolean getPacked() {
        return this.packed_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<c> getParserForType() {
        return f16657if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iM20887import = this.kind_ != Cnew.TYPE_UNKNOWN.getNumber() ? Cnative.m20887import(1, this.kind_) + 0 : 0;
        if (this.cardinality_ != Cfor.CARDINALITY_UNKNOWN.getNumber()) {
            iM20887import += Cnative.m20887import(2, this.cardinality_);
        }
        int i2 = this.number_;
        if (i2 != 0) {
            iM20887import += Cnative.m20874abstract(3, i2);
        }
        if (!getNameBytes().isEmpty()) {
            iM20887import += GeneratedMessageV3.computeStringSize(4, this.name_);
        }
        if (!getTypeUrlBytes().isEmpty()) {
            iM20887import += GeneratedMessageV3.computeStringSize(6, this.typeUrl_);
        }
        int i3 = this.oneofIndex_;
        if (i3 != 0) {
            iM20887import += Cnative.m20874abstract(7, i3);
        }
        boolean z = this.packed_;
        if (z) {
            iM20887import += Cnative.m20885goto(8, z);
        }
        for (int i4 = 0; i4 < this.options_.size(); i4++) {
            iM20887import += Cnative.m20900synchronized(9, this.options_.get(i4));
        }
        if (!getJsonNameBytes().isEmpty()) {
            iM20887import += GeneratedMessageV3.computeStringSize(10, this.jsonName_);
        }
        if (!getDefaultValueBytes().isEmpty()) {
            iM20887import += GeneratedMessageV3.computeStringSize(11, this.defaultValue_);
        }
        int serializedSize = iM20887import + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.FieldOrBuilder
    public String getTypeUrl() {
        Object obj = this.typeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.typeUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.FieldOrBuilder
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

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.kind_) * 37) + 2) * 53) + this.cardinality_) * 37) + 3) * 53) + getNumber()) * 37) + 4) * 53) + getName().hashCode()) * 37) + 6) * 53) + getTypeUrl().hashCode()) * 37) + 7) * 53) + getOneofIndex()) * 37) + 8) * 53) + Internal.m19610catch(getPacked());
        if (getOptionsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 9) * 53) + getOptionsList().hashCode();
        }
        int iHashCode2 = (((((((((iHashCode * 37) + 10) * 53) + getJsonName().hashCode()) * 37) + 11) * 53) + getDefaultValue().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return o1.f17139new.m19575new(c.class, Cif.class);
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
        return new c();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (this.kind_ != Cnew.TYPE_UNKNOWN.getNumber()) {
            cnative.writeEnum(1, this.kind_);
        }
        if (this.cardinality_ != Cfor.CARDINALITY_UNKNOWN.getNumber()) {
            cnative.writeEnum(2, this.cardinality_);
        }
        int i = this.number_;
        if (i != 0) {
            cnative.writeInt32(3, i);
        }
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 4, this.name_);
        }
        if (!getTypeUrlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 6, this.typeUrl_);
        }
        int i2 = this.oneofIndex_;
        if (i2 != 0) {
            cnative.writeInt32(7, i2);
        }
        boolean z = this.packed_;
        if (z) {
            cnative.writeBool(8, z);
        }
        for (int i3 = 0; i3 < this.options_.size(); i3++) {
            cnative.f0(9, this.options_.get(i3));
        }
        if (!getJsonNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 10, this.jsonName_);
        }
        if (!getDefaultValueBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 11, this.defaultValue_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ c(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(c cVar) {
        return f16656do.toBuilder().m19908continue(cVar);
    }

    public static c parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16657if.parseFrom(byteBuffer, cimplements);
    }

    private c(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static c parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (c) GeneratedMessageV3.parseDelimitedWithIOException(f16657if, inputStream, cimplements);
    }

    public static c parseFrom(ByteString byteString) throws n {
        return f16657if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public c getDefaultInstanceForType() {
        return f16656do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16656do ? new Cif(cdo) : new Cif(cdo).m19908continue(this);
    }

    public static c parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16657if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private c() {
        this.memoizedIsInitialized = (byte) -1;
        this.kind_ = 0;
        this.cardinality_ = 0;
        this.name_ = "";
        this.typeUrl_ = "";
        this.options_ = Collections.emptyList();
        this.jsonName_ = "";
        this.defaultValue_ = "";
    }

    public static c parseFrom(byte[] bArr) throws n {
        return f16657if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static c parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16657if.parseFrom(bArr, cimplements);
    }

    public static c parseFrom(InputStream inputStream) throws IOException {
        return (c) GeneratedMessageV3.parseWithIOException(f16657if, inputStream);
    }

    public static c parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (c) GeneratedMessageV3.parseWithIOException(f16657if, inputStream, cimplements);
    }

    public static c parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (c) GeneratedMessageV3.parseWithIOException(f16657if, codedInputStream);
    }

    public static c parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (c) GeneratedMessageV3.parseWithIOException(f16657if, codedInputStream, cimplements);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private c(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    switch (iL) {
                        case 0:
                            z = true;
                        case 8:
                            this.kind_ = codedInputStream.mo18425extends();
                        case 16:
                            this.cardinality_ = codedInputStream.mo18425extends();
                        case 24:
                            this.number_ = codedInputStream.mo18439strictfp();
                        case 34:
                            this.name_ = codedInputStream.k();
                        case 50:
                            this.typeUrl_ = codedInputStream.k();
                        case 56:
                            this.oneofIndex_ = codedInputStream.mo18439strictfp();
                        case 64:
                            this.packed_ = codedInputStream.mo18437return();
                        case 74:
                            if (!(z2 & true)) {
                                this.options_ = new ArrayList();
                                z2 |= true;
                            }
                            this.options_.add(codedInputStream.mo18430interface(o0.parser(), cimplements));
                        case 82:
                            this.jsonName_ = codedInputStream.k();
                        case 90:
                            this.defaultValue_ = codedInputStream.k();
                        default:
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                z = true;
                            }
                    }
                } catch (n e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new n(e2).setUnfinishedMessage(this);
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
}
