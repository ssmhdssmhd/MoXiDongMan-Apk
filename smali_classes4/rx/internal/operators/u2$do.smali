.class Lrx/internal/operators/u2$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/u2;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b02<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lrx/internal/operators/u2;

.field public final synthetic if:Landroid/support/v4/b02;


# direct methods
.method public constructor <init>(Lrx/internal/operators/u2;Landroid/support/v4/b02;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/u2$do;->for:Lrx/internal/operators/u2;

    iput-object p2, p0, Lrx/internal/operators/u2$do;->if:Landroid/support/v4/b02;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/u2$do;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/u2$do;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
