.class public final Lcom/google/common/util/concurrent/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/d$for;,
        Lcom/google/common/util/concurrent/d$try;,
        Lcom/google/common/util/concurrent/d$case;,
        Lcom/google/common/util/concurrent/d$else;,
        Lcom/google/common/util/concurrent/d$new;
    }
.end annotation


# static fields
.field private static final for:Ljava/util/logging/Logger;

.field private static final new:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/d$new;",
            ">;"
        }
    .end annotation
.end field

.field private static final try:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lcom/google/common/util/concurrent/d$new;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final do:Lcom/google/common/util/concurrent/d$else;

.field private final if:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/d;->for:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/d$do;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/d$do;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/d;->new:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/d$if;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/d$if;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/d;->try:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/v0;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/google/common/util/concurrent/d;->for:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Lcom/google/common/util/concurrent/d$for;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/d$for;-><init>(Lcom/google/common/util/concurrent/d$do;)V

    const-string v3, "ServiceManager configured with no services.  Is your application configured properly?"

    invoke-virtual {p1, v0, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Lcom/google/common/util/concurrent/d$try;

    invoke-direct {p1, v2}, Lcom/google/common/util/concurrent/d$try;-><init>(Lcom/google/common/util/concurrent/d$do;)V

    invoke-static {p1}, Lcom/google/common/collect/v0;->of(Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object p1

    .line 6
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/d$else;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/d$else;-><init>(Lcom/google/common/collect/r0;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    .line 7
    iput-object p1, p0, Lcom/google/common/util/concurrent/d;->if:Lcom/google/common/collect/v0;

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 10
    new-instance v2, Lcom/google/common/util/concurrent/d$case;

    invoke-direct {v2, v0, v1}, Lcom/google/common/util/concurrent/d$case;-><init>(Lcom/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Lcom/google/common/util/concurrent/implements;->for()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/google/common/util/concurrent/Service;->addListener(Lcom/google/common/util/concurrent/Service$if;Ljava/util/concurrent/Executor;)V

    .line 11
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v2

    sget-object v3, Lcom/google/common/util/concurrent/Service$for;->NEW:Lcom/google/common/util/concurrent/Service$for;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Can only manage NEW services, %s"

    invoke-static {v2, v3, v0}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/d$else;->catch()V

    return-void
.end method

.method public static synthetic do()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/d;->for:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic for()Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/d;->new:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-object v0
.end method

.method public static synthetic if()Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/d;->try:Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-object v0
.end method


# virtual methods
.method public break()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 2
    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d$else;->if()V

    return-void
.end method

.method public catch()Lcom/google/common/collect/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/b1<",
            "Lcom/google/common/util/concurrent/Service$for;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d$else;->class()Lcom/google/common/collect/b1;

    move-result-object v0

    return-object v0
.end method

.method public class()Lcom/google/common/util/concurrent/d;
    .locals 7
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 2
    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/common/util/concurrent/Service$for;->NEW:Lcom/google/common/util/concurrent/Service$for;

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Service %s is %s, cannot start it."

    invoke-static {v3, v4, v1, v2}, Landroid/support/v4/af1;->O(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/d$else;->super(Lcom/google/common/util/concurrent/Service;)V

    .line 6
    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->startAsync()Lcom/google/common/util/concurrent/Service;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 7
    sget-object v3, Lcom/google/common/util/concurrent/d;->for:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to start Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public const()Lcom/google/common/collect/x0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x0<",
            "Lcom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d$else;->const()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method public else(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/d$else;->for(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final()Lcom/google/common/util/concurrent/d;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 2
    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->stopAsync()Lcom/google/common/util/concurrent/Service;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public goto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d$else;->new()V

    return-void
.end method

.method public new(Lcom/google/common/util/concurrent/d$new;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-static {}, Lcom/google/common/util/concurrent/implements;->for()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/util/concurrent/d$else;->do(Lcom/google/common/util/concurrent/d$new;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public this(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/d$else;->try(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/d;

    invoke-static {v0}, Lcom/google/common/base/super;->if(Ljava/lang/Class;)Lcom/google/common/base/super$if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/d;->if:Lcom/google/common/collect/v0;

    const-class v2, Lcom/google/common/util/concurrent/d$try;

    .line 2
    invoke-static {v2}, Lcom/google/common/base/public;->super(Ljava/lang/Class;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/public;->while(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/extends;->try(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    const-string v2, "services"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/super$if;->case(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/super$if;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/super$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(Lcom/google/common/util/concurrent/d$new;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->do:Lcom/google/common/util/concurrent/d$else;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/d$else;->do(Lcom/google/common/util/concurrent/d$new;Ljava/util/concurrent/Executor;)V

    return-void
.end method
