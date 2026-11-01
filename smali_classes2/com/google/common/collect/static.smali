.class public final enum Lcom/google/common/collect/static;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/static;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSED:Lcom/google/common/collect/static;

.field public static final enum OPEN:Lcom/google/common/collect/static;

.field private static final synthetic do:[Lcom/google/common/collect/static;


# instance fields
.field public final inclusive:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/collect/static;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/common/collect/static;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/common/collect/static;->OPEN:Lcom/google/common/collect/static;

    .line 2
    new-instance v1, Lcom/google/common/collect/static;

    const-string v3, "CLOSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/common/collect/static;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/common/collect/static;->CLOSED:Lcom/google/common/collect/static;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/collect/static;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/collect/static;->do:[Lcom/google/common/collect/static;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/google/common/collect/static;->inclusive:Z

    return-void
.end method

.method public static forBoolean(Z)Lcom/google/common/collect/static;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/common/collect/static;->CLOSED:Lcom/google/common/collect/static;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/common/collect/static;->OPEN:Lcom/google/common/collect/static;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/static;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/static;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/static;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/static;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/static;->do:[Lcom/google/common/collect/static;

    invoke-virtual {v0}, [Lcom/google/common/collect/static;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/static;

    return-object v0
.end method


# virtual methods
.method public flip()Lcom/google/common/collect/static;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/static;->inclusive:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object v0

    return-object v0
.end method
