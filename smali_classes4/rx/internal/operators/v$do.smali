.class Lrx/internal/operators/v$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/v;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field public do:Z

.field public final synthetic for:Landroid/support/v4/lz1;

.field public if:Z

.field public final synthetic new:Landroid/support/v4/y22;

.field public final synthetic try:Lrx/internal/operators/v;


# direct methods
.method public constructor <init>(Lrx/internal/operators/v;Landroid/support/v4/lz1;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/v$do;->try:Lrx/internal/operators/v;

    iput-object p2, p0, Lrx/internal/operators/v$do;->for:Landroid/support/v4/lz1;

    iput-object p3, p0, Lrx/internal/operators/v$do;->new:Landroid/support/v4/y22;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/v$do;->if:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/v$do;->if:Z

    .line 3
    iget-boolean v0, p0, Lrx/internal/operators/v$do;->do:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lrx/internal/operators/v$do;->for:Landroid/support/v4/lz1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/support/v4/lz1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/v$do;->for:Landroid/support/v4/lz1;

    iget-object v1, p0, Lrx/internal/operators/v$do;->try:Lrx/internal/operators/v;

    iget-boolean v1, v1, Lrx/internal/operators/v;->if:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/lz1;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/v$do;->if:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/v$do;->if:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/v$do;->new:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/v$do;->if:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/v$do;->do:Z

    .line 3
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/v$do;->try:Lrx/internal/operators/v;

    iget-object v1, v1, Lrx/internal/operators/v;->do:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 4
    iput-boolean v0, p0, Lrx/internal/operators/v$do;->if:Z

    .line 5
    iget-object p1, p0, Lrx/internal/operators/v$do;->for:Landroid/support/v4/lz1;

    iget-object v1, p0, Lrx/internal/operators/v$do;->try:Lrx/internal/operators/v;

    iget-boolean v1, v1, Lrx/internal/operators/v;->if:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/lz1;->setValue(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0, p0, p1}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void
.end method
