.class final Lrx/internal/operators/j2$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lrx/internal/operators/j2$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/j2$do<",
            "**>;"
        }
    .end annotation
.end field

.field public final if:I


# direct methods
.method public constructor <init>(Lrx/internal/operators/j2$do;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/j2$do<",
            "**>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/j2$if;->do:Lrx/internal/operators/j2$do;

    .line 3
    iput p2, p0, Lrx/internal/operators/j2$if;->if:I

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j2$if;->do:Lrx/internal/operators/j2$do;

    iget v1, p0, Lrx/internal/operators/j2$if;->if:I

    invoke-virtual {v0, v1}, Lrx/internal/operators/j2$do;->do(I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j2$if;->do:Lrx/internal/operators/j2$do;

    iget v1, p0, Lrx/internal/operators/j2$if;->if:I

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/j2$do;->if(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j2$if;->do:Lrx/internal/operators/j2$do;

    iget v1, p0, Lrx/internal/operators/j2$if;->if:I

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/j2$do;->for(ILjava/lang/Object;)V

    return-void
.end method
