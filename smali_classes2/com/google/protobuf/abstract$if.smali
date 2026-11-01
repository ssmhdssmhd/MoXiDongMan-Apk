.class public final Lcom/google/protobuf/abstract$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/EnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/abstract$if;",
        ">;",
        "Lcom/google/protobuf/EnumOrBuilder;"
    }
.end annotation


# instance fields
.field private case:Lcom/google/protobuf/v0;
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

.field private do:I

.field private else:Lcom/google/protobuf/c1;

.field private for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/continue;",
            ">;"
        }
    .end annotation
.end field

.field private goto:Lcom/google/protobuf/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/c1;",
            "Lcom/google/protobuf/c1$if;",
            "Lcom/google/protobuf/SourceContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private if:Ljava/lang/Object;

.field private new:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/continue;",
            "Lcom/google/protobuf/continue$if;",
            "Lcom/google/protobuf/EnumValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private this:I

.field private try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/o0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/protobuf/abstract$if;->this:I

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/google/protobuf/abstract$if;->this:I

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/abstract$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/abstract$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/abstract$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;-><init>()V

    return-void
.end method

.method private finally()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/o1;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method private implements()Lcom/google/protobuf/a1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/c1;",
            "Lcom/google/protobuf/c1$if;",
            "Lcom/google/protobuf/SourceContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/a1;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->getSourceContext()Lcom/google/protobuf/c1;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->strictfp()Lcom/google/protobuf/v0;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->protected()Lcom/google/protobuf/v0;

    :cond_0
    return-void
.end method

.method private package()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    :cond_0
    return-void
.end method

