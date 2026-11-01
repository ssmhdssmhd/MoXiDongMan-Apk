.class Lrx/internal/operators/k0$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/k0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/k0$if;

.field public final synthetic if:Lrx/internal/operators/k0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/k0;Lrx/internal/operators/k0$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/k0$do;->if:Lrx/internal/operators/k0;

    iput-object p2, p0, Lrx/internal/operators/k0$do;->do:Lrx/internal/operators/k0$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/k0$do;->if:Lrx/internal/operators/k0;

    iget-object v0, v0, Lrx/internal/operators/k0;->do:Lrx/functions/Action1;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/k0$do;->do:Lrx/internal/operators/k0$if;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/k0$if;->do(Lrx/internal/operators/k0$if;J)V

    return-void
.end method
