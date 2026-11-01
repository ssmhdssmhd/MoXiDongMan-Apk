.class Lrx/internal/operators/r0$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/r0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/r0$for;

.field public final synthetic if:Lrx/internal/operators/r0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/r0;Lrx/internal/operators/r0$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/r0$do;->if:Lrx/internal/operators/r0;

    iput-object p2, p0, Lrx/internal/operators/r0$do;->do:Lrx/internal/operators/r0$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    iget-object v0, p0, Lrx/internal/operators/r0$do;->do:Lrx/internal/operators/r0$for;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/r0$for;->for(J)V

    :cond_0
    return-void
.end method
