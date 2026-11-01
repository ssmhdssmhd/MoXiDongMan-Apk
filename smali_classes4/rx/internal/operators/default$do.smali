.class Lrx/internal/operators/default$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/default;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/default$new;

.field public final synthetic if:Lrx/internal/operators/default;


# direct methods
.method public constructor <init>(Lrx/internal/operators/default;Lrx/internal/operators/default$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/default$do;->if:Lrx/internal/operators/default;

    iput-object p2, p0, Lrx/internal/operators/default$do;->do:Lrx/internal/operators/default$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/default$do;->do:Lrx/internal/operators/default$new;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/default$new;->else(J)V

    return-void
.end method
