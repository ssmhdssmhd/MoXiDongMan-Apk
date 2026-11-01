.class public final Lcom/google/protobuf/class$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/BoolValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/class$if;",
        ">;",
        "Lcom/google/protobuf/BoolValueOrBuilder;"
    }
.end annotation


# instance fields
.field private do:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/class$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/class$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/class$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/class$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/class$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/class$if;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/d2;->const:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/class$if;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/class$if;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public break(Lcom/google/protobuf/class;)Lcom/google/protobuf/class$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/class;->getDefaultInstance()Lcom/google/protobuf/class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/class;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/class;->getValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/class$if;->while(Z)Lcom/google/protobuf/class$if;

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->const(Lcom/google/protobuf/t1;)Lcom/google/protobuf/class$if;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->if()Lcom/google/protobuf/class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->if()Lcom/google/protobuf/class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->for()Lcom/google/protobuf/class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->for()Lcom/google/protobuf/class;

    move-result-object v0

    return-object v0
.end method

.method public case(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/class$if;

    return-object p1
.end method

.method public catch(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/class$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/class;->access$400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/class;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->break(Lcom/google/protobuf/class;)Lcom/google/protobuf/class$if;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/n;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/n;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/protobuf/class$if;->break(Lcom/google/protobuf/class;)Lcom/google/protobuf/class$if;

    .line 6
    :cond_1
    throw p1
.end method

.method public class(Lcom/google/protobuf/Message;)Lcom/google/protobuf/class$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/class;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/class;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->break(Lcom/google/protobuf/class;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->new()Lcom/google/protobuf/class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->new()Lcom/google/protobuf/class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->new()Lcom/google/protobuf/class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->new()Lcom/google/protobuf/class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->try(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->try(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->case(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->case(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->case(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->goto()Lcom/google/protobuf/class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->goto()Lcom/google/protobuf/class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->goto()Lcom/google/protobuf/class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->goto()Lcom/google/protobuf/class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->goto()Lcom/google/protobuf/class$if;

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

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->goto()Lcom/google/protobuf/class$if;

    move-result-object v0

    return-object v0
.end method

.method public final const(Lcom/google/protobuf/t1;)Lcom/google/protobuf/class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/class$if;

    return-object p1
.end method

.method public do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/class$if;

    return-object p1
.end method

.method public else()Lcom/google/protobuf/class$if;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/class$if;->do:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/class$if;

    return-object p1
.end method

.method public for()Lcom/google/protobuf/class;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/class;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/class;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/class$do;)V

    .line 2
    iget-boolean v1, p0, Lcom/google/protobuf/class$if;->do:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/class;->access$302(Lcom/google/protobuf/class;Z)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->this()Lcom/google/protobuf/class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->this()Lcom/google/protobuf/class;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/d2;->const:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/class$if;->do:Z

    return v0
.end method

.method public goto()Lcom/google/protobuf/class$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/class$if;

    return-object v0
.end method

.method public if()Lcom/google/protobuf/class;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/class$if;->for()Lcom/google/protobuf/class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/class;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/d2;->final:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/class;

    const-class v2, Lcom/google/protobuf/class$if;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/class$if;->catch(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->class(Lcom/google/protobuf/Message;)Lcom/google/protobuf/class$if;

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

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/class$if;->catch(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/class$if;

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

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/class$if;->catch(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->class(Lcom/google/protobuf/Message;)Lcom/google/protobuf/class$if;

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

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/class$if;->catch(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->const(Lcom/google/protobuf/t1;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->const(Lcom/google/protobuf/t1;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->const(Lcom/google/protobuf/t1;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public new()Lcom/google/protobuf/class$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/protobuf/class$if;->do:Z

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/class$if;->final(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/class$if;->final(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/class$if;->super(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/class$if;->super(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->throw(Lcom/google/protobuf/t1;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/class$if;->throw(Lcom/google/protobuf/t1;)Lcom/google/protobuf/class$if;

    move-result-object p1

    return-object p1
.end method

.method public super(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/class$if;

    return-object p1
.end method

.method public this()Lcom/google/protobuf/class;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/class;->getDefaultInstance()Lcom/google/protobuf/class;

    move-result-object v0

    return-object v0
.end method

.method public final throw(Lcom/google/protobuf/t1;)Lcom/google/protobuf/class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/class$if;

    return-object p1
.end method

.method public try(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/class$if;

    return-object p1
.end method

.method public while(Z)Lcom/google/protobuf/class$if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/class$if;->do:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method
