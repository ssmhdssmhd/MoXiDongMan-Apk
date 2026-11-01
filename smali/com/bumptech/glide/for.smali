.class public Lcom/bumptech/glide/for;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final catch:Lcom/bumptech/glide/this;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/this<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private break:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/this<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final do:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final else:Lcom/bumptech/glide/load/engine/else;

.field private final for:Landroid/support/v4/am0;

.field private final goto:Z

.field private final if:Lcom/bumptech/glide/case;

.field private final new:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

.field private final this:I

.field private final try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/yg0;

    invoke-direct {v0}, Landroid/support/v4/yg0;-><init>()V

    sput-object v0, Lcom/bumptech/glide/for;->catch:Lcom/bumptech/glide/this;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/case;Landroid/support/v4/am0;Lcom/bumptech/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/load/engine/else;ZI)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/case;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/am0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/bumptech/glide/Glide$RequestOptionsFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/bumptech/glide/load/engine/else;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Lcom/bumptech/glide/case;",
            "Landroid/support/v4/am0;",
            "Lcom/bumptech/glide/Glide$RequestOptionsFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/this<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/bumptech/glide/load/engine/else;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/for;->do:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/for;->if:Lcom/bumptech/glide/case;

    .line 4
    iput-object p4, p0, Lcom/bumptech/glide/for;->for:Landroid/support/v4/am0;

    .line 5
    iput-object p5, p0, Lcom/bumptech/glide/for;->new:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    .line 6
    iput-object p7, p0, Lcom/bumptech/glide/for;->try:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/bumptech/glide/for;->case:Ljava/util/Map;

    .line 8
    iput-object p8, p0, Lcom/bumptech/glide/for;->else:Lcom/bumptech/glide/load/engine/else;

    .line 9
    iput-boolean p9, p0, Lcom/bumptech/glide/for;->goto:Z

    .line 10
    iput p10, p0, Lcom/bumptech/glide/for;->this:I

    return-void
.end method


# virtual methods
.method public case()Lcom/bumptech/glide/load/engine/else;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/for;->else:Lcom/bumptech/glide/load/engine/else;

    return-object v0
.end method

.method public do(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/new;
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lcom/bumptech/glide/request/target/new<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/for;->for:Landroid/support/v4/am0;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/am0;->do(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/new;

    move-result-object p1

    return-object p1
.end method

.method public else()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/for;->this:I

    return v0
.end method

.method public for()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/for;->try:Ljava/util/List;

    return-object v0
.end method

.method public goto()Lcom/bumptech/glide/case;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/for;->if:Lcom/bumptech/glide/case;

    return-object v0
.end method

.method public if()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/for;->do:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public declared-synchronized new()Landroid/support/v4/dn1;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/for;->break:Landroid/support/v4/dn1;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/for;->new:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    invoke-interface {v0}, Lcom/bumptech/glide/Glide$RequestOptionsFactory;->build()Landroid/support/v4/dn1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->o()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    iput-object v0, p0, Lcom/bumptech/glide/for;->break:Landroid/support/v4/dn1;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/for;->break:Landroid/support/v4/dn1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public this()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/for;->goto:Z

    return v0
.end method

.method public try(Ljava/lang/Class;)Lcom/bumptech/glide/this;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/this<",
            "*TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/for;->case:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/this;

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/for;->case:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/this;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lcom/bumptech/glide/for;->catch:Lcom/bumptech/glide/this;

    :cond_2
    return-object v0
.end method
