.class public Landroid/support/v4/r8;
.super Lorg/chromium/net/try$do;
.source "SourceFile"


# instance fields
.field private final break:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final case:Landroid/support/v4/qs;

.field private catch:Ljava/lang/String;

.field private class:I

.field private const:Z

.field private final else:Ljava/lang/String;

.field private final:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final goto:Lorg/chromium/net/if$if;

.field private import:I

.field private super:Z

.field private final this:Ljava/util/concurrent/Executor;

.field private throw:I

.field private while:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/chromium/net/if$if;Ljava/util/concurrent/Executor;Landroid/support/v4/qs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/try$do;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/r8;->break:Ljava/util/ArrayList;

    const-string v0, "POST"

    .line 3
    iput-object v0, p0, Landroid/support/v4/r8;->catch:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Landroid/support/v4/r8;->class:I

    const-string v0, "URL is required."

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback is required."

    .line 6
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor is required."

    .line 7
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CronetEngine is required."

    .line 8
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Landroid/support/v4/r8;->else:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Landroid/support/v4/r8;->goto:Lorg/chromium/net/if$if;

    .line 11
    iput-object p3, p0, Landroid/support/v4/r8;->this:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p4, p0, Landroid/support/v4/r8;->case:Landroid/support/v4/qs;

    return-void
.end method


# virtual methods
.method public bridge synthetic break(Ljava/lang/String;)Lorg/chromium/net/try$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/r8;->throw(Ljava/lang/String;)Landroid/support/v4/r8;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic case(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/try$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/r8;->final(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/r8;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic catch(I)Lorg/chromium/net/try$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/r8;->while(I)Landroid/support/v4/r8;

    move-result-object p1

    return-object p1
.end method

.method public class(I)Lorg/chromium/net/try$do;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/r8;->super:Z

    .line 2
    iput p1, p0, Landroid/support/v4/r8;->throw:I

    return-object p0
.end method

.method public const(I)Lorg/chromium/net/try$do;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/r8;->while:Z

    .line 2
    iput p1, p0, Landroid/support/v4/r8;->import:I

    return-object p0
.end method

.method public bridge synthetic do(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/if$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/r8;->final(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/r8;

    move-result-object p1

    return-object p1
.end method

.method public else(Ljava/lang/Object;)Lorg/chromium/net/try$do;
    .locals 1

    const-string v0, "Invalid metrics annotation."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroid/support/v4/r8;->final:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/r8;->final:Ljava/util/Collection;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v4/r8;->final:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/r8;
    .locals 2

    const-string v0, "Invalid header name."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Invalid header value."

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroid/support/v4/r8;->break:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic for(Z)Lorg/chromium/net/if$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/r8;->super(Z)Landroid/support/v4/r8;

    move-result-object p1

    return-object p1
.end method

.method public goto()Lorg/chromium/net/try;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/r8;->case:Landroid/support/v4/qs;

    iget-object v1, p0, Landroid/support/v4/r8;->else:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/r8;->goto:Lorg/chromium/net/if$if;

    iget-object v3, p0, Landroid/support/v4/r8;->this:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/support/v4/r8;->catch:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/r8;->break:Ljava/util/ArrayList;

    iget v6, p0, Landroid/support/v4/r8;->class:I

    iget-boolean v7, p0, Landroid/support/v4/r8;->const:Z

    iget-object v8, p0, Landroid/support/v4/r8;->final:Ljava/util/Collection;

    iget-boolean v9, p0, Landroid/support/v4/r8;->super:Z

    iget v10, p0, Landroid/support/v4/r8;->throw:I

    iget-boolean v11, p0, Landroid/support/v4/r8;->while:Z

    iget v12, p0, Landroid/support/v4/r8;->import:I

    invoke-virtual/range {v0 .. v12}, Landroid/support/v4/qs;->default(Ljava/lang/String;Lorg/chromium/net/if$if;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;IZLjava/util/Collection;ZIZI)Lorg/chromium/net/try;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic if()Lorg/chromium/net/if;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/r8;->goto()Lorg/chromium/net/try;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic new(Ljava/lang/String;)Lorg/chromium/net/if$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/r8;->throw(Ljava/lang/String;)Landroid/support/v4/r8;

    move-result-object p1

    return-object p1
.end method

.method public super(Z)Landroid/support/v4/r8;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/r8;->const:Z

    return-object p0
.end method

.method public bridge synthetic this(Z)Lorg/chromium/net/try$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/r8;->super(Z)Landroid/support/v4/r8;

    move-result-object p1

    return-object p1
.end method

.method public throw(Ljava/lang/String;)Landroid/support/v4/r8;
    .locals 1

    const-string v0, "Method is required."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/support/v4/r8;->catch:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic try(I)Lorg/chromium/net/if$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/r8;->while(I)Landroid/support/v4/r8;

    move-result-object p1

    return-object p1
.end method

.method public while(I)Landroid/support/v4/r8;
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/r8;->class:I

    return-object p0
.end method
