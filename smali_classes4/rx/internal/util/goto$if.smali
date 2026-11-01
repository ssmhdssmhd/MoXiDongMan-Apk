.class Lrx/internal/util/goto$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/goto;->d0(Lrx/functions/Func1;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Func1;

.field public final synthetic if:Lrx/internal/util/goto;


# direct methods
.method public constructor <init>(Lrx/internal/util/goto;Lrx/functions/Func1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/util/goto$if;->if:Lrx/internal/util/goto;

    iput-object p2, p0, Lrx/internal/util/goto$if;->do:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/internal/util/goto$if;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/util/goto$if;->do:Lrx/functions/Func1;

    iget-object v1, p0, Lrx/internal/util/goto$if;->if:Lrx/internal/util/goto;

    iget-object v1, v1, Lrx/internal/util/goto;->if:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Single;

    .line 2
    instance-of v1, v0, Lrx/internal/util/goto;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lrx/internal/util/goto;

    iget-object v0, v0, Lrx/internal/util/goto;->if:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lrx/internal/util/goto$if$do;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/goto$if$do;-><init>(Lrx/internal/util/goto$if;Landroid/support/v4/b02;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 6
    invoke-virtual {v0, v1}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    :goto_0
    return-void
.end method
