.class Lcom/google/common/cache/LocalCache$throw;
.super Lcom/google/common/cache/new;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "throw"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/new<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final concurrencyLevel:I

.field public transient delegate:Lcom/google/common/cache/Cache;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final expireAfterAccessNanos:J

.field public final expireAfterWriteNanos:J

.field public final keyEquivalence:Lcom/google/common/base/this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final keyStrength:Lcom/google/common/cache/LocalCache$public;

.field public final loader:Lcom/google/common/cache/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/for<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field public final maxWeight:J

.field public final removalListener:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field public final ticker:Lcom/google/common/base/finally;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation
.end field

.field public final valueEquivalence:Lcom/google/common/base/this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final valueStrength:Lcom/google/common/cache/LocalCache$public;

.field public final weigher:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/cache/LocalCache$public;Lcom/google/common/cache/LocalCache$public;Lcom/google/common/base/this;Lcom/google/common/base/this;JJJLcom/google/common/cache/Weigher;ILcom/google/common/cache/RemovalListener;Lcom/google/common/base/finally;Lcom/google/common/cache/for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$public;",
            "Lcom/google/common/cache/LocalCache$public;",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Lcom/google/common/cache/Weigher<",
            "TK;TV;>;I",
            "Lcom/google/common/cache/RemovalListener<",
            "-TK;-TV;>;",
            "Lcom/google/common/base/finally;",
            "Lcom/google/common/cache/for<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/cache/new;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$throw;->keyStrength:Lcom/google/common/cache/LocalCache$public;

    .line 4
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$throw;->valueStrength:Lcom/google/common/cache/LocalCache$public;

    .line 5
    iput-object p3, p0, Lcom/google/common/cache/LocalCache$throw;->keyEquivalence:Lcom/google/common/base/this;

    .line 6
    iput-object p4, p0, Lcom/google/common/cache/LocalCache$throw;->valueEquivalence:Lcom/google/common/base/this;

    .line 7
    iput-wide p5, p0, Lcom/google/common/cache/LocalCache$throw;->expireAfterWriteNanos:J

    .line 8
    iput-wide p7, p0, Lcom/google/common/cache/LocalCache$throw;->expireAfterAccessNanos:J

    .line 9
    iput-wide p9, p0, Lcom/google/common/cache/LocalCache$throw;->maxWeight:J

    .line 10
    iput-object p11, p0, Lcom/google/common/cache/LocalCache$throw;->weigher:Lcom/google/common/cache/Weigher;

    .line 11
    iput p12, p0, Lcom/google/common/cache/LocalCache$throw;->concurrencyLevel:I

    .line 12
    iput-object p13, p0, Lcom/google/common/cache/LocalCache$throw;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 13
    invoke-static {}, Lcom/google/common/base/finally;->if()Lcom/google/common/base/finally;

    move-result-object p1

    if-eq p14, p1, :cond_0

    sget-object p1, Lcom/google/common/cache/if;->throws:Lcom/google/common/base/finally;

    if-ne p14, p1, :cond_1

    :cond_0
    const/4 p14, 0x0

    :cond_1
    iput-object p14, p0, Lcom/google/common/cache/LocalCache$throw;->ticker:Lcom/google/common/base/finally;

    .line 14
    iput-object p15, p0, Lcom/google/common/cache/LocalCache$throw;->loader:Lcom/google/common/cache/for;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/google/common/cache/LocalCache;->else:Lcom/google/common/cache/LocalCache$public;

    iget-object v2, v0, Lcom/google/common/cache/LocalCache;->goto:Lcom/google/common/cache/LocalCache$public;

    iget-object v3, v0, Lcom/google/common/cache/LocalCache;->try:Lcom/google/common/base/this;

    iget-object v4, v0, Lcom/google/common/cache/LocalCache;->case:Lcom/google/common/base/this;

    iget-wide v5, v0, Lcom/google/common/cache/LocalCache;->class:J

    iget-wide v7, v0, Lcom/google/common/cache/LocalCache;->catch:J

    iget-wide v9, v0, Lcom/google/common/cache/LocalCache;->this:J

    iget-object v11, v0, Lcom/google/common/cache/LocalCache;->break:Lcom/google/common/cache/Weigher;

    iget v12, v0, Lcom/google/common/cache/LocalCache;->new:I

    iget-object v13, v0, Lcom/google/common/cache/LocalCache;->super:Lcom/google/common/cache/RemovalListener;

    iget-object v14, v0, Lcom/google/common/cache/LocalCache;->throw:Lcom/google/common/base/finally;

    iget-object v15, v0, Lcom/google/common/cache/LocalCache;->native:Lcom/google/common/cache/for;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/google/common/cache/LocalCache$throw;-><init>(Lcom/google/common/cache/LocalCache$public;Lcom/google/common/cache/LocalCache$public;Lcom/google/common/base/this;Lcom/google/common/base/this;JJJLcom/google/common/cache/Weigher;ILcom/google/common/cache/RemovalListener;Lcom/google/common/base/finally;Lcom/google/common/cache/for;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$throw;->recreateCacheBuilder()Lcom/google/common/cache/if;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/common/cache/if;->do()Lcom/google/common/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$throw;->delegate:Lcom/google/common/cache/Cache;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$throw;->delegate:Lcom/google/common/cache/Cache;

    return-object v0
.end method


# virtual methods
.method public delegate()Lcom/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$throw;->delegate:Lcom/google/common/cache/Cache;

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$throw;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method public recreateCacheBuilder()Lcom/google/common/cache/if;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/cache/if;->abstract()Lcom/google/common/cache/if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$throw;->keyStrength:Lcom/google/common/cache/LocalCache$public;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->interface(Lcom/google/common/cache/LocalCache$public;)Lcom/google/common/cache/if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$throw;->valueStrength:Lcom/google/common/cache/LocalCache$public;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->protected(Lcom/google/common/cache/LocalCache$public;)Lcom/google/common/cache/if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$throw;->keyEquivalence:Lcom/google/common/base/this;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->extends(Lcom/google/common/base/this;)Lcom/google/common/cache/if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$throw;->valueEquivalence:Lcom/google/common/base/this;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->instanceof(Lcom/google/common/base/this;)Lcom/google/common/cache/if;

    move-result-object v0

    iget v1, p0, Lcom/google/common/cache/LocalCache$throw;->concurrencyLevel:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->try(I)Lcom/google/common/cache/if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$throw;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->volatile(Lcom/google/common/cache/RemovalListener;)Lcom/google/common/cache/if;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/google/common/cache/if;->do:Z

    .line 9
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$throw;->expireAfterWriteNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/common/cache/if;->else(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;

    .line 11
    :cond_0
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$throw;->expireAfterAccessNanos:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 12
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/if;->case(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$throw;->weigher:Lcom/google/common/cache/Weigher;

    sget-object v2, Lcom/google/common/cache/if$try;->INSTANCE:Lcom/google/common/cache/if$try;

    const-wide/16 v3, -0x1

    if-eq v1, v2, :cond_2

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->b(Lcom/google/common/cache/Weigher;)Lcom/google/common/cache/if;

    .line 15
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$throw;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/if;->private(J)Lcom/google/common/cache/if;

    goto :goto_0

    .line 17
    :cond_2
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$throw;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/if;->package(J)Lcom/google/common/cache/if;

    .line 19
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$throw;->ticker:Lcom/google/common/base/finally;

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->implements(Lcom/google/common/base/finally;)Lcom/google/common/cache/if;

    :cond_4
    return-object v0
.end method
