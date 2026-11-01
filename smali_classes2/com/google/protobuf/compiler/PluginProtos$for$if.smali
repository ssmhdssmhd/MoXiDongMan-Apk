.class public final Lcom/google/protobuf/compiler/PluginProtos$for$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/compiler/PluginProtos$VersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/compiler/PluginProtos$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/compiler/PluginProtos$for$if;",
        ">;",
        "Lcom/google/protobuf/compiler/PluginProtos$VersionOrBuilder;"
    }
.end annotation


# instance fields
.field private do:I

.field private for:I

.field private if:I

.field private new:I

.field private try:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 7
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/compiler/PluginProtos$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/compiler/PluginProtos$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->do()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$for;->access$400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public break()Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    .line 2
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$for;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$for;->getSuffix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->if()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->if()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    return-object v0
.end method

.method public case()Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->if:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public catch()Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$for$if;

    return-object v0
.end method

.method public class()Lcom/google/protobuf/compiler/PluginProtos$for;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$for;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->new()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->new()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->new()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->new()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->goto(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->goto(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->goto(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->catch()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->catch()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->catch()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->catch()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->catch()Lcom/google/protobuf/compiler/PluginProtos$for$if;

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
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->catch()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    return-object v0
.end method

.method public const(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/compiler/PluginProtos$for;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$for;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->super(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

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

    check-cast p2, Lcom/google/protobuf/compiler/PluginProtos$for;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->super(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    .line 6
    :cond_1
    throw p1
.end method

.method public do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$for$if;

    return-object p1
.end method

.method public else()Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$for;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$for;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->super(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public for()Lcom/google/protobuf/compiler/PluginProtos$for;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$for;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$for;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/compiler/PluginProtos$do;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget v2, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->if:I

    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$for;->access$602(Lcom/google/protobuf/compiler/PluginProtos$for;I)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 4
    iget v3, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for:I

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$for;->access$702(Lcom/google/protobuf/compiler/PluginProtos$for;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    .line 5
    iget v3, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->new:I

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$for;->access$802(Lcom/google/protobuf/compiler/PluginProtos$for;I)I

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v2, v2, 0x8

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$for;->access$902(Lcom/google/protobuf/compiler/PluginProtos$for;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$for;->access$1002(Lcom/google/protobuf/compiler/PluginProtos$for;I)I

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->class()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->class()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->do()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->if:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for:I

    return v0
.end method

.method public getPatch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->new:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 7
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSuffixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public goto(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$for$if;

    return-object p1
.end method

.method public hasMajor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMinor()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPatch()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSuffix()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if()Lcom/google/protobuf/compiler/PluginProtos$for;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$for;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public import(I)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    .line 2
    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->if:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->if()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/compiler/PluginProtos$for;

    const-class v2, Lcom/google/protobuf/compiler/PluginProtos$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->const(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->final(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->const(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->const(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->final(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->const(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->throw(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->throw(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->throw(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public native(I)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    .line 2
    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public new()Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->if:I

    .line 3
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    .line 4
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for:I

    and-int/lit8 v1, v1, -0x3

    .line 5
    iput v1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    .line 6
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->new:I

    and-int/lit8 v0, v1, -0x5

    .line 7
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x9

    .line 9
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    return-object p0
.end method

.method public public(I)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    .line 2
    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->new:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public return(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$for$if;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->while(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->while(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->return(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->return(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->throws(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->throws(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    return-object p1
.end method

.method public static(Ljava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public super(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$for;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for;->hasMajor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for;->getMajor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->import(I)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for;->hasMinor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for;->getMinor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->native(I)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for;->hasPatch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for;->getPatch()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->public(I)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for;->hasSuffix()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    .line 10
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$for;->access$900(Lcom/google/protobuf/compiler/PluginProtos$for;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 12
    :cond_4
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$for;->access$1100(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->throw(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public switch(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->try:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public this()Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->do:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$for$if;->new:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final throw(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$for$if;

    return-object p1
.end method

.method public final throws(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$for$if;

    return-object p1
.end method

.method public try(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$for$if;

    return-object p1
.end method

.method public while(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$for$if;

    return-object p1
.end method
