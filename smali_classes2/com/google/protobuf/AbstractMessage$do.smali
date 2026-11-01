.class public abstract Lcom/google/protobuf/AbstractMessage$do;
.super Lcom/google/protobuf/AbstractMessageLite$do;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/AbstractMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/google/protobuf/AbstractMessage$do<",
        "TBuilderType;>;>",
        "Lcom/google/protobuf/AbstractMessageLite$do;",
        "Lcom/google/protobuf/Message$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite$do;-><init>()V

    return-void
.end method

.method public static newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/sb2;

    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->for(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/sb2;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$else;

    invoke-interface {p0, v1}, Lcom/google/protobuf/Message$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$do;->clear()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$do;->clear()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    return-object v0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$break;",
            ")TBuilderType;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "clearOneof() is not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented in subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$do;->clone()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$do;->clone()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$do;->clone()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$do;->clone()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    return-object v0
.end method

.method dispose()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findInitializationErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->for(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldBuilder(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on an unsupported message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInitializationErrorString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$do;->findInitializationErrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/MessageReflection;->do(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getOneofFieldDescriptor() is not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$else;I)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on an unsupported message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$break;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasOneof() is not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/AbstractMessageLite;",
            ")TBuilderType;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/protobuf/Message;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public markClean()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Z

    move-result p1

    return p1
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage$do;

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/implements;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 60
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage$do;

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/google/protobuf/protected;->static()Lcom/google/protobuf/protected;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/implements;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/google/protobuf/t1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/t1;->break(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object v0

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 55
    :cond_2
    new-instance v5, Lcom/google/protobuf/MessageReflection$if;

    invoke-direct {v5, p0}, Lcom/google/protobuf/MessageReflection$if;-><init>(Lcom/google/protobuf/Message$Builder;)V

    .line 56
    invoke-interface {p0}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v4

    move-object v1, p1

    move-object v2, v0

    move-object v3, p2

    .line 57
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/MessageReflection;->else(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/MessageReflection$MergeTarget;I)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/Message$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;

    :cond_3
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            ")TBuilderType;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;Ljava/util/Map;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;Ljava/util/Map;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$else;",
            "Ljava/lang/Object;",
            ">;)TBuilderType;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 34
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$else;

    .line 36
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 38
    invoke-interface {p0, v1, v2}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v2, v3, :cond_3

    .line 40
    invoke-interface {p0, v1}, Lcom/google/protobuf/MessageOrBuilder;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Message;

    .line 41
    invoke-interface {v2}, Lcom/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {v2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v3

    .line 44
    invoke-interface {v3, v2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v2

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v0

    .line 47
    invoke-interface {p0, v1, v0}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 48
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 49
    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0

    .line 50
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage$do;

    return-object p1
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/implements;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage$do;

    return-object p1
.end method

.method public mergeFrom([B)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage$do;

    return-object p1
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage$do;

    return-object p1
.end method

.method public mergeFrom([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/implements;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeFrom([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage$do;

    return-object p1
.end method

.method public mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/implements;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$do;->mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage$do;

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t1;",
            ")TBuilderType;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/google/protobuf/t1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/t1;->break(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1$if;->public(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Lcom/google/protobuf/Message$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/j1$try;->super(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
