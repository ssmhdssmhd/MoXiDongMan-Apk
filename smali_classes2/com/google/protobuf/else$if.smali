.class public final Lcom/google/protobuf/else$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/else$if;",
        ">;",
        "Lcom/google/protobuf/ApiOrBuilder;"
    }
.end annotation


# instance fields
.field private break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/h0;",
            ">;"
        }
    .end annotation
.end field

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

.field private catch:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/h0;",
            "Lcom/google/protobuf/h0$if;",
            "Lcom/google/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private class:I

.field private do:I

.field private else:Ljava/lang/Object;

.field private for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/g0;",
            ">;"
        }
    .end annotation
.end field

.field private goto:Lcom/google/protobuf/c1;

.field private if:Ljava/lang/Object;

.field private new:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/g0;",
            "Lcom/google/protobuf/g0$if;",
            "Lcom/google/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private this:Lcom/google/protobuf/a1;
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
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/protobuf/else$if;->class:I

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/google/protobuf/else$if;->class:I

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/else$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/else$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/else$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;-><init>()V

    return-void
.end method

.method private c()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/g0;",
            "Lcom/google/protobuf/g0$if;",
            "Lcom/google/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/else$if;->do:I

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

    iput-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method private f()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/h0;",
            "Lcom/google/protobuf/h0$if;",
            "Lcom/google/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v2, v2, 0x4

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

    iput-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/goto;->do:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method private i()Lcom/google/protobuf/v0;
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
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/else$if;->do:I

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

    iput-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method private implements()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    :cond_0
    return-void
.end method

.method private instanceof()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    :cond_0
    return-void
.end method

.method private k()Lcom/google/protobuf/a1;
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
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/a1;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->getSourceContext()Lcom/google/protobuf/c1;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->c()Lcom/google/protobuf/v0;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->i()Lcom/google/protobuf/v0;

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->f()Lcom/google/protobuf/v0;

    :cond_0
    return-void
.end method

.method private transient()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    :cond_0
    return-void
.end method


