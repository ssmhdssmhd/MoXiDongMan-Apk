.class public final Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;"
    }
.end annotation


# instance fields
.field private do:I

.field private for:I

.field private if:I

.field private new:Lcom/google/protobuf/DescriptorProtos$try;

.field private try:Lcom/google/protobuf/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/DescriptorProtos$try;",
            "Lcom/google/protobuf/DescriptorProtos$try$if;",
            "Lcom/google/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private const()Lcom/google/protobuf/a1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/DescriptorProtos$try;",
            "Lcom/google/protobuf/DescriptorProtos$try$if;",
            "Lcom/google/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/a1;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->getOptions()Lcom/google/protobuf/DescriptorProtos$try;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->protected()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->const()Lcom/google/protobuf/a1;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public break()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->if()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->if()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->for()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->for()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v0

    return-object v0
.end method

.method public case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    return-object p1
.end method

.method public catch()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v0

    return-object v0
.end method

.method public class()Lcom/google/protobuf/DescriptorProtos$try$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->const()Lcom/google/protobuf/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$try$if;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->else(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->else(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->else(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->break()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->break()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->break()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->break()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->break()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

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
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->break()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v0

    return-object v0
.end method

.method public final default(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    return-object p1
.end method

.method public do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    return-object p1
.end method

.method public else(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    return-object p1
.end method

.method public final(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->super(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

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

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->super(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    .line 6
    :cond_1
    throw p1
.end method

.method public for()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/DescriptorProtos$do;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->if:I

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->access$3302(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 4
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->for:I

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->access$3402(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->access$3502(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;Lcom/google/protobuf/DescriptorProtos$try;)Lcom/google/protobuf/DescriptorProtos$try;

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/a1;->do()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$try;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->access$3502(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;Lcom/google/protobuf/DescriptorProtos$try;)Lcom/google/protobuf/DescriptorProtos$try;

    :goto_1
    or-int/lit8 v2, v2, 0x4

    .line 8
    :cond_3
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->access$3602(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;I)I

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->catch()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->catch()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->protected()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->for:I

    return v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$try;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$try;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$try;

    move-result-object v0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->try()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$try;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->case()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$try;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$try;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->if:I

    return v0
.end method

.method public goto()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->if()Lcom/google/protobuf/a1;

    .line 5
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    return-object p0
.end method

.method public hasEnd()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStart()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public if()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->for()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public final import(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    return-object p1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->transient()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->getOptions()Lcom/google/protobuf/DescriptorProtos$try;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$try;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->final(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->throw(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->final(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->final(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->throw(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->final(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->import(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->import(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->import(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public native(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    .line 2
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->for:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public new()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->if:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    .line 4
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->for:I

    and-int/lit8 v0, v1, -0x3

    .line 5
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->if()Lcom/google/protobuf/a1;

    .line 9
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    return-object p0
.end method

.method public public(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    return-object p1
.end method

.method public return(Lcom/google/protobuf/DescriptorProtos$try$if;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$try$if;->protected()Lcom/google/protobuf/DescriptorProtos$try;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$try$if;->protected()Lcom/google/protobuf/DescriptorProtos$try;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->public(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->public(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->switch(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->switch(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->default(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->default(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1
.end method

.method public static(Lcom/google/protobuf/DescriptorProtos$try;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    return-object p0
.end method

.method public super(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->throws(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->getEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->native(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->getOptions()Lcom/google/protobuf/DescriptorProtos$try;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->while(Lcom/google/protobuf/DescriptorProtos$try;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    .line 8
    :cond_3
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->import(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public switch(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    return-object p1
.end method

.method public this()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->if:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public throw(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->super(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public throws(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    .line 2
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->if:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public try()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->for:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public while(Lcom/google/protobuf/DescriptorProtos$try;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->try:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$try;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$try;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$try;->newBuilder(Lcom/google/protobuf/DescriptorProtos$try;)Lcom/google/protobuf/DescriptorProtos$try$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$try$if;->j(Lcom/google/protobuf/DescriptorProtos$try;)Lcom/google/protobuf/DescriptorProtos$try$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$try$if;->transient()Lcom/google/protobuf/DescriptorProtos$try;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->new:Lcom/google/protobuf/DescriptorProtos$try;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->else(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 9
    :goto_1
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->do:I

    return-object p0
.end method
