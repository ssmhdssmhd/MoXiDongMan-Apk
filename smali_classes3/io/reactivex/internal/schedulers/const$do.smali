.class final Lio/reactivex/internal/schedulers/const$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/const$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/internal/schedulers/const$case;",
        "Landroid/support/v4/np;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/try$for;


# direct methods
.method public constructor <init>(Lio/reactivex/try$for;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/const$do;->do:Lio/reactivex/try$for;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/reactivex/internal/schedulers/const$case;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/const$do;->do(Lio/reactivex/internal/schedulers/const$case;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public do(Lio/reactivex/internal/schedulers/const$case;)Landroid/support/v4/np;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/const$do$do;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/schedulers/const$do$do;-><init>(Lio/reactivex/internal/schedulers/const$do;Lio/reactivex/internal/schedulers/const$case;)V

    return-object v0
.end method