.method private protected()Lcom/google/protobuf/v0;
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
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v0;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method private strictfp()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/continue;",
            "Lcom/google/protobuf/continue$if;",
            "Lcom/google/protobuf/EnumValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/abstract$if;->do:I

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

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/Message;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/abstract;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/abstract;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->synchronized(Lcom/google/protobuf/abstract;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public abstract(I)Lcom/google/protobuf/continue$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->strictfp()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/continue$if;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/abstract$if;->super(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/abstract$if;->super(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/protobuf/c1;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/c1;->newBuilder(Lcom/google/protobuf/c1;)Lcom/google/protobuf/c1$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/c1$if;->class(Lcom/google/protobuf/c1;)Lcom/google/protobuf/c1$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/c1$if;->for()Lcom/google/protobuf/c1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->else(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    :goto_1
    return-object p0
.end method

.method public break(ILcom/google/protobuf/o0;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->package()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->throw()Lcom/google/protobuf/abstract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->throw()Lcom/google/protobuf/abstract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->while()Lcom/google/protobuf/abstract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->while()Lcom/google/protobuf/abstract;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/protobuf/t1;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/abstract$if;

    return-object p1
.end method

.method public case(Lcom/google/protobuf/continue;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->finally()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

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

.method public catch(Lcom/google/protobuf/o0$if;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->package()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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

.method public class(Lcom/google/protobuf/o0;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->package()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->import()Lcom/google/protobuf/abstract$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->import()Lcom/google/protobuf/abstract$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->import()Lcom/google/protobuf/abstract$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->import()Lcom/google/protobuf/abstract$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->public(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->public(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->static(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->static(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->static(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->extends()Lcom/google/protobuf/abstract$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->extends()Lcom/google/protobuf/abstract$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->extends()Lcom/google/protobuf/abstract$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->extends()Lcom/google/protobuf/abstract$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->extends()Lcom/google/protobuf/abstract$if;

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
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->extends()Lcom/google/protobuf/abstract$if;

    move-result-object v0

    return-object v0
.end method

.method public const()Lcom/google/protobuf/o0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->protected()Lcom/google/protobuf/v0;

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

.method public continue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/continue$if;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->strictfp()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->finally()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

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

.method public default()Lcom/google/protobuf/abstract$if;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/protobuf/abstract$if;->this:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public do(Ljava/lang/Iterable;)Lcom/google/protobuf/abstract$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/continue;",
            ">;)",
            "Lcom/google/protobuf/abstract$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->finally()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

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

.method public e(I)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->package()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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

.method public else()Lcom/google/protobuf/continue$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->strictfp()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/continue;->getDefaultInstance()Lcom/google/protobuf/continue;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/continue$if;

    return-object v0
.end method

.method public extends()Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/abstract$if;

    return-object v0
.end method

.method public f(ILcom/google/protobuf/continue$if;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->finally()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/continue$if;->this()Lcom/google/protobuf/continue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/continue$if;->this()Lcom/google/protobuf/continue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public final(I)Lcom/google/protobuf/o0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->protected()Lcom/google/protobuf/v0;

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

.method public for(ILcom/google/protobuf/continue$if;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->finally()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/continue$if;->this()Lcom/google/protobuf/continue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/continue$if;->this()Lcom/google/protobuf/continue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public g(ILcom/google/protobuf/continue;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->finally()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->private()Lcom/google/protobuf/abstract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->private()Lcom/google/protobuf/abstract;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/o1;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getEnumvalue(I)Lcom/google/protobuf/continue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/continue;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/continue;

    return-object p1
.end method

.method public getEnumvalueCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getEnumvalueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/continue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnumvalueOrBuilder(I)Lcom/google/protobuf/EnumValueOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/EnumValueOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/EnumValueOrBuilder;

    return-object p1
.end method

.method public getEnumvalueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/EnumValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Lcom/google/protobuf/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/c1;->getDefaultInstance()Lcom/google/protobuf/c1;

    move-result-object v0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->try()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c1;

    return-object v0
.end method

.method public getSourceContextOrBuilder()Lcom/google/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->case()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContextOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/protobuf/c1;->getDefaultInstance()Lcom/google/protobuf/c1;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/i1;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/abstract$if;->this:I

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
    iget v0, p0, Lcom/google/protobuf/abstract$if;->this:I

    return v0
.end method

.method public goto(I)Lcom/google/protobuf/continue$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->strictfp()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/continue;->getDefaultInstance()Lcom/google/protobuf/continue;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/continue$if;

    return-object p1
.end method

.method public h(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/abstract$if;

    return-object p1
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i(Ljava/lang/String;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public if(Ljava/lang/Iterable;)Lcom/google/protobuf/abstract$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/o0;",
            ">;)",
            "Lcom/google/protobuf/abstract$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->package()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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

.method public import()Lcom/google/protobuf/abstract$if;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    .line 5
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    .line 9
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 12
    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    goto :goto_2

    .line 13
    :cond_2
    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    .line 14
    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    :goto_2
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/protobuf/abstract$if;->this:I

    return-object p0
.end method

.method public instanceof(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/abstract$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/abstract;->access$800()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/abstract;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->synchronized(Lcom/google/protobuf/abstract;)Lcom/google/protobuf/abstract$if;

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

    check-cast p2, Lcom/google/protobuf/abstract;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/abstract$if;->synchronized(Lcom/google/protobuf/abstract;)Lcom/google/protobuf/abstract$if;

    .line 6
    :cond_1
    throw p1
.end method

.method public interface()Ljava/util/List;
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
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->protected()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/o1;->case:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/abstract;

    const-class v2, Lcom/google/protobuf/abstract$if;

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

.method public j(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public k(ILcom/google/protobuf/o0$if;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->package()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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

.method public l(ILcom/google/protobuf/o0;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->package()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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

.method public m(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/abstract$if;

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/abstract$if;->instanceof(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->a(Lcom/google/protobuf/Message;)Lcom/google/protobuf/abstract$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/abstract$if;->instanceof(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/abstract$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/abstract$if;->instanceof(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->a(Lcom/google/protobuf/Message;)Lcom/google/protobuf/abstract$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/abstract$if;->instanceof(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->c(Lcom/google/protobuf/t1;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->c(Lcom/google/protobuf/t1;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->c(Lcom/google/protobuf/t1;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/protobuf/c1$if;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/c1$if;->if()Lcom/google/protobuf/c1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/c1$if;->if()Lcom/google/protobuf/c1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    :goto_0
    return-object p0
.end method

.method public native()Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public new(ILcom/google/protobuf/continue;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->finally()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

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

.method public o(Lcom/google/protobuf/c1;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    :goto_0
    return-object p0
.end method

.method public p(Lcom/google/protobuf/i1;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/i1;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/abstract$if;->this:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public private()Lcom/google/protobuf/abstract;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/abstract;->getDefaultInstance()Lcom/google/protobuf/abstract;

    move-result-object v0

    return-object v0
.end method

.method public public(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/abstract$if;

    return-object p1
.end method

.method public q(I)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/abstract$if;->this:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final r(Lcom/google/protobuf/t1;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/abstract$if;

    return-object p1
.end method

.method public return()Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/abstract;->getDefaultInstance()Lcom/google/protobuf/abstract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/abstract;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/abstract$if;->h(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/abstract$if;->h(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/abstract$if;->m(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/abstract$if;->m(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->r(Lcom/google/protobuf/t1;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->r(Lcom/google/protobuf/t1;)Lcom/google/protobuf/abstract$if;

    move-result-object p1

    return-object p1
.end method

.method public static(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/abstract$if;

    return-object p1
.end method

.method public super(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/abstract$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/abstract$if;

    return-object p1
.end method

.method public switch()Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public synchronized(Lcom/google/protobuf/abstract;)Lcom/google/protobuf/abstract$if;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/abstract;->getDefaultInstance()Lcom/google/protobuf/abstract;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/abstract;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$300(Lcom/google/protobuf/abstract;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 6
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$400(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$400(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    .line 9
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->finally()V

    .line 11
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$400(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$400(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    .line 16
    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    .line 17
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$400(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    .line 18
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    .line 19
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->strictfp()Lcom/google/protobuf/v0;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    goto :goto_2

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$400(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 22
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_8

    .line 23
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$500(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 24
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$500(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    .line 26
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    goto :goto_3

    .line 27
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->package()V

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$500(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_4

    .line 30
    :cond_8
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$500(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 31
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    .line 33
    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    .line 34
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$500(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    .line 35
    iget v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/abstract$if;->do:I

    .line 36
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_9

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->protected()Lcom/google/protobuf/v0;

    move-result-object v1

    :cond_9
    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    goto :goto_4

    .line 38
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$500(Lcom/google/protobuf/abstract;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 39
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/abstract;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40
    invoke-virtual {p1}, Lcom/google/protobuf/abstract;->getSourceContext()Lcom/google/protobuf/c1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/abstract$if;->b(Lcom/google/protobuf/c1;)Lcom/google/protobuf/abstract$if;

    .line 41
    :cond_c
    invoke-static {p1}, Lcom/google/protobuf/abstract;->access$700(Lcom/google/protobuf/abstract;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    invoke-virtual {p1}, Lcom/google/protobuf/abstract;->getSyntaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/abstract$if;->q(I)Lcom/google/protobuf/abstract$if;

    .line 43
    :cond_d
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/abstract$if;->c(Lcom/google/protobuf/t1;)Lcom/google/protobuf/abstract$if;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public this(ILcom/google/protobuf/o0$if;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->package()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

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

.method public throw()Lcom/google/protobuf/abstract;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/abstract$if;->while()Lcom/google/protobuf/abstract;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/abstract;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public throws()Lcom/google/protobuf/abstract$if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    .line 5
    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    :goto_0
    return-object p0
.end method

.method public transient()Lcom/google/protobuf/c1$if;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->implements()Lcom/google/protobuf/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c1$if;

    return-object v0
.end method

.method public try(Lcom/google/protobuf/continue$if;)Lcom/google/protobuf/abstract$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->finally()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/continue$if;->this()Lcom/google/protobuf/continue;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/continue$if;->this()Lcom/google/protobuf/continue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public volatile(I)Lcom/google/protobuf/o0$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/abstract$if;->protected()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$if;

    return-object p1
.end method

.method public while()Lcom/google/protobuf/abstract;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/abstract;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/abstract;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/abstract$do;)V

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/abstract;->access$302(Lcom/google/protobuf/abstract;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->new:Lcom/google/protobuf/v0;

    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    .line 6
    iget v1, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/abstract$if;->do:I

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->for:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/abstract;->access$402(Lcom/google/protobuf/abstract;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/abstract;->access$402(Lcom/google/protobuf/abstract;Ljava/util/List;)Ljava/util/List;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->case:Lcom/google/protobuf/v0;

    if-nez v1, :cond_3

    .line 10
    iget v1, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    .line 12
    iget v1, p0, Lcom/google/protobuf/abstract$if;->do:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/abstract$if;->do:I

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->try:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/abstract;->access$502(Lcom/google/protobuf/abstract;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/abstract;->access$502(Lcom/google/protobuf/abstract;Ljava/util/List;)Ljava/util/List;

    .line 15
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->goto:Lcom/google/protobuf/a1;

    if-nez v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/abstract$if;->else:Lcom/google/protobuf/c1;

    invoke-static {v0, v1}, Lcom/google/protobuf/abstract;->access$602(Lcom/google/protobuf/abstract;Lcom/google/protobuf/c1;)Lcom/google/protobuf/c1;

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/a1;->do()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/c1;

    invoke-static {v0, v1}, Lcom/google/protobuf/abstract;->access$602(Lcom/google/protobuf/abstract;Lcom/google/protobuf/c1;)Lcom/google/protobuf/c1;

    .line 18
    :goto_2
    iget v1, p0, Lcom/google/protobuf/abstract$if;->this:I

    invoke-static {v0, v1}, Lcom/google/protobuf/abstract;->access$702(Lcom/google/protobuf/abstract;I)I

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method
