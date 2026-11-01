package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.protobuf.finally, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfinally extends AbstractMessage {

    /* renamed from: do, reason: not valid java name */
    private final Descriptors.Cif f16908do;

    /* renamed from: for, reason: not valid java name */
    private final Descriptors.Celse[] f16909for;

    /* renamed from: if, reason: not valid java name */
    private final FieldSet<Descriptors.Celse> f16910if;

    /* renamed from: new, reason: not valid java name */
    private final t1 f16911new;

    /* renamed from: try, reason: not valid java name */
    private int f16912try = -1;

    /* renamed from: com.google.protobuf.finally$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Cfinally> {
        public Cdo() {
        }

        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfinally parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            Cif cifM20444goto = Cfinally.m20444goto(Cfinally.this.f16908do);
            try {
                cifM20444goto.mergeFrom(codedInputStream, cimplements);
                return cifM20444goto.buildPartial();
            } catch (n e) {
                throw e.setUnfinishedMessage(cifM20444goto.buildPartial());
            } catch (IOException e2) {
                throw new n(e2).setUnfinishedMessage(cifM20444goto.buildPartial());
            }
        }
    }

    /* renamed from: com.google.protobuf.finally$if, reason: invalid class name */
    public static final class Cif extends AbstractMessage.Cdo<Cif> {

        /* renamed from: do, reason: not valid java name */
        private final Descriptors.Cif f16914do;

        /* renamed from: for, reason: not valid java name */
        private final Descriptors.Celse[] f16915for;

        /* renamed from: if, reason: not valid java name */
        private FieldSet<Descriptors.Celse> f16916if;

        /* renamed from: new, reason: not valid java name */
        private t1 f16917new;

        public /* synthetic */ Cif(Descriptors.Cif cif, Cdo cdo) {
            this(cif);
        }

        /* renamed from: break, reason: not valid java name */
        private void m20459break(Descriptors.Celse celse, Object obj) {
            if (!celse.isRepeated()) {
                m20461class(celse, obj);
                return;
            }
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                m20461class(celse, it.next());
            }
        }

        /* renamed from: catch, reason: not valid java name */
        private void m20460catch() {
            if (this.f16916if.m19382abstract()) {
                this.f16916if = this.f16916if.clone();
            }
        }

        /* renamed from: class, reason: not valid java name */
        private void m20461class(Descriptors.Celse celse, Object obj) {
            Internal.m19623new(obj);
            if (!(obj instanceof Descriptors.Ccase)) {
                throw new IllegalArgumentException("DynamicMessage should use EnumValueDescriptor to set Enum Value.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: new, reason: not valid java name */
        public Cfinally m20463new() throws n {
            if (isInitialized()) {
                return buildPartial();
            }
            Descriptors.Cif cif = this.f16914do;
            FieldSet<Descriptors.Celse> fieldSet = this.f16916if;
            Descriptors.Celse[] celseArr = this.f16915for;
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) new Cfinally(cif, fieldSet, (Descriptors.Celse[]) Arrays.copyOf(celseArr, celseArr.length), this.f16917new)).asInvalidProtocolBufferException();
        }

        /* renamed from: return, reason: not valid java name */
        private void m20464return(Descriptors.Celse celse) {
            if (celse.m19282class() != this.f16914do) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        /* renamed from: static, reason: not valid java name */
        private void m20465static(Descriptors.Cbreak cbreak) {
            if (cbreak.m19251break() != this.f16914do) {
                throw new IllegalArgumentException("OneofDescriptor does not match message type.");
            }
        }

        /* renamed from: while, reason: not valid java name */
        private void m20466while() {
            for (Descriptors.Celse celse : this.f16914do.m19332super()) {
                if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                    this.f16916if.b(celse, Cfinally.m20453try(celse.m19291native()));
                } else {
                    this.f16916if.b(celse, celse.m19283const());
                }
            }
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            if (this.f16916if.m19382abstract()) {
                this.f16916if = FieldSet.m19377synchronized();
            } else {
                this.f16916if.m19397this();
            }
            if (this.f16914do.m19328native().getMapEntry()) {
                m20466while();
            }
            this.f16917new = t1.m21189for();
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfinally getDefaultInstanceForType() {
            return Cfinally.m20453try(this.f16914do);
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            m20464return(celse);
            m20460catch();
            Descriptors.Cbreak cbreakM19281catch = celse.m19281catch();
            if (cbreakM19281catch != null) {
                int iM19255final = cbreakM19281catch.m19255final();
                Descriptors.Celse[] celseArr = this.f16915for;
                if (celseArr[iM19255final] == celse) {
                    celseArr[iM19255final] = null;
                }
            }
            this.f16916if.m19383break(celse);
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (!(message instanceof Cfinally)) {
                return (Cif) super.mergeFrom(message);
            }
            Cfinally cfinally = (Cfinally) message;
            if (cfinally.f16908do != this.f16914do) {
                throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
            }
            m20460catch();
            this.f16916if.m19399transient(cfinally.f16910if);
            mergeUnknownFields(cfinally.f16911new);
            int i = 0;
            while (true) {
                Descriptors.Celse[] celseArr = this.f16915for;
                if (i >= celseArr.length) {
                    return this;
                }
                if (celseArr[i] == null) {
                    celseArr[i] = cfinally.f16909for[i];
                } else if (cfinally.f16909for[i] != null && this.f16915for[i] != cfinally.f16909for[i]) {
                    this.f16916if.m19383break(this.f16915for[i]);
                    this.f16915for[i] = cfinally.f16909for[i];
                }
                i++;
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfinally build() {
            if (isInitialized()) {
                return buildPartial();
            }
            Descriptors.Cif cif = this.f16914do;
            FieldSet<Descriptors.Celse> fieldSet = this.f16916if;
            Descriptors.Celse[] celseArr = this.f16915for;
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) new Cfinally(cif, fieldSet, (Descriptors.Celse[]) Arrays.copyOf(celseArr, celseArr.length), this.f16917new));
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.Celse, Object> getAllFields() {
            return this.f16916if.m19394public();
        }

        @Override // com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return this.f16914do;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getField(Descriptors.Celse celse) {
            m20464return(celse);
            Object objM19395return = this.f16916if.m19395return(celse);
            return objM19395return == null ? celse.isRepeated() ? Collections.emptyList() : celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? Cfinally.m20453try(celse.m19291native()) : celse.m19283const() : objM19395return;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.Celse celse) {
            throw new UnsupportedOperationException("getFieldBuilder() called on a dynamic message type.");
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageOrBuilder
        public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
            m20465static(cbreak);
            return this.f16915for[cbreak.m19255final()];
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.Celse celse, int i) {
            m20464return(celse);
            return this.f16916if.m19398throws(celse, i);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.Celse celse, int i) {
            throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a dynamic message type.");
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.Celse celse) {
            m20464return(celse);
            return this.f16916if.m19386default(celse);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public t1 getUnknownFields() {
            return this.f16917new;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            m20465static(cbreak);
            Descriptors.Celse celse = this.f16915for[cbreak.m19255final()];
            if (celse != null) {
                clearField(celse);
            }
            return this;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.Celse celse) {
            m20464return(celse);
            return this.f16916if.m19391package(celse);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageOrBuilder
        public boolean hasOneof(Descriptors.Cbreak cbreak) {
            m20465static(cbreak);
            return this.f16915for[cbreak.m19255final()] != null;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            m20464return(celse);
            m20460catch();
            this.f16916if.m19388goto(celse, obj);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            m20464return(celse);
            m20460catch();
            if (celse.m19296static() == Descriptors.Celse.Cif.ENUM) {
                m20459break(celse, obj);
            }
            Descriptors.Cbreak cbreakM19281catch = celse.m19281catch();
            if (cbreakM19281catch != null) {
                int iM19255final = cbreakM19281catch.m19255final();
                Descriptors.Celse celse2 = this.f16915for[iM19255final];
                if (celse2 != null && celse2 != celse) {
                    this.f16916if.m19383break(celse2);
                }
                this.f16915for[iM19255final] = celse;
            } else if (celse.mo19232do().m19241static() == Descriptors.FileDescriptor.Cdo.PROTO3 && !celse.isRepeated() && celse.m19302while() != Descriptors.Celse.Cdo.MESSAGE && obj.equals(celse.m19283const())) {
                this.f16916if.m19383break(celse);
                return this;
            }
            this.f16916if.b(celse, obj);
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return Cfinally.m20441else(this.f16914do, this.f16916if);
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            m20464return(celse);
            m20460catch();
            this.f16916if.c(celse, i, obj);
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif setUnknownFields(t1 t1Var) {
            this.f16917new = t1Var;
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeUnknownFields(t1 t1Var) {
            this.f16917new = t1.m21184break(this.f16917new).m21260public(t1Var).build();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            Cif cif = new Cif(this.f16914do);
            cif.f16916if.m19399transient(this.f16916if);
            cif.mergeUnknownFields(this.f16917new);
            Descriptors.Celse[] celseArr = this.f16915for;
            System.arraycopy(celseArr, 0, cif.f16915for, 0, celseArr.length);
            return cif;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif newBuilderForField(Descriptors.Celse celse) {
            m20464return(celse);
            if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                return new Cif(celse.m19291native());
            }
            throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfinally buildPartial() {
            this.f16916if.m19393protected();
            Descriptors.Cif cif = this.f16914do;
            FieldSet<Descriptors.Celse> fieldSet = this.f16916if;
            Descriptors.Celse[] celseArr = this.f16915for;
            return new Cfinally(cif, fieldSet, (Descriptors.Celse[]) Arrays.copyOf(celseArr, celseArr.length), this.f16917new);
        }

        private Cif(Descriptors.Cif cif) {
            this.f16914do = cif;
            this.f16916if = FieldSet.m19377synchronized();
            this.f16917new = t1.m21189for();
            this.f16915for = new Descriptors.Celse[cif.mo19238new().getOneofDeclCount()];
            if (cif.m19328native().getMapEntry()) {
                m20466while();
            }
        }
    }

    public Cfinally(Descriptors.Cif cif, FieldSet<Descriptors.Celse> fieldSet, Descriptors.Celse[] celseArr, t1 t1Var) {
        this.f16908do = cif;
        this.f16910if = fieldSet;
        this.f16909for = celseArr;
        this.f16911new = t1Var;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cfinally m20437catch(Descriptors.Cif cif, ByteString byteString) throws n {
        return m20444goto(cif).mergeFrom(byteString).m20463new();
    }

    /* renamed from: class, reason: not valid java name */
    public static Cfinally m20438class(Descriptors.Cif cif, ByteString byteString, Cprotected cprotected) throws n {
        return m20444goto(cif).mergeFrom(byteString, (Cimplements) cprotected).m20463new();
    }

    /* renamed from: const, reason: not valid java name */
    public static Cfinally m20439const(Descriptors.Cif cif, CodedInputStream codedInputStream) throws IOException {
        return m20444goto(cif).mergeFrom(codedInputStream).m20463new();
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m20441else(Descriptors.Cif cif, FieldSet<Descriptors.Celse> fieldSet) {
        for (Descriptors.Celse celse : cif.m19332super()) {
            if (celse.m19280abstract() && !fieldSet.m19391package(celse)) {
                return false;
            }
        }
        return fieldSet.m19385continue();
    }

    /* renamed from: final, reason: not valid java name */
    public static Cfinally m20442final(Descriptors.Cif cif, CodedInputStream codedInputStream, Cprotected cprotected) throws IOException {
        return m20444goto(cif).mergeFrom(codedInputStream, (Cimplements) cprotected).m20463new();
    }

    /* renamed from: goto, reason: not valid java name */
    public static Cif m20444goto(Descriptors.Cif cif) {
        return new Cif(cif, null);
    }

    /* renamed from: import, reason: not valid java name */
    public static Cfinally m20446import(Descriptors.Cif cif, byte[] bArr, Cprotected cprotected) throws n {
        return m20444goto(cif).mergeFrom(bArr, (Cimplements) cprotected).m20463new();
    }

    /* renamed from: public, reason: not valid java name */
    private void m20448public(Descriptors.Celse celse) {
        if (celse.m19282class() != this.f16908do) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m20449return(Descriptors.Cbreak cbreak) {
        if (cbreak.m19251break() != this.f16908do) {
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static Cfinally m20450super(Descriptors.Cif cif, InputStream inputStream) throws IOException {
        return m20444goto(cif).mergeFrom(inputStream).m20463new();
    }

    /* renamed from: this, reason: not valid java name */
    public static Cif m20451this(Message message) {
        return new Cif(message.getDescriptorForType(), null).mergeFrom(message);
    }

    /* renamed from: throw, reason: not valid java name */
    public static Cfinally m20452throw(Descriptors.Cif cif, InputStream inputStream, Cprotected cprotected) throws IOException {
        return m20444goto(cif).mergeFrom(inputStream, (Cimplements) cprotected).m20463new();
    }

    /* renamed from: try, reason: not valid java name */
    public static Cfinally m20453try(Descriptors.Cif cif) {
        return new Cfinally(cif, FieldSet.m19372native(), new Descriptors.Celse[cif.mo19238new().getOneofDeclCount()], t1.m21189for());
    }

    /* renamed from: while, reason: not valid java name */
    public static Cfinally m20454while(Descriptors.Cif cif, byte[] bArr) throws n {
        return m20444goto(cif).mergeFrom(bArr).m20463new();
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif newBuilderForType() {
        return new Cif(this.f16908do, null);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cfinally getDefaultInstanceForType() {
        return m20453try(this.f16908do);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Map<Descriptors.Celse, Object> getAllFields() {
        return this.f16910if.m19394public();
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Descriptors.Cif getDescriptorForType() {
        return this.f16908do;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getField(Descriptors.Celse celse) {
        m20448public(celse);
        Object objM19395return = this.f16910if.m19395return(celse);
        return objM19395return == null ? celse.isRepeated() ? Collections.emptyList() : celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? m20453try(celse.m19291native()) : celse.m19283const() : objM19395return;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
        m20449return(cbreak);
        return this.f16909for[cbreak.m19255final()];
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Cfinally> getParserForType() {
        return new Cdo();
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.Celse celse, int i) {
        m20448public(celse);
        return this.f16910if.m19398throws(celse, i);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.Celse celse) {
        m20448public(celse);
        return this.f16910if.m19386default(celse);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int iM19387extends;
        int serializedSize;
        int i = this.f16912try;
        if (i != -1) {
            return i;
        }
        if (this.f16908do.m19328native().getMessageSetWireFormat()) {
            iM19387extends = this.f16910if.m19396static();
            serializedSize = this.f16911new.m21194else();
        } else {
            iM19387extends = this.f16910if.m19387extends();
            serializedSize = this.f16911new.getSerializedSize();
        }
        int i2 = iM19387extends + serializedSize;
        this.f16912try = i2;
        return i2;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public t1 getUnknownFields() {
        return this.f16911new;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.Celse celse) {
        m20448public(celse);
        return this.f16910if.m19391package(celse);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public boolean hasOneof(Descriptors.Cbreak cbreak) {
        m20449return(cbreak);
        return this.f16909for[cbreak.m19255final()] != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        return m20441else(this.f16908do, this.f16910if);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif toBuilder() {
        return newBuilderForType().mergeFrom(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (this.f16908do.m19328native().getMessageSetWireFormat()) {
            this.f16910if.h(cnative);
            this.f16911new.m21202while(cnative);
        } else {
            this.f16910if.j(cnative);
            this.f16911new.writeTo(cnative);
        }
    }
}
