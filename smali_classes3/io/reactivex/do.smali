.class public final enum Lio/reactivex/do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DROP_LATEST:Lio/reactivex/do;

.field public static final enum DROP_OLDEST:Lio/reactivex/do;

.field public static final enum ERROR:Lio/reactivex/do;

.field private static final synthetic do:[Lio/reactivex/do;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/reactivex/do;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/do;->ERROR:Lio/reactivex/do;

    .line 2
    new-instance v1, Lio/reactivex/do;

    const-string v3, "DROP_OLDEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/reactivex/do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/do;->DROP_OLDEST:Lio/reactivex/do;

    .line 3
    new-instance v3, Lio/reactivex/do;

    const-string v5, "DROP_LATEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/reactivex/do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/reactivex/do;->DROP_LATEST:Lio/reactivex/do;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/reactivex/do;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/reactivex/do;->do:[Lio/reactivex/do;

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

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/do;
    .locals 1

    .line 1
    const-class v0, Lio/reactivex/do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/do;

    return-object p0
.end method

.method public static values()[Lio/reactivex/do;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/do;->do:[Lio/reactivex/do;

    invoke-virtual {v0}, [Lio/reactivex/do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/do;

    return-object v0
.end method
