package com.google.protobuf;

import android.support.v4.sb2;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.Message;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

/* loaded from: classes2.dex */
public abstract class AbstractMessage extends AbstractMessageLite implements Message {
    public int memoizedSize = -1;

    public interface BuilderParent {
        void markDirty();
    }

    /* renamed from: com.google.protobuf.AbstractMessage$do, reason: invalid class name */
    public static abstract class Cdo<BuilderType extends Cdo<BuilderType>> extends AbstractMessageLite.Cdo implements Message.Builder {
        public static sb2 newUninitializedMessageException(Message message) {
            return new sb2(MessageReflection.m19660for(message));
        }

        void dispose() {
            throw new IllegalStateException("Should be overridden by subclasses.");
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public List<String> findInitializationErrors() {
            return MessageReflection.m19660for(this);
        }

        @Override // com.google.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.Celse celse) {
            throw new UnsupportedOperationException("getFieldBuilder() called on an unsupported message type.");
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public String getInitializationErrorString() {
            return MessageReflection.m19658do(findInitializationErrors());
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
            throw new UnsupportedOperationException("getOneofFieldDescriptor() is not implemented.");
        }

        @Override // com.google.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.Celse celse, int i) {
            throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on an unsupported message type.");
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public boolean hasOneof(Descriptors.Cbreak cbreak) {
            throw new UnsupportedOperationException("hasOneof() is not implemented.");
        }

        public void markClean() {
            throw new IllegalStateException("Should be overridden by subclasses.");
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
            return super.mergeDelimitedFrom(inputStream);
        }

        public String toString() {
            return j1.m20642instanceof().m20740super(this);
        }

        @Override // com.google.protobuf.Message.Builder
        public BuilderType clearOneof(Descriptors.Cbreak cbreak) {
            throw new UnsupportedOperationException("clearOneof() is not implemented.");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.AbstractMessageLite.Cdo
        public BuilderType internalMergeFrom(AbstractMessageLite abstractMessageLite) {
            return (BuilderType) mergeFrom((Message) abstractMessageLite);
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return super.mergeDelimitedFrom(inputStream, cimplements);
        }

        @Override // com.google.protobuf.Message.Builder
        public BuilderType mergeUnknownFields(t1 t1Var) {
            setUnknownFields(t1.m21184break(getUnknownFields()).m21260public(t1Var).build());
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType clear() {
            Iterator<Map.Entry<Descriptors.Celse, Object>> it = getAllFields().entrySet().iterator();
            while (it.hasNext()) {
                clearField(it.next().getKey());
            }
            return this;
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public BuilderType mo18392clone() {
            throw new UnsupportedOperationException("clone() should be implemented in subclasses.");
        }

        @Override // com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(Message message) {
            return (BuilderType) mergeFrom(message, message.getAllFields());
        }

        public BuilderType mergeFrom(Message message, Map<Descriptors.Celse, Object> map) {
            if (message.getDescriptorForType() == getDescriptorForType()) {
                for (Map.Entry<Descriptors.Celse, Object> entry : map.entrySet()) {
                    Descriptors.Celse key = entry.getKey();
                    if (key.isRepeated()) {
                        Iterator it = ((List) entry.getValue()).iterator();
                        while (it.hasNext()) {
                            addRepeatedField(key, it.next());
                        }
                    } else if (key.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                        Message message2 = (Message) getField(key);
                        if (message2 == message2.getDefaultInstanceForType()) {
                            setField(key, entry.getValue());
                        } else {
                            setField(key, message2.newBuilderForType().mergeFrom(message2).mergeFrom((Message) entry.getValue()).build());
                        }
                    } else {
                        setField(key, entry.getValue());
                    }
                }
                mergeUnknownFields(message.getUnknownFields());
                return this;
            }
            throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(CodedInputStream codedInputStream) throws IOException {
            return (BuilderType) mergeFrom(codedInputStream, (Cimplements) Cprotected.m20974static());
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            int iL;
            t1.Cif cifM21184break = codedInputStream.s() ? null : t1.m21184break(getUnknownFields());
            do {
                iL = codedInputStream.l();
                if (iL == 0) {
                    break;
                }
            } while (MessageReflection.m19659else(codedInputStream, cifM21184break, cimplements, getDescriptorForType(), new MessageReflection.Cif(this), iL));
            if (cifM21184break != null) {
                setUnknownFields(cifM21184break.build());
            }
            return this;
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(ByteString byteString) throws n {
            return (BuilderType) super.mergeFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(ByteString byteString, Cimplements cimplements) throws n {
            return (BuilderType) super.mergeFrom(byteString, cimplements);
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr) throws n {
            return (BuilderType) super.mergeFrom(bArr);
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, int i, int i2) throws n {
            return (BuilderType) super.mergeFrom(bArr, i, i2);
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, Cimplements cimplements) throws n {
            return (BuilderType) super.mergeFrom(bArr, cimplements);
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n {
            return (BuilderType) super.mergeFrom(bArr, i, i2, cimplements);
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(InputStream inputStream) throws IOException {
            return (BuilderType) super.mergeFrom(inputStream);
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public BuilderType mergeFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return (BuilderType) super.mergeFrom(inputStream, cimplements);
        }
    }

    private static boolean compareBytes(Object obj, Object obj2) {
        return ((obj instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) obj, (byte[]) obj2) : toByteString(obj).equals(toByteString(obj2));
    }

    public static boolean compareFields(Map<Descriptors.Celse, Object> map, Map<Descriptors.Celse, Object> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Descriptors.Celse celse : map.keySet()) {
            if (!map2.containsKey(celse)) {
                return false;
            }
            Object obj = map.get(celse);
            Object obj2 = map2.get(celse);
            if (celse.m19296static() == Descriptors.Celse.Cif.BYTES) {
                if (celse.isRepeated()) {
                    List list = (List) obj;
                    List list2 = (List) obj2;
                    if (list.size() != list2.size()) {
                        return false;
                    }
                    for (int i = 0; i < list.size(); i++) {
                        if (!compareBytes(list.get(i), list2.get(i))) {
                            return false;
                        }
                    }
                } else if (!compareBytes(obj, obj2)) {
                    return false;
                }
            } else if (celse.m19288finally()) {
                if (!compareMapField(obj, obj2)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    private static boolean compareMapField(Object obj, Object obj2) {
        return z.equals(convertMapEntryListToMap((List) obj), convertMapEntryListToMap((List) obj2));
    }

    private static Map convertMapEntryListToMap(List list) {
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        Iterator it = list.iterator();
        Message message = (Message) it.next();
        Descriptors.Cif descriptorForType = message.getDescriptorForType();
        Descriptors.Celse celseM19334this = descriptorForType.m19334this("key");
        Descriptors.Celse celseM19334this2 = descriptorForType.m19334this(ES6Iterator.VALUE_PROPERTY);
        Object field = message.getField(celseM19334this2);
        if (field instanceof Descriptors.Ccase) {
            field = Integer.valueOf(((Descriptors.Ccase) field).getNumber());
        }
        map.put(message.getField(celseM19334this), field);
        while (it.hasNext()) {
            Message message2 = (Message) it.next();
            Object field2 = message2.getField(celseM19334this2);
            if (field2 instanceof Descriptors.Ccase) {
                field2 = Integer.valueOf(((Descriptors.Ccase) field2).getNumber());
            }
            map.put(message2.getField(celseM19334this), field2);
        }
        return map;
    }

    @Deprecated
    public static int hashBoolean(boolean z) {
        return z ? 1231 : 1237;
    }

    @Deprecated
    public static int hashEnum(Internal.EnumLite enumLite) {
        return enumLite.getNumber();
    }

    @Deprecated
    public static int hashEnumList(List<? extends Internal.EnumLite> list) {
        Iterator<? extends Internal.EnumLite> it = list.iterator();
        int iHashEnum = 1;
        while (it.hasNext()) {
            iHashEnum = (iHashEnum * 31) + hashEnum(it.next());
        }
        return iHashEnum;
    }

    public static int hashFields(int i, Map<Descriptors.Celse, Object> map) {
        int i2;
        int iM19633while;
        for (Map.Entry<Descriptors.Celse, Object> entry : map.entrySet()) {
            Descriptors.Celse key = entry.getKey();
            Object value = entry.getValue();
            int number = (i * 37) + key.getNumber();
            if (key.m19288finally()) {
                i2 = number * 53;
                iM19633while = hashMapField(value);
            } else if (key.m19296static() != Descriptors.Celse.Cif.ENUM) {
                i2 = number * 53;
                iM19633while = value.hashCode();
            } else if (key.isRepeated()) {
                i2 = number * 53;
                iM19633while = Internal.m19621import((List) value);
            } else {
                i2 = number * 53;
                iM19633while = Internal.m19633while((Internal.EnumLite) value);
            }
            i = i2 + iM19633while;
        }
        return i;
    }

    @Deprecated
    public static int hashLong(long j) {
        return (int) (j ^ (j >>> 32));
    }

    private static int hashMapField(Object obj) {
        return z.calculateHashCodeForMap(convertMapEntryListToMap((List) obj));
    }

    private static ByteString toByteString(Object obj) {
        return obj instanceof byte[] ? ByteString.copyFrom((byte[]) obj) : (ByteString) obj;
    }

    @Override // com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Message)) {
            return false;
        }
        Message message = (Message) obj;
        return getDescriptorForType() == message.getDescriptorForType() && compareFields(getAllFields(), message.getAllFields()) && getUnknownFields().equals(message.getUnknownFields());
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public List<String> findInitializationErrors() {
        return MessageReflection.m19660for(this);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public String getInitializationErrorString() {
        return MessageReflection.m19658do(findInitializationErrors());
    }

    @Override // com.google.protobuf.AbstractMessageLite
    public int getMemoizedSerializedSize() {
        return this.memoizedSize;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Descriptors.Celse getOneofFieldDescriptor(Descriptors.Cbreak cbreak) {
        throw new UnsupportedOperationException("getOneofFieldDescriptor() is not implemented.");
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iM19665try = MessageReflection.m19665try(this, getAllFields());
        this.memoizedSize = iM19665try;
        return iM19665try;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public boolean hasOneof(Descriptors.Cbreak cbreak) {
        throw new UnsupportedOperationException("hasOneof() is not implemented.");
    }

    @Override // com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashFields = (hashFields(779 + getDescriptorForType().hashCode(), getAllFields()) * 29) + getUnknownFields().hashCode();
        this.memoizedHashCode = iHashFields;
        return iHashFields;
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        return MessageReflection.m19656case(this);
    }

    public Message.Builder newBuilderForType(BuilderParent builderParent) {
        throw new UnsupportedOperationException("Nested builder is not supported for this type.");
    }

    @Override // com.google.protobuf.AbstractMessageLite
    public sb2 newUninitializedMessageException() {
        return Cdo.newUninitializedMessageException((Message) this);
    }

    @Override // com.google.protobuf.AbstractMessageLite
    public void setMemoizedSerializedSize(int i) {
        this.memoizedSize = i;
    }

    @Override // com.google.protobuf.Message
    public final String toString() {
        return j1.m20642instanceof().m20740super(this);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        MessageReflection.m19657catch(this, getAllFields(), cnative, false);
    }
}
