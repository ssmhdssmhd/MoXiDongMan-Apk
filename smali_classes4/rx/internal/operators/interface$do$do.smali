.class final Lrx/internal/operators/interface$do$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/interface$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b02<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lrx/internal/operators/interface$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/interface$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/interface$do$do;->if:Lrx/internal/operators/interface$do;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/interface$do$do;->if:Lrx/internal/operators/interface$do;

    invoke-virtual {v0, p0, p1}, Lrx/internal/operators/interface$do;->for(Lrx/internal/operators/interface$do$do;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/interface$do$do;->if:Lrx/internal/operators/interface$do;

    invoke-virtual {v0, p0, p1}, Lrx/internal/operators/interface$do;->if(Lrx/internal/operators/interface$do$do;Ljava/lang/Throwable;)V

    return-void
.end method
