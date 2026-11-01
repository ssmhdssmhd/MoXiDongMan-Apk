.class public final Lcom/google/common/cache/CacheBuilderSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilderSpec$class;,
        Lcom/google/common/cache/CacheBuilderSpec$final;,
        Lcom/google/common/cache/CacheBuilderSpec$if;,
        Lcom/google/common/cache/CacheBuilderSpec$new;,
        Lcom/google/common/cache/CacheBuilderSpec$catch;,
        Lcom/google/common/cache/CacheBuilderSpec$const;,
        Lcom/google/common/cache/CacheBuilderSpec$else;,
        Lcom/google/common/cache/CacheBuilderSpec$for;,
        Lcom/google/common/cache/CacheBuilderSpec$break;,
        Lcom/google/common/cache/CacheBuilderSpec$this;,
        Lcom/google/common/cache/CacheBuilderSpec$try;,
        Lcom/google/common/cache/CacheBuilderSpec$goto;,
        Lcom/google/common/cache/CacheBuilderSpec$case;,
        Lcom/google/common/cache/CacheBuilderSpec$ValueParser;
    }
.end annotation


# static fields
.field private static final super:Lcom/google/common/base/Splitter;

.field private static final throw:Lcom/google/common/base/Splitter;

.field private static final while:Lcom/google/common/collect/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x0<",
            "Ljava/lang/String;",
            "Lcom/google/common/cache/CacheBuilderSpec$ValueParser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public break:J
    .annotation build Landroid/support/v4/af2;
    .end annotation
.end field

.field public case:Lcom/google/common/cache/LocalCache$public;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public catch:Ljava/util/concurrent/TimeUnit;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public class:J
    .annotation build Landroid/support/v4/af2;
    .end annotation
.end field

.field public const:Ljava/util/concurrent/TimeUnit;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public do:Ljava/lang/Integer;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public else:Ljava/lang/Boolean;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field private final final:Ljava/lang/String;

.field public for:Ljava/lang/Long;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public goto:J
    .annotation build Landroid/support/v4/af2;
    .end annotation
.end field

