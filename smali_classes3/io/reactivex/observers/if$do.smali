.class final enum Lio/reactivex/observers/if$do;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/observers/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/observers/if$do;",
        ">;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/observers/if$do;

.field private static final synthetic do:[Lio/reactivex/observers/if$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/observers/if$do;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/observers/if$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/observers/if$do;->INSTANCE:Lio/reactivex/observers/if$do;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/observers/if$do;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lio/reactivex/observers/if$do;->do:[Lio/reactivex/observers/if$do;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/observers/if$do;
    .locals 1

    .line 1
    const-class v0, Lio/reactivex/observers/if$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/observers/if$do;

    return-object p0
.end method

.method public static values()[Lio/reactivex/observers/if$do;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/observers/if$do;->do:[Lio/reactivex/observers/if$do;

    invoke-virtual {v0}, [Lio/reactivex/observers/if$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/observers/if$do;

    return-object v0
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
