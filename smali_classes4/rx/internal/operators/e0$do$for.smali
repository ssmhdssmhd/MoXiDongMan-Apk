.class Lrx/internal/operators/e0$do$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/e0$do;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Object;

.field public final synthetic if:Lrx/internal/operators/e0$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/e0$do;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/e0$do$for;->if:Lrx/internal/operators/e0$do;

    iput-object p2, p0, Lrx/internal/operators/e0$do$for;->do:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e0$do$for;->if:Lrx/internal/operators/e0$do;

    iget-boolean v1, v0, Lrx/internal/operators/e0$do;->do:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lrx/internal/operators/e0$do;->for:Landroid/support/v4/y22;

    iget-object v1, p0, Lrx/internal/operators/e0$do$for;->do:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
