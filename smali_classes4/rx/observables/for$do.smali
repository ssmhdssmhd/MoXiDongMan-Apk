.class Lrx/observables/for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/for;->h6()Lrx/Subscription;
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
.field public final synthetic do:[Lrx/Subscription;

.field public final synthetic if:Lrx/observables/for;


# direct methods
.method public constructor <init>(Lrx/observables/for;[Lrx/Subscription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/for$do;->if:Lrx/observables/for;

    iput-object p2, p0, Lrx/observables/for$do;->do:[Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/Subscription;

    invoke-virtual {p0, p1}, Lrx/observables/for$do;->do(Lrx/Subscription;)V

    return-void
.end method

.method public do(Lrx/Subscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/observables/for$do;->do:[Lrx/Subscription;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method
