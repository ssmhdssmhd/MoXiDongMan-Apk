.class Lrx/internal/operators/b2$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/b2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic for:Landroid/support/v4/lz1;

.field public if:Z

.field public final synthetic new:Landroid/support/v4/y22;

.field public final synthetic try:Lrx/internal/operators/b2;


# direct methods
.method public constructor <init>(Lrx/internal/operators/b2;Landroid/support/v4/lz1;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/b2$if;->try:Lrx/internal/operators/b2;

    iput-object p2, p0, Lrx/internal/operators/b2$if;->for:Landroid/support/v4/lz1;

    iput-object p3, p0, Lrx/internal/operators/b2$if;->new:Landroid/support/v4/y22;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    iget p1, p1, Lrx/internal/operators/b2;->if:I

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lrx/internal/operators/b2$if;->do:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/b2$if;->if:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/b2$if;->if:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/b2$if;->do:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lrx/internal/operators/b2$if;->do:Ljava/util/List;

    .line 5
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/b2$if;->try:Lrx/internal/operators/b2;

    iget-object v1, v1, Lrx/internal/operators/b2;->do:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lrx/internal/operators/b2$if;->for:Landroid/support/v4/lz1;

    invoke-virtual {v1, v0}, Landroid/support/v4/lz1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0, p0}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/b2$if;->new:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/b2$if;->if:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/b2$if;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method
