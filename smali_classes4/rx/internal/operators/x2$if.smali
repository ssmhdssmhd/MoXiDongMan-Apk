.class Lrx/internal/operators/x2$if;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/x2;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b02<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lrx/internal/operators/x2;

.field public final synthetic if:Landroid/support/v4/b02;


# direct methods
.method public constructor <init>(Lrx/internal/operators/x2;Landroid/support/v4/b02;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/x2$if;->for:Lrx/internal/operators/x2;

    iput-object p2, p0, Lrx/internal/operators/x2$if;->if:Landroid/support/v4/b02;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/x2$if;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/x2$if;->for:Lrx/internal/operators/x2;

    iget-object v0, v0, Lrx/internal/operators/x2;->if:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Single;

    iget-object v0, p0, Lrx/internal/operators/x2$if;->if:Landroid/support/v4/b02;

    invoke-virtual {p1, v0}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lrx/internal/operators/x2$if;->if:Landroid/support/v4/b02;

    invoke-static {p1, v0}, Landroid/support/v4/s80;->case(Ljava/lang/Throwable;Landroid/support/v4/b02;)V

    :goto_0
    return-void
.end method
