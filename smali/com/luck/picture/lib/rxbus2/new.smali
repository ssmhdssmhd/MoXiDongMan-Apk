.class public final enum Lcom/luck/picture/lib/rxbus2/new;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/luck/picture/lib/rxbus2/new;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CURRENT_THREAD:Lcom/luck/picture/lib/rxbus2/new;

.field public static final enum MAIN:Lcom/luck/picture/lib/rxbus2/new;

.field public static final enum NEW_THREAD:Lcom/luck/picture/lib/rxbus2/new;

.field private static final synthetic do:[Lcom/luck/picture/lib/rxbus2/new;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/luck/picture/lib/rxbus2/new;

    const-string v1, "CURRENT_THREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/rxbus2/new;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/luck/picture/lib/rxbus2/new;->CURRENT_THREAD:Lcom/luck/picture/lib/rxbus2/new;

    .line 2
    new-instance v1, Lcom/luck/picture/lib/rxbus2/new;

    const-string v3, "MAIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/luck/picture/lib/rxbus2/new;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/luck/picture/lib/rxbus2/new;->MAIN:Lcom/luck/picture/lib/rxbus2/new;

    .line 3
    new-instance v3, Lcom/luck/picture/lib/rxbus2/new;

    const-string v5, "NEW_THREAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/luck/picture/lib/rxbus2/new;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/luck/picture/lib/rxbus2/new;->NEW_THREAD:Lcom/luck/picture/lib/rxbus2/new;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/luck/picture/lib/rxbus2/new;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/luck/picture/lib/rxbus2/new;->do:[Lcom/luck/picture/lib/rxbus2/new;

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

.method public static valueOf(Ljava/lang/String;)Lcom/luck/picture/lib/rxbus2/new;
    .locals 1

    .line 1
    const-class v0, Lcom/luck/picture/lib/rxbus2/new;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/luck/picture/lib/rxbus2/new;

    return-object p0
.end method

.method public static values()[Lcom/luck/picture/lib/rxbus2/new;
    .locals 1

    .line 1
    sget-object v0, Lcom/luck/picture/lib/rxbus2/new;->do:[Lcom/luck/picture/lib/rxbus2/new;

    invoke-virtual {v0}, [Lcom/luck/picture/lib/rxbus2/new;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/luck/picture/lib/rxbus2/new;

    return-object v0
.end method
