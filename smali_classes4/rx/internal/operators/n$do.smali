.class final Lrx/internal/operators/n$do;
.super Lrx/internal/operators/import;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/import<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field public static final this:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/n$do;->this:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lrx/internal/operators/import;-><init>(Landroid/support/v4/y22;)V

    .line 2
    sget-object p1, Lrx/internal/operators/n$do;->this:Ljava/lang/Object;

    iput-object p1, p0, Lrx/internal/operators/import;->for:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/import;->for:Ljava/lang/Object;

    .line 2
    sget-object v1, Lrx/internal/operators/n$do;->this:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lrx/internal/operators/import;->do()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lrx/internal/operators/import;->if(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lrx/internal/operators/import;->for:Ljava/lang/Object;

    return-void
.end method
