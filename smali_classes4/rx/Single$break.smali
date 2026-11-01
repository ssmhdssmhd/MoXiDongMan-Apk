.class Lrx/Single$break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->O(Lrx/if;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/if;

.field public final synthetic if:Lrx/Single;


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Single$break;->if:Lrx/Single;

    iput-object p2, p0, Lrx/Single$break;->do:Lrx/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/Single$break;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/Single$break$do;

    invoke-direct {v0, p0, p1}, Lrx/Single$break$do;-><init>(Lrx/Single$break;Landroid/support/v4/b02;)V

    .line 2
    new-instance v1, Lrx/Single$break$if;

    invoke-direct {v1, p0, v0}, Lrx/Single$break$if;-><init>(Lrx/Single$break;Landroid/support/v4/b02;)V

    invoke-static {v1}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

    .line 3
    iget-object p1, p0, Lrx/Single$break;->if:Lrx/Single;

    invoke-virtual {p1, v0}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    return-void
.end method
