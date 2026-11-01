.class public final enum Lcom/gyf/immersionbar/if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gyf/immersionbar/if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

.field public static final enum FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

.field public static final enum FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

.field public static final enum FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

.field private static final synthetic do:[Lcom/gyf/immersionbar/if;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/if;

    const-string v1, "FLAG_HIDE_STATUS_BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gyf/immersionbar/if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    .line 2
    new-instance v1, Lcom/gyf/immersionbar/if;

    const-string v3, "FLAG_HIDE_NAVIGATION_BAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gyf/immersionbar/if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

    .line 3
    new-instance v3, Lcom/gyf/immersionbar/if;

    const-string v5, "FLAG_HIDE_BAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gyf/immersionbar/if;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gyf/immersionbar/if;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

    .line 4
    new-instance v5, Lcom/gyf/immersionbar/if;

    const-string v7, "FLAG_SHOW_BAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/gyf/immersionbar/if;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/gyf/immersionbar/if;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/gyf/immersionbar/if;->do:[Lcom/gyf/immersionbar/if;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gyf/immersionbar/if;
    .locals 1

    .line 1
    const-class v0, Lcom/gyf/immersionbar/if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gyf/immersionbar/if;

    return-object p0
.end method

.method public static values()[Lcom/gyf/immersionbar/if;
    .locals 1

    .line 1
    sget-object v0, Lcom/gyf/immersionbar/if;->do:[Lcom/gyf/immersionbar/if;

    invoke-virtual {v0}, [Lcom/gyf/immersionbar/if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gyf/immersionbar/if;

    return-object v0
.end method
