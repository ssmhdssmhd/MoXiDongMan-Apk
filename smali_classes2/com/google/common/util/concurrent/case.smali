.class public abstract Lcom/google/common/util/concurrent/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/case$catch;,
        Lcom/google/common/util/concurrent/case$break;,
        Lcom/google/common/util/concurrent/case$else;,
        Lcom/google/common/util/concurrent/case$this;,
        Lcom/google/common/util/concurrent/case$goto;
    }
.end annotation


# static fields
.field private static final break:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation
.end field

.field private static final catch:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation
.end field

.field private static final class:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation
.end field

.field private static final const:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation
.end field

.field private static final final:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation
.end field

.field private static final goto:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation
.end field

.field private static final super:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation
.end field

.field private static final this:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final case:Lcom/google/common/util/concurrent/ListenerCallQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation
.end field

.field private final do:Lcom/google/common/util/concurrent/transient;

.field private volatile else:Lcom/google/common/util/concurrent/case$catch;

.field private final for:Lcom/google/common/util/concurrent/transient$do;

.field private final if:Lcom/google/common/util/concurrent/transient$do;

.field private final new:Lcom/google/common/util/concurrent/transient$do;

.field private final try:Lcom/google/common/util/concurrent/transient$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/case$do;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/case$do;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/case;->goto:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/case$if;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/case$if;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/case;->this:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 3
    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    .line 4
    invoke-static {v0}, Lcom/google/common/util/concurrent/case;->super(Lcom/google/common/util/concurrent/Service$for;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/case;->break:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 5
    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    .line 6
    invoke-static {v1}, Lcom/google/common/util/concurrent/case;->super(Lcom/google/common/util/concurrent/Service$for;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v2

    sput-object v2, Lcom/google/common/util/concurrent/case;->catch:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 7
    sget-object v2, Lcom/google/common/util/concurrent/Service$for;->NEW:Lcom/google/common/util/concurrent/Service$for;

    .line 8
    invoke-static {v2}, Lcom/google/common/util/concurrent/case;->throw(Lcom/google/common/util/concurrent/Service$for;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v2

    sput-object v2, Lcom/google/common/util/concurrent/case;->class:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 9
    invoke-static {v0}, Lcom/google/common/util/concurrent/case;->throw(Lcom/google/common/util/concurrent/Service$for;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/case;->const:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 10
    invoke-static {v1}, Lcom/google/common/util/concurrent/case;->throw(Lcom/google/common/util/concurrent/Service$for;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/case;->final:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 11
    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->STOPPING:Lcom/google/common/util/concurrent/Service$for;

    .line 12
    invoke-static {v0}, Lcom/google/common/util/concurrent/case;->throw(Lcom/google/common/util/concurrent/Service$for;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/case;->super:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/transient;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/transient;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/case$goto;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/case$goto;-><init>(Lcom/google/common/util/concurrent/case;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->if:Lcom/google/common/util/concurrent/transient$do;

    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/case$this;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/case$this;-><init>(Lcom/google/common/util/concurrent/case;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->for:Lcom/google/common/util/concurrent/transient$do;

    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/case$else;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/case$else;-><init>(Lcom/google/common/util/concurrent/case;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->new:Lcom/google/common/util/concurrent/transient$do;

    .line 6
    new-instance v0, Lcom/google/common/util/concurrent/case$break;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/case$break;-><init>(Lcom/google/common/util/concurrent/case;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->try:Lcom/google/common/util/concurrent/transient$do;

    .line 7
    new-instance v0, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 8
    new-instance v0, Lcom/google/common/util/concurrent/case$catch;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->NEW:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    return-void
.end method

.method private break(Lcom/google/common/util/concurrent/Service$for;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v0, Lcom/google/common/util/concurrent/case;->break:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v0, Lcom/google/common/util/concurrent/case;->catch:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private catch(Lcom/google/common/util/concurrent/Service$for;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/case$case;->do:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v0, Lcom/google/common/util/concurrent/case;->super:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v0, Lcom/google/common/util/concurrent/case;->final:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object p1, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v0, Lcom/google/common/util/concurrent/case;->const:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object p1, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v0, Lcom/google/common/util/concurrent/case;->class:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic do(Lcom/google/common/util/concurrent/case;)Lcom/google/common/util/concurrent/transient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    return-object p0
.end method

.method private else(Lcom/google/common/util/concurrent/Service$for;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    new-instance v1, Lcom/google/common/util/concurrent/case$try;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/util/concurrent/case$try;-><init>(Lcom/google/common/util/concurrent/case;Lcom/google/common/util/concurrent/Service$for;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    return-void
.end method

.method private for()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->package()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->for()V

    :cond_0
    return-void
.end method

.method private goto()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lcom/google/common/util/concurrent/case;->this:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    return-void
.end method

.method private if(Lcom/google/common/util/concurrent/Service$for;)V
    .locals 5
    .annotation build Landroid/support/v4/ji0;
        value = "monitor"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 2
    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->FAILED:Lcom/google/common/util/concurrent/Service$for;

    const-string v2, " to be "

    const-string v3, "Expected the service "

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but the service has FAILED"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->failureCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static super(Lcom/google/common/util/concurrent/Service$for;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$for;",
            ")",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/case$new;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/case$new;-><init>(Lcom/google/common/util/concurrent/Service$for;)V

    return-object v0
.end method

.method private this()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    sget-object v1, Lcom/google/common/util/concurrent/case;->goto:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->new(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    return-void
.end method

.method private static throw(Lcom/google/common/util/concurrent/Service$for;)Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$for;",
            ")",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/Service$if;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/case$for;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/case$for;-><init>(Lcom/google/common/util/concurrent/Service$for;)V

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$if;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->case:Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue;->if(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final awaitRunning()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->new:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/transient;->while(Lcom/google/common/util/concurrent/transient$do;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/case;->if(Lcom/google/common/util/concurrent/Service$for;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 4
    throw v0
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->new:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/transient;->import(Lcom/google/common/util/concurrent/transient$do;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/case;->if(Lcom/google/common/util/concurrent/Service$for;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 8
    throw p1

    .line 9
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timed out waiting for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to reach the RUNNING state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final awaitTerminated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->try:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/transient;->while(Lcom/google/common/util/concurrent/transient$do;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->TERMINATED:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/case;->if(Lcom/google/common/util/concurrent/Service$for;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 4
    throw v0
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->try:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/transient;->import(Lcom/google/common/util/concurrent/transient$do;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/Service$for;->TERMINATED:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/case;->if(Lcom/google/common/util/concurrent/Service$for;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 8
    throw p1

    .line 9
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Timed out waiting for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to reach a terminal state. Current state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract case()V
    .annotation build Landroid/support/v4/jd0;
    .end annotation
.end method

.method public final class(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/common/util/concurrent/case$case;->do:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/google/common/util/concurrent/case$catch;

    sget-object v2, Lcom/google/common/util/concurrent/Service$for;->FAILED:Lcom/google/common/util/concurrent/Service$for;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;ZLjava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/case;->else(Lcom/google/common/util/concurrent/Service$for;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 8
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    return-void

    .line 9
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed while in state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 10
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 11
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    .line 12
    throw p1
.end method

.method public final const()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    iget-object v0, v0, Lcom/google/common/util/concurrent/case$catch;->do:Lcom/google/common/util/concurrent/Service$for;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/case$catch;->if:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/case$catch;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->STOPPING:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    .line 5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->case()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/case$catch;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    .line 7
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->goto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 9
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    return-void

    .line 10
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    iget-object v2, v2, Lcom/google/common/util/concurrent/case$catch;->do:Lcom/google/common/util/concurrent/Service$for;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/case;->class(Ljava/lang/Throwable;)V

    .line 12
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 14
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    .line 15
    throw v0
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case$catch;->if()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final final()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->else()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/case$case;->do:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    new-instance v1, Lcom/google/common/util/concurrent/case$catch;

    sget-object v2, Lcom/google/common/util/concurrent/Service$for;->TERMINATED:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/case;->catch(Lcom/google/common/util/concurrent/Service$for;)V

    goto :goto_0

    .line 6
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot notifyStopped() when the service is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 8
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 10
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    .line 11
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final isRunning()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new()V
    .locals 0
    .annotation build Landroid/support/v4/jd0;
    .end annotation

    return-void
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->if:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/transient;->this(Lcom/google/common/util/concurrent/transient$do;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/case$catch;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    .line 3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->this()V

    .line 4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->try()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/case;->class(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 7
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    return-object p0

    :catchall_1
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 9
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    .line 10
    throw v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has already been started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case$catch;->do()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 4
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->for:Lcom/google/common/util/concurrent/transient$do;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/transient;->this(Lcom/google/common/util/concurrent/transient$do;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/case$case;->do:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStoppable is incorrectly implemented, saw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 5
    :pswitch_1
    new-instance v0, Lcom/google/common/util/concurrent/case$catch;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->STOPPING:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    .line 6
    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->RUNNING:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/case;->break(Lcom/google/common/util/concurrent/Service$for;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->case()V

    goto :goto_0

    .line 8
    :pswitch_2
    new-instance v0, Lcom/google/common/util/concurrent/case$catch;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;ZLjava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    .line 9
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/case;->break(Lcom/google/common/util/concurrent/Service$for;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->new()V

    goto :goto_0

    .line 11
    :pswitch_3
    new-instance v0, Lcom/google/common/util/concurrent/case$catch;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->TERMINATED:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/case;->else:Lcom/google/common/util/concurrent/case$catch;

    .line 12
    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->NEW:Lcom/google/common/util/concurrent/Service$for;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/case;->catch(Lcom/google/common/util/concurrent/Service$for;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/case;->class(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 15
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/google/common/util/concurrent/case;->do:Lcom/google/common/util/concurrent/transient;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/transient;->abstract()V

    .line 17
    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;->for()V

    .line 18
    throw v0

    :cond_0
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract try()V
    .annotation build Landroid/support/v4/jd0;
    .end annotation
.end method
