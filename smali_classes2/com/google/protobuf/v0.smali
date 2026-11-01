.class public Lcom/google/protobuf/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/AbstractMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/v0$for;,
        Lcom/google/protobuf/v0$do;,
        Lcom/google/protobuf/v0$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/AbstractMessage;",
        "BType:",
        "Lcom/google/protobuf/AbstractMessage$do;",
        "IType::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/AbstractMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private case:Lcom/google/protobuf/v0$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0$if<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private do:Lcom/google/protobuf/AbstractMessage$BuilderParent;

.field private else:Lcom/google/protobuf/v0$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0$do<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private for:Z

.field private goto:Lcom/google/protobuf/v0$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0$for<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation
.end field

.field private new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/a1<",
            "TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field

.field private try:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TMType;>;Z",
            "Lcom/google/protobuf/AbstractMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    .line 3
    iput-boolean p2, p0, Lcom/google/protobuf/v0;->for:Z

    .line 4
    iput-object p3, p0, Lcom/google/protobuf/v0;->do:Lcom/google/protobuf/AbstractMessage$BuilderParent;

    .line 5
    iput-boolean p4, p0, Lcom/google/protobuf/v0;->try:Z

    return-void
.end method

.method private break()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/v0;->for:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/v0;->for:Z

    :cond_0
    return-void
.end method

.method private native()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/v0;->case:Lcom/google/protobuf/v0$if;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0$if;->if()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v0;->else:Lcom/google/protobuf/v0$do;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/v0$do;->if()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/v0;->goto:Lcom/google/protobuf/v0$for;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/v0$for;->if()V

    :cond_2
    return-void
.end method

.method private return()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/v0;->try:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v0;->do:Lcom/google/protobuf/AbstractMessage$BuilderParent;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/AbstractMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/v0;->try:Z

    :cond_0
    return-void
.end method

.method private super(IZ)Lcom/google/protobuf/AbstractMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TMType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage;

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage;

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->do()Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->try()Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private this()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public case()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/v0;->try:Z

    .line 2
    iget-boolean v1, p0, Lcom/google/protobuf/v0;->for:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    if-nez v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Message;

    .line 6
    iget-object v4, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/a1;

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/google/protobuf/a1;->do()Lcom/google/protobuf/AbstractMessage;

    move-result-object v4

    if-eq v4, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    return-object v0

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/v0;->break()V

    const/4 v1, 0x0

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 11
    iget-object v3, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/google/protobuf/v0;->super(IZ)Lcom/google/protobuf/AbstractMessage;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    .line 13
    iput-boolean v2, p0, Lcom/google/protobuf/v0;->for:Z

    return-object v0
.end method

.method public catch(I)Lcom/google/protobuf/AbstractMessage$do;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/v0;->this()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage;

    .line 4
    new-instance v1, Lcom/google/protobuf/a1;

    iget-boolean v2, p0, Lcom/google/protobuf/v0;->try:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public class()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TBType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/v0;->else:Lcom/google/protobuf/v0$do;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/v0$do;

    invoke-direct {v0, p0}, Lcom/google/protobuf/v0$do;-><init>(Lcom/google/protobuf/v0;)V

    iput-object v0, p0, Lcom/google/protobuf/v0;->else:Lcom/google/protobuf/v0$do;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v0;->else:Lcom/google/protobuf/v0$do;

    return-object v0
.end method

.method public const()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TMType;>;)",
            "Lcom/google/protobuf/v0<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/AbstractMessage;

    .line 2
    invoke-static {v1}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 4
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/v0;->break()V

    if-ltz v0, :cond_3

    .line 8
    iget-object v1, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 9
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 10
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage;

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    goto :goto_1

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/google/protobuf/v0;->return()V

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/v0;->native()V

    return-object p0
.end method

.method public else()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/protobuf/v0;->for:Z

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/a1;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/a1;->for()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/v0;->return()V

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/v0;->native()V

    return-void
.end method

.method public final(I)Lcom/google/protobuf/AbstractMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/v0;->super(IZ)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    return-object p1
.end method

.method public for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)TBType;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/v0;->break()V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/v0;->this()V

    .line 3
    new-instance v0, Lcom/google/protobuf/a1;

    iget-boolean v1, p0, Lcom/google/protobuf/v0;->try:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 4
    iget-object p1, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/v0;->return()V

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/v0;->native()V

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public goto()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/protobuf/v0;->do:Lcom/google/protobuf/AbstractMessage$BuilderParent;

    return-void
.end method

.method public if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)TBType;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/v0;->break()V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/v0;->this()V

    .line 3
    new-instance v0, Lcom/google/protobuf/a1;

    iget-boolean v1, p0, Lcom/google/protobuf/v0;->try:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 4
    iget-object p2, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/v0;->return()V

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/v0;->native()V

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    return-object p1
.end method

.method public import()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TIType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/v0;->goto:Lcom/google/protobuf/v0$for;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/v0$for;

    invoke-direct {v0, p0}, Lcom/google/protobuf/v0$for;-><init>(Lcom/google/protobuf/v0;)V

    iput-object v0, p0, Lcom/google/protobuf/v0;->goto:Lcom/google/protobuf/v0$for;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v0;->goto:Lcom/google/protobuf/v0$for;

    return-object v0
.end method

.method public markDirty()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/v0;->return()V

    return-void
.end method

.method public new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/google/protobuf/v0<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/v0;->break()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/v0;->return()V

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/v0;->native()V

    return-object p0
.end method

.method public public()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/v0;->break()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a1;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/a1;->for()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/v0;->return()V

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/v0;->native()V

    return-void
.end method

.method public switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/google/protobuf/v0<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/v0;->break()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a1;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/a1;->for()V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/v0;->return()V

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/v0;->native()V

    return-object p0
.end method

.method public throw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/v0;->case:Lcom/google/protobuf/v0$if;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/v0$if;

    invoke-direct {v0, p0}, Lcom/google/protobuf/v0$if;-><init>(Lcom/google/protobuf/v0;)V

    iput-object v0, p0, Lcom/google/protobuf/v0;->case:Lcom/google/protobuf/v0$if;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v0;->case:Lcom/google/protobuf/v0$if;

    return-object v0
.end method

.method public try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/v0<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/v0;->break()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/v0;->return()V

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/v0;->native()V

    return-object p0
.end method

.method public while(I)Lcom/google/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/v0;->new:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MessageOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/v0;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MessageOrBuilder;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->case()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method
