package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Cfinally;
import com.google.protobuf.Descriptors;
import com.google.protobuf.FieldSet;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.Message;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.c2;
import com.google.protobuf.q;
import com.google.protobuf.t1;
import freemarker.ext.servlet.FreemarkerServlet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public abstract class GeneratedMessageV3 extends AbstractMessage implements Serializable {
    public static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1;
    public t1 unknownFields;

    public interface BuilderParent extends AbstractMessage.BuilderParent {
    }

    public interface ExtendableMessageOrBuilder<MessageType extends Cnew> extends MessageOrBuilder {
        @Override // com.google.protobuf.MessageOrBuilder
        Message getDefaultInstanceForType();

        <Type> Type getExtension(GeneratedMessage.Cbreak<MessageType, Type> cbreak);

        <Type> Type getExtension(GeneratedMessage.Cbreak<MessageType, List<Type>> cbreak, int i);

        <Type> Type getExtension(Cinterface<MessageType, Type> cinterface);

        <Type> Type getExtension(Cinterface<MessageType, List<Type>> cinterface, int i);

        <Type> Type getExtension(Cvolatile<MessageType, Type> cvolatile);

        <Type> Type getExtension(Cvolatile<MessageType, List<Type>> cvolatile, int i);

        <Type> int getExtensionCount(GeneratedMessage.Cbreak<MessageType, List<Type>> cbreak);

        <Type> int getExtensionCount(Cinterface<MessageType, List<Type>> cinterface);

        <Type> int getExtensionCount(Cvolatile<MessageType, List<Type>> cvolatile);

        <Type> boolean hasExtension(GeneratedMessage.Cbreak<MessageType, Type> cbreak);

        <Type> boolean hasExtension(Cinterface<MessageType, Type> cinterface);

        <Type> boolean hasExtension(Cvolatile<MessageType, Type> cvolatile);
    }

    public interface ExtensionDescriptorRetriever {
        Descriptors.Celse getDescriptor();
    }

    /* renamed from: com.google.protobuf.GeneratedMessageV3$do, reason: invalid class name */
    public class Cdo implements BuilderParent {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AbstractMessage.BuilderParent f16545do;

        public Cdo(GeneratedMessageV3 generatedMessageV3, AbstractMessage.BuilderParent builderParent) {
            this.f16545do = builderParent;
        }

        @Override // com.google.protobuf.AbstractMessage.BuilderParent
        public void markDirty() {
            this.f16545do.markDirty();
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageV3$for, reason: invalid class name */
    public static abstract class Cfor<MessageType extends Cnew, BuilderType extends Cfor<MessageType, BuilderType>> extends Cif<BuilderType> implements ExtendableMessageOrBuilder<MessageType> {

        /* renamed from: do, reason: not valid java name */
        private FieldSet.Cif<Descriptors.Celse> f16546do;

        public Cfor() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: case, reason: not valid java name */
        public FieldSet<Descriptors.Celse> m19589case() {
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            return cif == null ? FieldSet.m19372native() : cif.m19418if();
        }

        /* renamed from: class, reason: not valid java name */
        private void m19590class() {
            if (this.f16546do == null) {
                this.f16546do = FieldSet.m19371instanceof();
            }
        }

        /* renamed from: default, reason: not valid java name */
        private void m19591default(Cvolatile<MessageType, ?> cvolatile) {
            if (cvolatile.mo19451goto().m19282class() == getDescriptorForType()) {
                return;
            }
            String strMo19235if = cvolatile.mo19451goto().m19282class().mo19235if();
            String strMo19235if2 = getDescriptorForType().mo19235if();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 62 + String.valueOf(strMo19235if2).length());
            sb.append("Extension is for type \"");
            sb.append(strMo19235if);
            sb.append("\" which does not match message type \"");
            sb.append(strMo19235if2);
            sb.append("\".");
            throw new IllegalArgumentException(sb.toString());
        }

        /* renamed from: throws, reason: not valid java name */
        private void m19593throws(Descriptors.Celse celse) {
            if (celse.m19282class() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        /* renamed from: break */
        public <Type> BuilderType mo18826break(GeneratedMessage.Cbreak<MessageType, ?> cbreak) {
            return (BuilderType) m19602this(cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: merged with bridge method [inline-methods] */
        public BuilderType clearField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return (BuilderType) super.clearField(celse);
            }
            m19593throws(celse);
            m19590class();
            this.f16546do.m19416for(celse);
            onChanged();
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public boolean m19594const() {
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            if (cif == null) {
                return true;
            }
            return cif.m19412const();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: else, reason: merged with bridge method [inline-methods] */
        public BuilderType clear() {
            this.f16546do = null;
            return (BuilderType) super.clear();
        }

        /* renamed from: final, reason: not valid java name */
        public void m19595final(FieldSet<Descriptors.Celse> fieldSet) {
            this.f16546do = FieldSet.Cif.m19406try(fieldSet);
        }

        /* renamed from: for, reason: not valid java name */
        public final <Type> BuilderType m19596for(Cinterface<MessageType, List<Type>> cinterface, Type type) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19591default(cvolatileCheckNotLite);
            m19590class();
            this.f16546do.m19413do(cvolatileCheckNotLite.mo19451goto(), cvolatileCheckNotLite.mo19446const(type));
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.Celse, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable();
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            if (cif != null) {
                allFieldsMutable.putAll(cif.m19409case());
            }
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, Type> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19591default(cvolatileCheckNotLite);
            Descriptors.Celse celseMo19451goto = cvolatileCheckNotLite.mo19451goto();
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            Object objM19414else = cif == null ? null : cif.m19414else(celseMo19451goto);
            return objM19414else == null ? celseMo19451goto.isRepeated() ? (Type) Collections.emptyList() : celseMo19451goto.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? (Type) cvolatileCheckNotLite.mo19450for() : (Type) cvolatileCheckNotLite.mo19448else(celseMo19451goto.m19283const()) : (Type) cvolatileCheckNotLite.mo19448else(objM19414else);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cinterface<MessageType, List<Type>> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19591default(cvolatileCheckNotLite);
            Descriptors.Celse celseMo19451goto = cvolatileCheckNotLite.mo19451goto();
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            if (cif == null) {
                return 0;
            }
            return cif.m19410catch(celseMo19451goto);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageOrBuilder
        public Object getField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.getField(celse);
            }
            m19593throws(celse);
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            Object objM19414else = cif == null ? null : cif.m19414else(celse);
            return objM19414else == null ? celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? Cfinally.m20453try(celse.m19291native()) : celse.m19283const() : objM19414else;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.getFieldBuilder(celse);
            }
            m19593throws(celse);
            if (celse.m19302while() != Descriptors.Celse.Cdo.MESSAGE) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
            m19590class();
            Object objM19417goto = this.f16546do.m19417goto(celse);
            if (objM19417goto == null) {
                Cfinally.Cif cifM20444goto = Cfinally.m20444goto(celse.m19291native());
                this.f16546do.m19419public(celse, cifM20444goto);
                onChanged();
                return cifM20444goto;
            }
            if (objM19417goto instanceof Message.Builder) {
                return (Message.Builder) objM19417goto;
            }
            if (!(objM19417goto instanceof Message)) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Message.Builder builder = ((Message) objM19417goto).toBuilder();
            this.f16546do.m19419public(celse, builder);
            onChanged();
            return builder;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.Celse celse, int i) {
            if (!celse.m19286extends()) {
                return super.getRepeatedField(celse, i);
            }
            m19593throws(celse);
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            if (cif != null) {
                return cif.m19421this(celse, i);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.Celse celse, int i) {
            if (!celse.m19286extends()) {
                return super.getRepeatedFieldBuilder(celse, i);
            }
            m19593throws(celse);
            m19590class();
            if (celse.m19302while() != Descriptors.Celse.Cdo.MESSAGE) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Object objM19408break = this.f16546do.m19408break(celse, i);
            if (objM19408break instanceof Message.Builder) {
                return (Message.Builder) objM19408break;
            }
            if (!(objM19408break instanceof Message)) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            Message.Builder builder = ((Message) objM19408break).toBuilder();
            this.f16546do.m19420return(celse, i, builder);
            onChanged();
            return builder;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.getRepeatedFieldCount(celse);
            }
            m19593throws(celse);
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            if (cif == null) {
                return 0;
            }
            return cif.m19410catch(celse);
        }

        /* renamed from: goto, reason: not valid java name */
        public final <Type> BuilderType m19597goto(Cvolatile<MessageType, ?> cvolatile) {
            return (BuilderType) m19602this(cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cinterface<MessageType, Type> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19591default(cvolatileCheckNotLite);
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            if (cif == null) {
                return false;
            }
            return cif.m19411class(cvolatileCheckNotLite.mo19451goto());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.hasField(celse);
            }
            m19593throws(celse);
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            if (cif == null) {
                return false;
            }
            return cif.m19411class(celse);
        }

        /* renamed from: if, reason: not valid java name */
        public final <Type> BuilderType m19598if(Cvolatile<MessageType, List<Type>> cvolatile, Type type) {
            return (BuilderType) m19596for(cvolatile, type);
        }

        /* renamed from: import, reason: not valid java name */
        public final <Type> BuilderType m19599import(Cinterface<MessageType, List<Type>> cinterface, int i, Type type) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19591default(cvolatileCheckNotLite);
            m19590class();
            this.f16546do.m19420return(cvolatileCheckNotLite.mo19451goto(), i, cvolatileCheckNotLite.mo19446const(type));
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return super.isInitialized() && m19594const();
        }

        /* renamed from: native, reason: not valid java name */
        public final <Type> BuilderType m19600native(Cinterface<MessageType, Type> cinterface, Type type) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19591default(cvolatileCheckNotLite);
            m19590class();
            this.f16546do.m19419public(cvolatileCheckNotLite.mo19451goto(), cvolatileCheckNotLite.mo19449final(type));
            onChanged();
            return this;
        }

        /* renamed from: new */
        public <Type> BuilderType mo18835new(GeneratedMessage.Cbreak<MessageType, List<Type>> cbreak, Type type) {
            return (BuilderType) m19596for(cbreak, type);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        public Message.Builder newBuilderForField(Descriptors.Celse celse) {
            return celse.m19286extends() ? Cfinally.m20444goto(celse.m19291native()) : super.newBuilderForField(celse);
        }

        /* renamed from: public */
        public <Type> BuilderType mo18839public(GeneratedMessage.Cbreak<MessageType, List<Type>> cbreak, int i, Type type) {
            return (BuilderType) m19599import(cbreak, i, type);
        }

        /* renamed from: return */
        public <Type> BuilderType mo18840return(GeneratedMessage.Cbreak<MessageType, Type> cbreak, Type type) {
            return (BuilderType) m19600native(cbreak, type);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: static, reason: merged with bridge method [inline-methods] */
        public BuilderType setField(Descriptors.Celse celse, Object obj) {
            if (!celse.m19286extends()) {
                return (BuilderType) super.setField(celse, obj);
            }
            m19593throws(celse);
            m19590class();
            this.f16546do.m19419public(celse, obj);
            onChanged();
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public final void m19601super(Cnew cnew) {
            if (cnew.extensions != null) {
                m19590class();
                this.f16546do.m19415final(cnew.extensions);
                onChanged();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: switch, reason: merged with bridge method [inline-methods] */
        public BuilderType setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            if (!celse.m19286extends()) {
                return (BuilderType) super.setRepeatedField(celse, i, obj);
            }
            m19593throws(celse);
            m19590class();
            this.f16546do.m19420return(celse, i, obj);
            onChanged();
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public final BuilderType m19602this(Cinterface<MessageType, ?> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19591default(cvolatileCheckNotLite);
            m19590class();
            this.f16546do.m19416for(cvolatileCheckNotLite.mo19451goto());
            onChanged();
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public final <Type> BuilderType m19603throw(Cvolatile<MessageType, List<Type>> cvolatile, int i, Type type) {
            return (BuilderType) m19599import(cvolatile, i, type);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: merged with bridge method [inline-methods] */
        public BuilderType addRepeatedField(Descriptors.Celse celse, Object obj) {
            if (!celse.m19286extends()) {
                return (BuilderType) super.addRepeatedField(celse, obj);
            }
            m19593throws(celse);
            m19590class();
            this.f16546do.m19413do(celse, obj);
            onChanged();
            return this;
        }

        /* renamed from: while, reason: not valid java name */
        public final <Type> BuilderType m19604while(Cvolatile<MessageType, Type> cvolatile, Type type) {
            return (BuilderType) m19600native(cvolatile, type);
        }

        public Cfor(BuilderParent builderParent) {
            super(builderParent);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cvolatile<MessageType, Type> cvolatile) {
            return hasExtension((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cvolatile<MessageType, List<Type>> cvolatile) {
            return getExtensionCount((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(GeneratedMessage.Cbreak<MessageType, Type> cbreak) {
            return hasExtension((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(GeneratedMessage.Cbreak<MessageType, List<Type>> cbreak) {
            return getExtensionCount((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, List<Type>> cinterface, int i) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19591default(cvolatileCheckNotLite);
            Descriptors.Celse celseMo19451goto = cvolatileCheckNotLite.mo19451goto();
            FieldSet.Cif<Descriptors.Celse> cif = this.f16546do;
            if (cif != null) {
                return (Type) cvolatileCheckNotLite.mo19445class(cif.m19421this(celseMo19451goto, i));
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cvolatile<MessageType, Type> cvolatile) {
            return (Type) getExtension((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(GeneratedMessage.Cbreak<MessageType, Type> cbreak) {
            return (Type) getExtension((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cvolatile<MessageType, List<Type>> cvolatile, int i) {
            return (Type) getExtension((Cinterface) cvolatile, i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(GeneratedMessage.Cbreak<MessageType, List<Type>> cbreak, int i) {
            return (Type) getExtension((Cinterface) cbreak, i);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageV3$if, reason: invalid class name */
    public static abstract class Cif<BuilderType extends Cif<BuilderType>> extends AbstractMessage.Cdo<BuilderType> {
        private BuilderParent builderParent;
        private boolean isClean;
        private Cif<BuilderType>.Cdo meAsParent;
        private t1 unknownFields;

        /* renamed from: com.google.protobuf.GeneratedMessageV3$if$do, reason: invalid class name */
        public class Cdo implements BuilderParent {
            private Cdo() {
            }

            @Override // com.google.protobuf.AbstractMessage.BuilderParent
            public void markDirty() {
                Cif.this.onChanged();
            }

            public /* synthetic */ Cdo(Cif cif, Cdo cdo) {
                this();
            }
        }

        public Cif() {
            this(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<Descriptors.Celse, Object> getAllFieldsMutable() {
            TreeMap treeMap = new TreeMap();
            List<Descriptors.Celse> listM19332super = internalGetFieldAccessorTable().f16487do.m19332super();
            int iM19253class = 0;
            while (iM19253class < listM19332super.size()) {
                Descriptors.Celse oneofFieldDescriptor = listM19332super.get(iM19253class);
                Descriptors.Cbreak cbreakM19281catch = oneofFieldDescriptor.m19281catch();
                if (cbreakM19281catch != null) {
                    iM19253class += cbreakM19281catch.m19253class() - 1;
                    if (hasOneof(cbreakM19281catch)) {
                        oneofFieldDescriptor = getOneofFieldDescriptor(cbreakM19281catch);
                        treeMap.put(oneofFieldDescriptor, getField(oneofFieldDescriptor));
                    }
                } else if (oneofFieldDescriptor.isRepeated()) {
                    List list = (List) getField(oneofFieldDescriptor);
                    if (!list.isEmpty()) {
                        treeMap.put(oneofFieldDescriptor, list);
                    }
                } else if (hasField(oneofFieldDescriptor)) {
                    treeMap.put(oneofFieldDescriptor, getField(oneofFieldDescriptor));
                }
                iM19253class++;
            }
            return treeMap;
        }

        private BuilderType setUnknownFieldsInternal(t1 t1Var) {
            this.unknownFields = t1Var;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo
        void dispose() {
            this.builderParent = null;
        }

        public Map<Descriptors.Celse, Object> getAllFields() {
            return Collections.unmodifiableMap(getAllFieldsMutable());
        }

        public Descriptors.Cif getDescriptorForType() {
            return internalGetFieldAccessorTable().f16487do;
        }

        public Object getField(Descriptors.Celse celse) {
            Object obj = internalGetFieldAccessorTable().m19574try(celse).get(this);
            return celse.isRepeated() ? Collections.unmodifiableList((List) obj) : obj;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.Celse celse) {
            return internalGetFieldAccessorTable().m19574try(celse).getBuilder(this);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageOrBuilder
        public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
            return internalGetFieldAccessorTable().m19570case(cbreak).m19585if(this);
        }

        public BuilderParent getParentForChildren() {
            if (this.meAsParent == null) {
                this.meAsParent = new Cdo(this, null);
            }
            return this.meAsParent;
        }

        public Object getRepeatedField(Descriptors.Celse celse, int i) {
            return internalGetFieldAccessorTable().m19574try(celse).getRepeated(this, i);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.Celse celse, int i) {
            return internalGetFieldAccessorTable().m19574try(celse).getRepeatedBuilder(this, i);
        }

        public int getRepeatedFieldCount(Descriptors.Celse celse) {
            return internalGetFieldAccessorTable().m19574try(celse).getRepeatedCount(this);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public final t1 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasField(Descriptors.Celse celse) {
            return internalGetFieldAccessorTable().m19574try(celse).has(this);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageOrBuilder
        public boolean hasOneof(Descriptors.Cbreak cbreak) {
            return internalGetFieldAccessorTable().m19570case(cbreak).m19586new(this);
        }

        public abstract FieldAccessorTable internalGetFieldAccessorTable();

        public MapField internalGetMapField(int i) {
            String name = getClass().getName();
            throw new RuntimeException(name.length() != 0 ? "No map fields found in ".concat(name) : new String("No map fields found in "));
        }

        public MapField internalGetMutableMapField(int i) {
            String name = getClass().getName();
            throw new RuntimeException(name.length() != 0 ? "No map fields found in ".concat(name) : new String("No map fields found in "));
        }

        public boolean isClean() {
            return this.isClean;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            for (Descriptors.Celse celse : getDescriptorForType().m19332super()) {
                if (celse.m19280abstract() && !hasField(celse)) {
                    return false;
                }
                if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                    if (celse.isRepeated()) {
                        Iterator it = ((List) getField(celse)).iterator();
                        while (it.hasNext()) {
                            if (!((Message) it.next()).isInitialized()) {
                                return false;
                            }
                        }
                    } else if (hasField(celse) && !((Message) getField(celse)).isInitialized()) {
                        return false;
                    }
                }
            }
            return true;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo
        public void markClean() {
            this.isClean = true;
        }

        public Message.Builder newBuilderForField(Descriptors.Celse celse) {
            return internalGetFieldAccessorTable().m19574try(celse).newBuilder();
        }

        public void onBuilt() {
            if (this.builderParent != null) {
                markClean();
            }
        }

        public final void onChanged() {
            BuilderParent builderParent;
            if (!this.isClean || (builderParent = this.builderParent) == null) {
                return;
            }
            builderParent.markDirty();
            this.isClean = false;
        }

        public BuilderType setUnknownFieldsProto3(t1 t1Var) {
            return (BuilderType) setUnknownFieldsInternal(t1Var);
        }

        public Cif(BuilderParent builderParent) {
            this.unknownFields = t1.m21189for();
            this.builderParent = builderParent;
        }

        public BuilderType addRepeatedField(Descriptors.Celse celse, Object obj) {
            internalGetFieldAccessorTable().m19574try(celse).addRepeated(this, obj);
            return this;
        }

        public BuilderType clearField(Descriptors.Celse celse) {
            internalGetFieldAccessorTable().m19574try(celse).clear(this);
            return this;
        }

        public BuilderType setField(Descriptors.Celse celse, Object obj) {
            internalGetFieldAccessorTable().m19574try(celse).set(this, obj);
            return this;
        }

        public BuilderType setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            internalGetFieldAccessorTable().m19574try(celse).setRepeated(this, i, obj);
            return this;
        }

        public BuilderType setUnknownFields(t1 t1Var) {
            return (BuilderType) setUnknownFieldsInternal(t1Var);
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public BuilderType clearOneof(Descriptors.Cbreak cbreak) {
            internalGetFieldAccessorTable().m19570case(cbreak).m19583do(this);
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        public BuilderType mergeUnknownFields(t1 t1Var) {
            return (BuilderType) setUnknownFields(t1.m21184break(this.unknownFields).m21260public(t1Var).build());
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType clear() {
            this.unknownFields = t1.m21189for();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: clone */
        public BuilderType mo18392clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.mergeFrom(buildPartial());
            return buildertype;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageV3$try, reason: invalid class name */
    public static final class Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final Ctry f16552do = new Ctry();

        private Ctry() {
        }
    }

    public GeneratedMessageV3() {
        this.unknownFields = t1.m21189for();
    }

    public static boolean canUseUnsafe() {
        return z1.f() && z1.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends Cnew<MessageType>, T> Cvolatile<MessageType, T> checkNotLite(Cinterface<MessageType, T> cinterface) {
        if (cinterface.mo20622try()) {
            throw new IllegalArgumentException("Expected non-lite extension.");
        }
        return (Cvolatile) cinterface;
    }

    public static int computeStringSize(int i, Object obj) {
        return obj instanceof String ? Cnative.p(i, (String) obj) : Cnative.m20883final(i, (ByteString) obj);
    }

    public static int computeStringSizeNoTag(Object obj) {
        return obj instanceof String ? Cnative.q((String) obj) : Cnative.m20898super((ByteString) obj);
    }

    public static Internal.BooleanList emptyBooleanList() {
        return Cconst.m20167try();
    }

    public static Internal.DoubleList emptyDoubleList() {
        return Cswitch.m21167try();
    }

    public static Internal.FloatList emptyFloatList() {
        return h.m20546try();
    }

    public static Internal.IntList emptyIntList() {
        return m.m20821try();
    }

    public static Internal.LongList emptyLongList() {
        return v.m21442try();
    }

    public static void enableAlwaysUseFieldBuildersForTesting() {
        setAlwaysUseFieldBuildersForTesting(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Map<Descriptors.Celse, Object> getAllFieldsMutable(boolean z) {
        TreeMap treeMap = new TreeMap();
        List<Descriptors.Celse> listM19332super = internalGetFieldAccessorTable().f16487do.m19332super();
        int iM19253class = 0;
        while (iM19253class < listM19332super.size()) {
            Descriptors.Celse oneofFieldDescriptor = listM19332super.get(iM19253class);
            Descriptors.Cbreak cbreakM19281catch = oneofFieldDescriptor.m19281catch();
            if (cbreakM19281catch != null) {
                iM19253class += cbreakM19281catch.m19253class() - 1;
                if (hasOneof(cbreakM19281catch)) {
                    oneofFieldDescriptor = getOneofFieldDescriptor(cbreakM19281catch);
                    if (z || oneofFieldDescriptor.m19302while() != Descriptors.Celse.Cdo.STRING) {
                        treeMap.put(oneofFieldDescriptor, getField(oneofFieldDescriptor));
                    } else {
                        treeMap.put(oneofFieldDescriptor, getFieldRaw(oneofFieldDescriptor));
                    }
                }
            } else if (oneofFieldDescriptor.isRepeated()) {
                List list = (List) getField(oneofFieldDescriptor);
                if (!list.isEmpty()) {
                    treeMap.put(oneofFieldDescriptor, list);
                }
            } else if (hasField(oneofFieldDescriptor)) {
                if (z) {
                    treeMap.put(oneofFieldDescriptor, getField(oneofFieldDescriptor));
                }
            }
            iM19253class++;
        }
        return treeMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            String name = cls.getName();
            StringBuilder sb = new StringBuilder(name.length() + 45 + String.valueOf(str).length());
            sb.append("Generated message class \"");
            sb.append(name);
            sb.append("\" missing method \"");
            sb.append(str);
            sb.append("\".");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    private static <V> void maybeSerializeBooleanEntryTo(Cnative cnative, Map<Boolean, V> map, x<Boolean, V> xVar, int i, boolean z) throws IOException {
        if (map.containsKey(Boolean.valueOf(z))) {
            cnative.f0(i, xVar.newBuilderForType().m21564const(Boolean.valueOf(z)).m21573throw(map.get(Boolean.valueOf(z))).build());
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$IntList] */
    public static Internal.IntList mutableCopy(Internal.IntList intList) {
        int size = intList.size();
        return intList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static Internal.BooleanList newBooleanList() {
        return new Cconst();
    }

    public static Internal.DoubleList newDoubleList() {
        return new Cswitch();
    }

    public static Internal.FloatList newFloatList() {
        return new h();
    }

    public static Internal.IntList newIntList() {
        return new m();
    }

    public static Internal.LongList newLongList() {
        return new v();
    }

    public static <M extends Message> M parseDelimitedWithIOException(Parser<M> parser, InputStream inputStream) throws IOException {
        try {
            return parser.parseDelimitedFrom(inputStream);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, InputStream inputStream) throws IOException {
        try {
            return parser.parseFrom(inputStream);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    public static <V> void serializeBooleanMapTo(Cnative cnative, MapField<Boolean, V> mapField, x<Boolean, V> xVar, int i) throws IOException {
        Map<Boolean, V> mapM19654this = mapField.m19654this();
        if (!cnative.B()) {
            serializeMapTo(cnative, mapM19654this, xVar, i);
        } else {
            maybeSerializeBooleanEntryTo(cnative, mapM19654this, xVar, i, false);
            maybeSerializeBooleanEntryTo(cnative, mapM19654this, xVar, i, true);
        }
    }

    public static <V> void serializeIntegerMapTo(Cnative cnative, MapField<Integer, V> mapField, x<Integer, V> xVar, int i) throws IOException {
        Map<Integer, V> mapM19654this = mapField.m19654this();
        if (!cnative.B()) {
            serializeMapTo(cnative, mapM19654this, xVar, i);
            return;
        }
        int size = mapM19654this.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = mapM19654this.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        Arrays.sort(iArr);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            cnative.f0(i, xVar.newBuilderForType().m21564const(Integer.valueOf(i4)).m21573throw(mapM19654this.get(Integer.valueOf(i4))).build());
        }
    }

    public static <V> void serializeLongMapTo(Cnative cnative, MapField<Long, V> mapField, x<Long, V> xVar, int i) throws IOException {
        Map<Long, V> mapM19654this = mapField.m19654this();
        if (!cnative.B()) {
            serializeMapTo(cnative, mapM19654this, xVar, i);
            return;
        }
        int size = mapM19654this.size();
        long[] jArr = new long[size];
        Iterator<Long> it = mapM19654this.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            jArr[i2] = it.next().longValue();
            i2++;
        }
        Arrays.sort(jArr);
        for (int i3 = 0; i3 < size; i3++) {
            long j = jArr[i3];
            cnative.f0(i, xVar.newBuilderForType().m21564const(Long.valueOf(j)).m21573throw(mapM19654this.get(Long.valueOf(j))).build());
        }
    }

    private static <K, V> void serializeMapTo(Cnative cnative, Map<K, V> map, x<K, V> xVar, int i) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            cnative.f0(i, xVar.newBuilderForType().m21564const(entry.getKey()).m21573throw(entry.getValue()).build());
        }
    }

    public static <V> void serializeStringMapTo(Cnative cnative, MapField<String, V> mapField, x<String, V> xVar, int i) throws IOException {
        Map<String, V> mapM19654this = mapField.m19654this();
        if (!cnative.B()) {
            serializeMapTo(cnative, mapM19654this, xVar, i);
            return;
        }
        String[] strArr = (String[]) mapM19654this.keySet().toArray(new String[mapM19654this.size()]);
        Arrays.sort(strArr);
        for (String str : strArr) {
            cnative.f0(i, xVar.newBuilderForType().m21564const(str).m21573throw(mapM19654this.get(str)).build());
        }
    }

    public static void setAlwaysUseFieldBuildersForTesting(boolean z) {
        alwaysUseFieldBuilders = z;
    }

    public static void writeString(Cnative cnative, int i, Object obj) throws IOException {
        if (obj instanceof String) {
            cnative.writeString(i, (String) obj);
        } else {
            cnative.writeBytes(i, (ByteString) obj);
        }
    }

    public static void writeStringNoTag(Cnative cnative, Object obj) throws IOException {
        if (obj instanceof String) {
            cnative.z0((String) obj);
        } else {
            cnative.T((ByteString) obj);
        }
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Map<Descriptors.Celse, Object> getAllFields() {
        return Collections.unmodifiableMap(getAllFieldsMutable(false));
    }

    public Map<Descriptors.Celse, Object> getAllFieldsRaw() {
        return Collections.unmodifiableMap(getAllFieldsMutable(true));
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Descriptors.Cif getDescriptorForType() {
        return internalGetFieldAccessorTable().f16487do;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getField(Descriptors.Celse celse) {
        return internalGetFieldAccessorTable().m19574try(celse).get(this);
    }

    public Object getFieldRaw(Descriptors.Celse celse) {
        return internalGetFieldAccessorTable().m19574try(celse).getRaw(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
        return internalGetFieldAccessorTable().m19570case(cbreak).m19584for(this);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<? extends GeneratedMessageV3> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.Celse celse, int i) {
        return internalGetFieldAccessorTable().m19574try(celse).getRepeated(this, i);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.Celse celse) {
        return internalGetFieldAccessorTable().m19574try(celse).getRepeatedCount(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iM19665try = MessageReflection.m19665try(this, getAllFieldsRaw());
        this.memoizedSize = iM19665try;
        return iM19665try;
    }

    public t1 getUnknownFields() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.Celse celse) {
        return internalGetFieldAccessorTable().m19574try(celse).has(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageOrBuilder
    public boolean hasOneof(Descriptors.Cbreak cbreak) {
        return internalGetFieldAccessorTable().m19570case(cbreak).m19587try(this);
    }

    public abstract FieldAccessorTable internalGetFieldAccessorTable();

    public MapField internalGetMapField(int i) {
        String name = getClass().getName();
        throw new RuntimeException(name.length() != 0 ? "No map fields found in ".concat(name) : new String("No map fields found in "));
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        for (Descriptors.Celse celse : getDescriptorForType().m19332super()) {
            if (celse.m19280abstract() && !hasField(celse)) {
                return false;
            }
            if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                if (celse.isRepeated()) {
                    Iterator it = ((List) getField(celse)).iterator();
                    while (it.hasNext()) {
                        if (!((Message) it.next()).isInitialized()) {
                            return false;
                        }
                    }
                } else if (hasField(celse) && !((Message) getField(celse)).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public void makeExtensionsImmutable() {
    }

    public void mergeFromAndMakeImmutableInternal(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        Schema schemaM21003break = q0.m21002do().m21003break(this);
        try {
            schemaM21003break.mergeFrom(this, Cimport.m20614do(codedInputStream), cimplements);
            schemaM21003break.makeImmutable(this);
        } catch (n e) {
            throw e.setUnfinishedMessage(this);
        } catch (IOException e2) {
            throw new n(e2).setUnfinishedMessage(this);
        }
    }

    @Override // com.google.protobuf.AbstractMessage
    public Message.Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
        return newBuilderForType((BuilderParent) new Cdo(this, builderParent));
    }

    public abstract Message.Builder newBuilderForType(BuilderParent builderParent);

    public Object newInstance(Ctry ctry) {
        throw new UnsupportedOperationException("This method must be overridden by the subclass.");
    }

    public boolean parseUnknownField(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, int i) throws IOException {
        return codedInputStream.s() ? codedInputStream.t(i) : cif.m21251final(i, codedInputStream);
    }

    public boolean parseUnknownFieldProto3(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, int i) throws IOException {
        return parseUnknownField(codedInputStream, cif, cimplements, i);
    }

    public Object writeReplace() throws ObjectStreamException {
        return new GeneratedMessageLite.Cthis(this);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        MessageReflection.m19657catch(this, getAllFieldsRaw(), cnative, false);
    }

    public static final class FieldAccessorTable {

        /* renamed from: do, reason: not valid java name */
        private final Descriptors.Cif f16487do;

        /* renamed from: for, reason: not valid java name */
        private String[] f16488for;

        /* renamed from: if, reason: not valid java name */
        private final FieldAccessor[] f16489if;

        /* renamed from: new, reason: not valid java name */
        private final Cif[] f16490new;

        /* renamed from: try, reason: not valid java name */
        private volatile boolean f16491try;

        public interface FieldAccessor {
            void addRepeated(Cif cif, Object obj);

            void clear(Cif cif);

            Object get(Cif cif);

            Object get(GeneratedMessageV3 generatedMessageV3);

            Message.Builder getBuilder(Cif cif);

            Object getRaw(Cif cif);

            Object getRaw(GeneratedMessageV3 generatedMessageV3);

            Object getRepeated(Cif cif, int i);

            Object getRepeated(GeneratedMessageV3 generatedMessageV3, int i);

            Message.Builder getRepeatedBuilder(Cif cif, int i);

            int getRepeatedCount(Cif cif);

            int getRepeatedCount(GeneratedMessageV3 generatedMessageV3);

            Object getRepeatedRaw(Cif cif, int i);

            Object getRepeatedRaw(GeneratedMessageV3 generatedMessageV3, int i);

            boolean has(Cif cif);

            boolean has(GeneratedMessageV3 generatedMessageV3);

            Message.Builder newBuilder();

            void set(Cif cif, Object obj);

            void setRepeated(Cif cif, int i, Object obj);
        }

        public static class RepeatedFieldAccessor implements FieldAccessor {

            /* renamed from: do, reason: not valid java name */
            public final Class f16492do;

            /* renamed from: if, reason: not valid java name */
            public final MethodInvoker f16493if;

            public interface MethodInvoker {
                void addRepeated(Cif<?> cif, Object obj);

                void clear(Cif<?> cif);

                Object get(Cif<?> cif);

                Object get(GeneratedMessageV3 generatedMessageV3);

                Object getRepeated(Cif<?> cif, int i);

                Object getRepeated(GeneratedMessageV3 generatedMessageV3, int i);

                int getRepeatedCount(Cif<?> cif);

                int getRepeatedCount(GeneratedMessageV3 generatedMessageV3);

                void setRepeated(Cif<?> cif, int i, Object obj);
            }

            /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor$do, reason: invalid class name */
            public static final class Cdo implements MethodInvoker {

                /* renamed from: case, reason: not valid java name */
                public final Method f16494case;

                /* renamed from: do, reason: not valid java name */
                public final Method f16495do;

                /* renamed from: else, reason: not valid java name */
                public final Method f16496else;

                /* renamed from: for, reason: not valid java name */
                public final Method f16497for;

                /* renamed from: goto, reason: not valid java name */
                public final Method f16498goto;

                /* renamed from: if, reason: not valid java name */
                public final Method f16499if;

                /* renamed from: new, reason: not valid java name */
                public final Method f16500new;

                /* renamed from: this, reason: not valid java name */
                public final Method f16501this;

                /* renamed from: try, reason: not valid java name */
                public final Method f16502try;

                public Cdo(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
                    sb.append("get");
                    sb.append(str);
                    sb.append("List");
                    this.f16495do = GeneratedMessageV3.getMethodOrDie(cls, sb.toString(), new Class[0]);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 7);
                    sb2.append("get");
                    sb2.append(str);
                    sb2.append("List");
                    this.f16499if = GeneratedMessageV3.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                    String strValueOf = String.valueOf(str);
                    String strConcat = strValueOf.length() != 0 ? "get".concat(strValueOf) : new String("get");
                    Class cls3 = Integer.TYPE;
                    Method methodOrDie = GeneratedMessageV3.getMethodOrDie(cls, strConcat, cls3);
                    this.f16497for = methodOrDie;
                    String strValueOf2 = String.valueOf(str);
                    this.f16500new = GeneratedMessageV3.getMethodOrDie(cls2, strValueOf2.length() != 0 ? "get".concat(strValueOf2) : new String("get"), cls3);
                    Class<?> returnType = methodOrDie.getReturnType();
                    String strValueOf3 = String.valueOf(str);
                    this.f16502try = GeneratedMessageV3.getMethodOrDie(cls2, strValueOf3.length() != 0 ? "set".concat(strValueOf3) : new String("set"), cls3, returnType);
                    String strValueOf4 = String.valueOf(str);
                    this.f16494case = GeneratedMessageV3.getMethodOrDie(cls2, strValueOf4.length() != 0 ? "add".concat(strValueOf4) : new String("add"), returnType);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb3.append("get");
                    sb3.append(str);
                    sb3.append("Count");
                    this.f16496else = GeneratedMessageV3.getMethodOrDie(cls, sb3.toString(), new Class[0]);
                    StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb4.append("get");
                    sb4.append(str);
                    sb4.append("Count");
                    this.f16498goto = GeneratedMessageV3.getMethodOrDie(cls2, sb4.toString(), new Class[0]);
                    String strValueOf5 = String.valueOf(str);
                    this.f16501this = GeneratedMessageV3.getMethodOrDie(cls2, strValueOf5.length() != 0 ? FreemarkerServlet.r.concat(strValueOf5) : new String(FreemarkerServlet.r), new Class[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor.MethodInvoker
                public void addRepeated(Cif<?> cif, Object obj) {
                    GeneratedMessageV3.invokeOrDie(this.f16494case, cif, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor.MethodInvoker
                public void clear(Cif<?> cif) {
                    GeneratedMessageV3.invokeOrDie(this.f16501this, cif, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor.MethodInvoker
                public Object get(GeneratedMessageV3 generatedMessageV3) {
                    return GeneratedMessageV3.invokeOrDie(this.f16495do, generatedMessageV3, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor.MethodInvoker
                public Object getRepeated(GeneratedMessageV3 generatedMessageV3, int i) {
                    return GeneratedMessageV3.invokeOrDie(this.f16497for, generatedMessageV3, Integer.valueOf(i));
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor.MethodInvoker
                public int getRepeatedCount(GeneratedMessageV3 generatedMessageV3) {
                    return ((Integer) GeneratedMessageV3.invokeOrDie(this.f16496else, generatedMessageV3, new Object[0])).intValue();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor.MethodInvoker
                public void setRepeated(Cif<?> cif, int i, Object obj) {
                    GeneratedMessageV3.invokeOrDie(this.f16502try, cif, Integer.valueOf(i), obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor.MethodInvoker
                public Object get(Cif<?> cif) {
                    return GeneratedMessageV3.invokeOrDie(this.f16499if, cif, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor.MethodInvoker
                public Object getRepeated(Cif<?> cif, int i) {
                    return GeneratedMessageV3.invokeOrDie(this.f16500new, cif, Integer.valueOf(i));
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor.MethodInvoker
                public int getRepeatedCount(Cif<?> cif) {
                    return ((Integer) GeneratedMessageV3.invokeOrDie(this.f16498goto, cif, new Object[0])).intValue();
                }
            }

            public RepeatedFieldAccessor(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2) {
                Cdo cdo = new Cdo(celse, str, cls, cls2);
                this.f16492do = cdo.f16497for.getReturnType();
                this.f16493if = m19576do(cdo);
            }

            /* renamed from: do, reason: not valid java name */
            public static MethodInvoker m19576do(Cdo cdo) {
                return cdo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void addRepeated(Cif cif, Object obj) {
                this.f16493if.addRepeated(cif, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void clear(Cif cif) {
                this.f16493if.clear(cif);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessageV3 generatedMessageV3) {
                return this.f16493if.get(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder getBuilder(Cif cif) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRaw(GeneratedMessageV3 generatedMessageV3) {
                return get(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeated(GeneratedMessageV3 generatedMessageV3, int i) {
                return this.f16493if.getRepeated(generatedMessageV3, i);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder getRepeatedBuilder(Cif cif, int i) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(GeneratedMessageV3 generatedMessageV3) {
                return this.f16493if.getRepeatedCount(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(GeneratedMessageV3 generatedMessageV3, int i) {
                return getRepeated(generatedMessageV3, i);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public boolean has(GeneratedMessageV3 generatedMessageV3) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void set(Cif cif, Object obj) {
                clear(cif);
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    addRepeated(cif, it.next());
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void setRepeated(Cif cif, int i, Object obj) {
                this.f16493if.setRepeated(cif, i, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(Cif cif) {
                return this.f16493if.get((Cif<?>) cif);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRaw(Cif cif) {
                return get(cif);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeated(Cif cif, int i) {
                return this.f16493if.getRepeated((Cif<?>) cif, i);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(Cif cif) {
                return this.f16493if.getRepeatedCount((Cif<?>) cif);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(Cif cif, int i) {
                return getRepeated(cif, i);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public boolean has(Cif cif) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }
        }

        public static class SingularFieldAccessor implements FieldAccessor {

            /* renamed from: do, reason: not valid java name */
            public final Class<?> f16503do;

            /* renamed from: for, reason: not valid java name */
            public final boolean f16504for;

            /* renamed from: if, reason: not valid java name */
            public final Descriptors.Celse f16505if;

            /* renamed from: new, reason: not valid java name */
            public final boolean f16506new;

            /* renamed from: try, reason: not valid java name */
            public final MethodInvoker f16507try;

            public interface MethodInvoker {
                void clear(Cif<?> cif);

                Object get(Cif<?> cif);

                Object get(GeneratedMessageV3 generatedMessageV3);

                int getOneofFieldNumber(Cif<?> cif);

                int getOneofFieldNumber(GeneratedMessageV3 generatedMessageV3);

                boolean has(Cif<?> cif);

                boolean has(GeneratedMessageV3 generatedMessageV3);

                void set(Cif<?> cif, Object obj);
            }

            /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor$do, reason: invalid class name */
            public static final class Cdo implements MethodInvoker {

                /* renamed from: case, reason: not valid java name */
                public final Method f16508case;

                /* renamed from: do, reason: not valid java name */
                public final Method f16509do;

                /* renamed from: else, reason: not valid java name */
                public final Method f16510else;

                /* renamed from: for, reason: not valid java name */
                public final Method f16511for;

                /* renamed from: goto, reason: not valid java name */
                public final Method f16512goto;

                /* renamed from: if, reason: not valid java name */
                public final Method f16513if;

                /* renamed from: new, reason: not valid java name */
                public final Method f16514new;

                /* renamed from: try, reason: not valid java name */
                public final Method f16515try;

                public Cdo(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2, String str2, boolean z, boolean z2) {
                    Method methodOrDie;
                    Method methodOrDie2;
                    Method methodOrDie3;
                    String strValueOf = String.valueOf(str);
                    Method methodOrDie4 = GeneratedMessageV3.getMethodOrDie(cls, strValueOf.length() != 0 ? "get".concat(strValueOf) : new String("get"), new Class[0]);
                    this.f16509do = methodOrDie4;
                    String strValueOf2 = String.valueOf(str);
                    this.f16513if = GeneratedMessageV3.getMethodOrDie(cls2, strValueOf2.length() != 0 ? "get".concat(strValueOf2) : new String("get"), new Class[0]);
                    Class<?> returnType = methodOrDie4.getReturnType();
                    String strValueOf3 = String.valueOf(str);
                    this.f16511for = GeneratedMessageV3.getMethodOrDie(cls2, strValueOf3.length() != 0 ? "set".concat(strValueOf3) : new String("set"), returnType);
                    Method methodOrDie5 = null;
                    if (z2) {
                        String strValueOf4 = String.valueOf(str);
                        methodOrDie = GeneratedMessageV3.getMethodOrDie(cls, strValueOf4.length() != 0 ? "has".concat(strValueOf4) : new String("has"), new Class[0]);
                    } else {
                        methodOrDie = null;
                    }
                    this.f16514new = methodOrDie;
                    if (z2) {
                        String strValueOf5 = String.valueOf(str);
                        methodOrDie2 = GeneratedMessageV3.getMethodOrDie(cls2, strValueOf5.length() != 0 ? "has".concat(strValueOf5) : new String("has"), new Class[0]);
                    } else {
                        methodOrDie2 = null;
                    }
                    this.f16515try = methodOrDie2;
                    String strValueOf6 = String.valueOf(str);
                    this.f16508case = GeneratedMessageV3.getMethodOrDie(cls2, strValueOf6.length() != 0 ? FreemarkerServlet.r.concat(strValueOf6) : new String(FreemarkerServlet.r), new Class[0]);
                    if (z) {
                        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 7);
                        sb.append("get");
                        sb.append(str2);
                        sb.append("Case");
                        methodOrDie3 = GeneratedMessageV3.getMethodOrDie(cls, sb.toString(), new Class[0]);
                    } else {
                        methodOrDie3 = null;
                    }
                    this.f16510else = methodOrDie3;
                    if (z) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 7);
                        sb2.append("get");
                        sb2.append(str2);
                        sb2.append("Case");
                        methodOrDie5 = GeneratedMessageV3.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                    }
                    this.f16512goto = methodOrDie5;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor.MethodInvoker
                public void clear(Cif<?> cif) {
                    GeneratedMessageV3.invokeOrDie(this.f16508case, cif, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor.MethodInvoker
                public Object get(GeneratedMessageV3 generatedMessageV3) {
                    return GeneratedMessageV3.invokeOrDie(this.f16509do, generatedMessageV3, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor.MethodInvoker
                public int getOneofFieldNumber(GeneratedMessageV3 generatedMessageV3) {
                    return ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f16510else, generatedMessageV3, new Object[0])).getNumber();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor.MethodInvoker
                public boolean has(GeneratedMessageV3 generatedMessageV3) {
                    return ((Boolean) GeneratedMessageV3.invokeOrDie(this.f16514new, generatedMessageV3, new Object[0])).booleanValue();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor.MethodInvoker
                public void set(Cif<?> cif, Object obj) {
                    GeneratedMessageV3.invokeOrDie(this.f16511for, cif, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor.MethodInvoker
                public Object get(Cif<?> cif) {
                    return GeneratedMessageV3.invokeOrDie(this.f16513if, cif, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor.MethodInvoker
                public int getOneofFieldNumber(Cif<?> cif) {
                    return ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f16512goto, cif, new Object[0])).getNumber();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor.MethodInvoker
                public boolean has(Cif<?> cif) {
                    return ((Boolean) GeneratedMessageV3.invokeOrDie(this.f16515try, cif, new Object[0])).booleanValue();
                }
            }

            public SingularFieldAccessor(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2, String str2) {
                boolean z = (celse.m19281catch() == null || celse.m19281catch().m19258throw()) ? false : true;
                this.f16504for = z;
                boolean z2 = celse.mo19232do().m19241static() == Descriptors.FileDescriptor.Cdo.PROTO2 || celse.m19300throws() || (!z && celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE);
                this.f16506new = z2;
                Cdo cdo = new Cdo(celse, str, cls, cls2, str2, z, z2);
                this.f16505if = celse;
                this.f16503do = cdo.f16509do.getReturnType();
                this.f16507try = m19577do(cdo);
            }

            /* renamed from: do, reason: not valid java name */
            public static MethodInvoker m19577do(Cdo cdo) {
                return cdo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void addRepeated(Cif cif, Object obj) {
                throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void clear(Cif cif) {
                this.f16507try.clear(cif);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessageV3 generatedMessageV3) {
                return this.f16507try.get(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder getBuilder(Cif cif) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRaw(GeneratedMessageV3 generatedMessageV3) {
                return get(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeated(GeneratedMessageV3 generatedMessageV3, int i) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder getRepeatedBuilder(Cif cif, int i) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(GeneratedMessageV3 generatedMessageV3) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(GeneratedMessageV3 generatedMessageV3, int i) {
                throw new UnsupportedOperationException("getRepeatedFieldRaw() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public boolean has(GeneratedMessageV3 generatedMessageV3) {
                return !this.f16506new ? this.f16504for ? this.f16507try.getOneofFieldNumber(generatedMessageV3) == this.f16505if.getNumber() : !get(generatedMessageV3).equals(this.f16505if.m19283const()) : this.f16507try.has(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void set(Cif cif, Object obj) {
                this.f16507try.set(cif, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void setRepeated(Cif cif, int i, Object obj) {
                throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(Cif cif) {
                return this.f16507try.get((Cif<?>) cif);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRaw(Cif cif) {
                return get(cif);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeated(Cif cif, int i) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(Cif cif) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(Cif cif, int i) {
                throw new UnsupportedOperationException("getRepeatedFieldRaw() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public boolean has(Cif cif) {
                if (!this.f16506new) {
                    if (this.f16504for) {
                        return this.f16507try.getOneofFieldNumber((Cif<?>) cif) == this.f16505if.getNumber();
                    }
                    return !get(cif).equals(this.f16505if.m19283const());
                }
                return this.f16507try.has((Cif<?>) cif);
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$case, reason: invalid class name */
        public static final class Ccase extends SingularFieldAccessor {

            /* renamed from: case, reason: not valid java name */
            private final Method f16516case;

            /* renamed from: else, reason: not valid java name */
            private final Method f16517else;

            public Ccase(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2, String str2) {
                super(celse, str, cls, cls2, str2);
                this.f16516case = GeneratedMessageV3.getMethodOrDie(this.f16503do, "newBuilder", new Class[0]);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 10);
                sb.append("get");
                sb.append(str);
                sb.append("Builder");
                this.f16517else = GeneratedMessageV3.getMethodOrDie(cls2, sb.toString(), new Class[0]);
            }

            /* renamed from: if, reason: not valid java name */
            private Object m19578if(Object obj) {
                return this.f16503do.isInstance(obj) ? obj : ((Message.Builder) GeneratedMessageV3.invokeOrDie(this.f16516case, null, new Object[0])).mergeFrom((Message) obj).buildPartial();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder getBuilder(Cif cif) {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f16517else, cif, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f16516case, null, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void set(Cif cif, Object obj) {
                super.set(cif, m19578if(obj));
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$do, reason: invalid class name */
        public static class Cdo implements FieldAccessor {

            /* renamed from: do, reason: not valid java name */
            private final Descriptors.Celse f16518do;

            /* renamed from: if, reason: not valid java name */
            private final Message f16519if;

            public Cdo(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2) {
                this.f16518do = celse;
                this.f16519if = m19580for((GeneratedMessageV3) GeneratedMessageV3.invokeOrDie(GeneratedMessageV3.getMethodOrDie(cls, "getDefaultInstance", new Class[0]), null, new Object[0])).m19645break();
            }

            /* renamed from: do, reason: not valid java name */
            private Message m19579do(Message message) {
                if (message == null) {
                    return null;
                }
                return this.f16519if.getClass().isInstance(message) ? message : this.f16519if.toBuilder().mergeFrom(message).build();
            }

            /* renamed from: for, reason: not valid java name */
            private MapField<?, ?> m19580for(GeneratedMessageV3 generatedMessageV3) {
                return generatedMessageV3.internalGetMapField(this.f16518do.getNumber());
            }

            /* renamed from: if, reason: not valid java name */
            private MapField<?, ?> m19581if(Cif cif) {
                return cif.internalGetMapField(this.f16518do.getNumber());
            }

            /* renamed from: new, reason: not valid java name */
            private MapField<?, ?> m19582new(Cif cif) {
                return cif.internalGetMutableMapField(this.f16518do.getNumber());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void addRepeated(Cif cif, Object obj) {
                m19582new(cif).m19647catch().add(m19579do((Message) obj));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void clear(Cif cif) {
                m19582new(cif).m19647catch().clear();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessageV3 generatedMessageV3) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < getRepeatedCount(generatedMessageV3); i++) {
                    arrayList.add(getRepeated(generatedMessageV3, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder getBuilder(Cif cif) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRaw(GeneratedMessageV3 generatedMessageV3) {
                return get(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeated(GeneratedMessageV3 generatedMessageV3, int i) {
                return m19580for(generatedMessageV3).m19652goto().get(i);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder getRepeatedBuilder(Cif cif, int i) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(GeneratedMessageV3 generatedMessageV3) {
                return m19580for(generatedMessageV3).m19652goto().size();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(GeneratedMessageV3 generatedMessageV3, int i) {
                return getRepeated(generatedMessageV3, i);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public boolean has(GeneratedMessageV3 generatedMessageV3) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                return this.f16519if.newBuilderForType();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void set(Cif cif, Object obj) {
                clear(cif);
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    addRepeated(cif, it.next());
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void setRepeated(Cif cif, int i, Object obj) {
                m19582new(cif).m19647catch().set(i, m19579do((Message) obj));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRaw(Cif cif) {
                return get(cif);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeated(Cif cif, int i) {
                return m19581if(cif).m19652goto().get(i);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public int getRepeatedCount(Cif cif) {
                return m19581if(cif).m19652goto().size();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeatedRaw(Cif cif, int i) {
                return getRepeated(cif, i);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public boolean has(Cif cif) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(Cif cif) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < getRepeatedCount(cif); i++) {
                    arrayList.add(getRepeated(cif, i));
                }
                return Collections.unmodifiableList(arrayList);
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$else, reason: invalid class name */
        public static final class Celse extends SingularFieldAccessor {

            /* renamed from: case, reason: not valid java name */
            private final Method f16520case;

            /* renamed from: else, reason: not valid java name */
            private final Method f16521else;

            /* renamed from: goto, reason: not valid java name */
            private final Method f16522goto;

            public Celse(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2, String str2) {
                super(celse, str, cls, cls2, str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8);
                sb.append("get");
                sb.append(str);
                sb.append("Bytes");
                this.f16520case = GeneratedMessageV3.getMethodOrDie(cls, sb.toString(), new Class[0]);
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 8);
                sb2.append("get");
                sb2.append(str);
                sb2.append("Bytes");
                this.f16521else = GeneratedMessageV3.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 8);
                sb3.append("set");
                sb3.append(str);
                sb3.append("Bytes");
                this.f16522goto = GeneratedMessageV3.getMethodOrDie(cls2, sb3.toString(), ByteString.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRaw(GeneratedMessageV3 generatedMessageV3) {
                return GeneratedMessageV3.invokeOrDie(this.f16520case, generatedMessageV3, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void set(Cif cif, Object obj) {
                if (obj instanceof ByteString) {
                    GeneratedMessageV3.invokeOrDie(this.f16522goto, cif, obj);
                } else {
                    super.set(cif, obj);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRaw(Cif cif) {
                return GeneratedMessageV3.invokeOrDie(this.f16521else, cif, new Object[0]);
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$if, reason: invalid class name */
        public static class Cif {

            /* renamed from: do, reason: not valid java name */
            private final Descriptors.Cif f16531do;

            /* renamed from: for, reason: not valid java name */
            private final Method f16532for;

            /* renamed from: if, reason: not valid java name */
            private final Method f16533if;

            /* renamed from: new, reason: not valid java name */
            private final Method f16534new;

            /* renamed from: try, reason: not valid java name */
            private final Descriptors.Celse f16535try;

            public Cif(Descriptors.Cif cif, int i, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2) {
                this.f16531do = cif;
                Descriptors.Cbreak cbreak = cif.m19327import().get(i);
                if (cbreak.m19258throw()) {
                    this.f16533if = null;
                    this.f16532for = null;
                    this.f16535try = cbreak.m19254const().get(0);
                } else {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
                    sb.append("get");
                    sb.append(str);
                    sb.append("Case");
                    this.f16533if = GeneratedMessageV3.getMethodOrDie(cls, sb.toString(), new Class[0]);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 7);
                    sb2.append("get");
                    sb2.append(str);
                    sb2.append("Case");
                    this.f16532for = GeneratedMessageV3.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                    this.f16535try = null;
                }
                String strValueOf = String.valueOf(str);
                this.f16534new = GeneratedMessageV3.getMethodOrDie(cls2, strValueOf.length() != 0 ? FreemarkerServlet.r.concat(strValueOf) : new String(FreemarkerServlet.r), new Class[0]);
            }

            /* renamed from: do, reason: not valid java name */
            public void m19583do(Cif cif) {
                GeneratedMessageV3.invokeOrDie(this.f16534new, cif, new Object[0]);
            }

            /* renamed from: for, reason: not valid java name */
            public Descriptors.Celse m19584for(GeneratedMessageV3 generatedMessageV3) {
                Descriptors.Celse celse = this.f16535try;
                if (celse != null) {
                    if (generatedMessageV3.hasField(celse)) {
                        return this.f16535try;
                    }
                    return null;
                }
                int number = ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f16533if, generatedMessageV3, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f16531do.m19320break(number);
                }
                return null;
            }

            /* renamed from: if, reason: not valid java name */
            public Descriptors.Celse m19585if(Cif cif) {
                Descriptors.Celse celse = this.f16535try;
                if (celse != null) {
                    if (cif.hasField(celse)) {
                        return this.f16535try;
                    }
                    return null;
                }
                int number = ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f16532for, cif, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f16531do.m19320break(number);
                }
                return null;
            }

            /* renamed from: new, reason: not valid java name */
            public boolean m19586new(Cif cif) {
                Descriptors.Celse celse = this.f16535try;
                return celse != null ? cif.hasField(celse) : ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f16532for, cif, new Object[0])).getNumber() != 0;
            }

            /* renamed from: try, reason: not valid java name */
            public boolean m19587try(GeneratedMessageV3 generatedMessageV3) {
                Descriptors.Celse celse = this.f16535try;
                return celse != null ? generatedMessageV3.hasField(celse) : ((Internal.EnumLite) GeneratedMessageV3.invokeOrDie(this.f16533if, generatedMessageV3, new Object[0])).getNumber() != 0;
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$new, reason: invalid class name */
        public static final class Cnew extends RepeatedFieldAccessor {

            /* renamed from: for, reason: not valid java name */
            private final Method f16536for;

            /* renamed from: new, reason: not valid java name */
            private final Method f16537new;

            public Cnew(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2) {
                super(celse, str, cls, cls2);
                this.f16536for = GeneratedMessageV3.getMethodOrDie(this.f16492do, "newBuilder", new Class[0]);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 10);
                sb.append("get");
                sb.append(str);
                sb.append("Builder");
                this.f16537new = GeneratedMessageV3.getMethodOrDie(cls2, sb.toString(), Integer.TYPE);
            }

            /* renamed from: if, reason: not valid java name */
            private Object m19588if(Object obj) {
                return this.f16492do.isInstance(obj) ? obj : ((Message.Builder) GeneratedMessageV3.invokeOrDie(this.f16536for, null, new Object[0])).mergeFrom((Message) obj).build();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void addRepeated(Cif cif, Object obj) {
                super.addRepeated(cif, m19588if(obj));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder getRepeatedBuilder(Cif cif, int i) {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f16537new, cif, Integer.valueOf(i));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Message.Builder newBuilder() {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f16536for, null, new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void setRepeated(Cif cif, int i, Object obj) {
                super.setRepeated(cif, i, m19588if(obj));
            }
        }

        public FieldAccessorTable(Descriptors.Cif cif, String[] strArr, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2) {
            this(cif, strArr);
            m19575new(cls, cls2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: case, reason: not valid java name */
        public Cif m19570case(Descriptors.Cbreak cbreak) {
            if (cbreak.m19251break() == this.f16487do) {
                return this.f16490new[cbreak.m19255final()];
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: try, reason: not valid java name */
        public FieldAccessor m19574try(Descriptors.Celse celse) {
            if (celse.m19282class() != this.f16487do) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
            if (celse.m19286extends()) {
                throw new IllegalArgumentException("This type does not have extensions.");
            }
            return this.f16489if[celse.m19299throw()];
        }

        /* renamed from: new, reason: not valid java name */
        public FieldAccessorTable m19575new(Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2) {
            if (this.f16491try) {
                return this;
            }
            synchronized (this) {
                if (this.f16491try) {
                    return this;
                }
                int length = this.f16489if.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    Descriptors.Celse celse = this.f16487do.m19332super().get(i);
                    String str = celse.m19281catch() != null ? this.f16488for[celse.m19281catch().m19255final() + length] : null;
                    if (celse.isRepeated()) {
                        if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                            if (celse.m19288finally()) {
                                this.f16489if[i] = new Cdo(celse, this.f16488for[i], cls, cls2);
                            } else {
                                this.f16489if[i] = new Cnew(celse, this.f16488for[i], cls, cls2);
                            }
                        } else if (celse.m19302while() == Descriptors.Celse.Cdo.ENUM) {
                            this.f16489if[i] = new Cfor(celse, this.f16488for[i], cls, cls2);
                        } else {
                            this.f16489if[i] = new RepeatedFieldAccessor(celse, this.f16488for[i], cls, cls2);
                        }
                    } else if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                        this.f16489if[i] = new Ccase(celse, this.f16488for[i], cls, cls2, str);
                    } else if (celse.m19302while() == Descriptors.Celse.Cdo.ENUM) {
                        this.f16489if[i] = new Ctry(celse, this.f16488for[i], cls, cls2, str);
                    } else if (celse.m19302while() == Descriptors.Celse.Cdo.STRING) {
                        this.f16489if[i] = new Celse(celse, this.f16488for[i], cls, cls2, str);
                    } else {
                        this.f16489if[i] = new SingularFieldAccessor(celse, this.f16488for[i], cls, cls2, str);
                    }
                    i++;
                }
                int length2 = this.f16490new.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    this.f16490new[i2] = new Cif(this.f16487do, i2, this.f16488for[i2 + length], cls, cls2);
                }
                this.f16491try = true;
                this.f16488for = null;
                return this;
            }
        }

        public FieldAccessorTable(Descriptors.Cif cif, String[] strArr) {
            this.f16487do = cif;
            this.f16488for = strArr;
            this.f16489if = new FieldAccessor[cif.m19332super().size()];
            this.f16490new = new Cif[cif.m19327import().size()];
            this.f16491try = false;
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$for, reason: invalid class name */
        public static final class Cfor extends RepeatedFieldAccessor {

            /* renamed from: break, reason: not valid java name */
            private Method f16523break;

            /* renamed from: case, reason: not valid java name */
            private boolean f16524case;

            /* renamed from: else, reason: not valid java name */
            private Method f16525else;

            /* renamed from: for, reason: not valid java name */
            private Descriptors.Ctry f16526for;

            /* renamed from: goto, reason: not valid java name */
            private Method f16527goto;

            /* renamed from: new, reason: not valid java name */
            private final Method f16528new;

            /* renamed from: this, reason: not valid java name */
            private Method f16529this;

            /* renamed from: try, reason: not valid java name */
            private final Method f16530try;

            public Cfor(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2) {
                super(celse, str, cls, cls2);
                this.f16526for = celse.getEnumType();
                this.f16528new = GeneratedMessageV3.getMethodOrDie(this.f16492do, "valueOf", Descriptors.Ccase.class);
                this.f16530try = GeneratedMessageV3.getMethodOrDie(this.f16492do, "getValueDescriptor", new Class[0]);
                boolean zM19226abstract = celse.mo19232do().m19226abstract();
                this.f16524case = zM19226abstract;
                if (zM19226abstract) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8);
                    sb.append("get");
                    sb.append(str);
                    sb.append("Value");
                    String string = sb.toString();
                    Class cls3 = Integer.TYPE;
                    this.f16525else = GeneratedMessageV3.getMethodOrDie(cls, string, cls3);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb2.append("get");
                    sb2.append(str);
                    sb2.append("Value");
                    this.f16527goto = GeneratedMessageV3.getMethodOrDie(cls2, sb2.toString(), cls3);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb3.append("set");
                    sb3.append(str);
                    sb3.append("Value");
                    this.f16529this = GeneratedMessageV3.getMethodOrDie(cls2, sb3.toString(), cls3, cls3);
                    StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb4.append("add");
                    sb4.append(str);
                    sb4.append("Value");
                    this.f16523break = GeneratedMessageV3.getMethodOrDie(cls2, sb4.toString(), cls3);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void addRepeated(Cif cif, Object obj) {
                if (this.f16524case) {
                    GeneratedMessageV3.invokeOrDie(this.f16523break, cif, Integer.valueOf(((Descriptors.Ccase) obj).getNumber()));
                } else {
                    super.addRepeated(cif, GeneratedMessageV3.invokeOrDie(this.f16528new, null, obj));
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessageV3 generatedMessageV3) {
                ArrayList arrayList = new ArrayList();
                int repeatedCount = getRepeatedCount(generatedMessageV3);
                for (int i = 0; i < repeatedCount; i++) {
                    arrayList.add(getRepeated(generatedMessageV3, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeated(GeneratedMessageV3 generatedMessageV3, int i) {
                return this.f16524case ? this.f16526for.m19358goto(((Integer) GeneratedMessageV3.invokeOrDie(this.f16525else, generatedMessageV3, Integer.valueOf(i))).intValue()) : GeneratedMessageV3.invokeOrDie(this.f16530try, super.getRepeated(generatedMessageV3, i), new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void setRepeated(Cif cif, int i, Object obj) {
                if (this.f16524case) {
                    GeneratedMessageV3.invokeOrDie(this.f16529this, cif, Integer.valueOf(i), Integer.valueOf(((Descriptors.Ccase) obj).getNumber()));
                } else {
                    super.setRepeated(cif, i, GeneratedMessageV3.invokeOrDie(this.f16528new, null, obj));
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(Cif cif) {
                ArrayList arrayList = new ArrayList();
                int repeatedCount = getRepeatedCount(cif);
                for (int i = 0; i < repeatedCount; i++) {
                    arrayList.add(getRepeated(cif, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.RepeatedFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object getRepeated(Cif cif, int i) {
                if (!this.f16524case) {
                    return GeneratedMessageV3.invokeOrDie(this.f16530try, super.getRepeated(cif, i), new Object[0]);
                }
                return this.f16526for.m19358goto(((Integer) GeneratedMessageV3.invokeOrDie(this.f16527goto, cif, Integer.valueOf(i))).intValue());
            }
        }

        /* renamed from: com.google.protobuf.GeneratedMessageV3$FieldAccessorTable$try, reason: invalid class name */
        public static final class Ctry extends SingularFieldAccessor {

            /* renamed from: break, reason: not valid java name */
            private Method f16538break;

            /* renamed from: case, reason: not valid java name */
            private Descriptors.Ctry f16539case;

            /* renamed from: catch, reason: not valid java name */
            private Method f16540catch;

            /* renamed from: class, reason: not valid java name */
            private Method f16541class;

            /* renamed from: else, reason: not valid java name */
            private Method f16542else;

            /* renamed from: goto, reason: not valid java name */
            private Method f16543goto;

            /* renamed from: this, reason: not valid java name */
            private boolean f16544this;

            public Ctry(Descriptors.Celse celse, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends Cif> cls2, String str2) {
                super(celse, str, cls, cls2, str2);
                this.f16539case = celse.getEnumType();
                this.f16542else = GeneratedMessageV3.getMethodOrDie(this.f16503do, "valueOf", Descriptors.Ccase.class);
                this.f16543goto = GeneratedMessageV3.getMethodOrDie(this.f16503do, "getValueDescriptor", new Class[0]);
                boolean zM19226abstract = celse.mo19232do().m19226abstract();
                this.f16544this = zM19226abstract;
                if (zM19226abstract) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8);
                    sb.append("get");
                    sb.append(str);
                    sb.append("Value");
                    this.f16538break = GeneratedMessageV3.getMethodOrDie(cls, sb.toString(), new Class[0]);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb2.append("get");
                    sb2.append(str);
                    sb2.append("Value");
                    this.f16540catch = GeneratedMessageV3.getMethodOrDie(cls2, sb2.toString(), new Class[0]);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 8);
                    sb3.append("set");
                    sb3.append(str);
                    sb3.append("Value");
                    this.f16541class = GeneratedMessageV3.getMethodOrDie(cls2, sb3.toString(), Integer.TYPE);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(GeneratedMessageV3 generatedMessageV3) {
                if (!this.f16544this) {
                    return GeneratedMessageV3.invokeOrDie(this.f16543goto, super.get(generatedMessageV3), new Object[0]);
                }
                return this.f16539case.m19358goto(((Integer) GeneratedMessageV3.invokeOrDie(this.f16538break, generatedMessageV3, new Object[0])).intValue());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public void set(Cif cif, Object obj) {
                if (this.f16544this) {
                    GeneratedMessageV3.invokeOrDie(this.f16541class, cif, Integer.valueOf(((Descriptors.Ccase) obj).getNumber()));
                } else {
                    super.set(cif, GeneratedMessageV3.invokeOrDie(this.f16542else, null, obj));
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.SingularFieldAccessor, com.google.protobuf.GeneratedMessageV3.FieldAccessorTable.FieldAccessor
            public Object get(Cif cif) {
                if (this.f16544this) {
                    return this.f16539case.m19358goto(((Integer) GeneratedMessageV3.invokeOrDie(this.f16540catch, cif, new Object[0])).intValue());
                }
                return GeneratedMessageV3.invokeOrDie(this.f16543goto, super.get(cif), new Object[0]);
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageV3$new, reason: invalid class name */
    public static abstract class Cnew<MessageType extends Cnew> extends GeneratedMessageV3 implements ExtendableMessageOrBuilder<MessageType> {
        private static final long serialVersionUID = 1;
        private final FieldSet<Descriptors.Celse> extensions;

        /* renamed from: com.google.protobuf.GeneratedMessageV3$new$do, reason: invalid class name */
        public class Cdo {

            /* renamed from: do, reason: not valid java name */
            private final Iterator<Map.Entry<Descriptors.Celse, Object>> f16548do;

            /* renamed from: for, reason: not valid java name */
            private final boolean f16549for;

            /* renamed from: if, reason: not valid java name */
            private Map.Entry<Descriptors.Celse, Object> f16550if;

            public /* synthetic */ Cdo(Cnew cnew, boolean z, Cdo cdo) {
                this(z);
            }

            /* renamed from: do, reason: not valid java name */
            public void m19607do(int i, Cnative cnative) throws IOException {
                while (true) {
                    Map.Entry<Descriptors.Celse, Object> entry = this.f16550if;
                    if (entry == null || entry.getKey().getNumber() >= i) {
                        return;
                    }
                    Descriptors.Celse key = this.f16550if.getKey();
                    if (!this.f16549for || key.getLiteJavaType() != c2.Cfor.MESSAGE || key.isRepeated()) {
                        FieldSet.g(key, this.f16550if.getValue(), cnative);
                    } else if (this.f16550if instanceof q.Cif) {
                        cnative.s0(key.getNumber(), ((q.Cif) this.f16550if).m21001do().m21039final());
                    } else {
                        cnative.j0(key.getNumber(), (Message) this.f16550if.getValue());
                    }
                    if (this.f16548do.hasNext()) {
                        this.f16550if = this.f16548do.next();
                    } else {
                        this.f16550if = null;
                    }
                }
            }

            private Cdo(boolean z) {
                Iterator<Map.Entry<Descriptors.Celse, Object>> itM19390interface = Cnew.this.extensions.m19390interface();
                this.f16548do = itM19390interface;
                if (itM19390interface.hasNext()) {
                    this.f16550if = itM19390interface.next();
                }
                this.f16549for = z;
            }
        }

        public Cnew() {
            this.extensions = FieldSet.m19377synchronized();
        }

        /* renamed from: do, reason: not valid java name */
        private void m19605do(Descriptors.Celse celse) {
            if (celse.m19282class() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        /* renamed from: if, reason: not valid java name */
        private void m19606if(Cvolatile<MessageType, ?> cvolatile) {
            if (cvolatile.mo19451goto().m19282class() == getDescriptorForType()) {
                return;
            }
            String strMo19235if = cvolatile.mo19451goto().m19282class().mo19235if();
            String strMo19235if2 = getDescriptorForType().mo19235if();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 62 + String.valueOf(strMo19235if2).length());
            sb.append("Extension is for type \"");
            sb.append(strMo19235if);
            sb.append("\" which does not match message type \"");
            sb.append(strMo19235if2);
            sb.append("\".");
            throw new IllegalArgumentException(sb.toString());
        }

        public boolean extensionsAreInitialized() {
            return this.extensions.m19385continue();
        }

        public int extensionsSerializedSize() {
            return this.extensions.m19387extends();
        }

        public int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.m19396static();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.Celse, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Map<Descriptors.Celse, Object> getAllFieldsRaw() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, Type> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19606if(cvolatileCheckNotLite);
            Descriptors.Celse celseMo19451goto = cvolatileCheckNotLite.mo19451goto();
            Object objM19395return = this.extensions.m19395return(celseMo19451goto);
            return objM19395return == null ? celseMo19451goto.isRepeated() ? (Type) Collections.emptyList() : celseMo19451goto.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? (Type) cvolatileCheckNotLite.mo19450for() : (Type) cvolatileCheckNotLite.mo19448else(celseMo19451goto.m19283const()) : (Type) cvolatileCheckNotLite.mo19448else(objM19395return);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cinterface<MessageType, List<Type>> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19606if(cvolatileCheckNotLite);
            return this.extensions.m19386default(cvolatileCheckNotLite.mo19451goto());
        }

        public Map<Descriptors.Celse, Object> getExtensionFields() {
            return this.extensions.m19394public();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public Object getField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.getField(celse);
            }
            m19605do(celse);
            Object objM19395return = this.extensions.m19395return(celse);
            return objM19395return == null ? celse.isRepeated() ? Collections.emptyList() : celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? Cfinally.m20453try(celse.m19291native()) : celse.m19283const() : objM19395return;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.Celse celse, int i) {
            if (!celse.m19286extends()) {
                return super.getRepeatedField(celse, i);
            }
            m19605do(celse);
            return this.extensions.m19398throws(celse, i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.getRepeatedFieldCount(celse);
            }
            m19605do(celse);
            return this.extensions.m19386default(celse);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cinterface<MessageType, Type> cinterface) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19606if(cvolatileCheckNotLite);
            return this.extensions.m19391package(cvolatileCheckNotLite.mo19451goto());
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.Celse celse) {
            if (!celse.m19286extends()) {
                return super.hasField(celse);
            }
            m19605do(celse);
            return this.extensions.m19391package(celse);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return super.isInitialized() && extensionsAreInitialized();
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public void makeExtensionsImmutable() {
            this.extensions.m19393protected();
        }

        public Cnew<MessageType>.Cdo newExtensionWriter() {
            return new Cdo(this, false, null);
        }

        public Cnew<MessageType>.Cdo newMessageSetExtensionWriter() {
            return new Cdo(this, true, null);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public boolean parseUnknownField(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, int i) throws IOException {
            if (codedInputStream.s()) {
                cif = null;
            }
            return MessageReflection.m19659else(codedInputStream, cif, cimplements, getDescriptorForType(), new MessageReflection.Cfor(this.extensions), i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public boolean parseUnknownFieldProto3(CodedInputStream codedInputStream, t1.Cif cif, Cimplements cimplements, int i) throws IOException {
            return parseUnknownField(codedInputStream, cif, cimplements, i);
        }

        public Cnew(Cfor<MessageType, ?> cfor) {
            super(cfor);
            this.extensions = cfor.m19589case();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cvolatile<MessageType, Type> cvolatile) {
            return hasExtension((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cvolatile<MessageType, List<Type>> cvolatile) {
            return getExtensionCount((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(GeneratedMessage.Cbreak<MessageType, Type> cbreak) {
            return hasExtension((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(GeneratedMessage.Cbreak<MessageType, List<Type>> cbreak) {
            return getExtensionCount((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, List<Type>> cinterface, int i) {
            Cvolatile<MessageType, ?> cvolatileCheckNotLite = GeneratedMessageV3.checkNotLite(cinterface);
            m19606if(cvolatileCheckNotLite);
            return (Type) cvolatileCheckNotLite.mo19445class(this.extensions.m19398throws(cvolatileCheckNotLite.mo19451goto(), i));
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cvolatile<MessageType, Type> cvolatile) {
            return (Type) getExtension((Cinterface) cvolatile);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(GeneratedMessage.Cbreak<MessageType, Type> cbreak) {
            return (Type) getExtension((Cinterface) cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cvolatile<MessageType, List<Type>> cvolatile, int i) {
            return (Type) getExtension((Cinterface) cvolatile, i);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(GeneratedMessage.Cbreak<MessageType, List<Type>> cbreak, int i) {
            return (Type) getExtension((Cinterface) cbreak, i);
        }
    }

    public GeneratedMessageV3(Cif<?> cif) {
        this.unknownFields = cif.getUnknownFields();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$LongList] */
    public static Internal.LongList mutableCopy(Internal.LongList longList) {
        int size = longList.size();
        return longList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static <M extends Message> M parseDelimitedWithIOException(Parser<M> parser, InputStream inputStream, Cimplements cimplements) throws IOException {
        try {
            return parser.parseDelimitedFrom(inputStream, cimplements);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, InputStream inputStream, Cimplements cimplements) throws IOException {
        try {
            return parser.parseFrom(inputStream, cimplements);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$FloatList] */
    public static Internal.FloatList mutableCopy(Internal.FloatList floatList) {
        int size = floatList.size();
        return floatList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, CodedInputStream codedInputStream) throws IOException {
        try {
            return parser.parseFrom(codedInputStream);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$DoubleList] */
    public static Internal.DoubleList mutableCopy(Internal.DoubleList doubleList) {
        int size = doubleList.size();
        return doubleList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    public static <M extends Message> M parseWithIOException(Parser<M> parser, CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        try {
            return parser.parseFrom(codedInputStream, cimplements);
        } catch (n e) {
            throw e.unwrapIOException();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$BooleanList] */
    public static Internal.BooleanList mutableCopy(Internal.BooleanList booleanList) {
        int size = booleanList.size();
        return booleanList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }
}
