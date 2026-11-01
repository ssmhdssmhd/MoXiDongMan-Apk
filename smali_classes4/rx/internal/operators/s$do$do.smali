.class Lrx/internal/operators/s$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/s$do;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/s$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/s$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/s$do$do;->do:Lrx/internal/operators/s$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/s$do$do;->do:Lrx/internal/operators/s$do;

    iget-object v0, v0, Lrx/internal/operators/s$do;->do:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
