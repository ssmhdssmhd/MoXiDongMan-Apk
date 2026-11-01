.class Lcom/google/protobuf/MessageReflection$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/Message$Builder;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Message$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;

    return-object p0
.end method

.method public findExtensionByName(Lcom/google/protobuf/protected;Ljava/lang/String;)Lcom/google/protobuf/protected$for;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/protected;->throw(Ljava/lang/String;)Lcom/google/protobuf/protected$for;

    move-result-object p1

    return-object p1
.end method

.method public findExtensionByNumber(Lcom/google/protobuf/protected;Lcom/google/protobuf/Descriptors$if;I)Lcom/google/protobuf/protected$for;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/protected;->while(Lcom/google/protobuf/Descriptors$if;I)Lcom/google/protobuf/protected$for;

    move-result-object p1

    return-object p1
.end method

.method public finish()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public getContainerType()Lcom/google/protobuf/MessageReflection$MergeTarget$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/MessageReflection$MergeTarget$do;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageOrBuilder;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageOrBuilder;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;

    move-result-object p1

    return-object p1
.end method

.method public getUtf8Validation(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/c2$new;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->continue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/protobuf/c2$new;->STRICT:Lcom/google/protobuf/c2$new;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    instance-of p1, p1, Lcom/google/protobuf/GeneratedMessage$case;

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/google/protobuf/c2$new;->LAZY:Lcom/google/protobuf/c2$new;

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Lcom/google/protobuf/c2$new;->LOOSE:Lcom/google/protobuf/c2$new;

    return-object p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageOrBuilder;->hasField(Lcom/google/protobuf/Descriptors$else;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$break;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageOrBuilder;->hasOneof(Lcom/google/protobuf/Descriptors$break;)Z

    move-result p1

    return p1
.end method

.method public newEmptyTargetForField(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {p2, p1}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    .line 3
    :goto_0
    new-instance p2, Lcom/google/protobuf/MessageReflection$if;

    invoke-direct {p2, p1}, Lcom/google/protobuf/MessageReflection$if;-><init>(Lcom/google/protobuf/Message$Builder;)V

    return-object p2
.end method

.method public newMergeTargetForField(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {p2, p1}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object p2

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageReflection$if;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Message;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 6
    :cond_1
    new-instance p1, Lcom/google/protobuf/MessageReflection$if;

    invoke-direct {p1, p2}, Lcom/google/protobuf/MessageReflection$if;-><init>(Lcom/google/protobuf/Message$Builder;)V

    return-object p1
.end method

.method public parseGroup(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    .line 3
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$if;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p4, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/protobuf/CodedInputStream;->continue(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/implements;)V

    .line 7
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public parseMessage(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    .line 3
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$if;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Message;

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 6
    :cond_1
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/CodedInputStream;->protected(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/implements;)V

    .line 7
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public parseMessageFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    .line 3
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$if;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Message;

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p4, p3}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 6
    :cond_1
    invoke-interface {p4, p1, p2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message$Builder;

    .line 7
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$if;->do:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Message$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    return-object p0
.end method
