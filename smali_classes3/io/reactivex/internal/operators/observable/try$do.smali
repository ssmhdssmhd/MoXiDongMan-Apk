.class final Lio/reactivex/internal/operators/observable/try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private case:Ljava/lang/Throwable;

.field private final do:Lio/reactivex/internal/operators/observable/try$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/try$if<",
            "TT;>;"
        }
    .end annotation
.end field

.field private else:Z

.field private for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final if:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field private new:Z

.field private try:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/internal/operators/observable/try$if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/internal/operators/observable/try$if<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/try$do;->new:Z

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/try$do;->try:Z

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/try$do;->if:Lio/reactivex/ObservableSource;

    .line 5
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/try$do;->do:Lio/reactivex/internal/operators/observable/try$if;

    return-void
.end method

.method private do()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/try$do;->else:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/try$do;->else:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/try$do;->do:Lio/reactivex/internal/operators/observable/try$if;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/try$if;->for()V

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/d0;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/try$do;->if:Lio/reactivex/ObservableSource;

    invoke-direct {v0, v2}, Lio/reactivex/internal/operators/observable/d0;-><init>(Lio/reactivex/ObservableSource;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/try$do;->do:Lio/reactivex/internal/operators/observable/try$if;

    invoke-virtual {v0, v2}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/try$do;->do:Lio/reactivex/internal/operators/observable/try$if;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/try$if;->new()Landroid/support/v4/t41;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/t41;->goto()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 7
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/try$do;->try:Z

    .line 8
    invoke-virtual {v0}, Landroid/support/v4/t41;->try()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/try$do;->for:Ljava/lang/Object;

    return v1

    .line 9
    :cond_1
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/try$do;->new:Z

    .line 10
    invoke-virtual {v0}, Landroid/support/v4/t41;->case()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/t41;->new()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/try$do;->case:Ljava/lang/Throwable;

    .line 12
    invoke-static {v0}, Lio/reactivex/internal/util/case;->case(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/try$do;->do:Lio/reactivex/internal/operators/observable/try$if;

    invoke-virtual {v1}, Landroid/support/v4/n10;->dispose()V

    .line 14
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/try$do;->case:Ljava/lang/Throwable;

    .line 15
    invoke-static {v0}, Lio/reactivex/internal/util/case;->case(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/try$do;->case:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/try$do;->new:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/try$do;->try:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/reactivex/internal/operators/observable/try$do;->do()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 4
    :cond_3
    invoke-static {v0}, Lio/reactivex/internal/util/case;->case(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/try$do;->case:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/try$do;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/try$do;->try:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/try$do;->for:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/case;->case(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
