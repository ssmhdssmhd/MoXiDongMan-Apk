.class interface abstract Lcom/google/protobuf/MessageReflection$MergeTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MergeTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MessageReflection$MergeTarget$do;
    }
.end annotation


# virtual methods
.method public abstract addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
.end method

.method public abstract clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/MessageReflection$MergeTarget;
.end method

.method public abstract clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/MessageReflection$MergeTarget;
.end method

.method public abstract findExtensionByName(Lcom/google/protobuf/protected;Ljava/lang/String;)Lcom/google/protobuf/protected$for;
.end method

.method public abstract findExtensionByNumber(Lcom/google/protobuf/protected;Lcom/google/protobuf/Descriptors$if;I)Lcom/google/protobuf/protected$for;
.end method

.method public abstract finish()Ljava/lang/Object;
.end method

.method public abstract getContainerType()Lcom/google/protobuf/MessageReflection$MergeTarget$do;
.end method

.method public abstract getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
.end method

.method public abstract getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
.end method

.method public abstract getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;
.end method

.method public abstract getUtf8Validation(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/c2$new;
.end method

.method public abstract hasField(Lcom/google/protobuf/Descriptors$else;)Z
.end method

.method public abstract hasOneof(Lcom/google/protobuf/Descriptors$break;)Z
.end method

.method public abstract newEmptyTargetForField(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;
.end method

.method public abstract newMergeTargetForField(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;
.end method

.method public abstract parseGroup(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parseMessage(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parseMessageFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
.end method

.method public abstract setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
.end method
