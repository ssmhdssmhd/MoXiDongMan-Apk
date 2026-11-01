.class public final Lcom/google/protobuf/finally$if;
.super Lcom/google/protobuf/AbstractMessage$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractMessage$do<",
        "Lcom/google/protobuf/finally$if;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/Descriptors$if;

.field private final for:[Lcom/google/protobuf/Descriptors$else;

.field private if:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;"
        }
    .end annotation
.end field

.field private new:Lcom/google/protobuf/t1;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$if;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage$do;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    .line 4
    invoke-static {}, Lcom/google/protobuf/FieldSet;->synchronized()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    .line 5
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->extends()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$else;

    iput-object v0, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$catch;->getMapEntry()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/finally$if;->while()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/finally$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;-><init>(Lcom/google/protobuf/Descriptors$if;)V

    return-void
.end method

.method private break(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/finally$if;->class(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/finally$if;->class(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private catch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->abstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->catch()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    :cond_0
    return-void
.end method

.method private class(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p1, p2, Lcom/google/protobuf/Descriptors$case;

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic do(Lcom/google/protobuf/finally$if;)Lcom/google/protobuf/finally;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/finally$if;->new()Lcom/google/protobuf/finally;

    move-result-object p0

    return-object p0
.end method

.method private new()Lcom/google/protobuf/finally;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->try()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/protobuf/finally;

    iget-object v1, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    iget-object v2, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    iget-object v3, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    array-length v4, v3

    .line 4
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/Descriptors$else;

    iget-object v4, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/finally;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/FieldSet;[Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/t1;)V

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/sb2;->asInvalidProtocolBufferException()Lcom/google/protobuf/n;

    move-result-object v0

    throw v0
.end method

.method private return(Lcom/google/protobuf/Descriptors$else;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static(Lcom/google/protobuf/Descriptors$break;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$break;->break()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private while()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$else;

    .line 2
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/finally;->try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->const()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/finally$if;->if(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->for()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->for()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->try()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->try()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
.end method

.method public case()Lcom/google/protobuf/finally$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->abstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/FieldSet;->synchronized()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->this()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMapEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/finally$if;->while()V

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->case()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->case()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->case()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->else(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->goto(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->goto(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->this()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->this()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->this()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->this()Lcom/google/protobuf/finally$if;

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

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->this()Lcom/google/protobuf/finally$if;

    move-result-object v0

    return-object v0
.end method

.method public const()Lcom/google/protobuf/finally;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    invoke-static {v0}, Lcom/google/protobuf/finally;->try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
.end method

.method public else(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/finally$if;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->return(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/finally$if;->catch()V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$break;->final()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    .line 6
    aput-object v2, v1, v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->break(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method public final(Lcom/google/protobuf/Message;)Lcom/google/protobuf/finally$if;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/finally;

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lcom/google/protobuf/finally;

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/finally;->do(Lcom/google/protobuf/finally;)Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    if-ne v0, v1, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/finally$if;->catch()V

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-static {p1}, Lcom/google/protobuf/finally;->if(Lcom/google/protobuf/finally;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->transient(Lcom/google/protobuf/FieldSet;)V

    .line 6
    invoke-static {p1}, Lcom/google/protobuf/finally;->for(Lcom/google/protobuf/finally;)Lcom/google/protobuf/t1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/finally$if;->super(Lcom/google/protobuf/t1;)Lcom/google/protobuf/finally$if;

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 8
    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 9
    invoke-static {p1}, Lcom/google/protobuf/finally;->new(Lcom/google/protobuf/finally;)[Lcom/google/protobuf/Descriptors$else;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/finally;->new(Lcom/google/protobuf/finally;)[Lcom/google/protobuf/Descriptors$else;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    aget-object v1, v1, v0

    .line 11
    invoke-static {p1}, Lcom/google/protobuf/finally;->new(Lcom/google/protobuf/finally;)[Lcom/google/protobuf/Descriptors$else;

    move-result-object v2

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    iget-object v2, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->break(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    invoke-static {p1}, Lcom/google/protobuf/finally;->new(Lcom/google/protobuf/finally;)[Lcom/google/protobuf/Descriptors$else;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/finally$if;

    return-object p1
.end method

.method public for()Lcom/google/protobuf/finally;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->try()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/protobuf/finally;

    iget-object v1, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    iget-object v2, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    iget-object v3, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    array-length v4, v3

    .line 4
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/Descriptors$else;

    iget-object v4, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/finally;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/FieldSet;[Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/t1;)V

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$else;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->public()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->const()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/finally$if;->const()Lcom/google/protobuf/finally;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->return(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->return(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/finally;->try(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/finally;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->const()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getFieldBuilder(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Descriptors$else;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->static(Lcom/google/protobuf/Descriptors$break;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$break;->final()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$else;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->return(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->throws(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$else;I)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->return(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->default(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    return-object v0
.end method

.method public goto(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/finally$if;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->static(Lcom/google/protobuf/Descriptors$break;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$break;->final()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->else(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/finally$if;

    :cond_0
    return-object p0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->return(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->package(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$break;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->static(Lcom/google/protobuf/Descriptors$break;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$break;->final()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public if(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/finally$if;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->return(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/finally$if;->catch()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->goto(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public import(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/finally$if;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->return(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/finally$if;->catch()V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->ENUM:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/finally$if;->break(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$break;->final()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    .line 8
    iget-object v2, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/FieldSet;->break(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    aput-object p1, v1, v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    if-ne v0, v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-eq v0, v1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->const()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object p2, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/FieldSet;->break(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->b(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    iget-object v1, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/google/protobuf/finally;->else(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->final(Lcom/google/protobuf/Message;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->final(Lcom/google/protobuf/Message;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->super(Lcom/google/protobuf/t1;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->super(Lcom/google/protobuf/t1;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public native(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/finally$if;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->return(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/finally$if;->catch()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldSet;->c(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->throw(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public public(Lcom/google/protobuf/t1;)Lcom/google/protobuf/finally$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/finally$if;->import(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/finally$if;->native(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/finally$if;->public(Lcom/google/protobuf/t1;)Lcom/google/protobuf/finally$if;

    move-result-object p1

    return-object p1
.end method

.method public super(Lcom/google/protobuf/t1;)Lcom/google/protobuf/finally$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/t1;->break(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1$if;->public(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public this()Lcom/google/protobuf/finally$if;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/protobuf/finally$if;

    iget-object v1, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    invoke-direct {v0, v1}, Lcom/google/protobuf/finally$if;-><init>(Lcom/google/protobuf/Descriptors$if;)V

    .line 2
    iget-object v1, v0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    iget-object v2, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->transient(Lcom/google/protobuf/FieldSet;)V

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/finally$if;->super(Lcom/google/protobuf/t1;)Lcom/google/protobuf/finally$if;

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    iget-object v2, v0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public throw(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/finally$if;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/finally$if;->return(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/google/protobuf/finally$if;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/protobuf/finally$if;-><init>(Lcom/google/protobuf/Descriptors$if;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public try()Lcom/google/protobuf/finally;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->protected()V

    .line 2
    new-instance v0, Lcom/google/protobuf/finally;

    iget-object v1, p0, Lcom/google/protobuf/finally$if;->do:Lcom/google/protobuf/Descriptors$if;

    iget-object v2, p0, Lcom/google/protobuf/finally$if;->if:Lcom/google/protobuf/FieldSet;

    iget-object v3, p0, Lcom/google/protobuf/finally$if;->for:[Lcom/google/protobuf/Descriptors$else;

    array-length v4, v3

    .line 3
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/protobuf/Descriptors$else;

    iget-object v4, p0, Lcom/google/protobuf/finally$if;->new:Lcom/google/protobuf/t1;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/finally;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/FieldSet;[Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/t1;)V

    return-object v0
.end method
