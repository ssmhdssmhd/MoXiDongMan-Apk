.class public final Landroid/support/v4/oa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/oa$do;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static do(Lrx/Observable;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/oa$do;

    invoke-direct {v0}, Landroid/support/v4/oa$do;-><init>()V

    .line 2
    invoke-virtual {p0}, Lrx/Observable;->M1()Lrx/Observable;

    move-result-object p0

    invoke-virtual {p0, v0}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    return-object v0
.end method
