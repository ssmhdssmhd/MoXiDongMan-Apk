.class public final Lcom/google/protobuf/g0$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/g0$if;",
        ">;",
        "Lcom/google/protobuf/MethodOrBuilder;"
    }
.end annotation


# instance fields
.field private case:Z

.field private do:I

.field private else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/o0;",
            ">;"
        }
    .end annotation
.end field

.field private for:Ljava/lang/Object;

.field private goto:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/o0;",
            "Lcom/google/protobuf/o0$if;",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private if:Ljava/lang/Object;

.field private new:Z

.field private this:I

.field private try:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/protobuf/g0$if;->this:I

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/google/protobuf/g0$if;->this:I

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/g0$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/g0$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/g0$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;-><init>()V

    return-void
.end method

.method private extends()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/o0;",
            "Lcom/google/protobuf/o0$if;",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/g0$if;->do:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/v0;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/goto;->for:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->extends()Lcom/google/protobuf/v0;

    :cond_0
    return-void
.end method

.method private static()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/g0$if;->do:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/g0$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/g0$if;->do:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final abstract(Lcom/google/protobuf/t1;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0$if;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0$if;->goto(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0$if;->goto(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/g0$if;->case:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public break()Lcom/google/protobuf/g0;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/g0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/g0;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/g0$do;)V

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/g0;->access$302(Lcom/google/protobuf/g0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/g0;->access$402(Lcom/google/protobuf/g0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lcom/google/protobuf/g0$if;->new:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/g0;->access$502(Lcom/google/protobuf/g0;Z)Z

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/g0;->access$602(Lcom/google/protobuf/g0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Lcom/google/protobuf/g0$if;->case:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/g0;->access$702(Lcom/google/protobuf/g0;Z)Z

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v1, :cond_1

    .line 8
    iget v1, p0, Lcom/google/protobuf/g0$if;->do:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    .line 10
    iget v1, p0, Lcom/google/protobuf/g0$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/g0$if;->do:I

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/g0;->access$802(Lcom/google/protobuf/g0;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/g0;->access$802(Lcom/google/protobuf/g0;Ljava/util/List;)Ljava/util/List;

    .line 13
    :goto_0
    iget v1, p0, Lcom/google/protobuf/g0$if;->this:I

    invoke-static {v0, v1}, Lcom/google/protobuf/g0;->access$902(Lcom/google/protobuf/g0;I)I

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->this()Lcom/google/protobuf/g0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->this()Lcom/google/protobuf/g0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->break()Lcom/google/protobuf/g0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->break()Lcom/google/protobuf/g0;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public case()Lcom/google/protobuf/o0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->extends()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/o0;->getDefaultInstance()Lcom/google/protobuf/o0;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$if;

    return-object v0
.end method

.method public catch()Lcom/google/protobuf/g0$if;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/google/protobuf/g0$if;->new:Z

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    .line 6
    iput-boolean v1, p0, Lcom/google/protobuf/g0$if;->case:Z

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    .line 9
    iget v0, p0, Lcom/google/protobuf/g0$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/g0$if;->do:I

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    .line 11
    :goto_0
    iput v1, p0, Lcom/google/protobuf/g0$if;->this:I

    return-object p0
.end method

.method public class(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0$if;

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->catch()Lcom/google/protobuf/g0$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->catch()Lcom/google/protobuf/g0$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->catch()Lcom/google/protobuf/g0$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->catch()Lcom/google/protobuf/g0$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->class(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->class(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->final(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->final(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->final(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->return()Lcom/google/protobuf/g0$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->return()Lcom/google/protobuf/g0$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->return()Lcom/google/protobuf/g0$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->return()Lcom/google/protobuf/g0$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->return()Lcom/google/protobuf/g0$if;

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
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->return()Lcom/google/protobuf/g0$if;

    move-result-object v0

    return-object v0
.end method

.method public const()Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/g0;->getDefaultInstance()Lcom/google/protobuf/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g0;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public continue(I)Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->static()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->static(I)V

    :goto_0
    return-object p0
.end method

.method public d(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public default()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/o0$if;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->extends()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public do(Ljava/lang/Iterable;)Lcom/google/protobuf/g0$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/o0;",
            ">;)",
            "Lcom/google/protobuf/g0$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->static()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public e(Lcom/google/protobuf/i1;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/i1;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/g0$if;->this:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public else(I)Lcom/google/protobuf/o0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->extends()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/o0;->getDefaultInstance()Lcom/google/protobuf/o0;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$if;

    return-object p1
.end method

.method public f(I)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/g0$if;->this:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0$if;

    return-object p1
.end method

.method public finally(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/g0$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/g0;->access$1000()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->private(Lcom/google/protobuf/g0;)Lcom/google/protobuf/g0$if;

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

    check-cast p2, Lcom/google/protobuf/g0;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0$if;->private(Lcom/google/protobuf/g0;)Lcom/google/protobuf/g0$if;

    .line 6
    :cond_1
    throw p1
.end method

.method public for(ILcom/google/protobuf/o0;)Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->static()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public final g(Lcom/google/protobuf/t1;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0$if;

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->switch()Lcom/google/protobuf/g0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->switch()Lcom/google/protobuf/g0;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/goto;->for:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0;

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/o0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/OptionOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStreaming()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/g0$if;->new:Z

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResponseStreaming()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/g0$if;->case:Z

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/i1;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/g0$if;->this:I

    invoke-static {v0}, Lcom/google/protobuf/i1;->valueOf(I)Lcom/google/protobuf/i1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/protobuf/i1;->UNRECOGNIZED:Lcom/google/protobuf/i1;

    :cond_0
    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/g0$if;->this:I

    return v0
.end method

.method public goto(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0$if;

    return-object p1
.end method

.method public if(ILcom/google/protobuf/o0$if;)Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->static()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/o0$if;->if()Lcom/google/protobuf/o0;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/o0$if;->if()Lcom/google/protobuf/o0;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public implements(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0$if;

    return-object p1
.end method

.method public import()Lcom/google/protobuf/g0$if;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/g0$if;->case:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public instanceof(Z)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/g0$if;->new:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public interface(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/goto;->new:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/g0;

    const-class v2, Lcom/google/protobuf/g0$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0$if;->finally(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->package(Lcom/google/protobuf/Message;)Lcom/google/protobuf/g0$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0$if;->finally(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/g0$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0$if;->finally(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->package(Lcom/google/protobuf/Message;)Lcom/google/protobuf/g0$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0$if;->finally(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->abstract(Lcom/google/protobuf/t1;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->abstract(Lcom/google/protobuf/t1;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->abstract(Lcom/google/protobuf/t1;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public native()Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/g0;->getDefaultInstance()Lcom/google/protobuf/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g0;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public new(Lcom/google/protobuf/o0$if;)Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->static()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/o0$if;->if()Lcom/google/protobuf/o0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/o0$if;->if()Lcom/google/protobuf/o0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public package(Lcom/google/protobuf/Message;)Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/g0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/g0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->private(Lcom/google/protobuf/g0;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public private(Lcom/google/protobuf/g0;)Lcom/google/protobuf/g0$if;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/g0;->getDefaultInstance()Lcom/google/protobuf/g0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/g0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/g0;->access$300(Lcom/google/protobuf/g0;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/g0;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/google/protobuf/g0;->access$400(Lcom/google/protobuf/g0;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/g0;->getRequestStreaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/g0;->getRequestStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0$if;->instanceof(Z)Lcom/google/protobuf/g0$if;

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/g0;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-static {p1}, Lcom/google/protobuf/g0;->access$600(Lcom/google/protobuf/g0;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->try:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/g0;->getResponseStreaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/g0;->getResponseStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0$if;->b(Z)Lcom/google/protobuf/g0$if;

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_7

    .line 16
    invoke-static {p1}, Lcom/google/protobuf/g0;->access$800(Lcom/google/protobuf/g0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 17
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-static {p1}, Lcom/google/protobuf/g0;->access$800(Lcom/google/protobuf/g0;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    .line 19
    iget v0, p0, Lcom/google/protobuf/g0$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/g0$if;->do:I

    goto :goto_0

    .line 20
    :cond_6
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->static()V

    .line 21
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/g0;->access$800(Lcom/google/protobuf/g0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_1

    .line 23
    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/g0;->access$800(Lcom/google/protobuf/g0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 24
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    .line 27
    invoke-static {p1}, Lcom/google/protobuf/g0;->access$800(Lcom/google/protobuf/g0;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    .line 28
    iget v1, p0, Lcom/google/protobuf/g0$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/g0$if;->do:I

    .line 29
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_8

    .line 30
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->extends()Lcom/google/protobuf/v0;

    move-result-object v0

    :cond_8
    iput-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    goto :goto_1

    .line 31
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/google/protobuf/g0;->access$800(Lcom/google/protobuf/g0;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 32
    :cond_a
    :goto_1
    invoke-static {p1}, Lcom/google/protobuf/g0;->access$900(Lcom/google/protobuf/g0;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/g0;->getSyntaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0$if;->f(I)Lcom/google/protobuf/g0$if;

    .line 34
    :cond_b
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->abstract(Lcom/google/protobuf/t1;)Lcom/google/protobuf/g0$if;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public protected(ILcom/google/protobuf/o0$if;)Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->static()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/o0$if;->if()Lcom/google/protobuf/o0;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/o0$if;->if()Lcom/google/protobuf/o0;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public public()Lcom/google/protobuf/g0$if;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/protobuf/g0$if;->this:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public return()Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/g0$if;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0$if;->strictfp(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g0$if;->strictfp(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g0$if;->implements(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g0$if;->implements(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->g(Lcom/google/protobuf/t1;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0$if;->g(Lcom/google/protobuf/t1;)Lcom/google/protobuf/g0$if;

    move-result-object p1

    return-object p1
.end method

.method public strictfp(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0$if;

    return-object p1
.end method

.method public super()Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/g0$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/g0$if;->do:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public switch()Lcom/google/protobuf/g0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/g0;->getDefaultInstance()Lcom/google/protobuf/g0;

    move-result-object v0

    return-object v0
.end method

.method public synchronized(Ljava/lang/String;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public this()Lcom/google/protobuf/g0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g0$if;->break()Lcom/google/protobuf/g0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/g0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public throw()Lcom/google/protobuf/g0$if;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/g0$if;->new:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public throws(I)Lcom/google/protobuf/o0$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->extends()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$if;

    return-object p1
.end method

.method public transient(ILcom/google/protobuf/o0;)Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->static()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public try(Lcom/google/protobuf/o0;)Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->goto:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/g0$if;->static()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/g0$if;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public volatile(Ljava/lang/String;)Lcom/google/protobuf/g0$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/g0$if;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public while()Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/g0;->getDefaultInstance()Lcom/google/protobuf/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g0;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g0$if;->for:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method
