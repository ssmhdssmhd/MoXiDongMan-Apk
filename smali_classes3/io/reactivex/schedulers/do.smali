.class public final Lio/reactivex/schedulers/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/do$if;,
        Lio/reactivex/schedulers/do$goto;,
        Lio/reactivex/schedulers/do$case;,
        Lio/reactivex/schedulers/do$for;,
        Lio/reactivex/schedulers/do$try;,
        Lio/reactivex/schedulers/do$new;,
        Lio/reactivex/schedulers/do$do;,
        Lio/reactivex/schedulers/do$else;
    }
.end annotation


# static fields
.field public static final do:Lio/reactivex/try;
    .annotation build Landroid/support/v4/b41;
    .end annotation
.end field

.field public static final for:Lio/reactivex/try;
    .annotation build Landroid/support/v4/b41;
    .end annotation
.end field

.field public static final if:Lio/reactivex/try;
    .annotation build Landroid/support/v4/b41;
    .end annotation
.end field

.field public static final new:Lio/reactivex/try;
    .annotation build Landroid/support/v4/b41;
    .end annotation
.end field

.field public static final try:Lio/reactivex/try;
    .annotation build Landroid/support/v4/b41;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/schedulers/do$goto;

    invoke-direct {v0}, Lio/reactivex/schedulers/do$goto;-><init>()V

    invoke-static {v0}, Landroid/support/v4/jp1;->transient(Ljava/util/concurrent/Callable;)Lio/reactivex/try;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/do;->do:Lio/reactivex/try;

    .line 2
    new-instance v0, Lio/reactivex/schedulers/do$if;

    invoke-direct {v0}, Lio/reactivex/schedulers/do$if;-><init>()V

    invoke-static {v0}, Landroid/support/v4/jp1;->volatile(Ljava/util/concurrent/Callable;)Lio/reactivex/try;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/do;->if:Lio/reactivex/try;

    .line 3
    new-instance v0, Lio/reactivex/schedulers/do$for;

    invoke-direct {v0}, Lio/reactivex/schedulers/do$for;-><init>()V

    invoke-static {v0}, Landroid/support/v4/jp1;->interface(Ljava/util/concurrent/Callable;)Lio/reactivex/try;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/do;->for:Lio/reactivex/try;

    .line 4
    invoke-static {}, Lio/reactivex/internal/schedulers/super;->break()Lio/reactivex/internal/schedulers/super;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/do;->new:Lio/reactivex/try;

    .line 5
    new-instance v0, Lio/reactivex/schedulers/do$case;

    invoke-direct {v0}, Lio/reactivex/schedulers/do$case;-><init>()V

    invoke-static {v0}, Landroid/support/v4/jp1;->protected(Ljava/util/concurrent/Callable;)Lio/reactivex/try;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/do;->try:Lio/reactivex/try;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static case()V
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->else()V

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->else()V

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->try()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->else()V

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->else()V

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/do;->this()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->else()V

    .line 6
    invoke-static {}, Lio/reactivex/internal/schedulers/class;->new()V

    return-void
.end method

.method public static do()Lio/reactivex/try;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/schedulers/do;->if:Lio/reactivex/try;

    invoke-static {v0}, Landroid/support/v4/jp1;->k(Lio/reactivex/try;)Lio/reactivex/try;

    move-result-object v0

    return-object v0
.end method

.method public static else()Lio/reactivex/try;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/schedulers/do;->do:Lio/reactivex/try;

    invoke-static {v0}, Landroid/support/v4/jp1;->p(Lio/reactivex/try;)Lio/reactivex/try;

    move-result-object v0

    return-object v0
.end method

.method public static for(Ljava/util/concurrent/Executor;Z)Lio/reactivex/try;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation build Landroid/support/v4/f90;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/new;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/schedulers/new;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static goto()V
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->goto()V

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->goto()V

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->try()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->goto()V

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->goto()V

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/do;->this()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/try;->goto()V

    .line 6
    invoke-static {}, Lio/reactivex/internal/schedulers/class;->try()V

    return-void
.end method

.method public static if(Ljava/util/concurrent/Executor;)Lio/reactivex/try;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/new;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/schedulers/new;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static new()Lio/reactivex/try;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/schedulers/do;->for:Lio/reactivex/try;

    invoke-static {v0}, Landroid/support/v4/jp1;->m(Lio/reactivex/try;)Lio/reactivex/try;

    move-result-object v0

    return-object v0
.end method

.method public static this()Lio/reactivex/try;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/schedulers/do;->new:Lio/reactivex/try;

    return-object v0
.end method

.method public static try()Lio/reactivex/try;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/schedulers/do;->try:Lio/reactivex/try;

    invoke-static {v0}, Landroid/support/v4/jp1;->n(Lio/reactivex/try;)Lio/reactivex/try;

    move-result-object v0

    return-object v0
.end method
