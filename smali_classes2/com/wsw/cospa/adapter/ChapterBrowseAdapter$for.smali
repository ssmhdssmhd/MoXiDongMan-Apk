.class Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for$do;
    }
.end annotation


# instance fields
.field private do:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final for:I

.field private final if:J

.field private new:Landroid/graphics/Bitmap;

.field public final synthetic try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x6400000

    .line 2
    iput-wide v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->if:J

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->for:I

    .line 4
    invoke-static {p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800aa

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->new:Landroid/graphics/Bitmap;

    return-void
.end method

.method private declared-synchronized case(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->do:Lcom/google/common/cache/LoadingCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1a

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->do:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/google/common/cache/Cache;->invalidate(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->new:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private for()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->do:Lcom/google/common/cache/LoadingCache;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/common/cache/Cache;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->do:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0}, Lcom/google/common/cache/Cache;->invalidateAll()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->new:Landroid/graphics/Bitmap;

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->do:Lcom/google/common/cache/LoadingCache;

    :cond_1
    return-void
.end method

.method private if(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcc/shinichi/library/tool/image/if;->if(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->do:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v1, p1, v0}, Lcom/google/common/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private new(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->do:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->new:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->if(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized try()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/common/cache/if;->abstract()Lcom/google/common/cache/if;

    move-result-object v0

    const/16 v1, 0x14

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->throws(I)Lcom/google/common/cache/if;

    move-result-object v0

    const-wide/32 v1, 0x6400000

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/if;->package(J)Lcom/google/common/cache/if;

    move-result-object v0

    const-wide/16 v1, 0xc

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/if;->case(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for$do;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for$do;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->if(Lcom/google/common/cache/for;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->do:Lcom/google/common/cache/LoadingCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
