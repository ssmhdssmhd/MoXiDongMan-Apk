.class public final Lrx/subjects/if;
.super Landroid/support/v4/u22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/u22<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field private static final for:[Ljava/lang/Object;


# instance fields
.field private final if:Lrx/subjects/try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/try<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Lrx/subjects/if;->for:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;",
            "Lrx/subjects/try<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/u22;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p2, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    return-void
.end method

.method public static g6()Lrx/subjects/if;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/if<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lrx/subjects/if;->i6(Ljava/lang/Object;Z)Lrx/subjects/if;

    move-result-object v0

    return-object v0
.end method

.method public static h6(Ljava/lang/Object;)Lrx/subjects/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/subjects/if<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lrx/subjects/if;->i6(Ljava/lang/Object;Z)Lrx/subjects/if;

    move-result-object p0

    return-object p0
.end method

.method private static i6(Ljava/lang/Object;Z)Lrx/subjects/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Lrx/subjects/if<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subjects/try;

    invoke-direct {v0}, Lrx/subjects/try;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lrx/subjects/try;->setLatest(Ljava/lang/Object;)V

    .line 3
    :cond_0
    new-instance p0, Lrx/subjects/if$do;

    invoke-direct {p0, v0}, Lrx/subjects/if$do;-><init>(Lrx/subjects/try;)V

    iput-object p0, v0, Lrx/subjects/try;->onAdded:Lrx/functions/Action1;

    .line 4
    iput-object p0, v0, Lrx/subjects/try;->onTerminated:Lrx/functions/Action1;

    .line 5
    new-instance p0, Lrx/subjects/if;

    invoke-direct {p0, v0, v0}, Lrx/subjects/if;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/try;)V

    return-object p0
.end method


# virtual methods
.method public e6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->observers()[Lrx/subjects/try$for;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j6()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lrx/internal/operators/return;->new(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k6()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->goto(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l6()[Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lrx/subjects/if;->for:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/subjects/if;->m6([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public m6([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->goto(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    array-length v1, p1

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-static {v0}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v3

    .line 6
    array-length v0, p1

    if-le v0, v4, :cond_2

    .line 7
    aput-object v2, p1, v4

    goto :goto_0

    .line 8
    :cond_1
    array-length v0, p1

    if-lez v0, :cond_2

    .line 9
    aput-object v2, p1, v3

    :cond_2
    :goto_0
    return-object p1
.end method

.method public n6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->case(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    iget-boolean v0, v0, Lrx/subjects/try;->active:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lrx/internal/operators/return;->if()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v1, v0}, Lrx/subjects/try;->terminate(Ljava/lang/Object;)[Lrx/subjects/try$for;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4, v0}, Lrx/subjects/try$for;->new(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    iget-boolean v0, v0, Lrx/subjects/try;->active:Z

    if-eqz v0, :cond_3

    .line 3
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/return;->for(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v1, p1}, Lrx/subjects/try;->terminate(Ljava/lang/Object;)[Lrx/subjects/try$for;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 5
    :try_start_0
    invoke-virtual {v4, p1}, Lrx/subjects/try$for;->new(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0}, Landroid/support/v4/s80;->new(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    iget-boolean v0, v0, Lrx/subjects/try;->active:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0, p1}, Lrx/subjects/try;->next(Ljava/lang/Object;)[Lrx/subjects/try$for;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {v3, p1}, Lrx/subjects/try$for;->new(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrx/internal/operators/return;->goto(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public q6()I
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/subjects/if;->if:Lrx/subjects/try;

    invoke-virtual {v0}, Lrx/subjects/try;->observers()[Lrx/subjects/try$for;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
