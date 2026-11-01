.class abstract enum Lcom/google/common/collect/s3$try;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/s3$try;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISTINCT:Lcom/google/common/collect/s3$try;

.field public static final enum SIZE:Lcom/google/common/collect/s3$try;

.field private static final synthetic do:[Lcom/google/common/collect/s3$try;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/collect/s3$try$do;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/s3$try$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/s3$try;->SIZE:Lcom/google/common/collect/s3$try;

    .line 2
    new-instance v1, Lcom/google/common/collect/s3$try$if;

    const-string v3, "DISTINCT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/collect/s3$try$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/collect/s3$try;->DISTINCT:Lcom/google/common/collect/s3$try;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/collect/s3$try;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/collect/s3$try;->do:[Lcom/google/common/collect/s3$try;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/s3$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/s3$try;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/s3$try;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/s3$try;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/s3$try;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/s3$try;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/s3$try;->do:[Lcom/google/common/collect/s3$try;

    invoke-virtual {v0}, [Lcom/google/common/collect/s3$try;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/s3$try;

    return-object v0
.end method


# virtual methods
.method public abstract nodeAggregate(Lcom/google/common/collect/s3$case;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/s3$case<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract treeAggregate(Lcom/google/common/collect/s3$case;)J
    .param p1    # Lcom/google/common/collect/s3$case;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/s3$case<",
            "*>;)J"
        }
    .end annotation
.end method
