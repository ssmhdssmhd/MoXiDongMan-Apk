.class Lrx/internal/operators/OperatorReplay$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay$if;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic if:Lrx/internal/operators/OperatorReplay$if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorReplay$if;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$if$do;->if:Lrx/internal/operators/OperatorReplay$if;

    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$if$do;->do:Landroid/support/v4/y22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/Subscription;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$if$do;->do(Lrx/Subscription;)V

    return-void
.end method

.method public do(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$if$do;->do:Landroid/support/v4/y22;

    invoke-virtual {v0, p1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    return-void
.end method
