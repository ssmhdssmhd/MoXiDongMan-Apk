.class public final Lcom/google/common/cache/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/if$try;,
        Lcom/google/common/cache/if$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final default:Ljava/util/logging/Logger;

.field public static final extends:I = -0x1

.field private static final import:I = 0x4

.field private static final native:I = 0x0

.field private static final public:I = 0x0

.field public static final return:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field public static final static:Landroid/support/v4/df;

.field public static final switch:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field public static final throws:Lcom/google/common/base/finally;

.field private static final while:I = 0x10


# instance fields
.field public break:J

.field public case:Lcom/google/common/cache/Weigher;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field public catch:J

.field public class:Lcom/google/common/base/this;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public const:Lcom/google/common/base/this;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public do:Z

.field public else:Lcom/google/common/cache/LocalCache$public;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public final:Lcom/google/common/cache/RemovalListener;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field public for:I

.field public goto:Lcom/google/common/cache/LocalCache$public;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public if:I

.field public new:J

.field public super:Lcom/google/common/base/finally;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public this:J

.field public throw:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field public try:J


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/common/cache/if$do;

    invoke-direct {v0}, Lcom/google/common/cache/if$do;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->new(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/if;->return:Lcom/google/common/base/Supplier;

    .line 3
    new-instance v0, Landroid/support/v4/df;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroid/support/v4/df;-><init>(JJJJJJ)V

    sput-object v0, Lcom/google/common/cache/if;->static:Landroid/support/v4/df;

    .line 4
    new-instance v0, Lcom/google/common/cache/if$if;

    invoke-direct {v0}, Lcom/google/common/cache/if$if;-><init>()V

    sput-object v0, Lcom/google/common/cache/if;->switch:Lcom/google/common/base/Supplier;

    .line 5
    new-instance v0, Lcom/google/common/cache/if$for;

    invoke-direct {v0}, Lcom/google/common/cache/if$for;-><init>()V

    sput-object v0, Lcom/google/common/cache/if;->throws:Lcom/google/common/base/finally;

    .line 6
    const-class v0, Lcom/google/common/cache/if;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/if;->default:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/common/cache/if;->do:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/common/cache/if;->if:I

    .line 4
    iput v0, p0, Lcom/google/common/cache/if;->for:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/google/common/cache/if;->new:J

    .line 6
    iput-wide v0, p0, Lcom/google/common/cache/if;->try:J

    .line 7
    iput-wide v0, p0, Lcom/google/common/cache/if;->this:J

    .line 8
    iput-wide v0, p0, Lcom/google/common/cache/if;->break:J

    .line 9
    iput-wide v0, p0, Lcom/google/common/cache/if;->catch:J

    .line 10
    sget-object v0, Lcom/google/common/cache/if;->return:Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/cache/if;->throw:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static abstract()Lcom/google/common/cache/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/if<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/cache/if;

    invoke-direct {v0}, Lcom/google/common/cache/if;-><init>()V

    return-object v0
.end method

.method private for()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/if;->catch:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    return-void
.end method

.method public static goto(Lcom/google/common/cache/CacheBuilderSpec;)Lcom/google/common/cache/if;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilderSpec;",
            ")",
            "Lcom/google/common/cache/if<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilderSpec;->case()Lcom/google/common/cache/if;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/cache/if;->finally()Lcom/google/common/cache/if;

    move-result-object p0

    return-object p0
.end method

.method private new()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->case:Lcom/google/common/cache/Weigher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-nez v0, :cond_1

    .line 2
    iget-wide v5, p0, Lcom/google/common/cache/if;->try:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "maximumWeight requires weigher"

    invoke-static {v1, v0}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/cache/if;->do:Z

    if-eqz v0, :cond_3

    .line 4
    iget-wide v5, p0, Lcom/google/common/cache/if;->try:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v0, "weigher requires maximumWeight"

    invoke-static {v1, v0}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_3
    iget-wide v0, p0, Lcom/google/common/cache/if;->try:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 6
    sget-object v0, Lcom/google/common/cache/if;->default:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static this(Ljava/lang/String;)Lcom/google/common/cache/if;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/cache/if<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/cache/CacheBuilderSpec;->try(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/cache/if;->goto(Lcom/google/common/cache/CacheBuilderSpec;)Lcom/google/common/cache/if;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/common/cache/if;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$public;->WEAK:Lcom/google/common/cache/LocalCache$public;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/if;->protected(Lcom/google/common/cache/LocalCache$public;)Lcom/google/common/cache/if;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/common/cache/Weigher;)Lcom/google/common/cache/if;
    .locals 7
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/Weigher<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/if<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->case:Lcom/google/common/cache/Weigher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/google/common/cache/if;->do:Z

    if-eqz v0, :cond_2

    .line 3
    iget-wide v3, p0, Lcom/google/common/cache/if;->new:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "weigher can not be combined with maximum size"

    invoke-static {v1, v0, v3, v4}, Landroid/support/v4/af1;->F(ZLjava/lang/String;J)V

    .line 4
    :cond_2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/Weigher;

    iput-object p1, p0, Lcom/google/common/cache/if;->case:Lcom/google/common/cache/Weigher;

    return-object p0
.end method

.method public break()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/cache/if;->for:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method public case(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/if;->break:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "expireAfterAccess was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Landroid/support/v4/af1;->F(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    .line 2
    invoke-static {v2, v0, p1, p2, p3}, Landroid/support/v4/af1;->public(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/if;->break:J

    return-object p0
.end method

.method public catch()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/if;->break:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public class()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/if;->this:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public const()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/cache/if;->if:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method public continue()Lcom/google/common/cache/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/cache/if;->switch:Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/cache/if;->throw:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public default()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->throw:Lcom/google/common/base/Supplier;

    sget-object v1, Lcom/google/common/cache/if;->switch:Lcom/google/common/base/Supplier;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public do()Lcom/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Cache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/if;->new()V

    .line 2
    invoke-direct {p0}, Lcom/google/common/cache/if;->for()V

    .line 3
    new-instance v0, Lcom/google/common/cache/LocalCache$super;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$super;-><init>(Lcom/google/common/cache/if;)V

    return-object v0
.end method

.method public else(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/if;->this:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "expireAfterWrite was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Landroid/support/v4/af1;->F(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    .line 2
    invoke-static {v2, v0, p1, p2, p3}, Landroid/support/v4/af1;->public(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/if;->this:J

    return-object p0
.end method

.method public extends(Lcom/google/common/base/this;)Lcom/google/common/cache/if;
    .locals 3
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->class:Lcom/google/common/base/this;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "key equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/this;

    iput-object p1, p0, Lcom/google/common/cache/if;->class:Lcom/google/common/base/this;

    return-object p0
.end method

.method public final()Lcom/google/common/base/this;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->class:Lcom/google/common/base/this;

    invoke-virtual {p0}, Lcom/google/common/cache/if;->super()Lcom/google/common/cache/LocalCache$public;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$public;->defaultEquivalence()Lcom/google/common/base/this;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/this;

    return-object v0
.end method

.method public finally()Lcom/google/common/cache/if;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/common/cache/if;->do:Z

    return-object p0
.end method

.method public if(Lcom/google/common/cache/for;)Lcom/google/common/cache/LoadingCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/for<",
            "-TK1;TV1;>;)",
            "Lcom/google/common/cache/LoadingCache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/if;->new()V

    .line 2
    new-instance v0, Lcom/google/common/cache/LocalCache$final;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/LocalCache$final;-><init>(Lcom/google/common/cache/if;Lcom/google/common/cache/for;)V

    return-object v0
.end method

.method public implements(Lcom/google/common/base/finally;)Lcom/google/common/cache/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/finally;",
            ")",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->super:Lcom/google/common/base/finally;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/finally;

    iput-object p1, p0, Lcom/google/common/cache/if;->super:Lcom/google/common/base/finally;

    return-object p0
.end method

.method public import()Lcom/google/common/cache/RemovalListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/RemovalListener<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->final:Lcom/google/common/cache/RemovalListener;

    sget-object v1, Lcom/google/common/cache/if$new;->INSTANCE:Lcom/google/common/cache/if$new;

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalListener;

    return-object v0
.end method

.method public instanceof(Lcom/google/common/base/this;)Lcom/google/common/cache/if;
    .locals 3
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->const:Lcom/google/common/base/this;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "value equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/this;

    iput-object p1, p0, Lcom/google/common/cache/if;->const:Lcom/google/common/base/this;

    return-object p0
.end method

.method public interface(Lcom/google/common/cache/LocalCache$public;)Lcom/google/common/cache/if;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$public;",
            ")",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->else:Lcom/google/common/cache/LocalCache$public;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Key strength was already set to %s"

    invoke-static {v1, v2, v0}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/LocalCache$public;

    iput-object p1, p0, Lcom/google/common/cache/if;->else:Lcom/google/common/cache/LocalCache$public;

    return-object p0
.end method

.method public native()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier<",
            "+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->throw:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method public package(J)Lcom/google/common/cache/if;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/if;->new:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "maximum size was already set to %s"

    invoke-static {v6, v7, v0, v1}, Landroid/support/v4/af1;->F(ZLjava/lang/String;J)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/cache/if;->try:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum weight was already set to %s"

    invoke-static {v2, v3, v0, v1}, Landroid/support/v4/af1;->F(ZLjava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/google/common/cache/if;->case:Lcom/google/common/cache/Weigher;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "maximum size can not be combined with weigher"

    invoke-static {v0, v1}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const-string v0, "maximum size must not be negative"

    .line 4
    invoke-static {v4, v0}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    .line 5
    iput-wide p1, p0, Lcom/google/common/cache/if;->new:J

    return-object p0
.end method

.method public private(J)Lcom/google/common/cache/if;
    .locals 8
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/if;->try:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "maximum weight was already set to %s"

    invoke-static {v6, v7, v0, v1}, Landroid/support/v4/af1;->F(ZLjava/lang/String;J)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/cache/if;->new:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum size was already set to %s"

    invoke-static {v2, v3, v0, v1}, Landroid/support/v4/af1;->F(ZLjava/lang/String;J)V

    .line 3
    iput-wide p1, p0, Lcom/google/common/cache/if;->try:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const-string p1, "maximum weight must not be negative"

    .line 4
    invoke-static {v4, p1}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    return-object p0
.end method

.method public protected(Lcom/google/common/cache/LocalCache$public;)Lcom/google/common/cache/if;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$public;",
            ")",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->goto:Lcom/google/common/cache/LocalCache$public;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Value strength was already set to %s"

    invoke-static {v1, v2, v0}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/LocalCache$public;

    iput-object p1, p0, Lcom/google/common/cache/if;->goto:Lcom/google/common/cache/LocalCache$public;

    return-object p0
.end method

.method public public(Z)Lcom/google/common/base/finally;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->super:Lcom/google/common/base/finally;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/google/common/base/finally;->if()Lcom/google/common/base/finally;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/common/cache/if;->throws:Lcom/google/common/base/finally;

    :goto_0
    return-object p1
.end method

.method public return()Lcom/google/common/base/this;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->const:Lcom/google/common/base/this;

    invoke-virtual {p0}, Lcom/google/common/cache/if;->static()Lcom/google/common/cache/LocalCache$public;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$public;->defaultEquivalence()Lcom/google/common/base/this;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/this;

    return-object v0
.end method

.method public static()Lcom/google/common/cache/LocalCache$public;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->goto:Lcom/google/common/cache/LocalCache$public;

    sget-object v1, Lcom/google/common/cache/LocalCache$public;->STRONG:Lcom/google/common/cache/LocalCache$public;

    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$public;

    return-object v0
.end method

.method public strictfp(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;
    .locals 7
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v0, p0, Lcom/google/common/cache/if;->catch:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "refresh was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Landroid/support/v4/af1;->F(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration must be positive: %s %s"

    .line 3
    invoke-static {v2, v0, p1, p2, p3}, Landroid/support/v4/af1;->public(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 4
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/if;->catch:J

    return-object p0
.end method

.method public super()Lcom/google/common/cache/LocalCache$public;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->else:Lcom/google/common/cache/LocalCache$public;

    sget-object v1, Lcom/google/common/cache/LocalCache$public;->STRONG:Lcom/google/common/cache/LocalCache$public;

    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$public;

    return-object v0
.end method

.method public switch()Lcom/google/common/cache/Weigher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Weigher<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->case:Lcom/google/common/cache/Weigher;

    sget-object v1, Lcom/google/common/cache/if$try;->INSTANCE:Lcom/google/common/cache/if$try;

    invoke-static {v0, v1}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/Weigher;

    return-object v0
.end method

.method public synchronized()Lcom/google/common/cache/if;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$public;->WEAK:Lcom/google/common/cache/LocalCache$public;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/if;->interface(Lcom/google/common/cache/LocalCache$public;)Lcom/google/common/cache/if;

    move-result-object v0

    return-object v0
.end method

.method public throw()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/if;->this:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v0, p0, Lcom/google/common/cache/if;->break:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/if;->case:Lcom/google/common/cache/Weigher;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/cache/if;->new:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/cache/if;->try:J

    :goto_0
    return-wide v0

    :cond_2
    :goto_1
    return-wide v2
.end method

.method public throws(I)Lcom/google/common/cache/if;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/cache/if;->if:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v3, v4, v0}, Landroid/support/v4/af1;->A(ZLjava/lang/String;I)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-static {v1}, Landroid/support/v4/af1;->new(Z)V

    .line 3
    iput p1, p0, Lcom/google/common/cache/if;->if:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/google/common/base/super;->for(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/google/common/cache/if;->if:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    .line 3
    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/super$if;->new(Ljava/lang/String;I)Lcom/google/common/base/super$if;

    .line 4
    :cond_0
    iget v1, p0, Lcom/google/common/cache/if;->for:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->new(Ljava/lang/String;I)Lcom/google/common/base/super$if;

    .line 6
    :cond_1
    iget-wide v1, p0, Lcom/google/common/cache/if;->new:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const-string v5, "maximumSize"

    .line 7
    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/base/super$if;->try(Ljava/lang/String;J)Lcom/google/common/base/super$if;

    .line 8
    :cond_2
    iget-wide v1, p0, Lcom/google/common/cache/if;->try:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-string v5, "maximumWeight"

    .line 9
    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/base/super$if;->try(Ljava/lang/String;J)Lcom/google/common/base/super$if;

    .line 10
    :cond_3
    iget-wide v1, p0, Lcom/google/common/cache/if;->this:J

    const-string v5, "ns"

    cmp-long v6, v1, v3

    if-eqz v6, :cond_4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/google/common/cache/if;->this:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 12
    :cond_4
    iget-wide v1, p0, Lcom/google/common/cache/if;->break:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_5

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/common/cache/if;->break:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/google/common/cache/if;->else:Lcom/google/common/cache/LocalCache$public;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t3;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/google/common/cache/if;->goto:Lcom/google/common/cache/LocalCache$public;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t3;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/google/common/cache/if;->class:Lcom/google/common/base/this;

    if-eqz v1, :cond_8

    const-string v1, "keyEquivalence"

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/common/base/super$if;->throw(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/google/common/cache/if;->const:Lcom/google/common/base/this;

    if-eqz v1, :cond_9

    const-string v1, "valueEquivalence"

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/common/base/super$if;->throw(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/google/common/cache/if;->final:Lcom/google/common/cache/RemovalListener;

    if-eqz v1, :cond_a

    const-string v1, "removalListener"

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/common/base/super$if;->throw(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    .line 24
    :cond_a
    invoke-virtual {v0}, Lcom/google/common/base/super$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transient()Lcom/google/common/cache/if;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$public;->SOFT:Lcom/google/common/cache/LocalCache$public;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/if;->protected(Lcom/google/common/cache/LocalCache$public;)Lcom/google/common/cache/if;

    move-result-object v0

    return-object v0
.end method

.method public try(I)Lcom/google/common/cache/if;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/cache/if;->for:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v3, v4, v0}, Landroid/support/v4/af1;->A(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-static {v1}, Landroid/support/v4/af1;->new(Z)V

    .line 3
    iput p1, p0, Lcom/google/common/cache/if;->for:I

    return-object p0
.end method

.method public volatile(Lcom/google/common/cache/RemovalListener;)Lcom/google/common/cache/if;
    .locals 1
    .annotation runtime Landroid/support/v4/il;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/RemovalListener<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/if<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/if;->final:Lcom/google/common/cache/RemovalListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/RemovalListener;

    iput-object p1, p0, Lcom/google/common/cache/if;->final:Lcom/google/common/cache/RemovalListener;

    return-object p0
.end method

.method public while()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/if;->catch:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method
