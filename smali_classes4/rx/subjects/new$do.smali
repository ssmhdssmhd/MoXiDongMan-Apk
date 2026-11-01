.class Lrx/subjects/new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/new;-><init>(Landroid/support/v4/u22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/u22;


# direct methods
.method public constructor <init>(Landroid/support/v4/u22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/subjects/new$do;->do:Landroid/support/v4/u22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/subjects/new$do;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/subjects/new$do;->do:Landroid/support/v4/u22;

    invoke-virtual {v0, p1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
