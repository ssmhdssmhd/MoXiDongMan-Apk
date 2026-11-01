.class public final Landroid/support/v4/wp;
.super Landroid/support/v4/np;
.source "SourceFile"


# instance fields
.field public final do:Lio/reactivex/CompletableSource;

.field public final if:Lio/reactivex/CompletableOperator;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;Lio/reactivex/CompletableOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/wp;->do:Lio/reactivex/CompletableSource;

    .line 3
    iput-object p2, p0, Landroid/support/v4/wp;->if:Lio/reactivex/CompletableOperator;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/wp;->if:Lio/reactivex/CompletableOperator;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableOperator;->apply(Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/support/v4/wp;->do:Lio/reactivex/CompletableSource;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 5
    throw p1
.end method
