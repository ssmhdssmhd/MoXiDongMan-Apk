.class Lcom/google/common/cache/CacheBuilderSpec$class;
.super Lcom/google/common/cache/CacheBuilderSpec$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "class"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$new;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->const:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite already set"

    invoke-static {v0, v1}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    .line 2
    iput-wide p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->class:J

    .line 3
    iput-object p4, p1, Lcom/google/common/cache/CacheBuilderSpec;->const:Ljava/util/concurrent/TimeUnit;

    return-void
.end method
