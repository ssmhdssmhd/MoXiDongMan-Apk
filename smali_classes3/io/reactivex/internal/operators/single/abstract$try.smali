.class final enum Lio/reactivex/internal/operators/single/abstract$try;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/operators/single/abstract$try;",
        ">;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/SingleSource;",
        "Lio/reactivex/new;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/internal/operators/single/abstract$try;

.field private static final synthetic do:[Lio/reactivex/internal/operators/single/abstract$try;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/abstract$try;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/single/abstract$try;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/operators/single/abstract$try;->INSTANCE:Lio/reactivex/internal/operators/single/abstract$try;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/internal/operators/single/abstract$try;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lio/reactivex/internal/operators/single/abstract$try;->do:[Lio/reactivex/internal/operators/single/abstract$try;

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

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/single/abstract$try;
    .locals 1

    .line 1
    const-class v0, Lio/reactivex/internal/operators/single/abstract$try;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/operators/single/abstract$try;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/single/abstract$try;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/operators/single/abstract$try;->do:[Lio/reactivex/internal/operators/single/abstract$try;

    invoke-virtual {v0}, [Lio/reactivex/internal/operators/single/abstract$try;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/abstract$try;

    return-object v0
.end method


# virtual methods
.method public apply(Lio/reactivex/SingleSource;)Lio/reactivex/new;
    .locals 1

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/a;-><init>(Lio/reactivex/SingleSource;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/reactivex/SingleSource;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/abstract$try;->apply(Lio/reactivex/SingleSource;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
