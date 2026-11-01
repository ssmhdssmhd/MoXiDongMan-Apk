.class public final Lio/reactivex/internal/schedulers/try;
.super Lio/reactivex/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/try$do;
    }
.end annotation


# static fields
.field public static final for:Lio/reactivex/try$for;

.field public static final if:Lio/reactivex/try;

.field public static final new:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/try;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/try;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/try;->if:Lio/reactivex/try;

    .line 2
    new-instance v0, Lio/reactivex/internal/schedulers/try$do;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/try$do;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/try;->for:Lio/reactivex/try$for;

    .line 3
    invoke-static {}, Lio/reactivex/disposables/if;->if()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/schedulers/try;->new:Lio/reactivex/disposables/Disposable;

    .line 4
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/try;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support periodic execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if()Lio/reactivex/try$for;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/schedulers/try;->for:Lio/reactivex/try$for;

    return-object v0
.end method

.method public new(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object p1, Lio/reactivex/internal/schedulers/try;->new:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support delayed execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
