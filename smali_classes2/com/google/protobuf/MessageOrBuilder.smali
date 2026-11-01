.class public interface abstract Lcom/google/protobuf/MessageOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract findInitializationErrors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$else;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/protobuf/Message;
.end method

.method public abstract getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
.end method

.method public abstract getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
.end method

.method public abstract getInitializationErrorString()Ljava/lang/String;
.end method

.method public abstract getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;
.end method

.method public abstract getRepeatedField(Lcom/google/protobuf/Descriptors$else;I)Ljava/lang/Object;
.end method

.method public abstract getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I
.end method

.method public abstract getUnknownFields()Lcom/google/protobuf/t1;
.end method

.method public abstract hasField(Lcom/google/protobuf/Descriptors$else;)Z
.end method

.method public abstract hasOneof(Lcom/google/protobuf/Descriptors$break;)Z
.end method
