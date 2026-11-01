.class Lrx/internal/operators/h2$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/h2$if;-><init>(Lrx/internal/operators/h2;Landroid/support/v4/y22;Lrx/if$do;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/h2;

.field public final synthetic if:Lrx/internal/operators/h2$if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/h2$if;Lrx/internal/operators/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/h2$if$do;->if:Lrx/internal/operators/h2$if;

    iput-object p2, p0, Lrx/internal/operators/h2$if$do;->do:Lrx/internal/operators/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/h2$if$do;->if:Lrx/internal/operators/h2$if;

    iget-object v0, v0, Lrx/internal/operators/h2$if;->case:Lrx/internal/operators/h2$new;

    iget-object v0, v0, Lrx/internal/operators/h2$new;->do:Lrx/Observer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/h2$if$do;->if:Lrx/internal/operators/h2$if;

    invoke-virtual {v0}, Landroid/support/v4/y22;->unsubscribe()V

    :cond_0
    return-void
.end method
