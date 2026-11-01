.class public Lcom/google/protobuf/GeneratedMessage$break;
.super Lcom/google/protobuf/volatile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/Message;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/volatile<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field private final case:Lcom/google/protobuf/volatile$do;

.field private do:Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

.field private final for:Lcom/google/protobuf/Message;

.field private final if:Ljava/lang/Class;

.field private final new:Ljava/lang/reflect/Method;

.field private final try:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;Ljava/lang/Class;Lcom/google/protobuf/Message;Lcom/google/protobuf/volatile$do;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/volatile;-><init>()V

    .line 2
    const-class v0, Lcom/google/protobuf/Message;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Bad messageDefaultInstance for "

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$break;->do:Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    .line 7
    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$break;->if:Ljava/lang/Class;

    .line 8
    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessage$break;->for:Lcom/google/protobuf/Message;

    .line 9
    const-class p1, Lcom/google/protobuf/ProtocolMessageEnum;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    .line 10
    const-class p3, Lcom/google/protobuf/Descriptors$case;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "valueOf"

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$break;->new:Ljava/lang/reflect/Method;

    new-array p1, v0, [Ljava/lang/Class;

    const-string p3, "getValueDescriptor"

    .line 11
    invoke-static {p2, p3, p1}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$break;->try:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$break;->new:Ljava/lang/reflect/Method;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$break;->try:Ljava/lang/reflect/Method;

    .line 14
    :goto_1
    iput-object p4, p0, Lcom/google/protobuf/GeneratedMessage$break;->case:Lcom/google/protobuf/volatile$do;

    return-void
.end method


# virtual methods
.method public break()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->for:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public case()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    return v0
.end method

.method public class(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/protobuf/GeneratedMessage$try;->do:[I

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->new:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lcom/google/protobuf/Descriptors$case;

    aput-object p1, v1, v3

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->if:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->for:Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/Message;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public const(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/protobuf/GeneratedMessage$try;->do:[I

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->try:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public do()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->for:Lcom/google/protobuf/Message;

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->const()Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessage$break;->class(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public else(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-eq v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->ENUM:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage$break;->class(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$break;->class(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->ENUM:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessage$break;->const(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$break;->const(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic for()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->break()Lcom/google/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public goto()Lcom/google/protobuf/Descriptors$else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->do:Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;->getDescriptor()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDescriptor() called before internalInit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public if()Lcom/google/protobuf/c2$if;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->getLiteType()Lcom/google/protobuf/c2$if;

    move-result-object v0

    return-object v0
.end method

.method public new()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$break;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v0

    return v0
.end method

.method public super(Lcom/google/protobuf/Descriptors$else;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->do:Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$break$do;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage$break$do;-><init>(Lcom/google/protobuf/GeneratedMessage$break;Lcom/google/protobuf/Descriptors$else;)V

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->do:Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public this()Lcom/google/protobuf/volatile$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$break;->case:Lcom/google/protobuf/volatile$do;

    return-object v0
.end method
