.class Lrx/internal/operators/c2$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c2$if;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/if$do;

.field public final synthetic if:Lrx/internal/operators/c2$if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/c2$if;Lrx/if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/c2$if$do;->if:Lrx/internal/operators/c2$if;

    iput-object p2, p0, Lrx/internal/operators/c2$if$do;->do:Lrx/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/c2$if$do;->if:Lrx/internal/operators/c2$if;

    iget-object v0, v0, Lrx/internal/operators/c2$if;->do:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/c2$if$do;->do:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
