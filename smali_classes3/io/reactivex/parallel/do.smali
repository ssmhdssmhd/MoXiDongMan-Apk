.class public final enum Lio/reactivex/parallel/do;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/parallel/do;",
        ">;",
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/lang/Long;",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/parallel/do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR:Lio/reactivex/parallel/do;

.field public static final enum RETRY:Lio/reactivex/parallel/do;

.field public static final enum SKIP:Lio/reactivex/parallel/do;

.field public static final enum STOP:Lio/reactivex/parallel/do;

.field private static final synthetic do:[Lio/reactivex/parallel/do;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/reactivex/parallel/do;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/parallel/do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/parallel/do;->STOP:Lio/reactivex/parallel/do;

    .line 2
    new-instance v1, Lio/reactivex/parallel/do;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/reactivex/parallel/do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/parallel/do;->ERROR:Lio/reactivex/parallel/do;

    .line 3
    new-instance v3, Lio/reactivex/parallel/do;

    const-string v5, "SKIP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/reactivex/parallel/do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/reactivex/parallel/do;->SKIP:Lio/reactivex/parallel/do;

    .line 4
    new-instance v5, Lio/reactivex/parallel/do;

    const-string v7, "RETRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/reactivex/parallel/do;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/reactivex/parallel/do;->RETRY:Lio/reactivex/parallel/do;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/reactivex/parallel/do;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/reactivex/parallel/do;->do:[Lio/reactivex/parallel/do;

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

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/parallel/do;
    .locals 1

    .line 1
    const-class v0, Lio/reactivex/parallel/do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/parallel/do;

    return-object p0
.end method

.method public static values()[Lio/reactivex/parallel/do;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/parallel/do;->do:[Lio/reactivex/parallel/do;

    invoke-virtual {v0}, [Lio/reactivex/parallel/do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/parallel/do;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Long;Ljava/lang/Throwable;)Lio/reactivex/parallel/do;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/parallel/do;->apply(Ljava/lang/Long;Ljava/lang/Throwable;)Lio/reactivex/parallel/do;

    move-result-object p1

    return-object p1
.end method
