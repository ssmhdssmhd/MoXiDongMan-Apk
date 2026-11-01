.class abstract enum Lcom/google/common/collect/MapMakerInternalMap$super;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "super"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/MapMakerInternalMap$super;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

.field public static final enum WEAK:Lcom/google/common/collect/MapMakerInternalMap$super;

.field private static final synthetic do:[Lcom/google/common/collect/MapMakerInternalMap$super;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$super$do;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$super$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$super;

    .line 2
    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$super$if;

    const-string v3, "WEAK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$super$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/collect/MapMakerInternalMap$super;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$super;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/collect/MapMakerInternalMap$super;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/collect/MapMakerInternalMap$super;->do:[Lcom/google/common/collect/MapMakerInternalMap$super;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/MapMakerInternalMap$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$super;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMakerInternalMap$super;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/MapMakerInternalMap$super;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/MapMakerInternalMap$super;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/MapMakerInternalMap$super;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$super;->do:[Lcom/google/common/collect/MapMakerInternalMap$super;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMakerInternalMap$super;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMakerInternalMap$super;

    return-object v0
.end method


# virtual methods
.method public abstract defaultEquivalence()Lcom/google/common/base/this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
