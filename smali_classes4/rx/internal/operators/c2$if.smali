.class Lrx/internal/operators/c2$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic if:Lrx/internal/operators/c2;


# direct methods
.method public constructor <init>(Lrx/internal/operators/c2;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/c2$if;->if:Lrx/internal/operators/c2;

    iput-object p2, p0, Lrx/internal/operators/c2$if;->do:Landroid/support/v4/y22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/c2$if;->if:Lrx/internal/operators/c2;

    iget-object v0, v0, Lrx/internal/operators/c2;->do:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    new-instance v1, Lrx/internal/operators/c2$if$do;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/c2$if$do;-><init>(Lrx/internal/operators/c2$if;Lrx/if$do;)V

    invoke-virtual {v0, v1}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method
