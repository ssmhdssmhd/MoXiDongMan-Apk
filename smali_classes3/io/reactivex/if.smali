.class public final enum Lio/reactivex/if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUFFER:Lio/reactivex/if;

.field public static final enum DROP:Lio/reactivex/if;

.field public static final enum ERROR:Lio/reactivex/if;

.field public static final enum LATEST:Lio/reactivex/if;

.field public static final enum MISSING:Lio/reactivex/if;

.field private static final synthetic do:[Lio/reactivex/if;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lio/reactivex/if;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/if;->MISSING:Lio/reactivex/if;

    .line 2
    new-instance v1, Lio/reactivex/if;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/reactivex/if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/if;->ERROR:Lio/reactivex/if;

    .line 3
    new-instance v3, Lio/reactivex/if;

    const-string v5, "BUFFER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/reactivex/if;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/reactivex/if;->BUFFER:Lio/reactivex/if;

    .line 4
    new-instance v5, Lio/reactivex/if;

    const-string v7, "DROP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/reactivex/if;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/reactivex/if;->DROP:Lio/reactivex/if;

    .line 5
    new-instance v7, Lio/reactivex/if;

    const-string v9, "LATEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/reactivex/if;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/reactivex/if;->LATEST:Lio/reactivex/if;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/reactivex/if;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lio/reactivex/if;->do:[Lio/reactivex/if;

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

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/if;
    .locals 1

    .line 1
    const-class v0, Lio/reactivex/if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/if;

    return-object p0
.end method

.method public static values()[Lio/reactivex/if;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/if;->do:[Lio/reactivex/if;

    invoke-virtual {v0}, [Lio/reactivex/if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/if;

    return-object v0
.end method