# virtual methods
.method public A(ILcom/google/protobuf/o0$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->instanceof()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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

.method public B(ILcom/google/protobuf/o0;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->instanceof()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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

.method public C(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/else$if;

    return-object p1
.end method

.method public D(Lcom/google/protobuf/c1$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/c1$if;->if()Lcom/google/protobuf/c1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

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

.method public E(Lcom/google/protobuf/c1;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    :goto_0
    return-object p0
.end method

.method public F(Lcom/google/protobuf/i1;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/i1;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/else$if;->class:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public G(I)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/else$if;->class:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final H(Lcom/google/protobuf/t1;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/else$if;

    return-object p1
.end method

.method public I(Ljava/lang/String;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public J(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public a(I)Lcom/google/protobuf/g0$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->c()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0$if;

    return-object p1
.end method

.method public abstract(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/else$if;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/else$if;->static(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/else$if;->static(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/g0$if;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->c()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public break(ILcom/google/protobuf/h0$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->implements()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/h0$if;->if()Lcom/google/protobuf/h0;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/h0$if;->if()Lcom/google/protobuf/h0;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->switch()Lcom/google/protobuf/else;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->switch()Lcom/google/protobuf/else;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->throws()Lcom/google/protobuf/else;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->throws()Lcom/google/protobuf/else;

    move-result-object v0

    return-object v0
.end method

.method public case(Lcom/google/protobuf/g0$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->transient()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/g0$if;->this()Lcom/google/protobuf/g0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/g0$if;->this()Lcom/google/protobuf/g0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public catch(ILcom/google/protobuf/h0;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->implements()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

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

.method public class(Lcom/google/protobuf/h0$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->implements()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/h0$if;->if()Lcom/google/protobuf/h0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/h0$if;->if()Lcom/google/protobuf/h0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->default()Lcom/google/protobuf/else$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->default()Lcom/google/protobuf/else$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->default()Lcom/google/protobuf/else$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->default()Lcom/google/protobuf/else$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->extends(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->extends(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->abstract(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->abstract(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->abstract(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->protected()Lcom/google/protobuf/else$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->protected()Lcom/google/protobuf/else$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->protected()Lcom/google/protobuf/else$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->protected()Lcom/google/protobuf/else$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->protected()Lcom/google/protobuf/else$if;

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
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->protected()Lcom/google/protobuf/else$if;

    move-result-object v0

    return-object v0
.end method

.method public const(Lcom/google/protobuf/h0;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->implements()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

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

.method public continue()Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public d(I)Lcom/google/protobuf/h0$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->f()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/h0$if;

    return-object p1
.end method

.method public default()Lcom/google/protobuf/else$if;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    .line 5
    iget v1, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/else$if;->do:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->else()V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v1, :cond_1

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    .line 9
    iget v1, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/else$if;->do:I

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->else()V

    .line 11
    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 13
    iput-object v1, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

    goto :goto_2

    .line 14
    :cond_2
    iput-object v1, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

    .line 15
    iput-object v1, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_3

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    .line 18
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_3
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/google/protobuf/else$if;->class:I

    return-object p0
.end method

.method public do(Ljava/lang/Iterable;)Lcom/google/protobuf/else$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/g0;",
            ">;)",
            "Lcom/google/protobuf/else$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->transient()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

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

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/h0$if;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->f()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public else(Lcom/google/protobuf/g0;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->transient()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

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

.method public extends(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/else$if;

    return-object p1
.end method

.method public final()Lcom/google/protobuf/h0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->f()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/h0;->getDefaultInstance()Lcom/google/protobuf/h0;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h0$if;

    return-object v0
.end method

.method public finally()Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public for(Ljava/lang/Iterable;)Lcom/google/protobuf/else$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/o0;",
            ">;)",
            "Lcom/google/protobuf/else$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->instanceof()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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

.method public g(I)Lcom/google/protobuf/o0$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->i()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$if;

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->synchronized()Lcom/google/protobuf/else;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->synchronized()Lcom/google/protobuf/else;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/goto;->do:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getMethods(I)Lcom/google/protobuf/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0;

    return-object p1
.end method

.method public getMethodsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/g0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsOrBuilder(I)Lcom/google/protobuf/MethodOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MethodOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MethodOrBuilder;

    return-object p1
.end method

.method public getMethodsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMixins(I)Lcom/google/protobuf/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/h0;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/h0;

    return-object p1
.end method

.method public getMixinsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/h0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMixinsOrBuilder(I)Lcom/google/protobuf/MixinOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MixinOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MixinOrBuilder;

    return-object p1
.end method

.method public getMixinsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Lcom/google/protobuf/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

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
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->case()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContextOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

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
    iget v0, p0, Lcom/google/protobuf/else$if;->class:I

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
    iget v0, p0, Lcom/google/protobuf/else$if;->class:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public goto()Lcom/google/protobuf/g0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->c()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/g0;->getDefaultInstance()Lcom/google/protobuf/g0;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/g0$if;

    return-object v0
.end method

.method public h()Ljava/util/List;
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
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->i()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

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

.method public if(Ljava/lang/Iterable;)Lcom/google/protobuf/else$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/h0;",
            ">;)",
            "Lcom/google/protobuf/else$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->implements()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

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

.method public import(Lcom/google/protobuf/o0$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->instanceof()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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

.method public interface()Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/else;->getDefaultInstance()Lcom/google/protobuf/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/else;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/goto;->if:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/else;

    const-class v2, Lcom/google/protobuf/else$if;

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

.method public j()Lcom/google/protobuf/c1$if;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->k()Lcom/google/protobuf/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c1$if;

    return-object v0
.end method

.method public l(Lcom/google/protobuf/else;)Lcom/google/protobuf/else$if;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/else;->getDefaultInstance()Lcom/google/protobuf/else;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/else;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/else;->access$300(Lcom/google/protobuf/else;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 6
    invoke-static {p1}, Lcom/google/protobuf/else;->access$400(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Lcom/google/protobuf/else;->access$400(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    .line 9
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->transient()V

    .line 11
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/else;->access$400(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/else;->access$400(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    .line 16
    iput-object v1, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    .line 17
    invoke-static {p1}, Lcom/google/protobuf/else;->access$400(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    .line 18
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    .line 19
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->c()Lcom/google/protobuf/v0;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    goto :goto_2

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/google/protobuf/else;->access$400(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 22
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_8

    .line 23
    invoke-static {p1}, Lcom/google/protobuf/else;->access$500(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 24
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-static {p1}, Lcom/google/protobuf/else;->access$500(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    .line 26
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    goto :goto_3

    .line 27
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->instanceof()V

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/else;->access$500(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_5

    .line 30
    :cond_8
    invoke-static {p1}, Lcom/google/protobuf/else;->access$500(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 31
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    .line 33
    iput-object v1, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    .line 34
    invoke-static {p1}, Lcom/google/protobuf/else;->access$500(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    .line 35
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    .line 36
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_9

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->i()Lcom/google/protobuf/v0;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    goto :goto_5

    .line 38
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/google/protobuf/else;->access$500(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 39
    :cond_b
    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/else;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 40
    invoke-static {p1}, Lcom/google/protobuf/else;->access$600(Lcom/google/protobuf/else;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 42
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/else;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    invoke-virtual {p1}, Lcom/google/protobuf/else;->getSourceContext()Lcom/google/protobuf/c1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/else$if;->o(Lcom/google/protobuf/c1;)Lcom/google/protobuf/else$if;

    .line 44
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_f

    .line 45
    invoke-static {p1}, Lcom/google/protobuf/else;->access$800(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 46
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    invoke-static {p1}, Lcom/google/protobuf/else;->access$800(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    .line 48
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    goto :goto_6

    .line 49
    :cond_e
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->implements()V

    .line 50
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/else;->access$800(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_7

    .line 52
    :cond_f
    invoke-static {p1}, Lcom/google/protobuf/else;->access$800(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 53
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    .line 55
    iput-object v1, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    .line 56
    invoke-static {p1}, Lcom/google/protobuf/else;->access$800(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    .line 57
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    .line 58
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_10

    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->f()Lcom/google/protobuf/v0;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    goto :goto_7

    .line 60
    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/google/protobuf/else;->access$800(Lcom/google/protobuf/else;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 61
    :cond_12
    :goto_7
    invoke-static {p1}, Lcom/google/protobuf/else;->access$900(Lcom/google/protobuf/else;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 62
    invoke-virtual {p1}, Lcom/google/protobuf/else;->getSyntaxValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/else$if;->G(I)Lcom/google/protobuf/else$if;

    .line 63
    :cond_13
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->p(Lcom/google/protobuf/t1;)Lcom/google/protobuf/else$if;

    .line 64
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public m(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/else$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/else;->access$1000()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/else;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->l(Lcom/google/protobuf/else;)Lcom/google/protobuf/else$if;

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

    check-cast p2, Lcom/google/protobuf/else;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/else$if;->l(Lcom/google/protobuf/else;)Lcom/google/protobuf/else$if;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/else$if;->m(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->n(Lcom/google/protobuf/Message;)Lcom/google/protobuf/else$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/else$if;->m(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/else$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/else$if;->m(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->n(Lcom/google/protobuf/Message;)Lcom/google/protobuf/else$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/else$if;->m(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->p(Lcom/google/protobuf/t1;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->p(Lcom/google/protobuf/t1;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->p(Lcom/google/protobuf/t1;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/protobuf/Message;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/else;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/else;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->l(Lcom/google/protobuf/else;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public native(Lcom/google/protobuf/o0;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->instanceof()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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

.method public new(ILcom/google/protobuf/g0$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->transient()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/g0$if;->this()Lcom/google/protobuf/g0;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/g0$if;->this()Lcom/google/protobuf/g0;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public o(Lcom/google/protobuf/c1;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/c1;->newBuilder(Lcom/google/protobuf/c1;)Lcom/google/protobuf/c1$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/c1$if;->class(Lcom/google/protobuf/c1;)Lcom/google/protobuf/c1$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/c1$if;->for()Lcom/google/protobuf/c1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

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

.method public final p(Lcom/google/protobuf/t1;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/else$if;

    return-object p1
.end method

.method public package()Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/else$if;->do:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public private()Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/else;->getDefaultInstance()Lcom/google/protobuf/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/else;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public protected()Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/else$if;

    return-object v0
.end method

.method public public()Lcom/google/protobuf/o0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->i()Lcom/google/protobuf/v0;

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

.method public q(I)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->transient()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

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

.method public r(I)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->implements()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

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

.method public return(I)Lcom/google/protobuf/o0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->i()Lcom/google/protobuf/v0;

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

.method public s(I)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->instanceof()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/else$if;->t(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/else$if;->t(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/else$if;->C(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/else$if;->C(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->H(Lcom/google/protobuf/t1;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/else$if;->H(Lcom/google/protobuf/t1;)Lcom/google/protobuf/else$if;

    move-result-object p1

    return-object p1
.end method

.method public static(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/else$if;

    return-object p1
.end method

.method public strictfp()Lcom/google/protobuf/else$if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

    .line 5
    iput-object v1, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    :goto_0
    return-object p0
.end method

.method public super(I)Lcom/google/protobuf/h0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->f()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/h0;->getDefaultInstance()Lcom/google/protobuf/h0;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/h0$if;

    return-object p1
.end method

.method public switch()Lcom/google/protobuf/else;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/else$if;->throws()Lcom/google/protobuf/else;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/else;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public synchronized()Lcom/google/protobuf/else;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/else;->getDefaultInstance()Lcom/google/protobuf/else;

    move-result-object v0

    return-object v0
.end method

.method public t(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/else$if;

    return-object p1
.end method

.method public this(I)Lcom/google/protobuf/g0$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->c()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/g0;->getDefaultInstance()Lcom/google/protobuf/g0;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g0$if;

    return-object p1
.end method

.method public throw(ILcom/google/protobuf/o0$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->instanceof()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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

.method public throws()Lcom/google/protobuf/else;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/else;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/else;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/else$do;)V

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$302(Lcom/google/protobuf/else;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    .line 6
    iget v1, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/else$if;->do:I

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$402(Lcom/google/protobuf/else;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$402(Lcom/google/protobuf/else;Ljava/util/List;)Ljava/util/List;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v1, :cond_3

    .line 10
    iget v1, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    .line 12
    iget v1, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/else$if;->do:I

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$502(Lcom/google/protobuf/else;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$502(Lcom/google/protobuf/else;Ljava/util/List;)Ljava/util/List;

    .line 15
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/else$if;->else:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$602(Lcom/google/protobuf/else;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/else$if;->this:Lcom/google/protobuf/a1;

    if-nez v1, :cond_4

    .line 17
    iget-object v1, p0, Lcom/google/protobuf/else$if;->goto:Lcom/google/protobuf/c1;

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$702(Lcom/google/protobuf/else;Lcom/google/protobuf/c1;)Lcom/google/protobuf/c1;

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/a1;->do()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/c1;

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$702(Lcom/google/protobuf/else;Lcom/google/protobuf/c1;)Lcom/google/protobuf/c1;

    .line 19
    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v1, :cond_6

    .line 20
    iget v1, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    .line 22
    iget v1, p0, Lcom/google/protobuf/else$if;->do:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/else$if;->do:I

    .line 23
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$802(Lcom/google/protobuf/else;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$802(Lcom/google/protobuf/else;Ljava/util/List;)Ljava/util/List;

    .line 25
    :goto_3
    iget v1, p0, Lcom/google/protobuf/else$if;->class:I

    invoke-static {v0, v1}, Lcom/google/protobuf/else;->access$902(Lcom/google/protobuf/else;I)I

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public try(ILcom/google/protobuf/g0;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->transient()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

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

.method public u(ILcom/google/protobuf/g0$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->transient()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/g0$if;->this()Lcom/google/protobuf/g0;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/g0$if;->this()Lcom/google/protobuf/g0;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public v(ILcom/google/protobuf/g0;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->new:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->transient()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/else$if;->for:Ljava/util/List;

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

.method public volatile()Lcom/google/protobuf/else$if;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/protobuf/else$if;->class:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public w(ILcom/google/protobuf/h0$if;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->implements()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/h0$if;->if()Lcom/google/protobuf/h0;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/h0$if;->if()Lcom/google/protobuf/h0;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public while(ILcom/google/protobuf/o0;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->case:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->instanceof()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/else$if;->try:Ljava/util/List;

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

.method public x(ILcom/google/protobuf/h0;)Lcom/google/protobuf/else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/else$if;->catch:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/else$if;->implements()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/else$if;->break:Ljava/util/List;

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

.method public y(Ljava/lang/String;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public z(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/else$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/else$if;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method