.field public if:Ljava/lang/Long;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public new:Ljava/lang/Integer;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public this:Ljava/util/concurrent/TimeUnit;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field public try:Lcom/google/common/cache/LocalCache$public;
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x2c

    .line 1
    invoke-static {v0}, Lcom/google/common/base/Splitter;->goto(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->while()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->super:Lcom/google/common/base/Splitter;

    const/16 v0, 0x3d

    .line 2
    invoke-static {v0}, Lcom/google/common/base/Splitter;->goto(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->while()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->throw:Lcom/google/common/base/Splitter;

    .line 3
    invoke-static {}, Lcom/google/common/collect/x0;->builder()Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$try;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$try;-><init>()V

    const-string v2, "initialCapacity"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$this;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$this;-><init>()V

    const-string v2, "maximumSize"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$break;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$break;-><init>()V

    const-string v2, "maximumWeight"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$for;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$for;-><init>()V

    const-string v2, "concurrencyLevel"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$else;

    sget-object v2, Lcom/google/common/cache/LocalCache$public;->WEAK:Lcom/google/common/cache/LocalCache$public;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$else;-><init>(Lcom/google/common/cache/LocalCache$public;)V

    const-string v3, "weakKeys"

    .line 8
    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$const;

    sget-object v3, Lcom/google/common/cache/LocalCache$public;->SOFT:Lcom/google/common/cache/LocalCache$public;

    invoke-direct {v1, v3}, Lcom/google/common/cache/CacheBuilderSpec$const;-><init>(Lcom/google/common/cache/LocalCache$public;)V

    const-string v3, "softValues"

    .line 9
    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$const;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$const;-><init>(Lcom/google/common/cache/LocalCache$public;)V

    const-string v2, "weakValues"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$catch;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$catch;-><init>()V

    const-string v2, "recordStats"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$if;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$if;-><init>()V

    const-string v2, "expireAfterAccess"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$final;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$final;-><init>()V

    const-string v2, "expireAfterWrite"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$class;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$class;-><init>()V

    const-string v2, "refreshAfterWrite"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$class;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$class;-><init>()V

    const-string v2, "refreshInterval"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/common/collect/x0$if;->do()Lcom/google/common/collect/x0;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->while:Lcom/google/common/collect/x0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec;->final:Ljava/lang/String;

    return-void
.end method

.method public static synthetic do(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/cache/CacheBuilderSpec;->new(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;
    .locals 0
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static if()Lcom/google/common/cache/CacheBuilderSpec;
    .locals 1

    const-string v0, "maximumSize=0"

    .line 1
    invoke-static {v0}, Lcom/google/common/cache/CacheBuilderSpec;->try(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    return-object v0
.end method

.method private static varargs new(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/cache/CacheBuilderSpec;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CacheBuilderSpec;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec;->super:Lcom/google/common/base/Splitter;

    invoke-virtual {v1, p0}, Lcom/google/common/base/Splitter;->final(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/google/common/cache/CacheBuilderSpec;->throw:Lcom/google/common/base/Splitter;

    invoke-virtual {v2, v1}, Lcom/google/common/base/Splitter;->final(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/v0;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "blank key-value pair"

    invoke-static {v3, v5}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gt v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v5, "key-value pair %s with more than one equals sign"

    .line 7
    invoke-static {v3, v5, v1}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    sget-object v3, Lcom/google/common/cache/CacheBuilderSpec;->while:Lcom/google/common/collect/x0;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/CacheBuilderSpec$ValueParser;

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    :cond_1
    const-string v5, "unknown key %s"

    .line 10
    invoke-static {v6, v5, v1}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    :goto_2
    invoke-interface {v3, v0, v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$ValueParser;->parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public case()Lcom/google/common/cache/if;
    .locals 4
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
    invoke-static {}, Lcom/google/common/cache/if;->abstract()Lcom/google/common/cache/if;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->do:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->throws(I)Lcom/google/common/cache/if;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->if:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/if;->package(J)Lcom/google/common/cache/if;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->for:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/if;->private(J)Lcom/google/common/cache/if;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->new:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/if;->try(I)Lcom/google/common/cache/if;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->try:Lcom/google/common/cache/LocalCache$public;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 11
    sget-object v3, Lcom/google/common/cache/CacheBuilderSpec$do;->do:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-ne v1, v2, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/google/common/cache/if;->synchronized()Lcom/google/common/cache/if;

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->case:Lcom/google/common/cache/LocalCache$public;

    if-eqz v1, :cond_8

    .line 15
    sget-object v3, Lcom/google/common/cache/CacheBuilderSpec$do;->do:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/google/common/cache/if;->transient()Lcom/google/common/cache/if;

    goto :goto_1

    .line 17
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_7
    invoke-virtual {v0}, Lcom/google/common/cache/if;->a()Lcom/google/common/cache/if;

    .line 19
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->else:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20
    invoke-virtual {v0}, Lcom/google/common/cache/if;->continue()Lcom/google/common/cache/if;

    .line 21
    :cond_9
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->this:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_a

    .line 22
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->goto:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/if;->else(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;

    .line 23
    :cond_a
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->catch:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_b

    .line 24
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->break:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/if;->case(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;

    .line 25
    :cond_b
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->const:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_c

    .line 26
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->class:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/if;->strictfp(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/if;

    :cond_c
    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilderSpec;->final:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/cache/CacheBuilderSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/common/cache/CacheBuilderSpec;

    .line 3
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->do:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->do:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->if:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->if:Ljava/lang/Long;

    .line 4
    invoke-static {v1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->for:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->for:Ljava/lang/Long;

    .line 5
    invoke-static {v1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->new:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->new:Ljava/lang/Integer;

    .line 6
    invoke-static {v1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->try:Lcom/google/common/cache/LocalCache$public;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->try:Lcom/google/common/cache/LocalCache$public;

    .line 7
    invoke-static {v1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->case:Lcom/google/common/cache/LocalCache$public;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->case:Lcom/google/common/cache/LocalCache$public;

    .line 8
    invoke-static {v1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->else:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->else:Ljava/lang/Boolean;

    .line 9
    invoke-static {v1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->goto:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->this:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-static {v3, v4, v1}, Lcom/google/common/cache/CacheBuilderSpec;->for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->goto:J

    iget-object v5, p1, Lcom/google/common/cache/CacheBuilderSpec;->this:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-static {v3, v4, v5}, Lcom/google/common/cache/CacheBuilderSpec;->for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 12
    invoke-static {v1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->break:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->catch:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-static {v3, v4, v1}, Lcom/google/common/cache/CacheBuilderSpec;->for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->break:J

    iget-object v5, p1, Lcom/google/common/cache/CacheBuilderSpec;->catch:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-static {v3, v4, v5}, Lcom/google/common/cache/CacheBuilderSpec;->for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 15
    invoke-static {v1, v3}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->class:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->const:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-static {v3, v4, v1}, Lcom/google/common/cache/CacheBuilderSpec;->for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->class:J

    iget-object p1, p1, Lcom/google/common/cache/CacheBuilderSpec;->const:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-static {v3, v4, p1}, Lcom/google/common/cache/CacheBuilderSpec;->for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object p1

    .line 18
    invoke-static {v1, p1}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->do:Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->if:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->for:Ljava/lang/Long;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->new:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->try:Lcom/google/common/cache/LocalCache$public;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->case:Lcom/google/common/cache/LocalCache$public;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->else:Ljava/lang/Boolean;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->goto:J

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->this:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/common/cache/CacheBuilderSpec;->for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->break:J

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->catch:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/common/cache/CacheBuilderSpec;->for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->class:J

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->const:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/common/cache/CacheBuilderSpec;->for(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Lcom/google/common/base/throw;->if([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/super;->for(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilderSpec;->else()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/super$if;->throw(Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/super$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
