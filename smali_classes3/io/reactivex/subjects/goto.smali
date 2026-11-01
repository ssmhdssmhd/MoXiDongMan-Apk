.class public abstract Lio/reactivex/subjects/goto;
.super Lio/reactivex/new;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/new<",
        "TT;>;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/new;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()Ljava/lang/Throwable;
    .annotation build Landroid/support/v4/a51;
    .end annotation
.end method

.method public abstract for()Z
.end method

.method public abstract if()Z
.end method

.method public abstract new()Z
.end method

.method public final try()Lio/reactivex/subjects/goto;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/goto<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/subjects/case;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/subjects/case;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/case;-><init>(Lio/reactivex/subjects/goto;)V

    return-object v0
.end method
