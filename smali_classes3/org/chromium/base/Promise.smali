.class public Lorg/chromium/base/Promise;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/Promise$if;,
        Lorg/chromium/base/Promise$AsyncFunction;,
        Lorg/chromium/base/Promise$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic this:Z


# instance fields
.field private final case:Ljava/lang/Thread;

.field private do:I

.field private final else:Landroid/os/Handler;

.field private final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/Callback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private goto:Z

.field private if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private new:Ljava/lang/Exception;

.field private final try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/chromium/base/Promise;->do:I

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/Promise;->for:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/Promise;->try:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/Promise;->case:Ljava/lang/Thread;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/Promise;->else:Landroid/os/Handler;

    return-void
.end method

.method private case(Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/chromium/base/Promise;->do:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/base/Promise;->new:Ljava/lang/Exception;

    invoke-direct {p0, p1, v0}, Lorg/chromium/base/Promise;->super(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/chromium/base/Promise;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic class(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/base/Promise$if;

    const-string v1, "Promise was rejected without a rejection handler."

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/Promise$if;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static synthetic const(Lorg/chromium/base/Promise;Lorg/chromium/base/Function;Ljava/lang/Object;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lorg/chromium/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/base/Promise;->else(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/base/Promise;->while(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic do(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/Promise;->class(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic final(Lorg/chromium/base/Promise$AsyncFunction;Lorg/chromium/base/Promise;Ljava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0, p2}, Lorg/chromium/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Promise;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/support/v4/zf1;

    invoke-direct {p2, p1}, Landroid/support/v4/zf1;-><init>(Lorg/chromium/base/Promise;)V

    new-instance v0, Landroid/support/v4/yf1;

    invoke-direct {v0, p1}, Landroid/support/v4/yf1;-><init>(Lorg/chromium/base/Promise;)V

    invoke-virtual {p0, p2, v0}, Lorg/chromium/base/Promise;->static(Lorg/chromium/base/Callback;Lorg/chromium/base/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p1, p0}, Lorg/chromium/base/Promise;->while(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic for(Lorg/chromium/base/Promise$AsyncFunction;Lorg/chromium/base/Promise;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/chromium/base/Promise;->final(Lorg/chromium/base/Promise$AsyncFunction;Lorg/chromium/base/Promise;Ljava/lang/Object;)V

    return-void
.end method

.method public static goto(Ljava/lang/Object;)Lorg/chromium/base/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/chromium/base/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lorg/chromium/base/Promise;->else(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic if(Lorg/chromium/base/Promise;Lorg/chromium/base/Function;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/chromium/base/Promise;->const(Lorg/chromium/base/Promise;Lorg/chromium/base/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public static import()Lorg/chromium/base/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/chromium/base/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 2
    invoke-virtual {v0}, Lorg/chromium/base/Promise;->throw()V

    return-object v0
.end method

.method private new()V
    .locals 0

    return-void
.end method

.method private super(Lorg/chromium/base/Callback;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Callback<",
            "TS;>;TS;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/Promise;->else:Landroid/os/Handler;

    invoke-interface {p1, p2}, Lorg/chromium/base/Callback;->bind(Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private switch(Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/chromium/base/Promise;->do:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/base/Promise;->if:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/chromium/base/Promise;->super(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/chromium/base/Promise;->for:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public break()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/Promise;->new()V

    .line 2
    iget v0, p0, Lorg/chromium/base/Promise;->do:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public catch()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/Promise;->new()V

    .line 2
    iget v0, p0, Lorg/chromium/base/Promise;->do:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public else(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/Promise;->new()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/chromium/base/Promise;->do:I

    .line 3
    iput-object p1, p0, Lorg/chromium/base/Promise;->if:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lorg/chromium/base/Promise;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/Callback;

    .line 5
    invoke-direct {p0, v1, p1}, Lorg/chromium/base/Promise;->super(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/chromium/base/Promise;->for:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public native(Lorg/chromium/base/Function;)Lorg/chromium/base/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Function<",
            "TT;TRT;>;)",
            "Lorg/chromium/base/Promise<",
            "TRT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/Promise;->new()V

    .line 2
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 3
    new-instance v1, Landroid/support/v4/ag1;

    invoke-direct {v1, v0, p1}, Landroid/support/v4/ag1;-><init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Function;)V

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->switch(Lorg/chromium/base/Callback;)V

    .line 4
    new-instance p1, Landroid/support/v4/yf1;

    invoke-direct {p1, v0}, Landroid/support/v4/yf1;-><init>(Lorg/chromium/base/Promise;)V

    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->case(Lorg/chromium/base/Callback;)V

    return-object v0
.end method

.method public public(Lorg/chromium/base/Promise$AsyncFunction;)Lorg/chromium/base/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Promise$AsyncFunction<",
            "TT;TRT;>;)",
            "Lorg/chromium/base/Promise<",
            "TRT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/Promise;->new()V

    .line 2
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 3
    new-instance v1, Landroid/support/v4/xf1;

    invoke-direct {v1, p1, v0}, Landroid/support/v4/xf1;-><init>(Lorg/chromium/base/Promise$AsyncFunction;Lorg/chromium/base/Promise;)V

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->switch(Lorg/chromium/base/Callback;)V

    .line 4
    new-instance p1, Landroid/support/v4/yf1;

    invoke-direct {p1, v0}, Landroid/support/v4/yf1;-><init>(Lorg/chromium/base/Promise;)V

    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->case(Lorg/chromium/base/Callback;)V

    return-object v0
.end method

.method public return(Lorg/chromium/base/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/Promise;->new()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/base/Promise;->goto:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->switch(Lorg/chromium/base/Callback;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Landroid/support/v4/bg1;->do:Landroid/support/v4/bg1;

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/Promise;->static(Lorg/chromium/base/Callback;Lorg/chromium/base/Callback;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/chromium/base/Promise;->goto:Z

    return-void
.end method

.method public static(Lorg/chromium/base/Callback;Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TT;>;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/Promise;->new()V

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->switch(Lorg/chromium/base/Callback;)V

    .line 3
    invoke-direct {p0, p2}, Lorg/chromium/base/Promise;->case(Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public this()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/Promise;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public throw()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/base/Promise;->while(Ljava/lang/Exception;)V

    return-void
.end method

.method public try(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/Promise;->new()V

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->case(Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public while(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/Promise;->new()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/chromium/base/Promise;->do:I

    .line 3
    iput-object p1, p0, Lorg/chromium/base/Promise;->new:Ljava/lang/Exception;

    .line 4
    iget-object v0, p0, Lorg/chromium/base/Promise;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/Callback;

    .line 5
    invoke-direct {p0, v1, p1}, Lorg/chromium/base/Promise;->super(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/chromium/base/Promise;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
